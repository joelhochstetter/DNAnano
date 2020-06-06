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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.809914, 36.021042, 47.996731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757034, 35.808411, 48.331383>,  <40.725307, 35.680832, 48.532173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757034, 35.808411, 48.331383>,  <40.809914, 36.021042, 47.996731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757034, 35.808411, 48.331383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986895, 0.008198, 0.161153,
		-0.092525, 0.846967, 0.523532,
		-0.132200, -0.531582, 0.836627,
		40.717373, 35.648937, 48.582371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012184, 36.382626, 48.639160>,  <40.809914, 36.021042, 47.996731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012184, 36.382626, 48.639160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069893, 35.995762, 48.722866>,  <41.104519, 35.763645, 48.773090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069893, 35.995762, 48.722866>,  <41.012184, 36.382626, 48.639160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069893, 35.995762, 48.722866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908534, 0.213267, 0.359281,
		-0.392111, 0.138291, 0.909464,
		0.144273, -0.967157, 0.209266,
		41.113174, 35.705616, 48.785645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456612, 36.426392, 49.181171>,  <41.012184, 36.382626, 48.639160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456612, 36.426392, 49.181171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488194, 36.029289, 49.144962>,  <41.507141, 35.791027, 49.123238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488194, 36.029289, 49.144962>,  <41.456612, 36.426392, 49.181171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488194, 36.029289, 49.144962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943503, 0.045101, 0.328279,
		-0.321819, -0.111325, 0.940233,
		0.078951, -0.992760, -0.090521,
		41.511879, 35.731461, 49.117805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703030, 36.126808, 49.844784>,  <41.456612, 36.426392, 49.181171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703030, 36.126808, 49.844784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837692, 35.885960, 49.555199>,  <41.918488, 35.741451, 49.381447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837692, 35.885960, 49.555199>,  <41.703030, 36.126808, 49.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837692, 35.885960, 49.555199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902175, -0.013969, 0.431144,
		-0.269714, -0.798283, 0.538515,
		0.336652, -0.602121, -0.723958,
		41.938686, 35.705322, 49.338013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842506, 35.498451, 50.243858>,  <41.703030, 36.126808, 49.844784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842506, 35.498451, 50.243858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047638, 35.471394, 49.901527>,  <42.170715, 35.455158, 49.696129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047638, 35.471394, 49.901527>,  <41.842506, 35.498451, 50.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047638, 35.471394, 49.901527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848245, -0.113655, 0.517266,
		-0.132258, -0.991215, -0.000907,
		0.512825, -0.067643, -0.855825,
		42.201485, 35.451099, 49.644779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078857, 34.908760, 50.227840>,  <41.842506, 35.498451, 50.243858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078857, 34.908760, 50.227840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339798, 35.083466, 49.980076>,  <42.496361, 35.188290, 49.831417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339798, 35.083466, 49.980076>,  <42.078857, 34.908760, 50.227840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339798, 35.083466, 49.980076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738654, -0.183292, 0.648686,
		0.169791, -0.880704, -0.442190,
		0.652350, 0.436767, -0.619414,
		42.535503, 35.214497, 49.794250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694588, 34.446445, 50.164005>,  <42.078857, 34.908760, 50.227840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694588, 34.446445, 50.164005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829994, 34.803585, 50.045193>,  <42.911240, 35.017868, 49.973907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829994, 34.803585, 50.045193>,  <42.694588, 34.446445, 50.164005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829994, 34.803585, 50.045193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815818, -0.121195, 0.565467,
		0.468878, -0.433741, -0.769429,
		0.338517, 0.892849, -0.297028,
		42.931549, 35.071442, 49.956085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392761, 34.353790, 50.037117>,  <42.694588, 34.446445, 50.164005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392761, 34.353790, 50.037117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341324, 34.746754, 50.091297>,  <43.310463, 34.982533, 50.123806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341324, 34.746754, 50.091297>,  <43.392761, 34.353790, 50.037117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341324, 34.746754, 50.091297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781424, 0.016278, 0.623788,
		0.610607, 0.186059, -0.769767,
		-0.128592, 0.982404, 0.135451,
		43.302746, 35.041473, 50.131931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916332, 34.732803, 49.788456>,  <43.392761, 34.353790, 50.037117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916332, 34.732803, 49.788456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754650, 34.968151, 50.068581>,  <43.657642, 35.109360, 50.236656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754650, 34.968151, 50.068581>,  <43.916332, 34.732803, 49.788456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754650, 34.968151, 50.068581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891582, 0.082511, 0.445278,
		0.204205, 0.804371, -0.557932,
		-0.404204, 0.588371, 0.700313,
		43.633389, 35.144661, 50.278675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346268, 35.351650, 49.825108>,  <43.916332, 34.732803, 49.788456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346268, 35.351650, 49.825108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155811, 35.318531, 50.175293>,  <44.041538, 35.298660, 50.385403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155811, 35.318531, 50.175293>,  <44.346268, 35.351650, 49.825108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155811, 35.318531, 50.175293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875429, 0.049540, 0.480802,
		-0.083178, 0.995335, 0.048892,
		-0.476137, -0.082794, 0.875465,
		44.012970, 35.293694, 50.437931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702011, 35.752361, 50.278355>,  <44.346268, 35.351650, 49.825108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702011, 35.752361, 50.278355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476669, 35.530769, 50.523544>,  <44.341465, 35.397812, 50.670658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476669, 35.530769, 50.523544>,  <44.702011, 35.752361, 50.278355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476669, 35.530769, 50.523544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775858, -0.099658, 0.622987,
		-0.284038, 0.826541, 0.485956,
		-0.563354, -0.553984, 0.612972,
		44.307663, 35.364574, 50.707436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781654, 36.053432, 50.909412>,  <44.702011, 35.752361, 50.278355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781654, 36.053432, 50.909412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668316, 35.676300, 50.979588>,  <44.600311, 35.450020, 51.021690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668316, 35.676300, 50.979588>,  <44.781654, 36.053432, 50.909412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668316, 35.676300, 50.979588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765328, -0.112071, 0.633808,
		-0.577914, 0.313855, 0.753332,
		-0.283351, -0.942833, 0.175435,
		44.583309, 35.393452, 51.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088348, 35.949821, 51.575603>,  <44.781654, 36.053432, 50.909412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088348, 35.949821, 51.575603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980858, 35.584190, 51.454117>,  <44.916363, 35.364811, 51.381226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980858, 35.584190, 51.454117>,  <45.088348, 35.949821, 51.575603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980858, 35.584190, 51.454117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689457, -0.402727, 0.602047,
		-0.672633, -0.047610, 0.738443,
		-0.268728, -0.914081, -0.303712,
		44.900238, 35.309967, 51.363003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006817, 35.476700, 52.093212>,  <45.088348, 35.949821, 51.575603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006817, 35.476700, 52.093212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074165, 35.228596, 51.786766>,  <45.114574, 35.079735, 51.602898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074165, 35.228596, 51.786766>,  <45.006817, 35.476700, 52.093212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074165, 35.228596, 51.786766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680206, -0.489399, 0.545718,
		-0.713421, -0.613000, 0.339500,
		0.168375, -0.620257, -0.766114,
		45.124680, 35.042519, 51.556931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187168, 34.832729, 52.415634>,  <45.006817, 35.476700, 52.093212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187168, 34.832729, 52.415634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287395, 34.791031, 52.030647>,  <45.347534, 34.766010, 51.799656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287395, 34.791031, 52.030647>,  <45.187168, 34.832729, 52.415634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287395, 34.791031, 52.030647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856948, -0.438647, 0.270609,
		-0.450395, -0.892592, -0.020577,
		0.250570, -0.104248, -0.962469,
		45.362568, 34.759758, 51.741905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434883, 34.131382, 52.374603>,  <45.187168, 34.832729, 52.415634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434883, 34.131382, 52.374603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596664, 34.352669, 52.083298>,  <45.693733, 34.485443, 51.908516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596664, 34.352669, 52.083298>,  <45.434883, 34.131382, 52.374603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596664, 34.352669, 52.083298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896218, -0.398425, 0.195068,
		-0.182242, -0.731577, -0.656949,
		0.404453, 0.553220, -0.728262,
		45.717999, 34.518635, 51.864819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844608, 33.646931, 52.034286>,  <45.434883, 34.131382, 52.374603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844608, 33.646931, 52.034286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972546, 34.012089, 51.932835>,  <46.049309, 34.231182, 51.871964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972546, 34.012089, 51.932835>,  <45.844608, 33.646931, 52.034286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972546, 34.012089, 51.932835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939690, -0.271408, 0.208135,
		0.121169, -0.304900, -0.944645,
		0.319845, 0.912893, -0.253626,
		46.068501, 34.285957, 51.856747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432709, 33.499146, 51.731838>,  <45.844608, 33.646931, 52.034286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432709, 33.499146, 51.731838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450439, 33.884594, 51.837269>,  <46.461079, 34.115864, 51.900528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450439, 33.884594, 51.837269>,  <46.432709, 33.499146, 51.731838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450439, 33.884594, 51.837269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930153, -0.136070, 0.341029,
		0.364487, 0.230052, -0.902344,
		0.044327, 0.963619, 0.263579,
		46.463737, 34.173679, 51.916344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095592, 33.739960, 51.481201>,  <46.432709, 33.499146, 51.731838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095592, 33.739960, 51.481201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981373, 34.011234, 51.752060>,  <46.912842, 34.174000, 51.914574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981373, 34.011234, 51.752060>,  <47.095592, 33.739960, 51.481201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981373, 34.011234, 51.752060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949593, 0.104844, 0.295433,
		0.129363, 0.727374, -0.673938,
		-0.285549, 0.678185, 0.677146,
		46.895710, 34.214691, 51.955204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.460690, 34.395451, 51.250507>,  <47.095592, 33.739960, 51.481201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.460690, 34.395451, 51.250507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338974, 34.433804, 51.629604>,  <47.265945, 34.456814, 51.857063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338974, 34.433804, 51.629604>,  <47.460690, 34.395451, 51.250507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338974, 34.433804, 51.629604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952268, 0.056115, 0.300060,
		-0.024413, 0.993810, -0.108379,
		-0.304284, 0.095881, 0.947743,
		47.247688, 34.462566, 51.913929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581196, 35.054771, 51.448662>,  <47.460690, 34.395451, 51.250507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581196, 35.054771, 51.448662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590008, 34.813377, 51.767490>,  <47.595295, 34.668541, 51.958786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590008, 34.813377, 51.767490>,  <47.581196, 35.054771, 51.448662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.590008, 34.813377, 51.767490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984601, 0.151394, 0.087416,
		-0.173426, 0.782869, 0.597528,
		0.022027, -0.603486, 0.797069,
		47.596615, 34.632332, 52.006611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.386959, 35.207600, 51.368584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.456175, 35.129673, 51.754765>,  <24.497704, 35.082916, 51.986473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.456175, 35.129673, 51.754765>,  <24.386959, 35.207600, 51.368584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456175, 35.129673, 51.754765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982837, 0.097791, -0.156422,
		-0.063940, 0.975953, 0.208391,
		0.173040, -0.194813, 0.965456,
		24.508087, 35.071228, 52.044403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782454, 35.716232, 51.499191>,  <24.386959, 35.207600, 51.368584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782454, 35.716232, 51.499191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.834431, 35.423798, 51.767113>,  <24.865616, 35.248337, 51.927864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.834431, 35.423798, 51.767113>,  <24.782454, 35.716232, 51.499191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834431, 35.423798, 51.767113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981412, -0.001385, -0.191905,
		0.141226, 0.682286, 0.717315,
		0.129941, -0.731084, 0.669799,
		24.873413, 35.204472, 51.968052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467607, 35.925953, 51.807911>,  <24.782454, 35.716232, 51.499191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467607, 35.925953, 51.807911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.406996, 35.540165, 51.894478>,  <25.370628, 35.308693, 51.946419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.406996, 35.540165, 51.894478>,  <25.467607, 35.925953, 51.807911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406996, 35.540165, 51.894478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987924, -0.154933, 0.001246,
		0.032329, 0.213996, 0.976299,
		-0.151527, -0.964470, 0.216421,
		25.361538, 35.250824, 51.959404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985245, 35.764145, 52.240772>,  <25.467607, 35.925953, 51.807911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985245, 35.764145, 52.240772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.869579, 35.414726, 52.084156>,  <25.800180, 35.205074, 51.990185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.869579, 35.414726, 52.084156>,  <25.985245, 35.764145, 52.240772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869579, 35.414726, 52.084156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951747, -0.306255, -0.019628,
		-0.102766, -0.378325, 0.919951,
		-0.289165, -0.873543, -0.391542,
		25.782829, 35.152664, 51.966694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237976, 35.193630, 52.675133>,  <25.985245, 35.764145, 52.240772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237976, 35.193630, 52.675133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.186960, 35.059193, 52.301872>,  <26.156351, 34.978531, 52.077915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.186960, 35.059193, 52.301872>,  <26.237976, 35.193630, 52.675133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186960, 35.059193, 52.301872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983642, -0.163530, -0.075540,
		-0.127211, -0.927524, 0.351448,
		-0.127537, -0.336090, -0.933155,
		26.148699, 34.958366, 52.021927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508236, 34.411003, 52.699272>,  <26.237976, 35.193630, 52.675133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508236, 34.411003, 52.699272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.509954, 34.552670, 52.325203>,  <26.510986, 34.637669, 52.100761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.509954, 34.552670, 52.325203>,  <26.508236, 34.411003, 52.699272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509954, 34.552670, 52.325203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937651, -0.326453, -0.119325,
		-0.347551, -0.876352, -0.333491,
		0.004298, 0.354170, -0.935171,
		26.511244, 34.658920, 52.044651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669601, 33.799206, 52.319023>,  <26.508236, 34.411003, 52.699272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669601, 33.799206, 52.319023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.744715, 34.123974, 52.097927>,  <26.789782, 34.318836, 51.965271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.744715, 34.123974, 52.097927>,  <26.669601, 33.799206, 52.319023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744715, 34.123974, 52.097927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899362, -0.368343, -0.235522,
		-0.394823, -0.452887, -0.799380,
		0.187782, 0.811922, -0.552740,
		26.801048, 34.367550, 51.932106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043158, 33.509319, 51.745335>,  <26.669601, 33.799206, 52.319023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043158, 33.509319, 51.745335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.115660, 33.902252, 51.726700>,  <27.159161, 34.138012, 51.715519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.115660, 33.902252, 51.726700>,  <27.043158, 33.509319, 51.745335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115660, 33.902252, 51.726700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926527, -0.186456, -0.326777,
		-0.329690, 0.016066, -0.943953,
		0.181256, 0.982332, -0.046587,
		27.170036, 34.196953, 51.712723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444302, 33.502342, 51.196796>,  <27.043158, 33.509319, 51.745335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444302, 33.502342, 51.196796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543318, 33.843117, 51.381371>,  <27.602728, 34.047581, 51.492115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543318, 33.843117, 51.381371>,  <27.444302, 33.502342, 51.196796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543318, 33.843117, 51.381371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940205, -0.096216, -0.326736,
		-0.233962, 0.514724, -0.824816,
		0.247540, 0.851940, 0.461435,
		27.617580, 34.098698, 51.519802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064405, 33.642689, 50.864803>,  <27.444302, 33.502342, 51.196796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064405, 33.642689, 50.864803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.068476, 33.923592, 51.149544>,  <28.070919, 34.092133, 51.320389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.068476, 33.923592, 51.149544>,  <28.064405, 33.642689, 50.864803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068476, 33.923592, 51.149544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980855, 0.131438, -0.143690,
		-0.194471, 0.699687, -0.687473,
		0.010178, 0.702255, 0.711853,
		28.071529, 34.134270, 51.363098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505970, 34.196468, 50.710258>,  <28.064405, 33.642689, 50.864803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505970, 34.196468, 50.710258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.469707, 34.278801, 51.100010>,  <28.447950, 34.328201, 51.333862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.469707, 34.278801, 51.100010>,  <28.505970, 34.196468, 50.710258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469707, 34.278801, 51.100010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896512, 0.442904, -0.010152,
		-0.433646, 0.872622, -0.224682,
		-0.090654, 0.205833, 0.974379,
		28.442511, 34.340549, 51.392323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657995, 34.903069, 50.822815>,  <28.505970, 34.196468, 50.710258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657995, 34.903069, 50.822815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.754618, 34.723312, 51.166836>,  <28.812592, 34.615459, 51.373249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.754618, 34.723312, 51.166836>,  <28.657995, 34.903069, 50.822815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754618, 34.723312, 51.166836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923685, 0.378127, -0.061849,
		-0.297416, 0.809361, 0.506438,
		0.241556, -0.449394, 0.860056,
		28.827084, 34.588493, 51.424854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966539, 35.440838, 51.176502>,  <28.657995, 34.903069, 50.822815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966539, 35.440838, 51.176502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.100801, 35.104141, 51.345646>,  <29.181358, 34.902122, 51.447132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.100801, 35.104141, 51.345646>,  <28.966539, 35.440838, 51.176502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100801, 35.104141, 51.345646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924021, 0.381465, 0.025873,
		-0.183086, 0.382048, 0.905825,
		0.335656, -0.841738, 0.422862,
		29.201498, 34.851620, 51.472504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325281, 35.587833, 51.795113>,  <28.966539, 35.440838, 51.176502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325281, 35.587833, 51.795113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.469515, 35.245865, 51.645931>,  <29.556055, 35.040684, 51.556423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.469515, 35.245865, 51.645931>,  <29.325281, 35.587833, 51.795113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469515, 35.245865, 51.645931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931536, 0.309883, 0.190300,
		-0.047120, -0.416036, 0.908126,
		0.360585, -0.854919, -0.372951,
		29.577690, 34.989388, 51.534046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934261, 35.448627, 52.149822>,  <29.325281, 35.587833, 51.795113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934261, 35.448627, 52.149822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.989025, 35.200001, 51.841301>,  <30.021883, 35.050823, 51.656189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.989025, 35.200001, 51.841301>,  <29.934261, 35.448627, 52.149822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989025, 35.200001, 51.841301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987823, 0.143753, 0.059497,
		0.073896, -0.770058, 0.633679,
		0.136909, -0.621567, -0.771304,
		30.030098, 35.013531, 51.609909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687664, 35.145515, 52.189758>,  <29.934261, 35.448627, 52.149822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687664, 35.145515, 52.189758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558191, 35.019920, 51.832741>,  <30.480509, 34.944565, 51.618530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558191, 35.019920, 51.832741>,  <30.687664, 35.145515, 52.189758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558191, 35.019920, 51.832741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941061, -0.008970, -0.338117,
		0.098159, -0.949384, 0.298386,
		-0.323679, -0.313989, -0.892548,
		30.461088, 34.925724, 51.564976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172178, 34.714424, 51.970474>,  <30.687664, 35.145515, 52.189758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172178, 34.714424, 51.970474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.983524, 34.833988, 51.638638>,  <30.870333, 34.905727, 51.439537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.983524, 34.833988, 51.638638>,  <31.172178, 34.714424, 51.970474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983524, 34.833988, 51.638638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872450, 0.021580, -0.488226,
		-0.128032, -0.954039, -0.270958,
		-0.471633, 0.298906, -0.829589,
		30.842033, 34.923660, 51.389763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458721, 34.269337, 51.371002>,  <31.172178, 34.714424, 51.970474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458721, 34.269337, 51.371002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304193, 34.598473, 51.204296>,  <31.211477, 34.795952, 51.104271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304193, 34.598473, 51.204296>,  <31.458721, 34.269337, 51.371002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304193, 34.598473, 51.204296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764070, 0.032379, -0.644320,
		-0.516675, -0.567355, -0.641213,
		-0.386320, 0.822836, -0.416770,
		31.188297, 34.845322, 51.079266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434820, 34.164707, 50.729824>,  <31.458721, 34.269337, 51.371002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434820, 34.164707, 50.729824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.434198, 34.564434, 50.744598>,  <31.433826, 34.804272, 50.753464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.434198, 34.564434, 50.744598>,  <31.434820, 34.164707, 50.729824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434198, 34.564434, 50.744598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726712, 0.026500, -0.686431,
		-0.686941, 0.025775, -0.726256,
		-0.001553, 0.999316, 0.036935,
		31.433733, 34.864227, 50.755680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712454, 34.355431, 50.050335>,  <31.434820, 34.164707, 50.729824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712454, 34.355431, 50.050335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741293, 34.687931, 50.270817>,  <31.758596, 34.887432, 50.403107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741293, 34.687931, 50.270817>,  <31.712454, 34.355431, 50.050335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741293, 34.687931, 50.270817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617129, 0.396977, -0.679383,
		-0.783552, 0.389147, -0.484366,
		0.072098, 0.831249, 0.551206,
		31.762922, 34.937305, 50.436180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648241, 34.847790, 49.640915>,  <31.712454, 34.355431, 50.050335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648241, 34.847790, 49.640915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.837620, 35.031979, 49.941265>,  <31.951246, 35.142494, 50.121475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.837620, 35.031979, 49.941265>,  <31.648241, 34.847790, 49.640915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837620, 35.031979, 49.941265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694940, 0.328513, -0.639639,
		-0.541209, 0.824647, -0.164468,
		0.473447, 0.460474, 0.750874,
		31.979654, 35.170120, 50.166527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.082623, 35.306847, 35.278362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.228735, 35.231888, 34.913628>,  <24.316402, 35.186913, 34.694786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.228735, 35.231888, 34.913628>,  <24.082623, 35.306847, 35.278362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228735, 35.231888, 34.913628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909515, 0.280584, 0.306684,
		0.198376, -0.941358, 0.272931,
		0.365279, -0.187396, -0.911841,
		24.338318, 35.175671, 34.640076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832842, 35.062130, 35.329597>,  <24.082623, 35.306847, 35.278362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832842, 35.062130, 35.329597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.777096, 35.222271, 34.967316>,  <24.743649, 35.318356, 34.749947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.777096, 35.222271, 34.967316>,  <24.832842, 35.062130, 35.329597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777096, 35.222271, 34.967316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911631, 0.409006, 0.040521,
		0.386660, -0.820017, -0.421978,
		-0.139364, 0.400357, -0.905700,
		24.735287, 35.342377, 34.695606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511967, 35.116543, 35.144444>,  <24.832842, 35.062130, 35.329597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511967, 35.116543, 35.144444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.817757, 35.372982, 35.117409>,  <26.001230, 35.526848, 35.101189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.817757, 35.372982, 35.117409>,  <25.511967, 35.116543, 35.144444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817757, 35.372982, 35.117409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118000, -0.036097, 0.992357,
		0.633762, -0.766607, -0.103245,
		0.764475, 0.641101, -0.067582,
		26.047100, 35.565311, 35.097134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036938, 34.801716, 35.540051>,  <25.511967, 35.116543, 35.144444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036938, 34.801716, 35.540051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.102211, 35.195972, 35.522709>,  <26.141375, 35.432526, 35.512302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.102211, 35.195972, 35.522709>,  <26.036938, 34.801716, 35.540051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102211, 35.195972, 35.522709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239648, 0.003029, 0.970855,
		0.957047, -0.168818, -0.235713,
		0.163184, 0.985642, -0.043356,
		26.151167, 35.491665, 35.509701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770029, 35.059494, 35.751629>,  <26.036938, 34.801716, 35.540051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770029, 35.059494, 35.751629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.470181, 35.315125, 35.820511>,  <26.290272, 35.468502, 35.861839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.470181, 35.315125, 35.820511>,  <26.770029, 35.059494, 35.751629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470181, 35.315125, 35.820511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292844, 0.086923, 0.952201,
		0.593558, 0.764218, -0.252308,
		-0.749621, 0.639073, 0.172203,
		26.245295, 35.506847, 35.872173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055817, 35.774254, 35.890327>,  <26.770029, 35.059494, 35.751629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055817, 35.774254, 35.890327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.697096, 35.725597, 36.060478>,  <26.481863, 35.696404, 36.162571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.697096, 35.725597, 36.060478>,  <27.055817, 35.774254, 35.890327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697096, 35.725597, 36.060478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348530, 0.398015, 0.848593,
		-0.272529, 0.909279, -0.314547,
		-0.896803, -0.121637, 0.425382,
		26.428055, 35.689106, 36.188091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887241, 36.411900, 36.285465>,  <27.055817, 35.774254, 35.890327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887241, 36.411900, 36.285465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.667561, 36.119053, 36.446655>,  <26.535753, 35.943344, 36.543369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.667561, 36.119053, 36.446655>,  <26.887241, 36.411900, 36.285465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667561, 36.119053, 36.446655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092272, 0.426131, 0.899943,
		-0.830581, 0.531433, -0.166478,
		-0.549201, -0.732115, 0.402973,
		26.502800, 35.899418, 36.567547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389706, 36.761341, 36.725834>,  <26.887241, 36.411900, 36.285465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389706, 36.761341, 36.725834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.471821, 36.380692, 36.817276>,  <26.521090, 36.152302, 36.872143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.471821, 36.380692, 36.817276>,  <26.389706, 36.761341, 36.725834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471821, 36.380692, 36.817276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176661, 0.265775, 0.947710,
		-0.962625, -0.154169, 0.222676,
		0.205289, -0.951628, 0.228606,
		26.533407, 36.095203, 36.885857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025747, 36.541512, 37.333210>,  <26.389706, 36.761341, 36.725834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025747, 36.541512, 37.333210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.366121, 36.332600, 37.310810>,  <26.570345, 36.207253, 37.297371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.366121, 36.332600, 37.310810>,  <26.025747, 36.541512, 37.333210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366121, 36.332600, 37.310810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220907, 0.259099, 0.940249,
		-0.476560, -0.812462, 0.335851,
		0.850935, -0.522277, -0.056002,
		26.621403, 36.175915, 37.294010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135550, 36.074272, 37.873833>,  <26.025747, 36.541512, 37.333210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135550, 36.074272, 37.873833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.492180, 36.205688, 37.749157>,  <26.706158, 36.284538, 37.674351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.492180, 36.205688, 37.749157>,  <26.135550, 36.074272, 37.873833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492180, 36.205688, 37.749157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213401, 0.302262, 0.929031,
		0.399440, -0.894816, 0.199378,
		0.891575, 0.328545, -0.311690,
		26.759653, 36.304253, 37.655651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750349, 35.753799, 38.142769>,  <26.135550, 36.074272, 37.873833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750349, 35.753799, 38.142769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.880909, 36.120285, 38.049797>,  <26.959246, 36.340176, 37.994015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.880909, 36.120285, 38.049797>,  <26.750349, 35.753799, 38.142769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880909, 36.120285, 38.049797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144391, 0.194678, 0.970181,
		0.934138, -0.350227, -0.068750,
		0.326400, 0.916210, -0.232426,
		26.978828, 36.395149, 37.980068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417900, 35.809288, 38.448116>,  <26.750349, 35.753799, 38.142769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417900, 35.809288, 38.448116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259745, 36.170429, 38.380550>,  <27.164852, 36.387112, 38.340012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259745, 36.170429, 38.380550>,  <27.417900, 35.809288, 38.448116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259745, 36.170429, 38.380550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292698, 0.298161, 0.908530,
		0.870630, 0.309781, -0.382151,
		-0.395388, 0.902848, -0.168916,
		27.141129, 36.441284, 38.329876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939774, 36.311451, 38.453403>,  <27.417900, 35.809288, 38.448116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939774, 36.311451, 38.453403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.603302, 36.508797, 38.541962>,  <27.401419, 36.627205, 38.595097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.603302, 36.508797, 38.541962>,  <27.939774, 36.311451, 38.453403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603302, 36.508797, 38.541962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410653, 0.316429, 0.855124,
		0.351831, 0.810225, -0.468774,
		-0.841177, 0.493363, 0.221392,
		27.350948, 36.656807, 38.608379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171244, 36.988262, 38.599846>,  <27.939774, 36.311451, 38.453403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171244, 36.988262, 38.599846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837223, 36.868027, 38.784164>,  <27.636810, 36.795883, 38.894756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837223, 36.868027, 38.784164>,  <28.171244, 36.988262, 38.599846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837223, 36.868027, 38.784164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411740, 0.214083, 0.885798,
		-0.364913, 0.929415, -0.055004,
		-0.835050, -0.300592, 0.460799,
		27.586708, 36.777847, 38.922405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879471, 37.486164, 39.132301>,  <28.171244, 36.988262, 38.599846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879471, 37.486164, 39.132301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.799429, 37.105984, 39.227470>,  <27.751404, 36.877876, 39.284573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.799429, 37.105984, 39.227470>,  <27.879471, 37.486164, 39.132301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799429, 37.105984, 39.227470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501568, 0.109234, 0.858194,
		-0.841658, 0.291065, 0.454855,
		-0.200104, -0.950447, 0.237926,
		27.739397, 36.820850, 39.298847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720621, 37.443283, 39.921364>,  <27.879471, 37.486164, 39.132301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720621, 37.443283, 39.921364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.868025, 37.099709, 39.779137>,  <27.956467, 36.893562, 39.693802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.868025, 37.099709, 39.779137>,  <27.720621, 37.443283, 39.921364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868025, 37.099709, 39.779137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542349, -0.112000, 0.832655,
		-0.755022, -0.499682, 0.424570,
		0.368511, -0.858938, -0.355564,
		27.978579, 36.842026, 39.672466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721651, 37.100281, 40.466415>,  <27.720621, 37.443283, 39.921364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721651, 37.100281, 40.466415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989096, 36.923061, 40.227528>,  <28.149563, 36.816730, 40.084194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989096, 36.923061, 40.227528>,  <27.721651, 37.100281, 40.466415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989096, 36.923061, 40.227528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642488, -0.060167, 0.763930,
		-0.374393, -0.894475, 0.244427,
		0.668609, -0.443052, -0.597216,
		28.189678, 36.790146, 40.048363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944731, 36.577690, 40.803989>,  <27.721651, 37.100281, 40.466415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944731, 36.577690, 40.803989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248398, 36.586128, 40.543766>,  <28.430597, 36.591190, 40.387634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248398, 36.586128, 40.543766>,  <27.944731, 36.577690, 40.803989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248398, 36.586128, 40.543766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631990, -0.263035, 0.728973,
		-0.155743, -0.964556, -0.213017,
		0.759166, 0.021092, -0.650555,
		28.476147, 36.592457, 40.348598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132462, 35.841408, 40.861252>,  <27.944731, 36.577690, 40.803989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132462, 35.841408, 40.861252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.401720, 36.133137, 40.812325>,  <28.563274, 36.308174, 40.782967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.401720, 36.133137, 40.812325>,  <28.132462, 35.841408, 40.861252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401720, 36.133137, 40.812325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463120, -0.286797, 0.838610,
		0.576537, -0.621156, -0.530820,
		0.673145, 0.729323, -0.122321,
		28.603664, 36.351933, 40.775627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729177, 35.558125, 40.923279>,  <28.132462, 35.841408, 40.861252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729177, 35.558125, 40.923279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799450, 35.942204, 41.010147>,  <28.841614, 36.172649, 41.062267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799450, 35.942204, 41.010147>,  <28.729177, 35.558125, 40.923279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799450, 35.942204, 41.010147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482672, -0.276283, 0.831080,
		0.857999, -0.041183, -0.511997,
		0.175683, 0.960193, 0.217173,
		28.852156, 36.230263, 41.075298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883913, 35.753056, 41.613621>,  <28.729177, 35.558125, 40.923279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883913, 35.753056, 41.613621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145388, 35.560429, 41.380112>,  <29.302273, 35.444855, 41.240005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145388, 35.560429, 41.380112>,  <28.883913, 35.753056, 41.613621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145388, 35.560429, 41.380112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197750, -0.635904, 0.746003,
		-0.730472, -0.603093, -0.320452,
		0.653686, -0.481565, -0.583771,
		29.341494, 35.415958, 41.204979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823011, 35.527874, 42.349270>,  <28.883913, 35.753056, 41.613621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823011, 35.527874, 42.349270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.123066, 35.313816, 42.504662>,  <29.303099, 35.185379, 42.597897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.123066, 35.313816, 42.504662>,  <28.823011, 35.527874, 42.349270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123066, 35.313816, 42.504662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551478, 0.830433, 0.079078,
		-0.364921, 0.154916, 0.918060,
		0.750137, -0.535147, 0.388475,
		29.348106, 35.153271, 42.621204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002413, 35.844688, 43.030128>,  <28.823011, 35.527874, 42.349270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002413, 35.844688, 43.030128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.302853, 35.670238, 42.831879>,  <29.483116, 35.565567, 42.712929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.302853, 35.670238, 42.831879>,  <29.002413, 35.844688, 43.030128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302853, 35.670238, 42.831879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593423, 0.774989, 0.217352,
		0.289313, -0.457369, 0.840899,
		0.751098, -0.436126, -0.495627,
		29.528181, 35.539402, 42.683189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685947, 35.771988, 43.503159>,  <29.002413, 35.844688, 43.030128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685947, 35.771988, 43.503159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730755, 35.824642, 43.109180>,  <29.757639, 35.856236, 42.872791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730755, 35.824642, 43.109180>,  <29.685947, 35.771988, 43.503159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730755, 35.824642, 43.109180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331536, 0.929444, 0.161918,
		0.936769, -0.344684, 0.060474,
		0.112018, 0.131631, -0.984949,
		29.764360, 35.864132, 42.813694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395742, 35.940826, 43.478855>,  <29.685947, 35.771988, 43.503159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395742, 35.940826, 43.478855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177795, 36.118538, 43.194397>,  <30.047028, 36.225166, 43.023720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177795, 36.118538, 43.194397>,  <30.395742, 35.940826, 43.478855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177795, 36.118538, 43.194397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182056, 0.890547, 0.416872,
		0.818518, 0.097672, -0.566116,
		-0.544870, 0.444282, -0.711147,
		30.014334, 36.251823, 42.981052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798874, 36.552952, 43.332432>,  <30.395742, 35.940826, 43.478855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798874, 36.552952, 43.332432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410635, 36.596104, 43.246361>,  <30.177692, 36.621994, 43.194717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410635, 36.596104, 43.246361>,  <30.798874, 36.552952, 43.332432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410635, 36.596104, 43.246361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004604, 0.902104, 0.431494,
		0.240663, 0.417816, -0.876077,
		-0.970598, 0.107878, -0.215179,
		30.119455, 36.628468, 43.181808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628407, 37.239395, 43.458977>,  <30.798874, 36.552952, 43.332432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628407, 37.239395, 43.458977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252089, 37.120792, 43.393265>,  <30.026297, 37.049633, 43.353836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252089, 37.120792, 43.393265>,  <30.628407, 37.239395, 43.458977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252089, 37.120792, 43.393265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335102, 0.886562, 0.318926,
		0.051085, 0.355096, -0.933433,
		-0.940796, -0.296503, -0.164284,
		29.969851, 37.031841, 43.343979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648191, 37.681423, 44.045353>,  <30.628407, 37.239395, 43.458977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648191, 37.681423, 44.045353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534948, 37.380154, 44.282864>,  <30.467003, 37.199390, 44.425369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534948, 37.380154, 44.282864>,  <30.648191, 37.681423, 44.045353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534948, 37.380154, 44.282864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439491, 0.448405, 0.778319,
		-0.852466, 0.481308, 0.204068,
		-0.283106, -0.753177, 0.593781,
		30.450016, 37.154202, 44.460999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306253, 37.936516, 44.729660>,  <30.648191, 37.681423, 44.045353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306253, 37.936516, 44.729660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543196, 37.617279, 44.773769>,  <30.685360, 37.425735, 44.800236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543196, 37.617279, 44.773769>,  <30.306253, 37.936516, 44.729660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543196, 37.617279, 44.773769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622260, 0.540138, 0.566608,
		-0.511770, -0.267013, 0.816575,
		0.592354, -0.798095, 0.110275,
		30.720901, 37.377850, 44.806850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532654, 37.797638, 45.427742>,  <30.306253, 37.936516, 44.729660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532654, 37.797638, 45.427742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809935, 37.643711, 45.183975>,  <30.976303, 37.551357, 45.037716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809935, 37.643711, 45.183975>,  <30.532654, 37.797638, 45.427742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809935, 37.643711, 45.183975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704881, 0.538389, 0.461822,
		0.150390, -0.749704, 0.644458,
		0.693200, -0.384813, -0.609421,
		31.017895, 37.528267, 45.001148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394211, 37.788269, 46.221008>,  <30.532654, 37.797638, 45.427742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394211, 37.788269, 46.221008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.212915, 38.139069, 46.157200>,  <30.104137, 38.349548, 46.118916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.212915, 38.139069, 46.157200>,  <30.394211, 37.788269, 46.221008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212915, 38.139069, 46.157200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412012, 0.364809, 0.834962,
		0.790456, 0.312711, -0.526679,
		-0.453239, 0.876998, -0.159525,
		30.076944, 38.402168, 46.109341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819801, 38.356876, 46.003181>,  <30.394211, 37.788269, 46.221008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819801, 38.356876, 46.003181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.511208, 38.426743, 46.247902>,  <30.326052, 38.468662, 46.394733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.511208, 38.426743, 46.247902>,  <30.819801, 38.356876, 46.003181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511208, 38.426743, 46.247902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630729, 0.083604, 0.771486,
		0.083604, 0.981072, -0.174668,
		-0.771486, 0.174668, 0.611801,
		30.279762, 38.479141, 46.431442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658430, 38.988991, 46.411324>,  <30.819801, 38.356876, 46.003181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658430, 38.988991, 46.411324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515163, 38.676010, 46.615086>,  <30.429203, 38.488224, 46.737343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515163, 38.676010, 46.615086>,  <30.658430, 38.988991, 46.411324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515163, 38.676010, 46.615086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630296, 0.199880, 0.750183,
		-0.688799, 0.589765, 0.421584,
		-0.358165, -0.782448, 0.509404,
		30.407713, 38.441277, 46.767906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591129, 39.242130, 47.057503>,  <30.658430, 38.988991, 46.411324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591129, 39.242130, 47.057503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626225, 38.845100, 47.091183>,  <30.647282, 38.606880, 47.111393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626225, 38.845100, 47.091183>,  <30.591129, 39.242130, 47.057503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626225, 38.845100, 47.091183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592826, 0.119957, 0.796347,
		-0.800537, -0.019952, 0.598951,
		0.087737, -0.992579, 0.084202,
		30.652546, 38.547325, 47.116444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377357, 38.902657, 47.764091>,  <30.591129, 39.242130, 47.057503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377357, 38.902657, 47.764091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.682974, 38.745159, 47.559658>,  <30.866343, 38.650661, 47.436996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.682974, 38.745159, 47.559658>,  <30.377357, 38.902657, 47.764091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682974, 38.745159, 47.559658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583943, 0.085206, 0.807311,
		-0.274324, -0.915264, 0.295023,
		0.764040, -0.393741, -0.511088,
		30.912186, 38.627037, 47.406330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621664, 38.220085, 48.132565>,  <30.377357, 38.902657, 47.764091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621664, 38.220085, 48.132565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.925545, 38.393574, 47.938763>,  <31.107874, 38.497665, 47.822483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.925545, 38.393574, 47.938763>,  <30.621664, 38.220085, 48.132565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925545, 38.393574, 47.938763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522965, 0.035309, 0.851622,
		0.386472, -0.900356, -0.199996,
		0.759702, 0.433719, -0.484501,
		31.153456, 38.523689, 47.793411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370636, 37.857414, 48.231365>,  <30.621664, 38.220085, 48.132565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370636, 37.857414, 48.231365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350796, 38.255829, 48.201824>,  <31.338892, 38.494877, 48.184101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350796, 38.255829, 48.201824>,  <31.370636, 37.857414, 48.231365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350796, 38.255829, 48.201824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401167, 0.087581, 0.911808,
		0.914661, 0.015600, -0.403921,
		-0.049599, 0.996035, -0.073849,
		31.335917, 38.554638, 48.179668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654301, 37.786282, 48.859005>,  <31.370636, 37.857414, 48.231365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654301, 37.786282, 48.859005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727551, 37.819012, 49.250877>,  <31.771500, 37.838650, 49.486000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727551, 37.819012, 49.250877>,  <31.654301, 37.786282, 48.859005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727551, 37.819012, 49.250877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977455, -0.091394, 0.190341,
		0.105112, -0.992447, 0.063244,
		0.183124, 0.081826, 0.979679,
		31.782488, 37.843559, 49.544781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745810, 37.154049, 48.457245>,  <31.654301, 37.786282, 48.859005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745810, 37.154049, 48.457245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701422, 37.219391, 48.849369>,  <31.674789, 37.258598, 49.084644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701422, 37.219391, 48.849369>,  <31.745810, 37.154049, 48.457245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701422, 37.219391, 48.849369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681543, -0.730419, 0.044569,
		0.723315, -0.663175, 0.192390,
		-0.110968, 0.163359, 0.980306,
		31.668131, 37.268398, 49.143459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839376, 36.517303, 48.762230>,  <31.745810, 37.154049, 48.457245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839376, 36.517303, 48.762230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590061, 36.778286, 48.934654>,  <31.440472, 36.934875, 49.038109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590061, 36.778286, 48.934654>,  <31.839376, 36.517303, 48.762230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590061, 36.778286, 48.934654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733383, -0.679031, -0.032641,
		0.271408, -0.336479, 0.901732,
		-0.623287, 0.652456, 0.431063,
		31.403074, 36.974022, 49.063972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356846, 36.514462, 49.463120>,  <31.839376, 36.517303, 48.762230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356846, 36.514462, 49.463120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478905, 36.178970, 49.643532>,  <32.552139, 35.977676, 49.751778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478905, 36.178970, 49.643532>,  <32.356846, 36.514462, 49.463120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478905, 36.178970, 49.643532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859490, 0.038610, -0.509692,
		0.410077, 0.543186, 0.732657,
		0.305146, -0.838724, 0.451030,
		32.570450, 35.927353, 49.778839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009720, 36.667725, 49.833885>,  <32.356846, 36.514462, 49.463120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009720, 36.667725, 49.833885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970989, 36.277576, 49.754620>,  <32.947750, 36.043488, 49.707062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970989, 36.277576, 49.754620>,  <33.009720, 36.667725, 49.833885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970989, 36.277576, 49.754620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953182, -0.033568, -0.300529,
		0.286476, -0.217985, 0.932960,
		-0.096829, -0.975375, -0.198163,
		32.941940, 35.984962, 49.695171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535748, 36.315147, 50.202621>,  <33.009720, 36.667725, 49.833885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535748, 36.315147, 50.202621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440208, 36.078529, 49.894588>,  <33.382885, 35.936558, 49.709770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440208, 36.078529, 49.894588>,  <33.535748, 36.315147, 50.202621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440208, 36.078529, 49.894588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945946, 0.037436, -0.322155,
		0.219397, -0.805405, 0.550624,
		-0.238852, -0.591541, -0.770084,
		33.368553, 35.901066, 49.663563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178162, 35.954105, 50.055714>,  <33.535748, 36.315147, 50.202621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178162, 35.954105, 50.055714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947830, 35.854107, 49.744350>,  <33.809631, 35.794109, 49.557533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947830, 35.854107, 49.744350>,  <34.178162, 35.954105, 50.055714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947830, 35.854107, 49.744350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813542, -0.080839, -0.575860,
		0.081036, -0.964867, 0.249931,
		-0.575832, -0.249995, -0.778408,
		33.775082, 35.779110, 49.510826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457611, 35.339462, 49.778736>,  <34.178162, 35.954105, 50.055714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457611, 35.339462, 49.778736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268105, 35.537083, 49.487129>,  <34.154400, 35.655655, 49.312164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268105, 35.537083, 49.487129>,  <34.457611, 35.339462, 49.778736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268105, 35.537083, 49.487129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827500, -0.033490, -0.560466,
		-0.301312, -0.868789, -0.392959,
		-0.473767, 0.494049, -0.729014,
		34.125973, 35.685299, 49.268425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628357, 34.939716, 49.322361>,  <34.457611, 35.339462, 49.778736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628357, 34.939716, 49.322361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489418, 35.256733, 49.121868>,  <34.406055, 35.446941, 49.001572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489418, 35.256733, 49.121868>,  <34.628357, 34.939716, 49.322361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489418, 35.256733, 49.121868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683208, -0.152243, -0.714178,
		-0.642323, -0.590510, -0.488589,
		-0.347345, 0.792540, -0.501230,
		34.385216, 35.494495, 48.971500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614693, 34.876614, 48.618664>,  <34.628357, 34.939716, 49.322361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614693, 34.876614, 48.618664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588326, 35.275742, 48.617298>,  <34.572506, 35.515217, 48.616478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588326, 35.275742, 48.617298>,  <34.614693, 34.876614, 48.618664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588326, 35.275742, 48.617298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715543, 0.044886, -0.697126,
		-0.695452, -0.048395, -0.716941,
		-0.065918, 0.997819, -0.003412,
		34.568550, 35.575089, 48.616276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670044, 35.064720, 47.866344>,  <34.614693, 34.876614, 48.618664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670044, 35.064720, 47.866344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772465, 35.403816, 48.052155>,  <34.833920, 35.607273, 48.163639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772465, 35.403816, 48.052155>,  <34.670044, 35.064720, 47.866344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772465, 35.403816, 48.052155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732714, 0.143236, -0.665292,
		-0.630527, 0.510713, -0.584472,
		0.256056, 0.847735, 0.464521,
		34.849281, 35.658138, 48.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844517, 35.506634, 47.349400>,  <34.670044, 35.064720, 47.866344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844517, 35.506634, 47.349400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006176, 35.658680, 47.682190>,  <35.103172, 35.749908, 47.881863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006176, 35.658680, 47.682190>,  <34.844517, 35.506634, 47.349400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006176, 35.658680, 47.682190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870776, 0.118568, -0.477170,
		-0.280025, 0.917308, -0.283076,
		0.404148, 0.380116, 0.831971,
		35.127422, 35.772717, 47.931782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032635, 36.087242, 47.153118>,  <34.844517, 35.506634, 47.349400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032635, 36.087242, 47.153118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252621, 35.997902, 47.475025>,  <35.384613, 35.944298, 47.668167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252621, 35.997902, 47.475025>,  <35.032635, 36.087242, 47.153118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252621, 35.997902, 47.475025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827523, 0.275954, -0.488932,
		-0.112873, 0.934859, 0.336597,
		0.549968, -0.223355, 0.804765,
		35.417610, 35.930897, 47.716454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513432, 36.660877, 47.251648>,  <35.032635, 36.087242, 47.153118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513432, 36.660877, 47.251648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675797, 36.352406, 47.447819>,  <35.773216, 36.167324, 47.565521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675797, 36.352406, 47.447819>,  <35.513432, 36.660877, 47.251648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675797, 36.352406, 47.447819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893687, 0.222662, -0.389546,
		0.191210, 0.596410, 0.779573,
		0.405910, -0.771179, 0.490428,
		35.797569, 36.121052, 47.594948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195766, 36.865475, 47.292419>,  <35.513432, 36.660877, 47.251648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195766, 36.865475, 47.292419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246319, 36.491608, 47.425339>,  <36.276649, 36.267288, 47.505093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246319, 36.491608, 47.425339>,  <36.195766, 36.865475, 47.292419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246319, 36.491608, 47.425339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834705, -0.080807, -0.544737,
		0.536000, 0.346216, 0.769960,
		0.126378, -0.934668, 0.332301,
		36.284233, 36.211208, 47.525028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775757, 36.838806, 47.608562>,  <36.195766, 36.865475, 47.292419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775757, 36.838806, 47.608562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741219, 36.450062, 47.520893>,  <36.720497, 36.216816, 47.468292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741219, 36.450062, 47.520893>,  <36.775757, 36.838806, 47.608562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741219, 36.450062, 47.520893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924695, 0.003696, -0.380690,
		0.370787, -0.235538, 0.898353,
		-0.086346, -0.971858, -0.219172,
		36.715313, 36.158504, 47.455143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244522, 36.452442, 48.078930>,  <36.775757, 36.838806, 47.608562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244522, 36.452442, 48.078930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169437, 36.309464, 47.712982>,  <37.124386, 36.223675, 47.493412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169437, 36.309464, 47.712982>,  <37.244522, 36.452442, 48.078930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169437, 36.309464, 47.712982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944449, 0.190141, -0.268072,
		0.269778, -0.914372, 0.301902,
		-0.187713, -0.357451, -0.914873,
		37.113125, 36.202229, 47.438519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670200, 35.873802, 47.898949>,  <37.244522, 36.452442, 48.078930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670200, 35.873802, 47.898949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647991, 36.118656, 47.583427>,  <37.634666, 36.265568, 47.394115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647991, 36.118656, 47.583427>,  <37.670200, 35.873802, 47.898949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647991, 36.118656, 47.583427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996251, 0.086456, -0.003038,
		0.066337, -0.786012, -0.614642,
		-0.055527, 0.612136, -0.788800,
		37.631332, 36.302296, 47.346786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320923, 36.055111, 47.574406>,  <37.670200, 35.873802, 47.898949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320923, 36.055111, 47.574406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512486, 36.179085, 47.902939>,  <38.627422, 36.253468, 48.100060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512486, 36.179085, 47.902939>,  <38.320923, 36.055111, 47.574406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512486, 36.179085, 47.902939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185485, -0.950206, 0.250406,
		0.858045, 0.032424, -0.512549,
		0.478908, 0.309930, 0.821334,
		38.656158, 36.272064, 48.149338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863686, 35.664066, 47.708885>,  <38.320923, 36.055111, 47.574406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863686, 35.664066, 47.708885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790756, 35.820095, 48.069904>,  <38.746998, 35.913712, 48.286518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790756, 35.820095, 48.069904>,  <38.863686, 35.664066, 47.708885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790756, 35.820095, 48.069904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047625, -0.913357, 0.404365,
		0.982085, 0.116709, 0.147949,
		-0.182323, 0.390075, 0.902552,
		38.736061, 35.937119, 48.340672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157116, 35.134506, 48.002663>,  <38.863686, 35.664066, 47.708885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157116, 35.134506, 48.002663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966995, 35.346935, 48.283249>,  <38.852924, 35.474392, 48.451599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966995, 35.346935, 48.283249>,  <39.157116, 35.134506, 48.002663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966995, 35.346935, 48.283249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125475, -0.830046, 0.543397,
		0.870830, 0.170260, 0.461157,
		-0.475301, 0.531070, 0.701466,
		38.824406, 35.506256, 48.493690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425583, 35.095234, 48.763073>,  <39.157116, 35.134506, 48.002663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425583, 35.095234, 48.763073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035450, 35.143795, 48.689339>,  <38.801369, 35.172932, 48.645096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035450, 35.143795, 48.689339>,  <39.425583, 35.095234, 48.763073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035450, 35.143795, 48.689339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190867, -0.883320, 0.428154,
		-0.110852, 0.452779, 0.884705,
		-0.975337, 0.121399, -0.184338,
		38.742847, 35.180214, 48.634037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229645, 34.461456, 49.114162>,  <39.425583, 35.095234, 48.763073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229645, 34.461456, 49.114162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.359627, 34.204556, 49.391842>,  <39.437618, 34.050415, 49.558449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.359627, 34.204556, 49.391842>,  <39.229645, 34.461456, 49.114162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359627, 34.204556, 49.391842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862327, 0.100182, 0.496343,
		-0.388322, -0.759921, -0.521273,
		0.324959, -0.642249, 0.694203,
		39.457115, 34.011879, 49.600101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779198, 33.841751, 49.262264>,  <39.229645, 34.461456, 49.114162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779198, 33.841751, 49.262264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000378, 33.952759, 49.576519>,  <39.133087, 34.019363, 49.765072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000378, 33.952759, 49.576519>,  <38.779198, 33.841751, 49.262264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000378, 33.952759, 49.576519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833212, 0.185933, 0.520756,
		-0.001557, -0.942557, 0.334043,
		0.552952, 0.277518, 0.785639,
		39.166264, 34.036015, 49.812210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474575, 33.515457, 49.820107>,  <38.779198, 33.841751, 49.262264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474575, 33.515457, 49.820107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681316, 33.828823, 49.958164>,  <38.805363, 34.016842, 50.041000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681316, 33.828823, 49.958164>,  <38.474575, 33.515457, 49.820107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681316, 33.828823, 49.958164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688783, 0.141136, 0.711096,
		0.508369, -0.605265, 0.612548,
		0.516854, 0.783412, 0.345147,
		38.836372, 34.063847, 50.061710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733147, 33.398922, 50.588402>,  <38.474575, 33.515457, 49.820107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733147, 33.398922, 50.588402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660408, 33.790070, 50.547012>,  <38.616764, 34.024757, 50.522179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660408, 33.790070, 50.547012>,  <38.733147, 33.398922, 50.588402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660408, 33.790070, 50.547012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402732, 0.021932, 0.915055,
		0.897072, 0.208071, 0.389831,
		-0.181847, 0.977868, -0.103472,
		38.605854, 34.083431, 50.515972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087337, 33.886234, 51.073593>,  <38.733147, 33.398922, 50.588402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087337, 33.886234, 51.073593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735065, 34.010139, 50.930233>,  <38.523705, 34.084484, 50.844215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735065, 34.010139, 50.930233>,  <39.087337, 33.886234, 51.073593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735065, 34.010139, 50.930233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329379, 0.143350, 0.933252,
		0.340465, 0.939945, -0.024215,
		-0.880677, 0.309764, -0.358404,
		38.470863, 34.103069, 50.822712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870682, 34.518116, 51.455177>,  <39.087337, 33.886234, 51.073593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870682, 34.518116, 51.455177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539207, 34.375828, 51.282326>,  <38.340321, 34.290455, 51.178616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539207, 34.375828, 51.282326>,  <38.870682, 34.518116, 51.455177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539207, 34.375828, 51.282326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559706, 0.524564, 0.641531,
		-0.001530, 0.773494, -0.633802,
		-0.828690, -0.355724, -0.432127,
		38.290600, 34.269112, 51.152687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385704, 35.096027, 51.405064>,  <38.870682, 34.518116, 51.455177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385704, 35.096027, 51.405064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171715, 34.758190, 51.413700>,  <38.043324, 34.555489, 51.418880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171715, 34.758190, 51.413700>,  <38.385704, 35.096027, 51.405064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171715, 34.758190, 51.413700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567215, 0.377982, 0.731708,
		-0.626157, 0.379196, -0.681276,
		-0.534971, -0.844594, 0.021591,
		38.011223, 34.504810, 51.420177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612705, 35.321117, 51.450073>,  <38.385704, 35.096027, 51.405064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612705, 35.321117, 51.450073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.632107, 34.940601, 51.571857>,  <37.643749, 34.712292, 51.644928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.632107, 34.940601, 51.571857>,  <37.612705, 35.321117, 51.450073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632107, 34.940601, 51.571857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573840, 0.222951, 0.788036,
		-0.817530, -0.212935, -0.535073,
		0.048506, -0.951289, 0.304460,
		37.646660, 34.655216, 51.663197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969822, 35.077770, 51.606300>,  <37.612705, 35.321117, 51.450073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969822, 35.077770, 51.606300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198334, 34.828808, 51.820309>,  <37.335442, 34.679432, 51.948715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198334, 34.828808, 51.820309>,  <36.969822, 35.077770, 51.606300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198334, 34.828808, 51.820309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511962, 0.239276, 0.825011,
		-0.641509, -0.745224, -0.181954,
		0.571280, -0.622405, 0.535024,
		37.369717, 34.642086, 51.980816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506573, 34.639549, 51.882729>,  <36.969822, 35.077770, 51.606300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506573, 34.639549, 51.882729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840508, 34.649837, 52.102688>,  <37.040867, 34.656010, 52.234661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840508, 34.649837, 52.102688>,  <36.506573, 34.639549, 51.882729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840508, 34.649837, 52.102688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544879, 0.180935, 0.818761,
		-0.078435, -0.983159, 0.165067,
		0.834839, 0.025723, 0.549894,
		37.090958, 34.657555, 52.267654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373341, 34.329052, 52.500187>,  <36.506573, 34.639549, 51.882729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373341, 34.329052, 52.500187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697838, 34.541351, 52.598320>,  <36.892536, 34.668732, 52.657200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697838, 34.541351, 52.598320>,  <36.373341, 34.329052, 52.500187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697838, 34.541351, 52.598320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369682, 0.140492, 0.918475,
		0.453012, -0.835804, 0.310181,
		0.811243, 0.530749, 0.245337,
		36.941212, 34.700577, 52.671921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566025, 34.066612, 53.207504>,  <36.373341, 34.329052, 52.500187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566025, 34.066612, 53.207504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741222, 34.421745, 53.151047>,  <36.846340, 34.634823, 53.117172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741222, 34.421745, 53.151047>,  <36.566025, 34.066612, 53.207504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741222, 34.421745, 53.151047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319485, 0.300479, 0.898689,
		0.840291, -0.348530, 0.415256,
		0.437996, 0.887828, -0.141140,
		36.872620, 34.688095, 53.108704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795616, 34.207836, 53.857456>,  <36.566025, 34.066612, 53.207504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795616, 34.207836, 53.857456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824535, 34.561726, 53.673267>,  <36.841888, 34.774059, 53.562756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824535, 34.561726, 53.673267>,  <36.795616, 34.207836, 53.857456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824535, 34.561726, 53.673267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238014, 0.463641, 0.853455,
		0.968567, 0.047896, 0.244097,
		0.072296, 0.884728, -0.460467,
		36.846226, 34.827145, 53.535126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219391, 34.675182, 54.244743>,  <36.795616, 34.207836, 53.857456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219391, 34.675182, 54.244743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999664, 34.910408, 54.007278>,  <36.867828, 35.051544, 53.864799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999664, 34.910408, 54.007278>,  <37.219391, 34.675182, 54.244743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999664, 34.910408, 54.007278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128233, 0.642707, 0.755304,
		0.825718, 0.491027, -0.277639,
		-0.549315, 0.588065, -0.593660,
		36.834869, 35.086826, 53.829182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414215, 35.370476, 54.418751>,  <37.219391, 34.675182, 54.244743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414215, 35.370476, 54.418751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057407, 35.409138, 54.242134>,  <36.843323, 35.432335, 54.136162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057407, 35.409138, 54.242134>,  <37.414215, 35.370476, 54.418751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057407, 35.409138, 54.242134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318278, 0.559307, 0.765424,
		0.320938, 0.823307, -0.468150,
		-0.892019, 0.096652, -0.441543,
		36.789803, 35.438133, 54.109673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153553, 36.089939, 54.453648>,  <37.414215, 35.370476, 54.418751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153553, 36.089939, 54.453648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812557, 35.890491, 54.390858>,  <36.607960, 35.770824, 54.353184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812557, 35.890491, 54.390858>,  <37.153553, 36.089939, 54.453648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812557, 35.890491, 54.390858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456714, 0.564343, 0.687699,
		-0.254310, 0.657950, -0.708822,
		-0.852490, -0.498618, -0.156976,
		36.556808, 35.740906, 54.343765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736275, 36.572365, 54.600464>,  <37.153553, 36.089939, 54.453648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736275, 36.572365, 54.600464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505863, 36.247532, 54.637806>,  <36.367619, 36.052631, 54.660213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505863, 36.247532, 54.637806>,  <36.736275, 36.572365, 54.600464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505863, 36.247532, 54.637806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461935, 0.417612, 0.782442,
		-0.674395, 0.407582, -0.615685,
		-0.576027, -0.812082, 0.093359,
		36.333054, 36.003906, 54.665813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188923, 36.878555, 54.617203>,  <36.736275, 36.572365, 54.600464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188923, 36.878555, 54.617203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125122, 36.520103, 54.782856>,  <36.086842, 36.305031, 54.882248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125122, 36.520103, 54.782856>,  <36.188923, 36.878555, 54.617203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125122, 36.520103, 54.782856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452324, 0.439219, 0.776202,
		-0.877474, -0.063514, -0.475400,
		-0.159505, -0.896132, 0.414132,
		36.077271, 36.251263, 54.907097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468124, 36.709362, 54.703339>,  <36.188923, 36.878555, 54.617203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468124, 36.709362, 54.703339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650600, 36.491196, 54.984600>,  <35.760086, 36.360298, 55.153355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650600, 36.491196, 54.984600>,  <35.468124, 36.709362, 54.703339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650600, 36.491196, 54.984600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627963, 0.362557, 0.688633,
		-0.630521, -0.755696, -0.177106,
		0.456186, -0.545413, 0.703149,
		35.787457, 36.327572, 55.195545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936047, 36.360924, 55.107307>,  <35.468124, 36.709362, 54.703339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936047, 36.360924, 55.107307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240826, 36.348515, 55.366066>,  <35.423695, 36.341068, 55.521320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240826, 36.348515, 55.366066>,  <34.936047, 36.360924, 55.107307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240826, 36.348515, 55.366066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623092, 0.237259, 0.745295,
		-0.176606, -0.970951, 0.161446,
		0.761949, -0.031028, 0.646894,
		35.469410, 36.339207, 55.560135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603664, 36.351482, 55.762276>,  <34.936047, 36.360924, 55.107307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603664, 36.351482, 55.762276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989113, 36.386345, 55.863346>,  <35.220383, 36.407265, 55.923988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989113, 36.386345, 55.863346>,  <34.603664, 36.351482, 55.762276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989113, 36.386345, 55.863346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259657, 0.529448, 0.807628,
		-0.063385, -0.843854, 0.532817,
		0.963618, 0.087158, 0.252672,
		35.278198, 36.412491, 55.939148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685848, 35.981647, 56.447197>,  <34.603664, 36.351482, 55.762276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685848, 35.981647, 56.447197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985054, 36.242775, 56.399364>,  <35.164577, 36.399452, 56.370667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985054, 36.242775, 56.399364>,  <34.685848, 35.981647, 56.447197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985054, 36.242775, 56.399364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204569, 0.398196, 0.894199,
		0.631371, -0.644409, 0.431403,
		0.748013, 0.652823, -0.119583,
		35.209457, 36.438622, 56.363491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107388, 35.900570, 56.978706>,  <34.685848, 35.981647, 56.447197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107388, 35.900570, 56.978706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155804, 36.275238, 56.847252>,  <35.184853, 36.500038, 56.768379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155804, 36.275238, 56.847252>,  <35.107388, 35.900570, 56.978706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155804, 36.275238, 56.847252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265640, 0.349559, 0.898468,
		0.956444, -0.021451, 0.291127,
		0.121039, 0.936669, -0.328635,
		35.192116, 36.556240, 56.748661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473679, 36.294067, 57.493702>,  <35.107388, 35.900570, 56.978706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473679, 36.294067, 57.493702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291103, 36.563358, 57.261002>,  <35.181557, 36.724934, 57.121384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291103, 36.563358, 57.261002>,  <35.473679, 36.294067, 57.493702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291103, 36.563358, 57.261002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414213, 0.417878, 0.808582,
		0.787457, 0.610037, 0.088121,
		-0.456441, 0.673225, -0.581747,
		35.154171, 36.765327, 57.086479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527851, 36.952785, 57.944862>,  <35.473679, 36.294067, 57.493702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527851, 36.952785, 57.944862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245895, 37.010529, 57.667076>,  <35.076721, 37.045174, 57.500404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245895, 37.010529, 57.667076>,  <35.527851, 36.952785, 57.944862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245895, 37.010529, 57.667076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545044, 0.516330, 0.660553,
		0.453930, 0.844135, -0.285277,
		-0.704893, 0.144356, -0.694469,
		35.034428, 37.053837, 57.458736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278622, 37.673733, 57.921337>,  <35.527851, 36.952785, 57.944862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278622, 37.673733, 57.921337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996063, 37.437191, 57.765743>,  <34.826530, 37.295265, 57.672386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996063, 37.437191, 57.765743>,  <35.278622, 37.673733, 57.921337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996063, 37.437191, 57.765743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688034, 0.444639, 0.573503,
		-0.166185, 0.672754, -0.720961,
		-0.706394, -0.591353, -0.388985,
		34.784145, 37.259785, 57.649048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783474, 38.090176, 57.786312>,  <35.278622, 37.673733, 57.921337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783474, 38.090176, 57.786312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588745, 37.741528, 57.809219>,  <34.471909, 37.532337, 57.822964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588745, 37.741528, 57.809219>,  <34.783474, 38.090176, 57.786312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588745, 37.741528, 57.809219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675014, 0.417005, 0.608657,
		-0.554400, 0.257651, -0.791364,
		-0.486824, -0.871621, 0.057269,
		34.442699, 37.480042, 57.826401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140701, 38.299526, 57.900463>,  <34.783474, 38.090176, 57.786312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140701, 38.299526, 57.900463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124859, 37.920746, 58.028030>,  <34.115353, 37.693478, 58.104572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124859, 37.920746, 58.028030>,  <34.140701, 38.299526, 57.900463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124859, 37.920746, 58.028030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644703, 0.268068, 0.715889,
		-0.763407, -0.177256, -0.621120,
		-0.039607, -0.946953, 0.318923,
		34.112976, 37.636662, 58.123707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520573, 38.200771, 57.864864>,  <34.140701, 38.299526, 57.900463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520573, 38.200771, 57.864864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667992, 37.938522, 58.128483>,  <33.756443, 37.781174, 58.286652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667992, 37.938522, 58.128483>,  <33.520573, 38.200771, 57.864864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667992, 37.938522, 58.128483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712616, 0.256004, 0.653177,
		-0.596953, -0.710370, -0.372856,
		0.368545, -0.655619, 0.659043,
		33.778557, 37.741837, 58.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899181, 37.918148, 58.107399>,  <33.520573, 38.200771, 57.864864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899181, 37.918148, 58.107399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183300, 37.843235, 58.378811>,  <33.353771, 37.798286, 58.541656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183300, 37.843235, 58.378811>,  <32.899181, 37.918148, 58.107399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183300, 37.843235, 58.378811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665030, 0.137339, 0.734080,
		-0.230668, -0.972658, -0.026997,
		0.710301, -0.187283, 0.678526,
		33.396389, 37.787048, 58.582367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529335, 37.577789, 58.664845>,  <32.899181, 37.918148, 58.107399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529335, 37.577789, 58.664845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854836, 37.736053, 58.835148>,  <33.050137, 37.831013, 58.937328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854836, 37.736053, 58.835148>,  <32.529335, 37.577789, 58.664845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854836, 37.736053, 58.835148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547243, 0.274794, 0.790578,
		0.195805, -0.876323, 0.440135,
		0.813748, 0.395660, 0.425756,
		33.098961, 37.854752, 58.962875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429581, 37.455753, 59.287735>,  <32.529335, 37.577789, 58.664845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429581, 37.455753, 59.287735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721584, 37.727036, 59.321503>,  <32.896786, 37.889805, 59.341763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721584, 37.727036, 59.321503>,  <32.429581, 37.455753, 59.287735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721584, 37.727036, 59.321503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417994, 0.345332, 0.840254,
		0.540713, -0.648678, 0.535581,
		0.730007, 0.678206, 0.084418,
		32.940586, 37.930496, 59.346828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715668, 37.349346, 59.970036>,  <32.429581, 37.455753, 59.287735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715668, 37.349346, 59.970036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.777367, 37.723087, 59.841545>,  <32.814388, 37.947330, 59.764450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.777367, 37.723087, 59.841545>,  <32.715668, 37.349346, 59.970036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777367, 37.723087, 59.841545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456245, 0.355741, 0.815652,
		0.876383, 0.020745, 0.481168,
		0.154251, 0.934354, -0.321231,
		32.823643, 38.003395, 59.745174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686497, 37.626160, 60.600254>,  <32.715668, 37.349346, 59.970036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686497, 37.626160, 60.600254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678974, 37.947224, 60.361797>,  <32.674461, 38.139862, 60.218723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678974, 37.947224, 60.361797>,  <32.686497, 37.626160, 60.600254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678974, 37.947224, 60.361797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493241, 0.511197, 0.703841,
		0.869690, 0.307281, 0.386288,
		-0.018808, 0.802656, -0.596146,
		32.673332, 38.188019, 60.182953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995777, 38.253036, 60.944172>,  <32.686497, 37.626160, 60.600254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995777, 38.253036, 60.944172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742096, 38.362537, 60.654938>,  <32.589886, 38.428238, 60.481400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742096, 38.362537, 60.654938>,  <32.995777, 38.253036, 60.944172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742096, 38.362537, 60.654938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520359, 0.540584, 0.661056,
		0.571851, 0.795506, -0.200391,
		-0.634203, 0.273750, -0.723082,
		32.551834, 38.444664, 60.438015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901211, 39.029358, 61.072277>,  <32.995777, 38.253036, 60.944172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901211, 39.029358, 61.072277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613163, 38.870045, 60.845013>,  <32.440334, 38.774456, 60.708656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613163, 38.870045, 60.845013>,  <32.901211, 39.029358, 61.072277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613163, 38.870045, 60.845013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684532, 0.541579, 0.487965,
		0.113354, 0.740313, -0.662637,
		-0.720116, -0.398283, -0.568158,
		32.397129, 38.750561, 60.674564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552132, 39.578312, 60.712566>,  <32.901211, 39.029358, 61.072277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552132, 39.578312, 60.712566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284744, 39.280819, 60.711510>,  <32.124313, 39.102322, 60.710876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284744, 39.280819, 60.711510>,  <32.552132, 39.578312, 60.712566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284744, 39.280819, 60.711510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714578, 0.641273, 0.279548,
		-0.206218, 0.188754, -0.960128,
		-0.668470, -0.743734, -0.002638,
		32.084202, 39.057697, 60.710720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091621, 39.824871, 60.300438>,  <32.552132, 39.578312, 60.712566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091621, 39.824871, 60.300438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914865, 39.531822, 60.507515>,  <31.808811, 39.355995, 60.631760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914865, 39.531822, 60.507515>,  <32.091621, 39.824871, 60.300438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914865, 39.531822, 60.507515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633518, 0.663442, 0.398121,
		-0.635129, -0.152042, -0.757294,
		-0.441890, -0.732618, 0.517692,
		31.782299, 39.312038, 60.662823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484552, 39.879093, 60.077412>,  <32.091621, 39.824871, 60.300438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484552, 39.879093, 60.077412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447235, 39.651604, 60.404297>,  <31.424845, 39.515110, 60.600430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447235, 39.651604, 60.404297>,  <31.484552, 39.879093, 60.077412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447235, 39.651604, 60.404297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735350, 0.592722, 0.328545,
		-0.671235, -0.570289, -0.473512,
		-0.093295, -0.568728, 0.817218,
		31.419247, 39.480984, 60.649464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776937, 39.621460, 60.130451>,  <31.484552, 39.879093, 60.077412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776937, 39.621460, 60.130451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945297, 39.658669, 60.491383>,  <31.046312, 39.680996, 60.707939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945297, 39.658669, 60.491383>,  <30.776937, 39.621460, 60.130451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945297, 39.658669, 60.491383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623933, 0.751737, 0.213540,
		-0.658448, -0.652869, 0.374445,
		0.420898, 0.093024, 0.902326,
		31.071568, 39.686577, 60.762081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233959, 39.600933, 60.661942>,  <30.776937, 39.621460, 60.130451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233959, 39.600933, 60.661942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555515, 39.780079, 60.818493>,  <30.748449, 39.887566, 60.912422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555515, 39.780079, 60.818493>,  <30.233959, 39.600933, 60.661942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555515, 39.780079, 60.818493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546971, 0.815145, 0.190685,
		-0.233628, -0.367361, 0.900258,
		0.803891, 0.447866, 0.391377,
		30.796682, 39.914440, 60.935905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904692, 40.233616, 60.920490>,  <30.233959, 39.600933, 60.661942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904692, 40.233616, 60.920490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272470, 40.276100, 61.071930>,  <30.493137, 40.301590, 61.162792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272470, 40.276100, 61.071930>,  <29.904692, 40.233616, 60.920490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272470, 40.276100, 61.071930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291523, 0.830262, 0.475057,
		-0.263876, -0.547160, 0.794346,
		0.919447, 0.106214, 0.378596,
		30.548306, 40.307964, 61.185509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920946, 40.270199, 61.748581>,  <29.904692, 40.233616, 60.920490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920946, 40.270199, 61.748581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204231, 40.474655, 61.553780>,  <30.374203, 40.597328, 61.436897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204231, 40.474655, 61.553780>,  <29.920946, 40.270199, 61.748581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204231, 40.474655, 61.553780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340577, 0.851585, 0.398510,
		0.618417, -0.116369, 0.777186,
		0.708214, 0.511137, -0.487002,
		30.416695, 40.627995, 61.407681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347559, 40.733162, 62.201134>,  <29.920946, 40.270199, 61.748581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347559, 40.733162, 62.201134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361803, 40.935234, 61.856224>,  <30.370350, 41.056477, 61.649277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361803, 40.935234, 61.856224>,  <30.347559, 40.733162, 62.201134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361803, 40.935234, 61.856224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475563, 0.767436, 0.429979,
		0.878960, 0.394755, 0.267576,
		0.035611, 0.505184, -0.862277,
		30.372486, 41.086788, 61.597542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683426, 41.432507, 62.212898>,  <30.347559, 40.733162, 62.201134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683426, 41.432507, 62.212898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403559, 41.420345, 61.927368>,  <30.235638, 41.413048, 61.756050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403559, 41.420345, 61.927368>,  <30.683426, 41.432507, 62.212898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403559, 41.420345, 61.927368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477206, 0.763446, 0.435230,
		0.531733, 0.645156, -0.548666,
		-0.699668, -0.030401, -0.713821,
		30.193659, 41.411224, 61.713223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442827, 42.132164, 62.199383>,  <30.683426, 41.432507, 62.212898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442827, 42.132164, 62.199383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178160, 41.891514, 62.378376>,  <30.019360, 41.747124, 62.485771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178160, 41.891514, 62.378376>,  <30.442827, 42.132164, 62.199383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178160, 41.891514, 62.378376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675017, -0.218151, 0.704814,
		-0.326412, 0.768415, 0.550449,
		-0.661670, -0.601622, 0.447486,
		29.979658, 41.711029, 62.512623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502323, 42.297874, 62.868217>,  <30.442827, 42.132164, 62.199383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502323, 42.297874, 62.868217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311939, 41.946095, 62.870495>,  <30.197708, 41.735027, 62.871861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311939, 41.946095, 62.870495>,  <30.502323, 42.297874, 62.868217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311939, 41.946095, 62.870495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458603, -0.242660, 0.854868,
		-0.750430, 0.409496, 0.518814,
		-0.475961, -0.879448, 0.005697,
		30.169151, 41.682259, 62.872204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050169, 42.860859, 62.787689>,  <30.502323, 42.297874, 62.868217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050169, 42.860859, 62.787689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724066, 42.823280, 63.016262>,  <29.528404, 42.800735, 63.153404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724066, 42.823280, 63.016262>,  <30.050169, 42.860859, 62.787689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724066, 42.823280, 63.016262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552153, 0.171397, 0.815935,
		-0.174592, 0.980713, -0.087863,
		-0.815258, -0.093942, 0.571428,
		29.479488, 42.795097, 63.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154243, 43.587193, 63.185619>,  <30.050169, 42.860859, 62.787689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154243, 43.587193, 63.185619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487795, 43.519894, 62.975349>,  <30.687925, 43.479515, 62.849186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487795, 43.519894, 62.975349>,  <30.154243, 43.587193, 63.185619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487795, 43.519894, 62.975349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551124, -0.305740, -0.776393,
		-0.030091, 0.937131, -0.347677,
		0.833881, -0.168250, -0.525675,
		30.737959, 43.469418, 62.817646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949314, 43.876446, 62.552986>,  <30.154243, 43.587193, 63.185619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949314, 43.876446, 62.552986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.237461, 43.602119, 62.511559>,  <30.410349, 43.437523, 62.486702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.237461, 43.602119, 62.511559>,  <29.949314, 43.876446, 62.552986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237461, 43.602119, 62.511559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579931, -0.513657, -0.632326,
		0.380457, 0.515574, -0.767747,
		0.720369, -0.685814, -0.103573,
		30.453571, 43.396374, 62.480488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949543, 43.773323, 61.912296>,  <29.949314, 43.876446, 62.552986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949543, 43.773323, 61.912296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114006, 43.447594, 62.076164>,  <30.212685, 43.252155, 62.174484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114006, 43.447594, 62.076164>,  <29.949543, 43.773323, 61.912296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114006, 43.447594, 62.076164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649091, -0.577080, -0.495640,
		0.640024, -0.062129, -0.765839,
		0.411157, -0.814321, 0.409673,
		30.237352, 43.203297, 62.199066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994568, 43.225178, 61.367245>,  <29.949543, 43.773323, 61.912296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994568, 43.225178, 61.367245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000345, 43.041012, 61.722279>,  <30.003811, 42.930511, 61.935299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000345, 43.041012, 61.722279>,  <29.994568, 43.225178, 61.367245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000345, 43.041012, 61.722279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626947, -0.695682, -0.350664,
		0.778928, -0.551406, -0.298701,
		0.014443, -0.460412, 0.887588,
		30.004679, 42.902889, 61.988556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249378, 42.490337, 61.214760>,  <29.994568, 43.225178, 61.367245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249378, 42.490337, 61.214760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016747, 42.556625, 61.533333>,  <29.877169, 42.596397, 61.724476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016747, 42.556625, 61.533333>,  <30.249378, 42.490337, 61.214760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016747, 42.556625, 61.533333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545442, -0.805792, -0.230634,
		0.603539, -0.568540, 0.559020,
		-0.581578, 0.165716, 0.796433,
		29.842274, 42.606339, 61.772263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671129, 42.756992, 60.683327>,  <30.249378, 42.490337, 61.214760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671129, 42.756992, 60.683327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747944, 42.387386, 60.551075>,  <30.794033, 42.165623, 60.471722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747944, 42.387386, 60.551075>,  <30.671129, 42.756992, 60.683327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747944, 42.387386, 60.551075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304698, 0.264115, -0.915097,
		0.932889, 0.276475, -0.230825,
		0.192037, -0.924016, -0.330631,
		30.805555, 42.110180, 60.451885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848007, 42.895012, 59.983551>,  <30.671129, 42.756992, 60.683327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848007, 42.895012, 59.983551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.841467, 42.495419, 59.966785>,  <30.837542, 42.255661, 59.956726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.841467, 42.495419, 59.966785>,  <30.848007, 42.895012, 59.983551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841467, 42.495419, 59.966785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002208, 0.041881, -0.999120,
		0.999864, -0.016431, 0.001521,
		-0.016353, -0.998988, -0.041911,
		30.836561, 42.195721, 59.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399912, 42.635933, 59.548676>,  <30.848007, 42.895012, 59.983551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399912, 42.635933, 59.548676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107328, 42.363178, 59.548927>,  <30.931778, 42.199524, 59.549080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107328, 42.363178, 59.548927>,  <31.399912, 42.635933, 59.548676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107328, 42.363178, 59.548927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170873, 0.182402, -0.968262,
		0.660132, -0.708349, -0.249936,
		-0.731457, -0.681888, 0.000628,
		30.887892, 42.158611, 59.549114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523472, 42.175449, 59.022152>,  <31.399912, 42.635933, 59.548676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523472, 42.175449, 59.022152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130877, 42.123554, 59.078503>,  <30.895319, 42.092415, 59.112312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130877, 42.123554, 59.078503>,  <31.523472, 42.175449, 59.022152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130877, 42.123554, 59.078503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141274, -0.006175, -0.989951,
		0.129310, -0.991528, -0.012269,
		-0.981489, -0.129744, 0.140875,
		30.836430, 42.084633, 59.120766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283558, 41.506706, 58.511063>,  <31.523472, 42.175449, 59.022152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283558, 41.506706, 58.511063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967192, 41.722816, 58.625992>,  <30.777372, 41.852482, 58.694950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967192, 41.722816, 58.625992>,  <31.283558, 41.506706, 58.511063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967192, 41.722816, 58.625992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318662, 0.037194, -0.947138,
		-0.522402, -0.840666, 0.142748,
		-0.790917, 0.540275, 0.287319,
		30.729916, 41.884899, 58.712189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740562, 41.288948, 58.129292>,  <31.283558, 41.506706, 58.511063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740562, 41.288948, 58.129292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.617258, 41.649452, 58.251080>,  <30.543276, 41.865753, 58.324154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.617258, 41.649452, 58.251080>,  <30.740562, 41.288948, 58.129292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617258, 41.649452, 58.251080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426221, 0.155291, -0.891191,
		-0.850477, -0.404494, 0.336266,
		-0.308262, 0.901261, 0.304475,
		30.524780, 41.919830, 58.342422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002359, 41.309502, 58.142601>,  <30.740562, 41.288948, 58.129292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002359, 41.309502, 58.142601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147591, 41.679211, 58.095440>,  <30.234730, 41.901035, 58.067142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147591, 41.679211, 58.095440>,  <30.002359, 41.309502, 58.142601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147591, 41.679211, 58.095440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322634, 0.006000, -0.946505,
		-0.874118, 0.381695, 0.300379,
		0.363078, 0.924269, -0.117903,
		30.256514, 41.956490, 58.060070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661871, 41.491013, 57.546963>,  <30.002359, 41.309502, 58.142601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661871, 41.491013, 57.546963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.932716, 41.777897, 57.612839>,  <30.095224, 41.950027, 57.652367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.932716, 41.777897, 57.612839>,  <29.661871, 41.491013, 57.546963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932716, 41.777897, 57.612839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007340, 0.217209, -0.976097,
		-0.735841, 0.662138, 0.141811,
		0.677114, 0.717212, 0.164692,
		30.135851, 41.993061, 57.662247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353571, 42.158016, 57.357449>,  <29.661871, 41.491013, 57.546963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353571, 42.158016, 57.357449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.752050, 42.144657, 57.325268>,  <29.991138, 42.136642, 57.305958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.752050, 42.144657, 57.325268>,  <29.353571, 42.158016, 57.357449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752050, 42.144657, 57.325268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079652, 0.024722, -0.996516,
		0.035266, 0.999137, 0.021968,
		0.996199, -0.033393, -0.080455,
		30.050911, 42.134640, 57.301132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531136, 42.692093, 56.782852>,  <29.353571, 42.158016, 57.357449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531136, 42.692093, 56.782852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815519, 42.412937, 56.817471>,  <29.986149, 42.245445, 56.838242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815519, 42.412937, 56.817471>,  <29.531136, 42.692093, 56.782852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815519, 42.412937, 56.817471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155401, 0.035886, -0.987199,
		0.685848, 0.715308, 0.133965,
		0.710959, -0.697887, 0.086547,
		30.028807, 42.203571, 56.843433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904612, 42.814587, 56.108418>,  <29.531136, 42.692093, 56.782852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904612, 42.814587, 56.108418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074751, 42.494110, 56.276787>,  <30.176834, 42.301823, 56.377808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074751, 42.494110, 56.276787>,  <29.904612, 42.814587, 56.108418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074751, 42.494110, 56.276787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217055, -0.361207, -0.906872,
		0.878615, 0.477100, 0.020263,
		0.425349, -0.801190, 0.420919,
		30.202356, 42.253754, 56.403061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569063, 42.624275, 55.639179>,  <29.904612, 42.814587, 56.108418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569063, 42.624275, 55.639179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.456585, 42.305328, 55.852776>,  <30.389099, 42.113960, 55.980934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.456585, 42.305328, 55.852776>,  <30.569063, 42.624275, 55.639179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456585, 42.305328, 55.852776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281131, -0.600472, -0.748598,
		0.917548, -0.060380, 0.393013,
		-0.281194, -0.797363, 0.533988,
		30.372227, 42.066120, 56.012970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134134, 42.162636, 55.709908>,  <30.569063, 42.624275, 55.639179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134134, 42.162636, 55.709908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823364, 41.917179, 55.766235>,  <30.636902, 41.769905, 55.800034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823364, 41.917179, 55.766235>,  <31.134134, 42.162636, 55.709908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823364, 41.917179, 55.766235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329277, -0.586677, -0.739856,
		0.536621, -0.528445, 0.657863,
		-0.776927, -0.613641, 0.140819,
		30.590286, 41.733086, 55.808479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357996, 41.625881, 55.412685>,  <31.134134, 42.162636, 55.709908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357996, 41.625881, 55.412685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.972404, 41.522171, 55.436413>,  <30.741049, 41.459946, 55.450649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.972404, 41.522171, 55.436413>,  <31.357996, 41.625881, 55.412685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972404, 41.522171, 55.436413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041984, -0.368558, -0.928656,
		0.262641, -0.892715, 0.366168,
		-0.963980, -0.259276, 0.059318,
		30.683210, 41.444389, 55.454208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205799, 40.893997, 55.311909>,  <31.357996, 41.625881, 55.412685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205799, 40.893997, 55.311909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919249, 41.144558, 55.188995>,  <30.747318, 41.294895, 55.115246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919249, 41.144558, 55.188995>,  <31.205799, 40.893997, 55.311909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919249, 41.144558, 55.188995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053080, -0.390213, -0.919193,
		-0.695690, -0.674801, 0.246291,
		-0.716378, 0.626401, -0.307286,
		30.704334, 41.332478, 55.096809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634226, 40.484604, 55.013130>,  <31.205799, 40.893997, 55.311909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634226, 40.484604, 55.013130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.649397, 40.852039, 54.855774>,  <30.658501, 41.072502, 54.761360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.649397, 40.852039, 54.855774>,  <30.634226, 40.484604, 55.013130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649397, 40.852039, 54.855774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004544, -0.393515, -0.919307,
		-0.999270, 0.036656, -0.010752,
		0.037929, 0.918587, -0.393394,
		30.660776, 41.127617, 54.737755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268084, 40.516354, 54.355145>,  <30.634226, 40.484604, 55.013130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268084, 40.516354, 54.355145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536501, 40.810463, 54.317032>,  <30.697552, 40.986927, 54.294167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536501, 40.810463, 54.317032>,  <30.268084, 40.516354, 54.355145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536501, 40.810463, 54.317032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222538, -0.322329, -0.920098,
		-0.707233, 0.596222, -0.379922,
		0.671043, 0.735271, -0.095280,
		30.737814, 41.031044, 54.288448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301918, 40.686558, 53.651890>,  <30.268084, 40.516354, 54.355145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301918, 40.686558, 53.651890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640326, 40.851521, 53.787048>,  <30.843370, 40.950497, 53.868145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640326, 40.851521, 53.787048>,  <30.301918, 40.686558, 53.651890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640326, 40.851521, 53.787048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472899, -0.287776, -0.832798,
		-0.246212, 0.864353, -0.438490,
		0.846018, 0.412406, 0.337897,
		30.894131, 40.975243, 53.888416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529955, 41.118179, 53.027863>,  <30.301918, 40.686558, 53.651890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529955, 41.118179, 53.027863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859768, 41.069706, 53.248936>,  <31.057655, 41.040623, 53.381580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859768, 41.069706, 53.248936>,  <30.529955, 41.118179, 53.027863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859768, 41.069706, 53.248936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518373, -0.229739, -0.823717,
		0.226796, 0.965678, -0.126607,
		0.824532, -0.121185, 0.552686,
		31.107128, 41.033352, 53.414742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026920, 41.482464, 52.678577>,  <30.529955, 41.118179, 53.027863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026920, 41.482464, 52.678577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240078, 41.246555, 52.921295>,  <31.367973, 41.105011, 53.066925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240078, 41.246555, 52.921295>,  <31.026920, 41.482464, 52.678577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240078, 41.246555, 52.921295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723594, -0.054145, -0.688099,
		0.438675, 0.805754, 0.397901,
		0.532894, -0.589771, 0.606790,
		31.399946, 41.069626, 53.103333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645493, 41.739540, 52.552715>,  <31.026920, 41.482464, 52.678577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645493, 41.739540, 52.552715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699272, 41.381126, 52.721970>,  <31.731541, 41.166077, 52.823521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699272, 41.381126, 52.721970>,  <31.645493, 41.739540, 52.552715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699272, 41.381126, 52.721970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830167, -0.131301, -0.541833,
		0.541061, 0.424119, 0.726207,
		0.134450, -0.896038, 0.423131,
		31.739607, 41.112316, 52.848907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375084, 41.707329, 52.860695>,  <31.645493, 41.739540, 52.552715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375084, 41.707329, 52.860695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253872, 41.329731, 52.808475>,  <32.181145, 41.103172, 52.777145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253872, 41.329731, 52.808475>,  <32.375084, 41.707329, 52.860695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253872, 41.329731, 52.808475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832774, -0.195709, -0.517866,
		0.463316, -0.265641, 0.845443,
		-0.303027, -0.943998, -0.130544,
		32.162964, 41.046532, 52.769314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896145, 41.312706, 53.218407>,  <32.375084, 41.707329, 52.860695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896145, 41.312706, 53.218407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699436, 41.088367, 52.951992>,  <32.581409, 40.953762, 52.792141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699436, 41.088367, 52.951992>,  <32.896145, 41.312706, 53.218407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699436, 41.088367, 52.951992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866978, -0.244512, -0.434238,
		0.080688, -0.790987, 0.606489,
		-0.491771, -0.560851, -0.666039,
		32.551907, 40.920113, 52.752182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239460, 40.600681, 53.206211>,  <32.896145, 41.312706, 53.218407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239460, 40.600681, 53.206211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038696, 40.605793, 52.860283>,  <32.918236, 40.608860, 52.652725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038696, 40.605793, 52.860283>,  <33.239460, 40.600681, 53.206211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038696, 40.605793, 52.860283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786726, -0.408705, -0.462626,
		-0.359369, -0.912577, 0.195081,
		-0.501912, 0.012778, -0.864824,
		32.888123, 40.609627, 52.600834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488331, 40.074173, 52.864536>,  <33.239460, 40.600681, 53.206211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488331, 40.074173, 52.864536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310959, 40.266167, 52.561752>,  <33.204536, 40.381363, 52.380081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310959, 40.266167, 52.561752>,  <33.488331, 40.074173, 52.864536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310959, 40.266167, 52.561752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585147, -0.484699, -0.650131,
		-0.678952, -0.731216, -0.065935,
		-0.443427, 0.479989, -0.756956,
		33.177929, 40.410164, 52.334667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254021, 39.590950, 52.300262>,  <33.488331, 40.074173, 52.864536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254021, 39.590950, 52.300262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326134, 39.958366, 52.159534>,  <33.369404, 40.178818, 52.075100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326134, 39.958366, 52.159534>,  <33.254021, 39.590950, 52.300262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326134, 39.958366, 52.159534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693660, -0.372321, -0.616614,
		-0.697375, -0.132875, -0.704281,
		0.180286, 0.918543, -0.351818,
		33.380219, 40.233929, 52.053989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341373, 39.456100, 51.595535>,  <33.254021, 39.590950, 52.300262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341373, 39.456100, 51.595535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481079, 39.828293, 51.639744>,  <33.564903, 40.051609, 51.666267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481079, 39.828293, 51.639744>,  <33.341373, 39.456100, 51.595535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481079, 39.828293, 51.639744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804948, -0.237564, -0.543712,
		-0.479659, 0.278864, -0.831963,
		0.349266, 0.930483, 0.110521,
		33.585857, 40.107437, 51.672901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596519, 39.665287, 50.919964>,  <33.341373, 39.456100, 51.595535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596519, 39.665287, 50.919964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772701, 39.927654, 51.165165>,  <33.878410, 40.085075, 51.312286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772701, 39.927654, 51.165165>,  <33.596519, 39.665287, 50.919964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772701, 39.927654, 51.165165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836854, -0.052730, -0.544880,
		-0.325073, 0.752989, -0.572133,
		0.440457, 0.655917, 0.613001,
		33.904839, 40.124428, 51.349064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784206, 40.294296, 50.496105>,  <33.596519, 39.665287, 50.919964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784206, 40.294296, 50.496105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016190, 40.260128, 50.820168>,  <34.155380, 40.239628, 51.014606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016190, 40.260128, 50.820168>,  <33.784206, 40.294296, 50.496105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016190, 40.260128, 50.820168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776567, -0.242536, -0.581482,
		0.246165, 0.966374, -0.074322,
		0.579955, -0.085425, 0.810158,
		34.190174, 40.234501, 51.063213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457584, 40.652172, 50.348606>,  <33.784206, 40.294296, 50.496105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457584, 40.652172, 50.348606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554485, 40.410187, 50.652012>,  <34.612625, 40.264996, 50.834053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554485, 40.410187, 50.652012>,  <34.457584, 40.652172, 50.348606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554485, 40.410187, 50.652012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845324, -0.252096, -0.471036,
		0.476175, 0.755296, 0.450317,
		0.242248, -0.604959, 0.758512,
		34.627159, 40.228699, 50.879566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235092, 40.743664, 50.532063>,  <34.457584, 40.652172, 50.348606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235092, 40.743664, 50.532063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129745, 40.396214, 50.699936>,  <35.066536, 40.187744, 50.800659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129745, 40.396214, 50.699936>,  <35.235092, 40.743664, 50.532063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129745, 40.396214, 50.699936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846061, -0.416992, -0.332111,
		0.463483, 0.267608, 0.844730,
		-0.263371, -0.868621, 0.419682,
		35.050735, 40.135628, 50.825840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833725, 40.624653, 50.977829>,  <35.235092, 40.743664, 50.532063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833725, 40.624653, 50.977829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671829, 40.261097, 50.937622>,  <35.574692, 40.042965, 50.913498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671829, 40.261097, 50.937622>,  <35.833725, 40.624653, 50.977829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671829, 40.261097, 50.937622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867882, -0.347183, -0.355308,
		0.288039, -0.231042, 0.929329,
		-0.404739, -0.908891, -0.100515,
		35.550407, 39.988430, 50.907467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360020, 40.155521, 51.209579>,  <35.833725, 40.624653, 50.977829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360020, 40.155521, 51.209579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.108803, 39.936939, 50.987968>,  <35.958073, 39.805790, 50.855000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.108803, 39.936939, 50.987968>,  <36.360020, 40.155521, 51.209579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108803, 39.936939, 50.987968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754650, -0.601445, -0.262236,
		-0.189919, -0.582794, 0.790115,
		-0.628040, -0.546457, -0.554031,
		35.920391, 39.773003, 50.821758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647484, 39.486164, 51.300388>,  <36.360020, 40.155521, 51.209579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647484, 39.486164, 51.300388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422035, 39.439880, 50.973232>,  <36.286766, 39.412109, 50.776939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422035, 39.439880, 50.973232>,  <36.647484, 39.486164, 51.300388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422035, 39.439880, 50.973232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665987, -0.649398, -0.367075,
		-0.488663, -0.751595, 0.443073,
		-0.563622, -0.115705, -0.817889,
		36.252949, 39.405170, 50.727867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514824, 38.764717, 51.283375>,  <36.647484, 39.486164, 51.300388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514824, 38.764717, 51.283375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456882, 38.901596, 50.912018>,  <36.422119, 38.983723, 50.689201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456882, 38.901596, 50.912018>,  <36.514824, 38.764717, 51.283375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456882, 38.901596, 50.912018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516226, -0.774330, -0.365957,
		-0.844113, -0.532273, -0.064486,
		-0.144855, 0.342199, -0.928395,
		36.413425, 39.004257, 50.633499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347691, 38.088367, 50.916367>,  <36.514824, 38.764717, 51.283375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347691, 38.088367, 50.916367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.435349, 38.368011, 50.644127>,  <36.487946, 38.535797, 50.480782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.435349, 38.368011, 50.644127>,  <36.347691, 38.088367, 50.916367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435349, 38.368011, 50.644127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393016, -0.701713, -0.594254,
		-0.893035, -0.137257, -0.428542,
		0.219148, 0.699113, -0.680599,
		36.501091, 38.577747, 50.439949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990089, 37.910522, 50.329498>,  <36.347691, 38.088367, 50.916367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990089, 37.910522, 50.329498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304325, 38.133675, 50.222450>,  <36.492867, 38.267567, 50.158222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304325, 38.133675, 50.222450>,  <35.990089, 37.910522, 50.329498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304325, 38.133675, 50.222450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264216, -0.693559, -0.670198,
		-0.559498, 0.455793, -0.692254,
		0.785591, 0.557879, -0.267617,
		36.540001, 38.301037, 50.142166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034531, 37.841988, 49.653980>,  <35.990089, 37.910522, 50.329498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034531, 37.841988, 49.653980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393097, 37.972149, 49.774353>,  <36.608234, 38.050243, 49.846577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393097, 37.972149, 49.774353>,  <36.034531, 37.841988, 49.653980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393097, 37.972149, 49.774353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442773, -0.688001, -0.574984,
		0.019942, 0.648667, -0.760811,
		0.896412, 0.325400, 0.300932,
		36.662022, 38.069771, 49.864632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549149, 37.970367, 49.070309>,  <36.034531, 37.841988, 49.653980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549149, 37.970367, 49.070309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724846, 37.861816, 49.412868>,  <36.830265, 37.796684, 49.618404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724846, 37.861816, 49.412868>,  <36.549149, 37.970367, 49.070309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724846, 37.861816, 49.412868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377488, -0.809288, -0.450062,
		0.815210, 0.520967, -0.253033,
		0.439244, -0.271378, 0.856399,
		36.856621, 37.780403, 49.669788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907772, 38.079170, 48.671009>,  <36.549149, 37.970367, 49.070309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907772, 38.079170, 48.671009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841442, 38.363686, 48.397785>,  <35.801643, 38.534393, 48.233849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841442, 38.363686, 48.397785>,  <35.907772, 38.079170, 48.671009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841442, 38.363686, 48.397785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874412, 0.214209, 0.435337,
		0.455968, 0.669468, 0.586435,
		-0.165825, 0.711286, -0.683063,
		35.791695, 38.577072, 48.192867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695541, 38.734550, 49.047825>,  <35.907772, 38.079170, 48.671009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695541, 38.734550, 49.047825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545452, 38.716438, 48.677494>,  <35.455399, 38.705570, 48.455296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545452, 38.716438, 48.677494>,  <35.695541, 38.734550, 49.047825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545452, 38.716438, 48.677494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911637, 0.198732, 0.359756,
		0.167701, 0.979007, -0.115848,
		-0.375226, -0.045279, -0.925827,
		35.432884, 38.702854, 48.399746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275585, 39.389164, 48.913925>,  <35.695541, 38.734550, 49.047825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275585, 39.389164, 48.913925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143448, 39.115116, 48.654240>,  <35.064167, 38.950687, 48.498428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143448, 39.115116, 48.654240>,  <35.275585, 39.389164, 48.913925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143448, 39.115116, 48.654240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942661, 0.274166, 0.190322,
		0.047599, 0.674863, -0.736407,
		-0.330339, -0.685123, -0.649217,
		35.044346, 38.909580, 48.459473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701786, 39.726597, 48.634274>,  <35.275585, 39.389164, 48.913925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701786, 39.726597, 48.634274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650150, 39.342064, 48.536976>,  <34.619171, 39.111343, 48.478596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650150, 39.342064, 48.536976>,  <34.701786, 39.726597, 48.634274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650150, 39.342064, 48.536976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949352, 0.048942, 0.310379,
		-0.286474, 0.270990, -0.918965,
		-0.129086, -0.961337, -0.243245,
		34.611423, 39.053661, 48.464001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060520, 39.682125, 48.140320>,  <34.701786, 39.726597, 48.634274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060520, 39.682125, 48.140320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.145683, 39.333546, 48.317066>,  <34.196781, 39.124397, 48.423115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.145683, 39.333546, 48.317066>,  <34.060520, 39.682125, 48.140320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145683, 39.333546, 48.317066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929202, -0.040776, 0.367315,
		-0.302080, -0.488785, -0.818436,
		0.212911, -0.871451, 0.441862,
		34.209557, 39.072109, 48.449623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431427, 39.403633, 48.197544>,  <34.060520, 39.682125, 48.140320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431427, 39.403633, 48.197544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630814, 39.157185, 48.441486>,  <33.750446, 39.009315, 48.587852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630814, 39.157185, 48.441486>,  <33.431427, 39.403633, 48.197544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630814, 39.157185, 48.441486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858344, -0.252131, 0.446850,
		-0.121549, -0.746208, -0.654522,
		0.498468, -0.616119, 0.609858,
		33.780354, 38.972347, 48.624443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078518, 38.812870, 48.194099>,  <33.431427, 39.403633, 48.197544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078518, 38.812870, 48.194099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289597, 38.790001, 48.533100>,  <33.416245, 38.776279, 48.736500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289597, 38.790001, 48.533100>,  <33.078518, 38.812870, 48.194099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289597, 38.790001, 48.533100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847199, -0.107708, 0.520244,
		0.061536, -0.992537, -0.105278,
		0.527700, -0.057178, 0.847504,
		33.447906, 38.772846, 48.787350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975746, 38.233994, 48.476254>,  <33.078518, 38.812870, 48.194099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975746, 38.233994, 48.476254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093719, 38.424313, 48.807705>,  <33.164505, 38.538506, 49.006577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093719, 38.424313, 48.807705>,  <32.975746, 38.233994, 48.476254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093719, 38.424313, 48.807705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857622, -0.250548, 0.449121,
		0.421302, -0.843115, 0.334158,
		0.294938, 0.475797, 0.828631,
		33.182201, 38.567051, 49.056293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886036, 37.764271, 49.037331>,  <32.975746, 38.233994, 48.476254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886036, 37.764271, 49.037331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.901775, 38.125252, 49.208923>,  <32.911217, 38.341843, 49.311878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.901775, 38.125252, 49.208923>,  <32.886036, 37.764271, 49.037331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901775, 38.125252, 49.208923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813153, -0.220586, 0.538631,
		0.580718, -0.370022, 0.725155,
		0.039346, 0.902455, 0.428983,
		32.913578, 38.395988, 49.337620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699379, 37.685795, 49.840462>,  <32.886036, 37.764271, 49.037331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699379, 37.685795, 49.840462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600281, 38.054504, 49.721153>,  <32.540821, 38.275730, 49.649570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600281, 38.054504, 49.721153>,  <32.699379, 37.685795, 49.840462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600281, 38.054504, 49.721153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820668, -0.036040, 0.570267,
		0.514905, 0.386058, 0.765396,
		-0.247741, 0.921770, -0.298269,
		32.525959, 38.331036, 49.631672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601143, 38.047951, 50.497414>,  <32.699379, 37.685795, 49.840462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601143, 38.047951, 50.497414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407024, 38.232079, 50.200069>,  <32.290554, 38.342556, 50.021664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407024, 38.232079, 50.200069>,  <32.601143, 38.047951, 50.497414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407024, 38.232079, 50.200069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807837, 0.089183, 0.582620,
		0.334489, 0.883260, 0.328586,
		-0.485300, 0.460324, -0.743361,
		32.261433, 38.370174, 49.977062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293159, 38.531185, 50.835342>,  <32.601143, 38.047951, 50.497414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293159, 38.531185, 50.835342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088398, 38.495514, 50.493580>,  <31.965542, 38.474113, 50.288525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088398, 38.495514, 50.493580>,  <32.293159, 38.531185, 50.835342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088398, 38.495514, 50.493580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857151, 0.119029, 0.501124,
		0.057012, 0.988878, -0.137366,
		-0.511901, -0.089173, -0.854404,
		31.934828, 38.468761, 50.237259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824936, 38.964294, 50.916912>,  <32.293159, 38.531185, 50.835342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824936, 38.964294, 50.916912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676157, 38.751575, 50.612583>,  <31.586889, 38.623943, 50.429985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676157, 38.751575, 50.612583>,  <31.824936, 38.964294, 50.916912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676157, 38.751575, 50.612583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923282, 0.296665, 0.244007,
		0.095946, 0.793209, -0.601344,
		-0.371947, -0.531798, -0.760819,
		31.564573, 38.592037, 50.384338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448277, 39.359051, 50.677410>,  <31.824936, 38.964294, 50.916912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448277, 39.359051, 50.677410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333723, 38.993969, 50.560822>,  <31.264992, 38.774921, 50.490868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333723, 38.993969, 50.560822>,  <31.448277, 39.359051, 50.677410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333723, 38.993969, 50.560822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937426, 0.204041, 0.282135,
		-0.198035, 0.354028, -0.914028,
		-0.286383, -0.912706, -0.291467,
		31.247808, 38.720158, 50.473381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830990, 39.448730, 50.257168>,  <31.448277, 39.359051, 50.677410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830990, 39.448730, 50.257168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843033, 39.074532, 50.397991>,  <30.850258, 38.850014, 50.482487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843033, 39.074532, 50.397991>,  <30.830990, 39.448730, 50.257168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843033, 39.074532, 50.397991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707748, 0.228767, 0.668400,
		-0.705824, -0.269293, -0.655205,
		0.030107, -0.935493, 0.352061,
		30.852064, 38.793884, 50.503609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142525, 39.370968, 50.343323>,  <30.830990, 39.448730, 50.257168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142525, 39.370968, 50.343323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324221, 39.085209, 50.556225>,  <30.433239, 38.913754, 50.683968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324221, 39.085209, 50.556225>,  <30.142525, 39.370968, 50.343323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324221, 39.085209, 50.556225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659969, 0.131472, 0.739700,
		-0.598419, -0.687274, -0.411763,
		0.454242, -0.714401, 0.532255,
		30.460493, 38.870888, 50.715900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558315, 38.995293, 50.751904>,  <30.142525, 39.370968, 50.343323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558315, 38.995293, 50.751904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.889521, 38.905167, 50.957283>,  <30.088243, 38.851089, 51.080509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.889521, 38.905167, 50.957283>,  <29.558315, 38.995293, 50.751904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889521, 38.905167, 50.957283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515840, 0.052835, 0.855054,
		-0.219786, -0.972852, -0.072479,
		0.828012, -0.225317, 0.513449,
		30.137924, 38.837570, 51.111317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397236, 38.488510, 51.439732>,  <29.558315, 38.995293, 50.751904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397236, 38.488510, 51.439732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766024, 38.610771, 51.534855>,  <29.987295, 38.684128, 51.591930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766024, 38.610771, 51.534855>,  <29.397236, 38.488510, 51.439732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766024, 38.610771, 51.534855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256591, 0.022189, 0.966266,
		0.290063, -0.951885, 0.098885,
		0.921968, 0.305651, 0.237808,
		30.042614, 38.702465, 51.606197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577301, 38.175667, 52.050465>,  <29.397236, 38.488510, 51.439732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577301, 38.175667, 52.050465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.816008, 38.496395, 52.038078>,  <29.959232, 38.688831, 52.030647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.816008, 38.496395, 52.038078>,  <29.577301, 38.175667, 52.050465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816008, 38.496395, 52.038078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054980, 0.079364, 0.995328,
		0.800529, -0.592277, 0.091446,
		0.596767, 0.801817, -0.030970,
		29.995037, 38.736938, 52.028786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951717, 38.026360, 52.725922>,  <29.577301, 38.175667, 52.050465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951717, 38.026360, 52.725922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995178, 38.399914, 52.589653>,  <30.021255, 38.624046, 52.507893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995178, 38.399914, 52.589653>,  <29.951717, 38.026360, 52.725922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995178, 38.399914, 52.589653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283549, 0.357575, 0.889798,
		0.952783, -0.000082, 0.303653,
		0.108652, 0.933884, -0.340668,
		30.027773, 38.680080, 52.487453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296001, 38.454163, 53.205460>,  <29.951717, 38.026360, 52.725922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296001, 38.454163, 53.205460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081577, 38.693615, 52.967377>,  <29.952923, 38.837288, 52.824528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081577, 38.693615, 52.967377>,  <30.296001, 38.454163, 53.205460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081577, 38.693615, 52.967377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578337, 0.253193, 0.775513,
		0.614952, 0.759954, 0.210486,
		-0.536060, 0.598635, -0.595211,
		29.920759, 38.873207, 52.788815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210062, 39.090000, 53.641182>,  <30.296001, 38.454163, 53.205460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210062, 39.090000, 53.641182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.945074, 39.170155, 53.352467>,  <29.786081, 39.218246, 53.179237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.945074, 39.170155, 53.352467>,  <30.210062, 39.090000, 53.641182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945074, 39.170155, 53.352467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608727, 0.417546, 0.674616,
		0.436564, 0.886285, -0.154631,
		-0.662468, 0.200385, -0.721791,
		29.746334, 39.230270, 53.135929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099207, 39.903957, 53.573486>,  <30.210062, 39.090000, 53.641182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099207, 39.903957, 53.573486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770182, 39.705811, 53.461769>,  <29.572767, 39.586922, 53.394737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770182, 39.705811, 53.461769>,  <30.099207, 39.903957, 53.573486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770182, 39.705811, 53.461769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538053, 0.518947, 0.664224,
		-0.184093, 0.696641, -0.693398,
		-0.822563, -0.495364, -0.279295,
		29.523413, 39.557201, 53.377979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534868, 40.360134, 53.531120>,  <30.099207, 39.903957, 53.573486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534868, 40.360134, 53.531120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343287, 40.009079, 53.538567>,  <29.228338, 39.798447, 53.543034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343287, 40.009079, 53.538567>,  <29.534868, 40.360134, 53.531120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343287, 40.009079, 53.538567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664386, 0.376275, 0.645762,
		-0.573755, 0.296920, -0.763311,
		-0.478954, -0.877642, 0.018620,
		29.199600, 39.745785, 53.544151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809935, 40.492428, 53.586777>,  <29.534868, 40.360134, 53.531120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809935, 40.492428, 53.586777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.836052, 40.119240, 53.728367>,  <28.851723, 39.895325, 53.813320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.836052, 40.119240, 53.728367>,  <28.809935, 40.492428, 53.586777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836052, 40.119240, 53.728367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641156, 0.232597, 0.731313,
		-0.764628, -0.274703, -0.582994,
		0.065291, -0.932972, 0.353978,
		28.855639, 39.839348, 53.834560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107618, 40.110157, 53.607262>,  <28.809935, 40.492428, 53.586777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107618, 40.110157, 53.607262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320042, 39.917088, 53.885830>,  <28.447496, 39.801247, 54.052971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320042, 39.917088, 53.885830>,  <28.107618, 40.110157, 53.607262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320042, 39.917088, 53.885830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671247, 0.261945, 0.693406,
		-0.517111, -0.835712, -0.184883,
		0.531059, -0.482670, 0.696424,
		28.479359, 39.772285, 54.094757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667709, 39.791470, 53.908474>,  <28.107618, 40.110157, 53.607262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667709, 39.791470, 53.908474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972908, 39.792542, 54.167030>,  <28.156027, 39.793182, 54.322166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972908, 39.792542, 54.167030>,  <27.667709, 39.791470, 53.908474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972908, 39.792542, 54.167030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646361, 0.014192, 0.762899,
		-0.007135, -0.999896, 0.012556,
		0.762998, 0.002673, 0.646395,
		28.201807, 39.793346, 54.360950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454298, 39.411366, 54.443481>,  <27.667709, 39.791470, 53.908474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454298, 39.411366, 54.443481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.762741, 39.623734, 54.584061>,  <27.947807, 39.751156, 54.668407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.762741, 39.623734, 54.584061>,  <27.454298, 39.411366, 54.443481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762741, 39.623734, 54.584061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564398, 0.314493, 0.763249,
		0.294689, -0.786909, 0.542156,
		0.771111, 0.530913, 0.351452,
		27.994074, 39.783009, 54.689495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561655, 39.260357, 55.257648>,  <27.454298, 39.411366, 54.443481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561655, 39.260357, 55.257648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.712818, 39.622810, 55.181633>,  <27.803516, 39.840282, 55.136024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.712818, 39.622810, 55.181633>,  <27.561655, 39.260357, 55.257648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712818, 39.622810, 55.181633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577848, 0.391218, 0.716268,
		0.723379, -0.160870, 0.671450,
		0.377909, 0.906129, -0.190040,
		27.826191, 39.894650, 55.124622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765646, 39.450172, 55.880802>,  <27.561655, 39.260357, 55.257648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765646, 39.450172, 55.880802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.761364, 39.791409, 55.672142>,  <27.758795, 39.996151, 55.546944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.761364, 39.791409, 55.672142>,  <27.765646, 39.450172, 55.880802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761364, 39.791409, 55.672142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283537, 0.497683, 0.819706,
		0.958901, 0.156682, 0.236556,
		-0.010703, 0.853090, -0.521654,
		27.758154, 40.047337, 55.515644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119892, 39.922211, 56.358341>,  <27.765646, 39.450172, 55.880802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119892, 39.922211, 56.358341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.875942, 40.105259, 56.099533>,  <27.729572, 40.215088, 55.944248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.875942, 40.105259, 56.099533>,  <28.119892, 39.922211, 56.358341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875942, 40.105259, 56.099533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406162, 0.520567, 0.751028,
		0.680505, 0.720827, -0.131611,
		-0.609873, 0.457623, -0.647021,
		27.692980, 40.242546, 55.905426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088560, 40.591064, 56.508331>,  <28.119892, 39.922211, 56.358341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088560, 40.591064, 56.508331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.741488, 40.552563, 56.313244>,  <27.533243, 40.529461, 56.196194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.741488, 40.552563, 56.313244>,  <28.088560, 40.591064, 56.508331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741488, 40.552563, 56.313244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478107, 0.430319, 0.765662,
		0.136174, 0.897530, -0.419400,
		-0.867681, -0.096255, -0.487714,
		27.481184, 40.523685, 56.166931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857908, 41.188606, 56.659050>,  <28.088560, 40.591064, 56.508331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857908, 41.188606, 56.659050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537283, 40.973640, 56.554218>,  <27.344908, 40.844662, 56.491322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537283, 40.973640, 56.554218>,  <27.857908, 41.188606, 56.659050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537283, 40.973640, 56.554218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499707, 0.361447, 0.787178,
		-0.328312, 0.761935, -0.558271,
		-0.801563, -0.537412, -0.262077,
		27.296814, 40.812416, 56.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278891, 41.622143, 56.690037>,  <27.857908, 41.188606, 56.659050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278891, 41.622143, 56.690037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112049, 41.259624, 56.717316>,  <27.011944, 41.042114, 56.733685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112049, 41.259624, 56.717316>,  <27.278891, 41.622143, 56.690037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112049, 41.259624, 56.717316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486327, 0.285954, 0.825661,
		-0.767797, 0.311217, -0.560028,
		-0.417102, -0.906297, 0.068202,
		26.986919, 40.987736, 56.737778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633486, 41.695984, 57.015915>,  <27.278891, 41.622143, 56.690037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633486, 41.695984, 57.015915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.640879, 41.297539, 57.050377>,  <26.645315, 41.058472, 57.071056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.640879, 41.297539, 57.050377>,  <26.633486, 41.695984, 57.015915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640879, 41.297539, 57.050377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729932, 0.045445, 0.682008,
		-0.683270, -0.075495, -0.726252,
		0.018484, -0.996110, 0.086157,
		26.646423, 40.998707, 57.076225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001829, 41.440208, 57.110477>,  <26.633486, 41.695984, 57.015915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001829, 41.440208, 57.110477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.230280, 41.153454, 57.270420>,  <26.367352, 40.981400, 57.366386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.230280, 41.153454, 57.270420>,  <26.001829, 41.440208, 57.110477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230280, 41.153454, 57.270420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612486, -0.047858, 0.789031,
		-0.546510, -0.695545, -0.466417,
		0.571128, -0.716887, 0.399856,
		26.401619, 40.938389, 57.390377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572847, 40.948467, 57.400177>,  <26.001829, 41.440208, 57.110477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572847, 40.948467, 57.400177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.921387, 40.897717, 57.589767>,  <26.130510, 40.867268, 57.703522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.921387, 40.897717, 57.589767>,  <25.572847, 40.948467, 57.400177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921387, 40.897717, 57.589767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489139, -0.148456, 0.859479,
		-0.038681, -0.980746, -0.191417,
		0.871348, -0.126875, 0.473979,
		26.182791, 40.859653, 57.731960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469284, 40.392815, 57.993553>,  <25.572847, 40.948467, 57.400177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469284, 40.392815, 57.993553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.813185, 40.551819, 58.121815>,  <26.019526, 40.647221, 58.198772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.813185, 40.551819, 58.121815>,  <25.469284, 40.392815, 57.993553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813185, 40.551819, 58.121815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333590, -0.038308, 0.941940,
		0.386713, -0.916798, 0.099669,
		0.859750, 0.397509, 0.320649,
		26.071110, 40.671070, 58.218010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708115, 39.964752, 58.472233>,  <25.469284, 40.392815, 57.993553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708115, 39.964752, 58.472233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.877869, 40.317230, 58.555561>,  <25.979721, 40.528717, 58.605556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.877869, 40.317230, 58.555561>,  <25.708115, 39.964752, 58.472233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877869, 40.317230, 58.555561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419623, -0.012474, 0.907613,
		0.802380, -0.472593, 0.364475,
		0.424385, 0.881192, 0.208320,
		26.005184, 40.581589, 58.618057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953999, 39.452747, 58.005669>,  <25.708115, 39.964752, 58.472233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953999, 39.452747, 58.005669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.668085, 39.184052, 58.083488>,  <25.496536, 39.022835, 58.130180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.668085, 39.184052, 58.083488>,  <25.953999, 39.452747, 58.005669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668085, 39.184052, 58.083488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121290, -0.393041, -0.911486,
		0.688745, -0.627921, 0.362415,
		-0.714786, -0.671739, 0.194545,
		25.453650, 38.982529, 58.141853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171440, 38.720444, 57.884510>,  <25.953999, 39.452747, 58.005669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171440, 38.720444, 57.884510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773966, 38.708691, 57.841190>,  <25.535482, 38.701637, 57.815201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773966, 38.708691, 57.841190>,  <26.171440, 38.720444, 57.884510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773966, 38.708691, 57.841190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106814, -0.543428, -0.832632,
		-0.034385, -0.838941, 0.543134,
		-0.993684, -0.029385, -0.108297,
		25.475861, 38.699875, 57.808701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931162, 38.028229, 57.777325>,  <26.171440, 38.720444, 57.884510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931162, 38.028229, 57.777325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.659746, 38.273869, 57.616093>,  <25.496897, 38.421253, 57.519356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.659746, 38.273869, 57.616093>,  <25.931162, 38.028229, 57.777325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659746, 38.273869, 57.616093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087549, -0.477209, -0.874418,
		-0.729329, -0.628615, 0.270042,
		-0.678539, 0.614096, -0.403077,
		25.456184, 38.458096, 57.495171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663311, 37.513538, 57.278648>,  <25.931162, 38.028229, 57.777325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663311, 37.513538, 57.278648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.529957, 37.879097, 57.185997>,  <25.449944, 38.098431, 57.130405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.529957, 37.879097, 57.185997>,  <25.663311, 37.513538, 57.278648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529957, 37.879097, 57.185997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028391, -0.255304, -0.966444,
		-0.942363, -0.315622, 0.111061,
		-0.333385, 0.913894, -0.231628,
		25.429941, 38.153267, 57.116508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066040, 37.314083, 56.892818>,  <25.663311, 37.513538, 57.278648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066040, 37.314083, 56.892818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.195835, 37.686417, 56.825584>,  <25.273712, 37.909817, 56.785244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.195835, 37.686417, 56.825584>,  <25.066040, 37.314083, 56.892818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195835, 37.686417, 56.825584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143081, -0.223961, -0.964038,
		-0.935005, 0.288770, -0.205858,
		0.324490, 0.930835, -0.168087,
		25.293182, 37.965668, 56.775158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.624632, 37.585117, 56.377617>,  <25.066040, 37.314083, 56.892818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.624632, 37.585117, 56.377617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.973043, 37.779793, 56.350971>,  <25.182091, 37.896599, 56.334984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.973043, 37.779793, 56.350971>,  <24.624632, 37.585117, 56.377617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973043, 37.779793, 56.350971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035508, -0.072882, -0.996708,
		-0.489946, 0.870528, -0.046201,
		0.871029, 0.486692, -0.066618,
		25.234352, 37.925800, 56.330986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.747850, 37.958389, 55.629200>,  <24.624632, 37.585117, 56.377617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.747850, 37.958389, 55.629200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.110071, 37.984093, 55.796936>,  <25.327404, 37.999516, 55.897579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.110071, 37.984093, 55.796936>,  <24.747850, 37.958389, 55.629200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110071, 37.984093, 55.796936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422254, -0.040997, -0.905550,
		-0.040997, 0.997091, -0.064258,
		0.905550, 0.064258, 0.419345,
		25.381737, 38.003368, 55.922741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154438, 38.593277, 55.449116>,  <24.747850, 37.958389, 55.629200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154438, 38.593277, 55.449116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.424706, 38.312672, 55.539764>,  <25.586866, 38.144310, 55.594154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.424706, 38.312672, 55.539764>,  <25.154438, 38.593277, 55.449116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424706, 38.312672, 55.539764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310450, -0.008062, -0.950555,
		0.668652, 0.712614, 0.212337,
		0.675667, -0.701510, 0.226622,
		25.627405, 38.102219, 55.607750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711477, 38.668209, 55.044521>,  <25.154438, 38.593277, 55.449116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711477, 38.668209, 55.044521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.798874, 38.298874, 55.170826>,  <25.851313, 38.077271, 55.246609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.798874, 38.298874, 55.170826>,  <25.711477, 38.668209, 55.044521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798874, 38.298874, 55.170826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398039, -0.211110, -0.892747,
		0.890969, 0.320744, 0.321399,
		0.218493, -0.923340, 0.315761,
		25.864422, 38.021873, 55.265553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435581, 38.576569, 54.950783>,  <25.711477, 38.668209, 55.044521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435581, 38.576569, 54.950783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.301800, 38.202175, 54.994736>,  <26.221531, 37.977539, 55.021107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.301800, 38.202175, 54.994736>,  <26.435581, 38.576569, 54.950783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301800, 38.202175, 54.994736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583267, -0.297170, -0.755969,
		0.740229, -0.188746, 0.645319,
		-0.334455, -0.935983, 0.109884,
		26.201464, 37.921379, 55.027702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988623, 38.142590, 55.166656>,  <26.435581, 38.576569, 54.950783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988623, 38.142590, 55.166656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.715828, 37.913349, 54.984913>,  <26.552151, 37.775803, 54.875866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.715828, 37.913349, 54.984913>,  <26.988623, 38.142590, 55.166656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715828, 37.913349, 54.984913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719958, -0.416793, -0.554927,
		0.128658, -0.705574, 0.696859,
		-0.681988, -0.573105, -0.454360,
		26.511232, 37.741417, 54.848606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383717, 37.497742, 54.986263>,  <26.988623, 38.142590, 55.166656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383717, 37.497742, 54.986263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.056040, 37.510899, 54.757233>,  <26.859434, 37.518791, 54.619816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.056040, 37.510899, 54.757233>,  <27.383717, 37.497742, 54.986263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056040, 37.510899, 54.757233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511482, -0.409734, -0.755317,
		-0.259444, -0.911612, 0.318830,
		-0.819191, 0.032887, -0.572577,
		26.810282, 37.520763, 54.585461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583462, 37.065102, 54.510708>,  <27.383717, 37.497742, 54.986263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583462, 37.065102, 54.510708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.240797, 37.208839, 54.362652>,  <27.035198, 37.295082, 54.273819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.240797, 37.208839, 54.362652>,  <27.583462, 37.065102, 54.510708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240797, 37.208839, 54.362652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256849, -0.325140, -0.910117,
		-0.447391, -0.874732, 0.186239,
		-0.856662, 0.359343, -0.370138,
		26.983799, 37.316643, 54.251610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371853, 36.547585, 54.135098>,  <27.583462, 37.065102, 54.510708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371853, 36.547585, 54.135098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223782, 36.887825, 53.985729>,  <27.134939, 37.091969, 53.896107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223782, 36.887825, 53.985729>,  <27.371853, 36.547585, 54.135098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223782, 36.887825, 53.985729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429157, -0.199924, -0.880826,
		-0.823889, -0.486319, -0.291034,
		-0.370178, 0.850602, -0.373422,
		27.112728, 37.143005, 53.873703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110872, 36.480442, 53.348667>,  <27.371853, 36.547585, 54.135098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110872, 36.480442, 53.348667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.179243, 36.871132, 53.400509>,  <27.220266, 37.105545, 53.431614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.179243, 36.871132, 53.400509>,  <27.110872, 36.480442, 53.348667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179243, 36.871132, 53.400509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394738, 0.052636, -0.917285,
		-0.902755, 0.207948, -0.376552,
		0.170928, 0.976722, 0.129602,
		27.230522, 37.164150, 53.439388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001759, 36.720745, 52.617851>,  <27.110872, 36.480442, 53.348667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001759, 36.720745, 52.617851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.166142, 37.038349, 52.797031>,  <27.264771, 37.228912, 52.904537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.166142, 37.038349, 52.797031>,  <27.001759, 36.720745, 52.617851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166142, 37.038349, 52.797031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405245, 0.281038, -0.869939,
		-0.816634, 0.539035, -0.206276,
		0.410956, 0.794015, 0.447946,
		27.289429, 37.276554, 52.931416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706610, 37.318371, 52.349388>,  <27.001759, 36.720745, 52.617851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706610, 37.318371, 52.349388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.077036, 37.400749, 52.475872>,  <27.299292, 37.450176, 52.551762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.077036, 37.400749, 52.475872>,  <26.706610, 37.318371, 52.349388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077036, 37.400749, 52.475872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304971, 0.085059, -0.948555,
		-0.222252, 0.974859, 0.015961,
		0.926065, 0.205950, 0.316208,
		27.354855, 37.462536, 52.570736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975895, 37.683590, 51.705318>,  <26.706610, 37.318371, 52.349388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975895, 37.683590, 51.705318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.302465, 37.637665, 51.931686>,  <27.498407, 37.610111, 52.067509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.302465, 37.637665, 51.931686>,  <26.975895, 37.683590, 51.705318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302465, 37.637665, 51.931686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569035, -0.006718, -0.822286,
		0.098211, 0.993364, 0.059848,
		0.816427, -0.114813, 0.565919,
		27.547394, 37.603222, 52.101463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409523, 38.081470, 51.440041>,  <26.975895, 37.683590, 51.705318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409523, 38.081470, 51.440041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.663385, 37.840302, 51.633411>,  <27.815702, 37.695602, 51.749435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.663385, 37.840302, 51.633411>,  <27.409523, 38.081470, 51.440041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663385, 37.840302, 51.633411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595431, -0.017258, -0.803221,
		0.492621, 0.797615, 0.348044,
		0.634654, -0.602920, 0.483427,
		27.853783, 37.659424, 51.778439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097830, 38.242508, 51.299564>,  <27.409523, 38.081470, 51.440041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097830, 38.242508, 51.299564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.159103, 37.869926, 51.431580>,  <28.195868, 37.646378, 51.510788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.159103, 37.869926, 51.431580>,  <28.097830, 38.242508, 51.299564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159103, 37.869926, 51.431580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642792, -0.159747, -0.749199,
		0.750568, 0.326912, 0.574261,
		0.153186, -0.931455, 0.330038,
		28.205059, 37.590488, 51.530590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773834, 38.150948, 51.143497>,  <28.097830, 38.242508, 51.299564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773834, 38.150948, 51.143497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.649586, 37.778053, 51.217743>,  <28.575037, 37.554317, 51.262291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.649586, 37.778053, 51.217743>,  <28.773834, 38.150948, 51.143497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649586, 37.778053, 51.217743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737755, -0.359577, -0.571334,
		0.599360, -0.040531, 0.799453,
		-0.310621, -0.932235, 0.185614,
		28.556400, 37.498383, 51.273426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324545, 37.754250, 51.345821>,  <28.773834, 38.150948, 51.143497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324545, 37.754250, 51.345821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046320, 37.519947, 51.179409>,  <28.879385, 37.379364, 51.079563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046320, 37.519947, 51.179409>,  <29.324545, 37.754250, 51.345821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046320, 37.519947, 51.179409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642053, -0.246903, -0.725815,
		0.322434, -0.771961, 0.547825,
		-0.695560, -0.585760, -0.416030,
		28.837652, 37.344219, 51.054600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771267, 37.248928, 51.249447>,  <29.324545, 37.754250, 51.345821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771267, 37.248928, 51.249447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.449379, 37.138435, 51.039257>,  <29.256247, 37.072140, 50.913143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.449379, 37.138435, 51.039257>,  <29.771267, 37.248928, 51.249447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449379, 37.138435, 51.039257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593642, -0.368732, -0.715280,
		0.003827, -0.887543, 0.460710,
		-0.804720, -0.276234, -0.525472,
		29.207962, 37.055565, 50.881615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946037, 36.620216, 51.049416>,  <29.771267, 37.248928, 51.249447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946037, 36.620216, 51.049416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639599, 36.717236, 50.811333>,  <29.455736, 36.775448, 50.668484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639599, 36.717236, 50.811333>,  <29.946037, 36.620216, 51.049416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639599, 36.717236, 50.811333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434468, -0.487011, -0.757666,
		-0.473631, -0.839045, 0.267726,
		-0.766101, 0.242536, -0.595201,
		29.409771, 36.790001, 50.632771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764774, 36.028156, 50.630192>,  <29.946037, 36.620216, 51.049416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764774, 36.028156, 50.630192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614513, 36.340435, 50.430431>,  <29.524357, 36.527802, 50.310574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614513, 36.340435, 50.430431>,  <29.764774, 36.028156, 50.630192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614513, 36.340435, 50.430431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437770, -0.325482, -0.838104,
		-0.816849, -0.533460, -0.219495,
		-0.375653, 0.780693, -0.499402,
		29.501818, 36.574642, 50.280609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408957, 35.789005, 50.015926>,  <29.764774, 36.028156, 50.630192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408957, 35.789005, 50.015926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521387, 36.166843, 49.948116>,  <29.588846, 36.393547, 49.907429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521387, 36.166843, 49.948116>,  <29.408957, 35.789005, 50.015926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521387, 36.166843, 49.948116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368125, -0.269259, -0.889935,
		-0.886272, 0.187734, -0.423411,
		0.281079, 0.944593, -0.169527,
		29.605711, 36.450222, 49.897259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157925, 35.917389, 49.361855>,  <29.408957, 35.789005, 50.015926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157925, 35.917389, 49.361855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459442, 36.161800, 49.458553>,  <29.640352, 36.308449, 49.516571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459442, 36.161800, 49.458553>,  <29.157925, 35.917389, 49.361855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459442, 36.161800, 49.458553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527997, -0.344208, -0.776363,
		-0.391170, 0.712857, -0.582083,
		0.753794, 0.611028, 0.241743,
		29.685579, 36.345108, 49.531075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273321, 36.333767, 48.736748>,  <29.157925, 35.917389, 49.361855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273321, 36.333767, 48.736748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616751, 36.338600, 48.941769>,  <29.822807, 36.341499, 49.064781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616751, 36.338600, 48.941769>,  <29.273321, 36.333767, 48.736748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616751, 36.338600, 48.941769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466869, -0.431560, -0.771874,
		0.211866, 0.902003, -0.376168,
		0.858572, 0.012087, 0.512550,
		29.874323, 36.342228, 49.095535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756739, 36.341553, 48.221497>,  <29.273321, 36.333767, 48.736748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756739, 36.341553, 48.221497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.979239, 36.242809, 48.538898>,  <30.112738, 36.183563, 48.729340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.979239, 36.242809, 48.538898>,  <29.756739, 36.341553, 48.221497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979239, 36.242809, 48.538898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728519, -0.314531, -0.608547,
		0.399808, 0.916586, 0.004886,
		0.556249, -0.246862, 0.793503,
		30.146112, 36.168751, 48.776951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460476, 36.487576, 48.025269>,  <29.756739, 36.341553, 48.221497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460476, 36.487576, 48.025269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.512066, 36.242329, 48.337029>,  <30.543020, 36.095181, 48.524082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.512066, 36.242329, 48.337029>,  <30.460476, 36.487576, 48.025269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512066, 36.242329, 48.337029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777916, -0.424874, -0.462957,
		0.614990, 0.666014, 0.422153,
		0.128975, -0.613113, 0.779396,
		30.550758, 36.058395, 48.570847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129457, 36.403542, 48.044373>,  <30.460476, 36.487576, 48.025269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129457, 36.403542, 48.044373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984732, 36.092911, 48.250675>,  <30.897896, 35.906532, 48.374458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984732, 36.092911, 48.250675>,  <31.129457, 36.403542, 48.044373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984732, 36.092911, 48.250675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631909, -0.611053, -0.476766,
		0.685405, 0.153412, 0.711818,
		-0.361817, -0.776582, 0.515761,
		30.876186, 35.859936, 48.405403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739597, 35.976582, 48.183601>,  <31.129457, 36.403542, 48.044373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739597, 35.976582, 48.183601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426229, 35.735352, 48.243675>,  <31.238209, 35.590614, 48.279720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426229, 35.735352, 48.243675>,  <31.739597, 35.976582, 48.183601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426229, 35.735352, 48.243675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427910, -0.698664, -0.573377,
		0.450721, -0.384927, 0.805408,
		-0.783418, -0.603075, 0.150189,
		31.191204, 35.554428, 48.288731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981819, 35.367783, 48.447105>,  <31.739597, 35.976582, 48.183601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981819, 35.367783, 48.447105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641050, 35.271107, 48.261280>,  <31.436588, 35.213100, 48.149784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641050, 35.271107, 48.261280>,  <31.981819, 35.367783, 48.447105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641050, 35.271107, 48.261280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503108, -0.623887, -0.598036,
		-0.145297, -0.743204, 0.653097,
		-0.851922, -0.241686, -0.464561,
		31.385473, 35.198601, 48.121910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075104, 34.772713, 48.313087>,  <31.981819, 35.367783, 48.447105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075104, 34.772713, 48.313087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764437, 34.827347, 48.067120>,  <31.578035, 34.860126, 47.919540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764437, 34.827347, 48.067120>,  <32.075104, 34.772713, 48.313087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764437, 34.827347, 48.067120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455108, -0.553248, -0.697706,
		-0.435499, -0.821744, 0.367531,
		-0.776671, 0.136584, -0.614921,
		31.531435, 34.868320, 47.882645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969074, 34.153156, 47.991234>,  <32.075104, 34.772713, 48.313087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969074, 34.153156, 47.991234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787102, 34.408520, 47.742886>,  <31.677917, 34.561737, 47.593876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787102, 34.408520, 47.742886>,  <31.969074, 34.153156, 47.991234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787102, 34.408520, 47.742886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360143, -0.505740, -0.783916,
		-0.814453, -0.580229, 0.000160,
		-0.454932, 0.638406, -0.620867,
		31.650621, 34.600040, 47.556625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593716, 33.720814, 47.541592>,  <31.969074, 34.153156, 47.991234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593716, 33.720814, 47.541592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655167, 34.074501, 47.365158>,  <31.692038, 34.286713, 47.259300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655167, 34.074501, 47.365158>,  <31.593716, 33.720814, 47.541592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655167, 34.074501, 47.365158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392347, -0.464269, -0.794052,
		-0.906898, -0.051071, -0.418244,
		0.153625, 0.884221, -0.441082,
		31.701254, 34.339767, 47.232834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468946, 33.538685, 46.909389>,  <31.593716, 33.720814, 47.541592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468946, 33.538685, 46.909389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.669683, 33.877819, 46.840897>,  <31.790125, 34.081299, 46.799801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.669683, 33.877819, 46.840897>,  <31.468946, 33.538685, 46.909389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669683, 33.877819, 46.840897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510710, -0.450221, -0.732445,
		-0.698090, 0.280121, -0.658940,
		0.501843, 0.847840, -0.171235,
		31.820236, 34.132172, 46.789528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380507, 33.718315, 46.170189>,  <31.468946, 33.538685, 46.909389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380507, 33.718315, 46.170189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703238, 33.896614, 46.325283>,  <31.896877, 34.003593, 46.418339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703238, 33.896614, 46.325283>,  <31.380507, 33.718315, 46.170189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703238, 33.896614, 46.325283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582565, -0.491187, -0.647574,
		-0.098202, 0.748363, -0.655980,
		0.806830, 0.445744, 0.387735,
		31.945286, 34.030338, 46.441605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895706, 33.890095, 45.612522>,  <31.380507, 33.718315, 46.170189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895706, 33.890095, 45.612522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120583, 33.926136, 45.941357>,  <32.255508, 33.947762, 46.138657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120583, 33.926136, 45.941357>,  <31.895706, 33.890095, 45.612522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120583, 33.926136, 45.941357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752522, -0.468017, -0.463326,
		0.343004, 0.879114, -0.330917,
		0.562192, 0.090100, 0.822084,
		32.289242, 33.953167, 46.187981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553028, 34.034840, 45.376961>,  <31.895706, 33.890095, 45.612522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553028, 34.034840, 45.376961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581261, 33.854870, 45.733070>,  <32.598202, 33.746887, 45.946735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581261, 33.854870, 45.733070>,  <32.553028, 34.034840, 45.376961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581261, 33.854870, 45.733070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697282, -0.615968, -0.366581,
		0.713313, 0.646644, 0.270250,
		0.070582, -0.449928, 0.890271,
		32.602436, 33.719891, 46.000153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293152, 33.894859, 45.333511>,  <32.553028, 34.034840, 45.376961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293152, 33.894859, 45.333511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106369, 33.689075, 45.621201>,  <32.994301, 33.565605, 45.793816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106369, 33.689075, 45.621201>,  <33.293152, 33.894859, 45.333511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106369, 33.689075, 45.621201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665994, -0.739665, -0.096687,
		0.581726, 0.433849, 0.688019,
		-0.466956, -0.514462, 0.719223,
		32.966282, 33.534737, 45.836967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912029, 33.567684, 45.529976>,  <33.293152, 33.894859, 45.333511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912029, 33.567684, 45.529976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577454, 33.415871, 45.688126>,  <33.376709, 33.324783, 45.783016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577454, 33.415871, 45.688126>,  <33.912029, 33.567684, 45.529976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577454, 33.415871, 45.688126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412374, -0.911012, -0.002117,
		0.360996, 0.161272, 0.918517,
		-0.836438, -0.379537, 0.395376,
		33.326523, 33.302010, 45.806740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187855, 33.008038, 45.848515>,  <33.912029, 33.567684, 45.529976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187855, 33.008038, 45.848515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364410, 32.649597, 45.829803>,  <34.470345, 32.434532, 45.818577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364410, 32.649597, 45.829803>,  <34.187855, 33.008038, 45.848515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364410, 32.649597, 45.829803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737576, 0.332632, 0.587655,
		-0.511037, -0.293882, 0.807759,
		0.441388, -0.896097, -0.046774,
		34.496826, 32.380768, 45.815773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352203, 32.846352, 46.485847>,  <34.187855, 33.008038, 45.848515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352203, 32.846352, 46.485847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604847, 32.679764, 46.224277>,  <34.756435, 32.579811, 46.067337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604847, 32.679764, 46.224277>,  <34.352203, 32.846352, 46.485847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604847, 32.679764, 46.224277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775263, 0.333140, 0.536642,
		-0.005648, -0.845913, 0.533291,
		0.631613, -0.416472, -0.653924,
		34.794331, 32.554821, 46.028099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675152, 32.365940, 46.908028>,  <34.352203, 32.846352, 46.485847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675152, 32.365940, 46.908028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887413, 32.476879, 46.587658>,  <35.014771, 32.543442, 46.395435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887413, 32.476879, 46.587658>,  <34.675152, 32.365940, 46.908028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887413, 32.476879, 46.587658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808186, 0.119194, 0.576739,
		0.255425, -0.953347, -0.160901,
		0.530654, 0.277351, -0.800926,
		35.046608, 32.560085, 46.347382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413811, 31.918888, 46.745674>,  <34.675152, 32.365940, 46.908028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413811, 31.918888, 46.745674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392239, 32.310154, 46.665390>,  <35.379295, 32.544914, 46.617218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392239, 32.310154, 46.665390>,  <35.413811, 31.918888, 46.745674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392239, 32.310154, 46.665390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897617, 0.135549, 0.419416,
		0.437465, -0.157547, -0.885327,
		-0.053928, 0.978164, -0.200715,
		35.376060, 32.603603, 46.605175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993427, 32.155888, 46.353443>,  <35.413811, 31.918888, 46.745674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993427, 32.155888, 46.353443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829681, 32.393131, 46.630756>,  <35.731434, 32.535477, 46.797146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829681, 32.393131, 46.630756>,  <35.993427, 32.155888, 46.353443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829681, 32.393131, 46.630756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846952, -0.035509, 0.530482,
		0.339252, 0.804338, -0.487800,
		-0.409366, 0.593110, 0.693282,
		35.706871, 32.571064, 46.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253250, 32.791088, 46.322914>,  <35.993427, 32.155888, 46.353443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253250, 32.791088, 46.322914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.119007, 32.746773, 46.697102>,  <36.038464, 32.720184, 46.921612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.119007, 32.746773, 46.697102>,  <36.253250, 32.791088, 46.322914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119007, 32.746773, 46.697102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854560, 0.382031, 0.351824,
		-0.396355, 0.917485, -0.033535,
		-0.335604, -0.110790, 0.935465,
		36.018326, 32.713535, 46.977741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289978, 33.417408, 46.641129>,  <36.253250, 32.791088, 46.322914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289978, 33.417408, 46.641129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252529, 33.176109, 46.957943>,  <36.230061, 33.031330, 47.148033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252529, 33.176109, 46.957943>,  <36.289978, 33.417408, 46.641129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252529, 33.176109, 46.957943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810312, 0.416057, 0.412664,
		-0.578473, 0.680432, 0.449868,
		-0.093620, -0.603248, 0.792040,
		36.224442, 32.995136, 47.195557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244865, 33.828129, 47.181404>,  <36.289978, 33.417408, 46.641129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244865, 33.828129, 47.181404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376328, 33.468967, 47.298538>,  <36.455204, 33.253471, 47.368816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376328, 33.468967, 47.298538>,  <36.244865, 33.828129, 47.181404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376328, 33.468967, 47.298538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719294, 0.438896, 0.538504,
		-0.612050, 0.033654, 0.790103,
		0.328651, -0.897907, 0.292833,
		36.474922, 33.199596, 47.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307587, 33.831833, 48.011261>,  <36.244865, 33.828129, 47.181404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307587, 33.831833, 48.011261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550007, 33.561283, 47.843826>,  <36.695461, 33.398952, 47.743366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550007, 33.561283, 47.843826>,  <36.307587, 33.831833, 48.011261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550007, 33.561283, 47.843826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780523, 0.404314, 0.476775,
		-0.153238, -0.615668, 0.772962,
		0.606055, -0.676375, -0.418587,
		36.731823, 33.358372, 47.718250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700729, 33.613865, 48.530659>,  <36.307587, 33.831833, 48.011261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700729, 33.613865, 48.530659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892128, 33.465107, 48.212479>,  <37.006966, 33.375851, 48.021572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892128, 33.465107, 48.212479>,  <36.700729, 33.613865, 48.530659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892128, 33.465107, 48.212479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877761, 0.227391, 0.421697,
		0.024051, -0.899993, 0.435241,
		0.478494, -0.371896, -0.795448,
		37.035675, 33.353539, 47.973843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294296, 33.163387, 48.783802>,  <36.700729, 33.613865, 48.530659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294296, 33.163387, 48.783802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375099, 33.294514, 48.414646>,  <37.423580, 33.373192, 48.193153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375099, 33.294514, 48.414646>,  <37.294296, 33.163387, 48.783802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375099, 33.294514, 48.414646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949294, 0.166248, 0.266837,
		0.240904, -0.929997, -0.277615,
		0.202005, 0.327820, -0.922891,
		37.435699, 33.392860, 48.137779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948502, 32.816353, 48.654621>,  <37.294296, 33.163387, 48.783802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948502, 32.816353, 48.654621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898762, 33.136333, 48.419807>,  <37.868919, 33.328323, 48.278919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898762, 33.136333, 48.419807>,  <37.948502, 32.816353, 48.654621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898762, 33.136333, 48.419807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921612, 0.312328, 0.230397,
		0.367655, -0.512369, -0.776085,
		-0.124345, 0.799956, -0.587035,
		37.861458, 33.376320, 48.243698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557419, 32.917820, 48.317921>,  <37.948502, 32.816353, 48.654621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557419, 32.917820, 48.317921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410824, 33.287613, 48.275932>,  <38.322868, 33.509487, 48.250740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410824, 33.287613, 48.275932>,  <38.557419, 32.917820, 48.317921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410824, 33.287613, 48.275932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896674, 0.381050, 0.225335,
		0.248319, -0.011546, -0.968610,
		-0.366487, 0.924482, -0.104975,
		38.300877, 33.564957, 48.244438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068409, 33.268665, 47.934288>,  <38.557419, 32.917820, 48.317921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068409, 33.268665, 47.934288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836037, 33.556995, 48.085510>,  <38.696613, 33.729996, 48.176243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836037, 33.556995, 48.085510>,  <39.068409, 33.268665, 47.934288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836037, 33.556995, 48.085510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813473, 0.498193, 0.300109,
		0.027983, 0.481880, -0.875791,
		-0.580930, 0.720830, 0.378055,
		38.661758, 33.773243, 48.198925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322086, 33.884632, 47.554909>,  <39.068409, 33.268665, 47.934288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322086, 33.884632, 47.554909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134022, 33.957020, 47.900440>,  <39.021183, 34.000454, 48.107758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134022, 33.957020, 47.900440>,  <39.322086, 33.884632, 47.554909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134022, 33.957020, 47.900440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767984, 0.566192, 0.299378,
		-0.434915, 0.804163, -0.405181,
		-0.470158, 0.180969, 0.863829,
		38.992973, 34.011311, 48.159588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832626, 33.737789, 46.990192>,  <39.322086, 33.884632, 47.554909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832626, 33.737789, 46.990192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211720, 33.640804, 46.907227>,  <39.439175, 33.582615, 46.857449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211720, 33.640804, 46.907227>,  <38.832626, 33.737789, 46.990192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211720, 33.640804, 46.907227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186351, 0.107047, -0.976634,
		0.258995, 0.964238, 0.056270,
		0.947731, -0.242458, -0.207411,
		39.496040, 33.568066, 46.845001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128036, 34.226410, 46.410316>,  <38.832626, 33.737789, 46.990192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128036, 34.226410, 46.410316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353359, 33.906212, 46.328438>,  <39.488552, 33.714092, 46.279312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353359, 33.906212, 46.328438>,  <39.128036, 34.226410, 46.410316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353359, 33.906212, 46.328438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440910, -0.081707, -0.893825,
		0.698773, 0.593750, -0.398970,
		0.563307, -0.800491, -0.204695,
		39.522350, 33.666065, 46.267029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384468, 34.209068, 45.554935>,  <39.128036, 34.226410, 46.410316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384468, 34.209068, 45.554935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395760, 33.849487, 45.729786>,  <39.402534, 33.633739, 45.834698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395760, 33.849487, 45.729786>,  <39.384468, 34.209068, 45.554935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395760, 33.849487, 45.729786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260169, -0.428840, -0.865106,
		0.965151, -0.089306, -0.245986,
		0.028230, -0.898956, 0.437130,
		39.404228, 33.579800, 45.860924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921436, 33.669533, 45.346310>,  <39.384468, 34.209068, 45.554935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921436, 33.669533, 45.346310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553883, 33.553783, 45.453575>,  <39.333351, 33.484333, 45.517937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553883, 33.553783, 45.453575>,  <39.921436, 33.669533, 45.346310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553883, 33.553783, 45.453575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187564, -0.277568, -0.942218,
		0.347092, -0.916088, 0.200775,
		-0.918884, -0.289378, 0.268167,
		39.278217, 33.466969, 45.534027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580379, 33.698647, 45.298893>,  <39.921436, 33.669533, 45.346310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580379, 33.698647, 45.298893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347061, 33.597874, 44.990013>,  <40.207069, 33.537411, 44.804684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347061, 33.597874, 44.990013>,  <40.580379, 33.698647, 45.298893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347061, 33.597874, 44.990013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769157, 0.476887, 0.425412,
		0.261079, 0.842086, -0.471941,
		-0.583297, -0.251931, -0.772202,
		40.172073, 33.522293, 44.758354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662258, 33.288849, 44.704163>,  <40.580379, 33.698647, 45.298893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662258, 33.288849, 44.704163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538406, 32.924694, 44.813942>,  <40.464096, 32.706200, 44.879810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538406, 32.924694, 44.813942>,  <40.662258, 33.288849, 44.704163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538406, 32.924694, 44.813942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915175, 0.206993, -0.345845,
		0.258044, -0.358254, -0.897256,
		-0.309626, -0.910389, 0.274452,
		40.445518, 32.651577, 44.896278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314922, 32.859226, 44.090530>,  <40.662258, 33.288849, 44.704163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314922, 32.859226, 44.090530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182854, 32.743214, 44.449833>,  <40.103615, 32.673607, 44.665417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182854, 32.743214, 44.449833>,  <40.314922, 32.859226, 44.090530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182854, 32.743214, 44.449833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940362, 0.018506, -0.339671,
		0.081894, -0.956836, -0.278851,
		-0.330169, -0.290038, 0.898257,
		40.083801, 32.656204, 44.719311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909508, 32.251316, 43.972866>,  <40.314922, 32.859226, 44.090530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909508, 32.251316, 43.972866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789219, 32.448059, 44.299702>,  <39.717045, 32.566105, 44.495804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789219, 32.448059, 44.299702>,  <39.909508, 32.251316, 43.972866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789219, 32.448059, 44.299702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927809, 0.047436, -0.370027,
		-0.220762, -0.869380, 0.442088,
		-0.300724, 0.491861, 0.817091,
		39.699001, 32.595619, 44.544830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966377, 31.660622, 43.601353>,  <39.909508, 32.251316, 43.972866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966377, 31.660622, 43.601353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795315, 31.941002, 43.373047>,  <39.692677, 32.109230, 43.236065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795315, 31.941002, 43.373047>,  <39.966377, 31.660622, 43.601353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795315, 31.941002, 43.373047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899511, 0.267580, -0.345370,
		-0.089362, -0.661110, -0.744948,
		-0.427661, 0.700952, -0.570764,
		39.667015, 32.151287, 43.201817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637112, 31.794510, 43.396366>,  <39.966377, 31.660622, 43.601353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637112, 31.794510, 43.396366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674549, 32.175060, 43.513756>,  <40.697010, 32.403389, 43.584190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674549, 32.175060, 43.513756>,  <40.637112, 31.794510, 43.396366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674549, 32.175060, 43.513756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901153, 0.044370, -0.431225,
		-0.423278, 0.304819, -0.853183,
		0.093590, 0.951376, 0.293470,
		40.702625, 32.460472, 43.601795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090767, 32.131313, 42.851845>,  <40.637112, 31.794510, 43.396366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090767, 32.131313, 42.851845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081245, 32.342133, 43.191647>,  <41.075535, 32.468624, 43.395527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081245, 32.342133, 43.191647>,  <41.090767, 32.131313, 42.851845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081245, 32.342133, 43.191647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983132, 0.166478, -0.075741,
		-0.181343, 0.833369, -0.522122,
		-0.023801, 0.527050, 0.849501,
		41.074104, 32.500248, 43.446495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398205, 32.860508, 42.772564>,  <41.090767, 32.131313, 42.851845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398205, 32.860508, 42.772564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421844, 32.664730, 43.120575>,  <41.436028, 32.547264, 43.329380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421844, 32.664730, 43.120575>,  <41.398205, 32.860508, 42.772564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421844, 32.664730, 43.120575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975805, -0.155465, -0.153739,
		0.210506, 0.858062, 0.468419,
		0.059095, -0.489449, 0.870027,
		41.439571, 32.517895, 43.381584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070072, 32.840004, 42.700916>,  <41.398205, 32.860508, 42.772564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070072, 32.840004, 42.700916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999802, 32.641277, 43.040871>,  <41.957638, 32.522041, 43.244843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999802, 32.641277, 43.040871>,  <42.070072, 32.840004, 42.700916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999802, 32.641277, 43.040871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956985, -0.288676, 0.029063,
		0.230904, 0.818438, 0.526159,
		-0.175676, -0.496816, 0.849890,
		41.947098, 32.492233, 43.295837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534889, 33.062023, 43.235012>,  <42.070072, 32.840004, 42.700916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534889, 33.062023, 43.235012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.415180, 32.680653, 43.219978>,  <42.343353, 32.451832, 43.210957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.415180, 32.680653, 43.219978>,  <42.534889, 33.062023, 43.235012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415180, 32.680653, 43.219978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907700, -0.272335, -0.319242,
		0.294138, -0.129654, 0.946928,
		-0.299273, -0.953427, -0.037583,
		42.325397, 32.394623, 43.208702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177910, 32.969948, 42.928986>,  <42.534889, 33.062023, 43.235012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177910, 32.969948, 42.928986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.521366, 32.854729, 42.759388>,  <43.727440, 32.785599, 42.657631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.521366, 32.854729, 42.759388>,  <43.177910, 32.969948, 42.928986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521366, 32.854729, 42.759388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479962, -0.161441, -0.862307,
		0.179936, 0.943909, -0.276872,
		0.858638, -0.288048, -0.423992,
		43.778957, 32.768314, 42.632191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054749, 33.337677, 42.194588>,  <43.177910, 32.969948, 42.928986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054749, 33.337677, 42.194588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318863, 33.039036, 42.162098>,  <43.477333, 32.859852, 42.142605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318863, 33.039036, 42.162098>,  <43.054749, 33.337677, 42.194588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318863, 33.039036, 42.162098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245078, -0.111980, -0.963015,
		0.709898, 0.655774, -0.256916,
		0.660289, -0.746607, -0.081221,
		43.516949, 32.815052, 42.137733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304623, 33.956409, 41.983559>,  <43.054749, 33.337677, 42.194588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304623, 33.956409, 41.983559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.652386, 33.897011, 41.795059>,  <43.861046, 33.861370, 41.681961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.652386, 33.897011, 41.795059>,  <43.304623, 33.956409, 41.983559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652386, 33.897011, 41.795059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415228, 0.297329, -0.859757,
		0.267789, 0.943156, 0.196839,
		0.869410, -0.148500, -0.471246,
		43.913208, 33.852459, 41.653687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826828, 34.517109, 42.006947>,  <43.304623, 33.956409, 41.983559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826828, 34.517109, 42.006947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.101902, 34.767693, 41.860176>,  <43.266949, 34.918041, 41.772114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.101902, 34.767693, 41.860176>,  <42.826828, 34.517109, 42.006947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101902, 34.767693, 41.860176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534124, 0.094243, -0.840137,
		-0.491728, 0.773738, 0.399415,
		0.687688, 0.626456, -0.366930,
		43.308208, 34.955631, 41.750095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371655, 34.450684, 41.411400>,  <42.826828, 34.517109, 42.006947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371655, 34.450684, 41.411400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603306, 34.142536, 41.304714>,  <43.742298, 33.957645, 41.240704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603306, 34.142536, 41.304714>,  <43.371655, 34.450684, 41.411400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603306, 34.142536, 41.304714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246333, 0.146504, -0.958049,
		0.777128, 0.620535, -0.104923,
		0.579131, -0.770372, -0.266710,
		43.777046, 33.911423, 41.224701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875538, 34.643661, 40.918049>,  <43.371655, 34.450684, 41.411400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875538, 34.643661, 40.918049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.753555, 34.270267, 40.842564>,  <43.680367, 34.046230, 40.797272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.753555, 34.270267, 40.842564>,  <43.875538, 34.643661, 40.918049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753555, 34.270267, 40.842564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087829, 0.224875, -0.970421,
		0.948306, -0.279366, -0.150565,
		-0.304961, -0.933481, -0.188714,
		43.662067, 33.990223, 40.785950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280712, 34.334736, 40.460850>,  <43.875538, 34.643661, 40.918049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280712, 34.334736, 40.460850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.915092, 34.184563, 40.399452>,  <43.695721, 34.094460, 40.362614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.915092, 34.184563, 40.399452>,  <44.280712, 34.334736, 40.460850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915092, 34.184563, 40.399452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085888, 0.549013, -0.831389,
		0.396402, -0.746748, -0.534072,
		-0.914051, -0.375435, -0.153493,
		43.640877, 34.071934, 40.353405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253109, 33.981243, 39.746490>,  <44.280712, 34.334736, 40.460850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253109, 33.981243, 39.746490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.893852, 34.120499, 39.853931>,  <43.678299, 34.204052, 39.918396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.893852, 34.120499, 39.853931>,  <44.253109, 33.981243, 39.746490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893852, 34.120499, 39.853931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069359, 0.491054, -0.868364,
		-0.434209, -0.798540, -0.416887,
		-0.898138, 0.348137, 0.268606,
		43.624413, 34.224941, 39.934513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682812, 33.779099, 39.194298>,  <44.253109, 33.981243, 39.746490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682812, 33.779099, 39.194298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657455, 34.111355, 39.415573>,  <43.642242, 34.310707, 39.548340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657455, 34.111355, 39.415573>,  <43.682812, 33.779099, 39.194298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657455, 34.111355, 39.415573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087660, 0.556795, -0.826011,
		-0.994131, -0.003871, -0.108111,
		-0.063394, 0.830641, 0.553188,
		43.638439, 34.360546, 39.581528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143417, 34.202045, 38.942181>,  <43.682812, 33.779099, 39.194298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143417, 34.202045, 38.942181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429070, 34.435711, 39.096458>,  <43.600460, 34.575909, 39.189026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429070, 34.435711, 39.096458>,  <43.143417, 34.202045, 38.942181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429070, 34.435711, 39.096458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138950, 0.421731, -0.896011,
		-0.686079, 0.693465, 0.220003,
		0.714135, 0.584165, 0.385697,
		43.643311, 34.610962, 39.212166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985077, 34.987923, 38.959358>,  <43.143417, 34.202045, 38.942181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985077, 34.987923, 38.959358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.350830, 34.856876, 38.864220>,  <43.570282, 34.778248, 38.807137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.350830, 34.856876, 38.864220>,  <42.985077, 34.987923, 38.959358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350830, 34.856876, 38.864220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071993, 0.446549, -0.891858,
		0.398393, 0.832624, 0.384732,
		0.914385, -0.327612, -0.237845,
		43.625145, 34.758595, 38.792866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051495, 34.922237, 38.182957>,  <42.985077, 34.987923, 38.959358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051495, 34.922237, 38.182957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213135, 35.279011, 38.264103>,  <43.310120, 35.493076, 38.312790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213135, 35.279011, 38.264103>,  <43.051495, 34.922237, 38.182957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213135, 35.279011, 38.264103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862304, -0.297472, -0.409808,
		-0.305174, 0.340537, -0.889327,
		0.404104, 0.891933, 0.202866,
		43.334366, 35.546593, 38.324963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364971, 35.374466, 37.520737>,  <43.051495, 34.922237, 38.182957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364971, 35.374466, 37.520737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540039, 35.460114, 37.870045>,  <43.645081, 35.511501, 38.079628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540039, 35.460114, 37.870045>,  <43.364971, 35.374466, 37.520737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540039, 35.460114, 37.870045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876742, -0.317041, -0.361675,
		0.199421, 0.923926, -0.326485,
		0.437670, 0.214118, 0.873269,
		43.671341, 35.524349, 38.132027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880295, 35.686817, 37.321716>,  <43.364971, 35.374466, 37.520737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880295, 35.686817, 37.321716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.939182, 35.563267, 37.697571>,  <43.974514, 35.489136, 37.923084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.939182, 35.563267, 37.697571>,  <43.880295, 35.686817, 37.321716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939182, 35.563267, 37.697571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939169, -0.254379, -0.230765,
		0.310302, 0.916454, 0.252636,
		0.147220, -0.308875, 0.939640,
		43.983349, 35.470604, 37.979462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642296, 35.873428, 37.535900>,  <43.880295, 35.686817, 37.321716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642296, 35.873428, 37.535900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.513351, 35.592354, 37.789612>,  <44.435986, 35.423710, 37.941841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.513351, 35.592354, 37.789612>,  <44.642296, 35.873428, 37.535900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513351, 35.592354, 37.789612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836765, -0.524823, -0.156158,
		0.442616, 0.480406, 0.757166,
		-0.322359, -0.702689, 0.634282,
		44.416645, 35.381546, 37.979897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036865, 35.885834, 38.192318>,  <44.642296, 35.873428, 37.535900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036865, 35.885834, 38.192318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899654, 35.531395, 38.067635>,  <44.817329, 35.318729, 37.992825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899654, 35.531395, 38.067635>,  <45.036865, 35.885834, 38.192318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899654, 35.531395, 38.067635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939303, -0.321229, -0.120506,
		0.006651, -0.334125, 0.942506,
		-0.343024, -0.886100, -0.311708,
		44.796749, 35.265564, 37.974121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797943, 35.827530, 38.374176>,  <45.036865, 35.885834, 38.192318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797943, 35.827530, 38.374176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.915630, 36.072922, 38.081032>,  <45.986244, 36.220158, 37.905148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.915630, 36.072922, 38.081032>,  <45.797943, 35.827530, 38.374176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915630, 36.072922, 38.081032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815043, -0.561518, -0.142837,
		-0.499140, -0.555284, -0.665221,
		0.294219, 0.613479, -0.732856,
		46.003895, 36.256966, 37.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937645, 35.450989, 37.654922>,  <45.797943, 35.827530, 38.374176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937645, 35.450989, 37.654922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177021, 35.764511, 37.721291>,  <46.320644, 35.952625, 37.761112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177021, 35.764511, 37.721291>,  <45.937645, 35.450989, 37.654922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177021, 35.764511, 37.721291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794062, -0.552742, -0.252867,
		-0.106488, 0.283073, -0.953168,
		0.598436, 0.783802, 0.165917,
		46.356552, 35.999653, 37.771065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590919, 35.310272, 37.317833>,  <45.937645, 35.450989, 37.654922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590919, 35.310272, 37.317833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.748875, 35.586163, 37.560596>,  <46.843647, 35.751698, 37.706253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.748875, 35.586163, 37.560596>,  <46.590919, 35.310272, 37.317833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748875, 35.586163, 37.560596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917917, -0.268411, -0.292205,
		-0.038642, 0.672479, -0.739107,
		0.394886, 0.689730, 0.606908,
		46.867340, 35.793083, 37.742668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069946, 35.696415, 36.906071>,  <46.590919, 35.310272, 37.317833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069946, 35.696415, 36.906071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.150513, 35.627731, 37.291805>,  <47.198853, 35.586521, 37.523247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.150513, 35.627731, 37.291805>,  <47.069946, 35.696415, 36.906071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.150513, 35.627731, 37.291805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851573, -0.455777, -0.259021,
		0.483999, 0.873374, 0.054424,
		0.201417, -0.171712, 0.964337,
		47.210938, 35.576218, 37.581108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.805325, 35.855820, 37.060829>,  <47.069946, 35.696415, 36.906071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.805325, 35.855820, 37.060829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.655800, 35.592091, 37.321766>,  <47.566086, 35.433853, 37.478329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.655800, 35.592091, 37.321766>,  <47.805325, 35.855820, 37.060829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655800, 35.592091, 37.321766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664293, -0.681162, -0.307788,
		0.647284, 0.318292, 0.692614,
		-0.373816, -0.659325, 0.652344,
		47.543655, 35.394295, 37.517467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645626, 35.268208, 36.627117>,  <47.805325, 35.855820, 37.060829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645626, 35.268208, 36.627117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.631611, 35.067974, 36.973110>,  <47.623199, 34.947834, 37.180706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.631611, 35.067974, 36.973110>,  <47.645626, 35.268208, 36.627117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631611, 35.067974, 36.973110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182956, 0.847672, 0.497975,
		-0.982497, 0.175702, 0.061882,
		-0.035040, -0.500581, 0.864980,
		47.621098, 34.917801, 37.232605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.776257, 34.599239, 36.356068>,  <47.645626, 35.268208, 36.627117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.776257, 34.599239, 36.356068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.548073, 34.304909, 36.210114>,  <47.411163, 34.128311, 36.122540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.548073, 34.304909, 36.210114>,  <47.776257, 34.599239, 36.356068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548073, 34.304909, 36.210114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391998, 0.634318, -0.666317,
		0.721746, -0.237070, -0.650293,
		-0.570456, -0.735825, -0.364886,
		47.376934, 34.084160, 36.100647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.134144, 33.923931, 36.175026>,  <47.776257, 34.599239, 36.356068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.134144, 33.923931, 36.175026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.120258, 33.524643, 36.194408>,  <48.111927, 33.285069, 36.206036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.120258, 33.524643, 36.194408>,  <48.134144, 33.923931, 36.175026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.120258, 33.524643, 36.194408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440685, -0.028225, -0.897218,
		0.896990, -0.052499, -0.438922,
		-0.034714, -0.998222, 0.048453,
		48.109844, 33.225178, 36.208942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.613926, 33.635967, 35.798832>,  <48.134144, 33.923931, 36.175026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.613926, 33.635967, 35.798832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.258404, 33.456646, 35.836906>,  <48.045090, 33.349052, 35.859749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.258404, 33.456646, 35.836906>,  <48.613926, 33.635967, 35.798832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.258404, 33.456646, 35.836906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227002, 0.250215, -0.941203,
		0.398127, -0.858148, -0.324157,
		-0.888800, -0.448302, 0.095183,
		47.991764, 33.322155, 35.865463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.252701, 33.952782, 35.565105>,  <48.613926, 33.635967, 35.798832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.252701, 33.952782, 35.565105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.300331, 34.344238, 35.498077>,  <49.328911, 34.579113, 35.457863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.300331, 34.344238, 35.498077>,  <49.252701, 33.952782, 35.565105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.300331, 34.344238, 35.498077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085027, -0.158095, -0.983756,
		-0.989237, 0.131394, 0.064385,
		0.119080, 0.978643, -0.167565,
		49.336056, 34.637833, 35.447807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.748264, 34.124615, 35.141621>,  <49.252701, 33.952782, 35.565105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.748264, 34.124615, 35.141621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.033630, 34.395081, 35.068047>,  <49.204849, 34.557362, 35.023903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.033630, 34.395081, 35.068047>,  <48.748264, 34.124615, 35.141621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.033630, 34.395081, 35.068047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057083, -0.205537, -0.976983,
		-0.698408, 0.707498, -0.108036,
		0.713419, 0.676166, -0.183935,
		49.247658, 34.597931, 35.012867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.554432, 34.591324, 34.690411>,  <48.748264, 34.124615, 35.141621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.554432, 34.591324, 34.690411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.946255, 34.518879, 34.655399>,  <49.181351, 34.475410, 34.634392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.946255, 34.518879, 34.655399>,  <48.554432, 34.591324, 34.690411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.946255, 34.518879, 34.655399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141837, -0.313352, -0.938985,
		0.142640, 0.932206, -0.332636,
		0.979559, -0.181117, -0.087525,
		49.240124, 34.464542, 34.629143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.952435, 34.946770, 34.715336>,  <48.554432, 34.591324, 34.690411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.952435, 34.946770, 34.715336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.641682, 34.919514, 34.965717>,  <47.455231, 34.903160, 35.115944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.641682, 34.919514, 34.965717>,  <47.952435, 34.946770, 34.715336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641682, 34.919514, 34.965717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366301, -0.759677, -0.537323,
		0.512132, -0.646721, 0.565219,
		-0.776881, -0.068140, 0.625949,
		47.408619, 34.899071, 35.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.257519, 35.271446, 55.727844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.618561, 35.349277, 55.881439>,  <31.835186, 35.395977, 55.973595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.618561, 35.349277, 55.881439>,  <31.257519, 35.271446, 55.727844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618561, 35.349277, 55.881439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407961, -0.101988, -0.907285,
		-0.137375, 0.975571, -0.171435,
		0.902605, 0.194577, 0.383984,
		31.889343, 35.407650, 55.996635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673132, 35.789925, 55.231262>,  <31.257519, 35.271446, 55.727844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673132, 35.789925, 55.231262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.941925, 35.609795, 55.466431>,  <32.103199, 35.501717, 55.607533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.941925, 35.609795, 55.466431>,  <31.673132, 35.789925, 55.231262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941925, 35.609795, 55.466431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517794, -0.281874, -0.807736,
		0.529463, 0.847203, 0.043762,
		0.671981, -0.450326, 0.587918,
		32.143520, 35.474697, 55.642807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386398, 36.109001, 54.961624>,  <31.673132, 35.789925, 55.231262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386398, 36.109001, 54.961624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.479244, 35.792446, 55.187836>,  <32.534954, 35.602512, 55.323563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.479244, 35.792446, 55.187836>,  <32.386398, 36.109001, 54.961624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479244, 35.792446, 55.187836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653891, -0.303477, -0.693058,
		0.720103, 0.530667, 0.447039,
		0.232117, -0.791388, 0.565533,
		32.548878, 35.555031, 55.357494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053707, 36.024029, 54.814266>,  <32.386398, 36.109001, 54.961624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053707, 36.024029, 54.814266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.954666, 35.670357, 54.972721>,  <32.895241, 35.458153, 55.067795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.954666, 35.670357, 54.972721>,  <33.053707, 36.024029, 54.814266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954666, 35.670357, 54.972721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577348, -0.462993, -0.672537,
		0.778049, 0.062182, 0.625118,
		-0.247606, -0.884178, 0.396132,
		32.880383, 35.405102, 55.091560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742374, 35.744968, 55.002666>,  <33.053707, 36.024029, 54.814266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742374, 35.744968, 55.002666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.469215, 35.456390, 54.956768>,  <33.305321, 35.283245, 54.929230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.469215, 35.456390, 54.956768>,  <33.742374, 35.744968, 55.002666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469215, 35.456390, 54.956768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589273, -0.451199, -0.670206,
		0.431744, -0.525299, 0.733252,
		-0.682901, -0.721443, -0.114742,
		33.264343, 35.239956, 54.922344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230263, 35.184998, 54.910721>,  <33.742374, 35.744968, 55.002666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230263, 35.184998, 54.910721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.855347, 35.112541, 54.791611>,  <33.630398, 35.069069, 54.720142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.855347, 35.112541, 54.791611>,  <34.230263, 35.184998, 54.910721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855347, 35.112541, 54.791611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347819, -0.431046, -0.832599,
		0.022460, -0.883962, 0.467020,
		-0.937293, -0.181138, -0.297777,
		33.574158, 35.058201, 54.702278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213760, 34.447193, 54.719624>,  <34.230263, 35.184998, 54.910721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213760, 34.447193, 54.719624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.905048, 34.616932, 54.530186>,  <33.719822, 34.718777, 54.416523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.905048, 34.616932, 54.530186>,  <34.213760, 34.447193, 54.719624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905048, 34.616932, 54.530186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413750, -0.230445, -0.880742,
		-0.482878, -0.875684, 0.002278,
		-0.771777, 0.424349, -0.473591,
		33.673515, 34.744236, 54.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882423, 33.991543, 54.193142>,  <34.213760, 34.447193, 54.719624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882423, 33.991543, 54.193142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.780350, 34.357265, 54.067333>,  <33.719105, 34.576698, 53.991848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.780350, 34.357265, 54.067333>,  <33.882423, 33.991543, 54.193142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780350, 34.357265, 54.067333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406326, -0.193771, -0.892945,
		-0.877371, -0.355664, -0.322060,
		-0.255183, 0.914306, -0.314525,
		33.703796, 34.631557, 53.972977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715683, 33.843487, 53.542076>,  <33.882423, 33.991543, 54.193142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715683, 33.843487, 53.542076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.787930, 34.236900, 53.544388>,  <33.831276, 34.472950, 53.545773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.787930, 34.236900, 53.544388>,  <33.715683, 33.843487, 53.542076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787930, 34.236900, 53.544388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503592, -0.087430, -0.859506,
		-0.844852, 0.158147, -0.511092,
		0.180613, 0.983537, 0.005776,
		33.842113, 34.531963, 53.546120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470177, 34.105980, 52.866516>,  <33.715683, 33.843487, 53.542076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470177, 34.105980, 52.866516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.728523, 34.375259, 53.010551>,  <33.883530, 34.536827, 53.096973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.728523, 34.375259, 53.010551>,  <33.470177, 34.105980, 52.866516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728523, 34.375259, 53.010551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429806, 0.069185, -0.900267,
		-0.630974, 0.736215, -0.244662,
		0.645863, 0.673202, 0.360084,
		33.922283, 34.577221, 53.118576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522690, 34.642708, 52.345497>,  <33.470177, 34.105980, 52.866516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522690, 34.642708, 52.345497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.846523, 34.687553, 52.575977>,  <34.040825, 34.714458, 52.714264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.846523, 34.687553, 52.575977>,  <33.522690, 34.642708, 52.345497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846523, 34.687553, 52.575977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572584, 0.065402, -0.817233,
		-0.129305, 0.991541, -0.011245,
		0.809585, 0.112111, 0.576198,
		34.089397, 34.721188, 52.748837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875362, 35.229362, 52.088509>,  <33.522690, 34.642708, 52.345497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875362, 35.229362, 52.088509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.126610, 34.989246, 52.286545>,  <34.277359, 34.845177, 52.405365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.126610, 34.989246, 52.286545>,  <33.875362, 35.229362, 52.088509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126610, 34.989246, 52.286545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557774, -0.096288, -0.824389,
		0.542547, 0.793962, 0.274348,
		0.628118, -0.600294, 0.495092,
		34.315044, 34.809158, 52.435074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526939, 35.487717, 51.954685>,  <33.875362, 35.229362, 52.088509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526939, 35.487717, 51.954685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.591377, 35.108215, 52.063438>,  <34.630039, 34.880516, 52.128693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.591377, 35.108215, 52.063438>,  <34.526939, 35.487717, 51.954685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591377, 35.108215, 52.063438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468487, -0.168958, -0.867164,
		0.868658, 0.267075, 0.417258,
		0.161099, -0.948749, 0.271888,
		34.639706, 34.823589, 52.145004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173275, 35.427959, 51.687531>,  <34.526939, 35.487717, 51.954685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173275, 35.427959, 51.687531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.065941, 35.055305, 51.785549>,  <35.001541, 34.831711, 51.844360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.065941, 35.055305, 51.785549>,  <35.173275, 35.427959, 51.687531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065941, 35.055305, 51.785549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447546, -0.345823, -0.824687,
		0.853053, -0.111619, 0.509747,
		-0.268333, -0.931637, 0.245051,
		34.985439, 34.775814, 51.859066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778400, 34.938698, 51.586151>,  <35.173275, 35.427959, 51.687531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778400, 34.938698, 51.586151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.429962, 34.747299, 51.541908>,  <35.220898, 34.632462, 51.515362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.429962, 34.747299, 51.541908>,  <35.778400, 34.938698, 51.586151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429962, 34.747299, 51.541908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361385, -0.472027, -0.804109,
		0.332552, -0.740429, 0.584102,
		-0.871097, -0.478494, -0.110606,
		35.168633, 34.603752, 51.508728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021282, 34.329849, 51.409081>,  <35.778400, 34.938698, 51.586151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021282, 34.329849, 51.409081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.636192, 34.304428, 51.303913>,  <35.405140, 34.289173, 51.240810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.636192, 34.304428, 51.303913>,  <36.021282, 34.329849, 51.409081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636192, 34.304428, 51.303913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227783, -0.714710, -0.661290,
		-0.145884, -0.696527, 0.702544,
		-0.962721, -0.063556, -0.262922,
		35.347378, 34.285362, 51.225037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906975, 33.654350, 51.352058>,  <36.021282, 34.329849, 51.409081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906975, 33.654350, 51.352058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.600159, 33.825523, 51.160839>,  <35.416069, 33.928226, 51.046108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.600159, 33.825523, 51.160839>,  <35.906975, 33.654350, 51.352058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600159, 33.825523, 51.160839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100300, -0.655948, -0.748112,
		-0.633713, -0.621779, 0.460216,
		-0.767038, 0.427929, -0.478047,
		35.370049, 33.953903, 51.017426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521671, 33.025658, 51.122585>,  <35.906975, 33.654350, 51.352058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521671, 33.025658, 51.122585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436565, 33.352543, 50.908337>,  <35.385502, 33.548676, 50.779789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436565, 33.352543, 50.908337>,  <35.521671, 33.025658, 51.122585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436565, 33.352543, 50.908337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003813, -0.548860, -0.835906,
		-0.977095, -0.175811, 0.119896,
		-0.212768, 0.817217, -0.535618,
		35.372734, 33.597710, 50.747650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088974, 32.787575, 50.593246>,  <35.521671, 33.025658, 51.122585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088974, 32.787575, 50.593246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209404, 33.146969, 50.465450>,  <35.281662, 33.362606, 50.388771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209404, 33.146969, 50.465450>,  <35.088974, 32.787575, 50.593246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209404, 33.146969, 50.465450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051711, -0.349928, -0.935348,
		-0.952196, 0.265092, -0.151818,
		0.301079, 0.898486, -0.319492,
		35.299728, 33.416515, 50.369602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840729, 32.842869, 49.875919>,  <35.088974, 32.787575, 50.593246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840729, 32.842869, 49.875919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.102524, 33.144043, 49.903446>,  <35.259602, 33.324745, 49.919964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.102524, 33.144043, 49.903446>,  <34.840729, 32.842869, 49.875919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102524, 33.144043, 49.903446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272648, -0.150138, -0.950327,
		-0.705198, 0.640745, -0.303550,
		0.654491, 0.752931, 0.068821,
		35.298870, 33.369923, 49.924091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757866, 33.085213, 49.215427>,  <34.840729, 32.842869, 49.875919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757866, 33.085213, 49.215427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.106377, 33.231453, 49.346401>,  <35.315483, 33.319195, 49.424984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.106377, 33.231453, 49.346401>,  <34.757866, 33.085213, 49.215427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106377, 33.231453, 49.346401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409506, -0.173805, -0.895598,
		-0.270519, 0.914401, -0.301147,
		0.871277, 0.365598, 0.327435,
		35.367760, 33.341133, 49.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446873, 33.275070, 48.551674>,  <34.757866, 33.085213, 49.215427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446873, 33.275070, 48.551674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.104733, 33.210487, 48.354774>,  <33.899448, 33.171738, 48.236633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.104733, 33.210487, 48.354774>,  <34.446873, 33.275070, 48.551674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104733, 33.210487, 48.354774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513563, 0.389074, 0.764771,
		0.068047, 0.906947, -0.415711,
		-0.855350, -0.161454, -0.492250,
		33.848129, 33.162052, 48.207100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917252, 33.814587, 48.578136>,  <34.446873, 33.275070, 48.551674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917252, 33.814587, 48.578136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.694710, 33.488472, 48.513905>,  <33.561184, 33.292805, 48.475365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.694710, 33.488472, 48.513905>,  <33.917252, 33.814587, 48.578136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694710, 33.488472, 48.513905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468913, 0.148501, 0.870671,
		-0.685998, 0.559696, -0.464916,
		-0.556352, -0.815284, -0.160577,
		33.527805, 33.243885, 48.465733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320850, 33.930111, 48.892242>,  <33.917252, 33.814587, 48.578136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320850, 33.930111, 48.892242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.236385, 33.545223, 48.823494>,  <33.185707, 33.314289, 48.782246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.236385, 33.545223, 48.823494>,  <33.320850, 33.930111, 48.892242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236385, 33.545223, 48.823494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539746, -0.031810, 0.841227,
		-0.814913, 0.270407, -0.512637,
		-0.211167, -0.962220, -0.171873,
		33.173035, 33.256557, 48.771931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577610, 33.815571, 48.981941>,  <33.320850, 33.930111, 48.892242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577610, 33.815571, 48.981941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.771648, 33.469761, 49.034519>,  <32.888073, 33.262276, 49.066067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.771648, 33.469761, 49.034519>,  <32.577610, 33.815571, 48.981941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771648, 33.469761, 49.034519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539855, -0.177823, 0.822761,
		-0.687924, -0.470079, -0.552979,
		0.485095, -0.864526, 0.131446,
		32.917175, 33.210403, 49.073952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047535, 33.330830, 49.257042>,  <32.577610, 33.815571, 48.981941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047535, 33.330830, 49.257042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.398148, 33.161930, 49.349476>,  <32.608513, 33.060589, 49.404938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.398148, 33.161930, 49.349476>,  <32.047535, 33.330830, 49.257042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398148, 33.161930, 49.349476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391011, -0.344620, 0.853433,
		-0.280726, -0.838416, -0.467174,
		0.876529, -0.422251, 0.231086,
		32.661106, 33.035255, 49.418800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924591, 32.665119, 49.396160>,  <32.047535, 33.330830, 49.257042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924591, 32.665119, 49.396160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.265850, 32.760769, 49.581615>,  <32.470604, 32.818157, 49.692886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.265850, 32.760769, 49.581615>,  <31.924591, 32.665119, 49.396160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265850, 32.760769, 49.581615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364125, -0.363468, 0.857498,
		0.373567, -0.900394, -0.223020,
		0.853147, 0.239126, 0.463636,
		32.521793, 32.832508, 49.720707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921444, 32.121719, 49.868328>,  <31.924591, 32.665119, 49.396160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921444, 32.121719, 49.868328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.210575, 32.351566, 50.021862>,  <32.384052, 32.489475, 50.113983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.210575, 32.351566, 50.021862>,  <31.921444, 32.121719, 49.868328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210575, 32.351566, 50.021862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348968, -0.175890, 0.920480,
		0.596441, -0.799295, 0.073387,
		0.722827, 0.574621, 0.383836,
		32.427422, 32.523952, 50.137012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223957, 31.695349, 50.343113>,  <31.921444, 32.121719, 49.868328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223957, 31.695349, 50.343113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.288033, 32.083641, 50.414688>,  <32.326477, 32.316616, 50.457634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.288033, 32.083641, 50.414688>,  <32.223957, 31.695349, 50.343113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288033, 32.083641, 50.414688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375661, -0.107680, 0.920480,
		0.912808, -0.214670, 0.347417,
		0.160189, 0.970733, 0.178935,
		32.336090, 32.374863, 50.468369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645760, 31.715364, 50.904404>,  <32.223957, 31.695349, 50.343113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645760, 31.715364, 50.904404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488743, 32.083195, 50.911217>,  <32.394535, 32.303894, 50.915306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488743, 32.083195, 50.911217>,  <32.645760, 31.715364, 50.904404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488743, 32.083195, 50.911217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221765, -0.112608, 0.968576,
		0.892600, 0.376425, 0.248134,
		-0.392538, 0.919578, 0.017036,
		32.370983, 32.359070, 50.916328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777718, 32.032715, 51.654961>,  <32.645760, 31.715364, 50.904404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777718, 32.032715, 51.654961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.475452, 32.247086, 51.504356>,  <32.294094, 32.375706, 51.413994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.475452, 32.247086, 51.504356>,  <32.777718, 32.032715, 51.654961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475452, 32.247086, 51.504356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369741, 0.125446, 0.920628,
		0.540618, 0.834895, 0.103358,
		-0.755661, 0.535924, -0.376513,
		32.248753, 32.407864, 51.391403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650635, 32.597012, 52.123177>,  <32.777718, 32.032715, 51.654961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650635, 32.597012, 52.123177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.322609, 32.576508, 51.895191>,  <32.125793, 32.564205, 51.758400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.322609, 32.576508, 51.895191>,  <32.650635, 32.597012, 52.123177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322609, 32.576508, 51.895191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569872, 0.164129, 0.805176,
		0.052278, 0.985106, -0.163806,
		-0.820069, -0.051255, -0.569964,
		32.076588, 32.561131, 51.724201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419487, 33.222618, 52.036438>,  <32.650635, 32.597012, 52.123177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419487, 33.222618, 52.036438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.122417, 32.955360, 52.018482>,  <31.944176, 32.795006, 52.007710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.122417, 32.955360, 52.018482>,  <32.419487, 33.222618, 52.036438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122417, 32.955360, 52.018482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389574, 0.376568, 0.840493,
		-0.544667, 0.641702, -0.539960,
		-0.742677, -0.668143, -0.044886,
		31.899614, 32.754917, 52.005016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810526, 33.629219, 52.110546>,  <32.419487, 33.222618, 52.036438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810526, 33.629219, 52.110546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.711754, 33.250050, 52.191006>,  <31.652491, 33.022549, 52.239281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.711754, 33.250050, 52.191006>,  <31.810526, 33.629219, 52.110546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711754, 33.250050, 52.191006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563192, 0.309305, 0.766254,
		-0.788569, 0.075926, -0.610242,
		-0.246929, -0.947927, 0.201147,
		31.637674, 32.965672, 52.251350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056950, 33.556839, 52.165035>,  <31.810526, 33.629219, 52.110546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056950, 33.556839, 52.165035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.214476, 33.252411, 52.371212>,  <31.308990, 33.069756, 52.494919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.214476, 33.252411, 52.371212>,  <31.056950, 33.556839, 52.165035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214476, 33.252411, 52.371212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545785, 0.257595, 0.797348,
		-0.739613, -0.595329, -0.313937,
		0.393815, -0.761071, 0.515442,
		31.332621, 33.024090, 52.525845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518541, 33.318077, 52.553165>,  <31.056950, 33.556839, 52.165035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518541, 33.318077, 52.553165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.830154, 33.159515, 52.747475>,  <31.017122, 33.064377, 52.864059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.830154, 33.159515, 52.747475>,  <30.518541, 33.318077, 52.553165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830154, 33.159515, 52.747475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495917, 0.084487, 0.864250,
		-0.383636, -0.914179, -0.130767,
		0.779031, -0.396407, 0.485769,
		31.063864, 33.040592, 52.893204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127151, 32.786228, 52.979656>,  <30.518541, 33.318077, 52.553165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127151, 32.786228, 52.979656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.491301, 32.886292, 53.111500>,  <30.709789, 32.946331, 53.190605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.491301, 32.886292, 53.111500>,  <30.127151, 32.786228, 52.979656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491301, 32.886292, 53.111500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339198, -0.005072, 0.940701,
		0.236999, -0.968191, 0.080237,
		0.910371, 0.250162, 0.329610,
		30.764412, 32.961338, 53.210384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145166, 32.520885, 53.648277>,  <30.127151, 32.786228, 52.979656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145166, 32.520885, 53.648277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.458759, 32.769135, 53.642559>,  <30.646915, 32.918083, 53.639126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.458759, 32.769135, 53.642559>,  <30.145166, 32.520885, 53.648277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458759, 32.769135, 53.642559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199765, 0.274021, 0.940748,
		0.587766, -0.734671, 0.338806,
		0.783980, 0.620621, -0.014299,
		30.693954, 32.955322, 53.638268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483080, 32.406521, 54.269699>,  <30.145166, 32.520885, 53.648277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483080, 32.406521, 54.269699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.590645, 32.777676, 54.166389>,  <30.655184, 33.000370, 54.104404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.590645, 32.777676, 54.166389>,  <30.483080, 32.406521, 54.269699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590645, 32.777676, 54.166389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290366, 0.333773, 0.896819,
		0.918354, -0.166171, 0.359183,
		0.268911, 0.927892, -0.258271,
		30.671318, 33.056042, 54.088909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837244, 32.704098, 54.915333>,  <30.483080, 32.406521, 54.269699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837244, 32.704098, 54.915333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.733383, 33.005520, 54.673759>,  <30.671066, 33.186375, 54.528816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.733383, 33.005520, 54.673759>,  <30.837244, 32.704098, 54.915333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733383, 33.005520, 54.673759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149523, 0.586469, 0.796051,
		0.954056, 0.296999, -0.039605,
		-0.259653, 0.753555, -0.603933,
		30.655487, 33.231586, 54.492580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.202358, 33.444740, 55.155197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881319, 33.573383, 54.954239>,  <30.688696, 33.650570, 54.833664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881319, 33.573383, 54.954239>,  <31.202358, 33.444740, 55.155197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881319, 33.573383, 54.954239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390995, 0.352437, 0.850242,
		0.450506, 0.878839, -0.157120,
		-0.802600, 0.321606, -0.502397,
		30.640539, 33.669865, 54.803520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995375, 34.073154, 55.446945>,  <31.202358, 33.444740, 55.155197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995375, 34.073154, 55.446945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660654, 34.037876, 55.230804>,  <30.459822, 34.016708, 55.101120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660654, 34.037876, 55.230804>,  <30.995375, 34.073154, 55.446945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660654, 34.037876, 55.230804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459318, 0.650225, 0.605173,
		0.297978, 0.754605, -0.584620,
		-0.836801, -0.088198, -0.540356,
		30.409615, 34.011417, 55.068699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789656, 34.735111, 55.290836>,  <30.995375, 34.073154, 55.446945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789656, 34.735111, 55.290836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450214, 34.528934, 55.243195>,  <30.246550, 34.405228, 55.214607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450214, 34.528934, 55.243195>,  <30.789656, 34.735111, 55.290836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450214, 34.528934, 55.243195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487029, 0.673267, 0.556341,
		-0.206572, 0.530122, -0.822374,
		-0.848605, -0.515444, -0.119106,
		30.195633, 34.374302, 55.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301264, 35.281887, 55.089527>,  <30.789656, 34.735111, 55.290836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301264, 35.281887, 55.089527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087193, 34.974010, 55.228760>,  <29.958750, 34.789284, 55.312298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087193, 34.974010, 55.228760>,  <30.301264, 35.281887, 55.089527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087193, 34.974010, 55.228760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422474, 0.600697, 0.678733,
		-0.731504, 0.216190, -0.646655,
		-0.535179, -0.769692, 0.348077,
		29.926640, 34.743103, 55.333183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608456, 35.393753, 55.116478>,  <30.301264, 35.281887, 55.089527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608456, 35.393753, 55.116478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661158, 35.138004, 55.419487>,  <29.692778, 34.984554, 55.601292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661158, 35.138004, 55.419487>,  <29.608456, 35.393753, 55.116478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661158, 35.138004, 55.419487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560051, 0.582524, 0.589074,
		-0.817914, -0.501866, -0.281331,
		0.131754, -0.639372, 0.757525,
		29.700684, 34.946194, 55.646744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969513, 35.490139, 55.515442>,  <29.608456, 35.393753, 55.116478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969513, 35.490139, 55.515442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233559, 35.318310, 55.761925>,  <29.391987, 35.215210, 55.909813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233559, 35.318310, 55.761925>,  <28.969513, 35.490139, 55.515442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233559, 35.318310, 55.761925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319243, 0.582125, 0.747807,
		-0.679950, -0.690358, 0.247129,
		0.660115, -0.429577, 0.616208,
		29.431593, 35.189438, 55.946789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557278, 35.199554, 56.138412>,  <28.969513, 35.490139, 55.515442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557278, 35.199554, 56.138412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941959, 35.252281, 56.234531>,  <29.172770, 35.283916, 56.292202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941959, 35.252281, 56.234531>,  <28.557278, 35.199554, 56.138412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941959, 35.252281, 56.234531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274082, 0.464386, 0.842155,
		-0.000582, -0.875768, 0.482732,
		0.961706, 0.131818, 0.240302,
		29.230471, 35.291828, 56.306622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598873, 34.910923, 56.756401>,  <28.557278, 35.199554, 56.138412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598873, 34.910923, 56.756401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916330, 35.151630, 56.720600>,  <29.106804, 35.296055, 56.699120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916330, 35.151630, 56.720600>,  <28.598873, 34.910923, 56.756401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916330, 35.151630, 56.720600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155193, 0.342493, 0.926614,
		0.588258, -0.721510, 0.365207,
		0.793642, 0.601765, -0.089501,
		29.154423, 35.332161, 56.693748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019300, 34.839573, 57.364815>,  <28.598873, 34.910923, 56.756401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019300, 34.839573, 57.364815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113672, 35.186413, 57.189323>,  <29.170296, 35.394516, 57.084030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113672, 35.186413, 57.189323>,  <29.019300, 34.839573, 57.364815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113672, 35.186413, 57.189323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052087, 0.439541, 0.896711,
		0.970373, -0.234413, 0.058536,
		0.235930, 0.867095, -0.438729,
		29.184452, 35.446541, 57.057705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170380, 35.146080, 58.077015>,  <29.019300, 34.839573, 57.364815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170380, 35.146080, 58.077015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173138, 35.426250, 57.791538>,  <29.174791, 35.594353, 57.620251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173138, 35.426250, 57.791538>,  <29.170380, 35.146080, 58.077015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173138, 35.426250, 57.791538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145774, 0.706789, 0.692242,
		0.989294, 0.099266, 0.106976,
		0.006894, 0.700425, -0.713693,
		29.175205, 35.636379, 57.577431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355627, 35.604038, 58.496735>,  <29.170380, 35.146080, 58.077015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355627, 35.604038, 58.496735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233156, 35.795166, 58.167385>,  <29.159674, 35.909843, 57.969776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233156, 35.795166, 58.167385>,  <29.355627, 35.604038, 58.496735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233156, 35.795166, 58.167385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252603, 0.793131, 0.554196,
		0.917849, 0.377669, -0.122141,
		-0.306177, 0.477816, -0.823376,
		29.141304, 35.938511, 57.920372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632879, 36.294353, 58.588741>,  <29.355627, 35.604038, 58.496735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632879, 36.294353, 58.588741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317610, 36.311623, 58.343166>,  <29.128448, 36.321983, 58.195824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317610, 36.311623, 58.343166>,  <29.632879, 36.294353, 58.588741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317610, 36.311623, 58.343166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321241, 0.822011, 0.470215,
		0.524961, 0.567833, -0.634020,
		-0.788175, 0.043171, -0.613935,
		29.081158, 36.324574, 58.158985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635506, 36.906483, 58.183994>,  <29.632879, 36.294353, 58.588741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635506, 36.906483, 58.183994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251028, 36.800671, 58.215321>,  <29.020342, 36.737183, 58.234116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251028, 36.800671, 58.215321>,  <29.635506, 36.906483, 58.183994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251028, 36.800671, 58.215321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227494, 0.920595, 0.317414,
		-0.156059, 0.287281, -0.945048,
		-0.961193, -0.264528, 0.078313,
		28.962669, 36.721313, 58.238815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388657, 37.520168, 58.212986>,  <29.635506, 36.906483, 58.183994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388657, 37.520168, 58.212986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071724, 37.292030, 58.299629>,  <28.881565, 37.155148, 58.351616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071724, 37.292030, 58.299629>,  <29.388657, 37.520168, 58.212986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071724, 37.292030, 58.299629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509148, 0.813766, 0.280275,
		-0.336123, 0.111784, -0.935161,
		-0.792332, -0.570342, 0.216611,
		28.834024, 37.120926, 58.364613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838152, 37.918468, 58.009075>,  <29.388657, 37.520168, 58.212986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838152, 37.918468, 58.009075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683817, 37.651150, 58.263477>,  <28.591215, 37.490757, 58.416119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683817, 37.651150, 58.263477>,  <28.838152, 37.918468, 58.009075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683817, 37.651150, 58.263477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608532, 0.702511, 0.369008,
		-0.693410, -0.244654, -0.677737,
		-0.385839, -0.668298, 0.636008,
		28.568066, 37.450661, 58.454281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027721, 37.824974, 57.864353>,  <28.838152, 37.918468, 58.009075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027721, 37.824974, 57.864353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106291, 37.701569, 58.236641>,  <28.153433, 37.627525, 58.460014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106291, 37.701569, 58.236641>,  <28.027721, 37.824974, 57.864353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106291, 37.701569, 58.236641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809474, 0.484634, 0.331483,
		-0.553326, -0.818503, -0.154542,
		0.196423, -0.308516, 0.930718,
		28.165218, 37.609013, 58.515858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404957, 37.529846, 58.105247>,  <28.027721, 37.824974, 57.864353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404957, 37.529846, 58.105247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620489, 37.638466, 58.424225>,  <27.749809, 37.703640, 58.615612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620489, 37.638466, 58.424225>,  <27.404957, 37.529846, 58.105247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620489, 37.638466, 58.424225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804903, 0.445283, 0.392242,
		-0.248575, -0.853219, 0.458505,
		0.538833, 0.271551, 0.797446,
		27.782139, 37.719933, 58.663460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950951, 37.179676, 58.539471>,  <27.404957, 37.529846, 58.105247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950951, 37.179676, 58.539471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188845, 37.433422, 58.737000>,  <27.331581, 37.585670, 58.855518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188845, 37.433422, 58.737000>,  <26.950951, 37.179676, 58.539471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188845, 37.433422, 58.737000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719847, 0.146738, 0.678446,
		0.357923, -0.758975, 0.543920,
		0.594737, 0.634370, 0.493825,
		27.367266, 37.623734, 58.885147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851648, 37.107864, 59.257923>,  <26.950951, 37.179676, 58.539471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851648, 37.107864, 59.257923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019407, 37.470734, 59.244446>,  <27.120062, 37.688457, 59.236359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019407, 37.470734, 59.244446>,  <26.851648, 37.107864, 59.257923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019407, 37.470734, 59.244446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662617, 0.331285, 0.671706,
		0.620520, -0.259382, 0.740051,
		0.419396, 0.907178, -0.033698,
		27.145226, 37.742886, 59.234337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998955, 37.362244, 59.902271>,  <26.851648, 37.107864, 59.257923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998955, 37.362244, 59.902271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004959, 37.719963, 59.723385>,  <27.008562, 37.934597, 59.616055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004959, 37.719963, 59.723385>,  <26.998955, 37.362244, 59.902271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004959, 37.719963, 59.723385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613191, 0.361518, 0.702354,
		0.789792, 0.263686, 0.553804,
		0.015009, 0.894301, -0.447214,
		27.009462, 37.988255, 59.589222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139109, 37.901581, 60.391479>,  <26.998955, 37.362244, 59.902271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139109, 37.901581, 60.391479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968504, 38.116978, 60.100792>,  <26.866142, 38.246216, 59.926380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968504, 38.116978, 60.100792>,  <27.139109, 37.901581, 60.391479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968504, 38.116978, 60.100792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507165, 0.522884, 0.685110,
		0.748914, 0.660771, 0.050088,
		-0.426510, 0.538492, -0.726715,
		26.840551, 38.278526, 59.882778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252094, 38.519409, 60.828320>,  <27.139109, 37.901581, 60.391479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252094, 38.519409, 60.828320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959988, 38.403297, 60.580952>,  <26.784723, 38.333630, 60.432529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959988, 38.403297, 60.580952>,  <27.252094, 38.519409, 60.828320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959988, 38.403297, 60.580952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682243, 0.356839, 0.638131,
		0.035440, 0.887920, -0.458630,
		-0.730266, -0.290281, -0.618424,
		26.740908, 38.316212, 60.395424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713083, 38.977642, 61.003998>,  <27.252094, 38.519409, 60.828320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713083, 38.977642, 61.003998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519686, 38.725910, 60.760632>,  <26.403648, 38.574871, 60.614613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519686, 38.725910, 60.760632>,  <26.713083, 38.977642, 61.003998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519686, 38.725910, 60.760632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874818, 0.323195, 0.360885,
		-0.030478, 0.706742, -0.706815,
		-0.483492, -0.629334, -0.608420,
		26.374638, 38.537109, 60.578106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062162, 39.072517, 61.577778>,  <26.713083, 38.977642, 61.003998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062162, 39.072517, 61.577778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342665, 39.233036, 61.813473>,  <27.510967, 39.329346, 61.954891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342665, 39.233036, 61.813473>,  <27.062162, 39.072517, 61.577778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342665, 39.233036, 61.813473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712706, -0.414275, -0.566062,
		0.016949, 0.816908, -0.576518,
		0.701258, 0.401294, 0.589237,
		27.553041, 39.353424, 61.990242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452656, 39.531460, 61.177563>,  <27.062162, 39.072517, 61.577778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452656, 39.531460, 61.177563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641138, 39.377319, 61.494919>,  <27.754229, 39.284836, 61.685333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641138, 39.377319, 61.494919>,  <27.452656, 39.531460, 61.177563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641138, 39.377319, 61.494919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703433, -0.378482, -0.601609,
		0.532114, 0.841580, 0.092726,
		0.471207, -0.385351, 0.793391,
		27.782499, 39.261715, 61.732937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247038, 39.556156, 61.036613>,  <27.452656, 39.531460, 61.177563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247038, 39.556156, 61.036613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221313, 39.295147, 61.338627>,  <28.205879, 39.138542, 61.519836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221313, 39.295147, 61.338627>,  <28.247038, 39.556156, 61.036613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221313, 39.295147, 61.338627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712631, -0.559676, -0.422990,
		0.698585, 0.510857, 0.501003,
		-0.064312, -0.652524, 0.755034,
		28.202021, 39.099388, 61.565136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937208, 39.518116, 61.426739>,  <28.247038, 39.556156, 61.036613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937208, 39.518116, 61.426739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762392, 39.169064, 61.513920>,  <28.657503, 38.959633, 61.566231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762392, 39.169064, 61.513920>,  <28.937208, 39.518116, 61.426739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762392, 39.169064, 61.513920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802569, -0.487744, -0.343495,
		0.406053, 0.024803, 0.913513,
		-0.437041, -0.872634, 0.217956,
		28.631279, 38.907272, 61.579308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472607, 39.094395, 61.743515>,  <28.937208, 39.518116, 61.426739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472607, 39.094395, 61.743515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220316, 38.800594, 61.643364>,  <29.068941, 38.624313, 61.583275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220316, 38.800594, 61.643364>,  <29.472607, 39.094395, 61.743515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220316, 38.800594, 61.643364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759554, -0.518262, -0.393042,
		0.158930, -0.438077, 0.884777,
		-0.630729, -0.734502, -0.250376,
		29.031097, 38.580242, 61.568253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919205, 38.472721, 61.758720>,  <29.472607, 39.094395, 61.743515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919205, 38.472721, 61.758720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607435, 38.355652, 61.537148>,  <29.420374, 38.285412, 61.404205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607435, 38.355652, 61.537148>,  <29.919205, 38.472721, 61.758720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607435, 38.355652, 61.537148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576232, -0.681898, -0.450524,
		-0.245868, -0.670343, 0.700135,
		-0.779426, -0.292671, -0.553930,
		29.373608, 38.267849, 61.370968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048172, 37.697380, 61.612209>,  <29.919205, 38.472721, 61.758720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048172, 37.697380, 61.612209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754532, 37.798859, 61.360260>,  <29.578348, 37.859745, 61.209091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754532, 37.798859, 61.360260>,  <30.048172, 37.697380, 61.612209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754532, 37.798859, 61.360260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268238, -0.743806, -0.612210,
		-0.623814, -0.618378, 0.477979,
		-0.734101, 0.253693, -0.629869,
		29.534302, 37.874966, 61.171299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727074, 37.075706, 61.289650>,  <30.048172, 37.697380, 61.612209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727074, 37.075706, 61.289650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621410, 37.363831, 61.033096>,  <29.558012, 37.536705, 60.879166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621410, 37.363831, 61.033096>,  <29.727074, 37.075706, 61.289650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621410, 37.363831, 61.033096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309733, -0.566425, -0.763694,
		-0.913393, -0.400393, -0.073479,
		-0.264157, 0.720311, -0.641383,
		29.542164, 37.579926, 60.840683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403439, 36.737942, 60.759087>,  <29.727074, 37.075706, 61.289650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403439, 36.737942, 60.759087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540403, 37.084839, 60.614502>,  <29.622581, 37.292976, 60.527752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540403, 37.084839, 60.614502>,  <29.403439, 36.737942, 60.759087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540403, 37.084839, 60.614502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354205, -0.475480, -0.805269,
		-0.870227, 0.147701, -0.469990,
		0.342410, 0.867239, -0.361459,
		29.643126, 37.345009, 60.506065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443176, 36.583172, 60.084145>,  <29.403439, 36.737942, 60.759087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443176, 36.583172, 60.084145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667900, 36.913078, 60.109852>,  <29.802734, 37.111023, 60.125275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667900, 36.913078, 60.109852>,  <29.443176, 36.583172, 60.084145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667900, 36.913078, 60.109852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472626, -0.256239, -0.843188,
		-0.678965, 0.504086, -0.533764,
		0.561810, 0.824766, 0.064267,
		29.836443, 37.160507, 60.129131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347206, 36.979252, 59.496460>,  <29.443176, 36.583172, 60.084145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347206, 36.979252, 59.496460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699865, 37.102711, 59.639252>,  <29.911461, 37.176785, 59.724926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699865, 37.102711, 59.639252>,  <29.347206, 36.979252, 59.496460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699865, 37.102711, 59.639252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436985, -0.248369, -0.864498,
		-0.178160, 0.918178, -0.353848,
		0.881648, 0.308645, 0.356981,
		29.964359, 37.195305, 59.746346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561167, 37.348915, 58.941578>,  <29.347206, 36.979252, 59.496460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561167, 37.348915, 58.941578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895271, 37.287403, 59.152740>,  <30.095734, 37.250496, 59.279438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895271, 37.287403, 59.152740>,  <29.561167, 37.348915, 58.941578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895271, 37.287403, 59.152740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520833, -0.086501, -0.849265,
		0.176268, 0.984311, 0.007845,
		0.835262, -0.153784, 0.527909,
		30.145849, 37.241268, 59.311111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013288, 37.706963, 58.562542>,  <29.561167, 37.348915, 58.941578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013288, 37.706963, 58.562542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227285, 37.435703, 58.764095>,  <30.355684, 37.272949, 58.885029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227285, 37.435703, 58.764095>,  <30.013288, 37.706963, 58.562542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227285, 37.435703, 58.764095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382293, -0.337552, -0.860181,
		0.753416, 0.652822, 0.078663,
		0.534992, -0.678146, 0.503886,
		30.387783, 37.232258, 58.915260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604908, 37.837505, 58.326450>,  <30.013288, 37.706963, 58.562542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604908, 37.837505, 58.326450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607044, 37.463264, 58.467655>,  <30.608326, 37.238720, 58.552376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607044, 37.463264, 58.467655>,  <30.604908, 37.837505, 58.326450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607044, 37.463264, 58.467655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459659, -0.311213, -0.831781,
		0.888079, 0.166705, 0.428398,
		0.005339, -0.935605, 0.353009,
		30.608646, 37.182583, 58.573559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212627, 37.646160, 58.116787>,  <30.604908, 37.837505, 58.326450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212627, 37.646160, 58.116787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047541, 37.299164, 58.227867>,  <30.948488, 37.090965, 58.294514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047541, 37.299164, 58.227867>,  <31.212627, 37.646160, 58.116787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047541, 37.299164, 58.227867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414101, -0.450248, -0.791073,
		0.811286, -0.211493, 0.545056,
		-0.412717, -0.867495, 0.277701,
		30.923725, 37.038914, 58.311176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756531, 37.123207, 58.218128>,  <31.212627, 37.646160, 58.116787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756531, 37.123207, 58.218128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434433, 36.893456, 58.159241>,  <31.241175, 36.755604, 58.123909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434433, 36.893456, 58.159241>,  <31.756531, 37.123207, 58.218128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434433, 36.893456, 58.159241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521183, -0.567227, -0.637670,
		0.282761, -0.590204, 0.756112,
		-0.805242, -0.574380, -0.147215,
		31.192860, 36.721142, 58.115078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001282, 36.448227, 58.177048>,  <31.756531, 37.123207, 58.218128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001282, 36.448227, 58.177048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640394, 36.432037, 58.005295>,  <31.423862, 36.422325, 57.902241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640394, 36.432037, 58.005295>,  <32.001282, 36.448227, 58.177048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640394, 36.432037, 58.005295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388159, -0.510168, -0.767504,
		-0.187995, -0.859122, 0.475990,
		-0.902214, -0.040473, -0.429385,
		31.369730, 36.419895, 57.876480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924267, 35.740753, 58.049351>,  <32.001282, 36.448227, 58.177048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924267, 35.740753, 58.049351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671141, 35.927811, 57.802498>,  <31.519266, 36.040043, 57.654385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671141, 35.927811, 57.802498>,  <31.924267, 35.740753, 58.049351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671141, 35.927811, 57.802498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412636, -0.470744, -0.779828,
		-0.655194, -0.748138, 0.104927,
		-0.632813, 0.467643, -0.617137,
		31.481297, 36.068104, 57.617355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560650, 35.057804, 57.702286>,  <31.924267, 35.740753, 58.049351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560650, 35.057804, 57.702286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534307, 35.387512, 57.477345>,  <31.518503, 35.585339, 57.342381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534307, 35.387512, 57.477345>,  <31.560650, 35.057804, 57.702286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534307, 35.387512, 57.477345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379208, -0.500619, -0.778191,
		-0.922965, -0.264496, -0.279602,
		-0.065855, 0.824270, -0.562353,
		31.514551, 35.634792, 57.308640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412687, 34.789043, 56.954865>,  <31.560650, 35.057804, 57.702286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412687, 34.789043, 56.954865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552731, 35.160152, 56.903229>,  <31.636757, 35.382816, 56.872250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552731, 35.160152, 56.903229>,  <31.412687, 34.789043, 56.954865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552731, 35.160152, 56.903229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341805, -0.254839, -0.904558,
		-0.872121, 0.272569, -0.406338,
		0.350106, 0.927773, -0.129085,
		31.657763, 35.438484, 56.864502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214062, 34.942863, 56.364052>,  <31.412687, 34.789043, 56.954865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214062, 34.942863, 56.364052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520905, 35.192257, 56.424465>,  <31.705009, 35.341896, 56.460712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520905, 35.192257, 56.424465>,  <31.214062, 34.942863, 56.364052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520905, 35.192257, 56.424465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316370, -0.162852, -0.934553,
		-0.558086, 0.764684, -0.322178,
		0.767105, 0.623488, 0.151038,
		31.751036, 35.379303, 56.469776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.370209, 34.016563, 53.108574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.441223, 34.227016, 52.775906>,  <47.483829, 34.353287, 52.576305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.441223, 34.227016, 52.775906>,  <47.370209, 34.016563, 53.108574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441223, 34.227016, 52.775906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905571, 0.418171, 0.071233,
		0.385257, 0.740487, 0.550687,
		0.177534, 0.526129, -0.831667,
		47.494484, 34.384853, 52.526405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936749, 34.669739, 53.244743>,  <47.370209, 34.016563, 53.108574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936749, 34.669739, 53.244743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.018650, 34.634548, 52.854801>,  <47.067791, 34.613434, 52.620838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.018650, 34.634548, 52.854801>,  <46.936749, 34.669739, 53.244743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.018650, 34.634548, 52.854801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947725, 0.231201, -0.219919,
		0.244734, 0.968920, -0.036039,
		0.204752, -0.087976, -0.974852,
		47.080074, 34.608154, 52.562347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685043, 35.182903, 52.887897>,  <46.936749, 34.669739, 53.244743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685043, 35.182903, 52.887897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.745743, 34.920212, 52.592415>,  <46.782162, 34.762596, 52.415127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.745743, 34.920212, 52.592415>,  <46.685043, 35.182903, 52.887897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745743, 34.920212, 52.592415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918857, 0.181682, -0.350277,
		0.364245, 0.731915, -0.575869,
		0.151748, -0.656728, -0.738702,
		46.791267, 34.723194, 52.370804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634609, 35.472706, 52.141941>,  <46.685043, 35.182903, 52.887897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634609, 35.472706, 52.141941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.575996, 35.081116, 52.085190>,  <46.540829, 34.846161, 52.051140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.575996, 35.081116, 52.085190>,  <46.634609, 35.472706, 52.141941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575996, 35.081116, 52.085190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828624, 0.199814, -0.522930,
		0.540287, 0.040940, -0.840484,
		-0.146532, -0.978978, -0.141881,
		46.532036, 34.787422, 52.042625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566895, 35.411293, 51.380333>,  <46.634609, 35.472706, 52.141941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566895, 35.411293, 51.380333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.408688, 35.072136, 51.521557>,  <46.313763, 34.868641, 51.606289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.408688, 35.072136, 51.521557>,  <46.566895, 35.411293, 51.380333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408688, 35.072136, 51.521557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801966, 0.131448, -0.582727,
		0.447680, -0.513617, -0.731969,
		-0.395515, -0.847891, 0.353057,
		46.290031, 34.817768, 51.627476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197536, 35.007454, 50.743690>,  <46.566895, 35.411293, 51.380333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197536, 35.007454, 50.743690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.056175, 34.851917, 51.084023>,  <45.971359, 34.758598, 51.288223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.056175, 34.851917, 51.084023>,  <46.197536, 35.007454, 50.743690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056175, 34.851917, 51.084023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918576, -0.027837, -0.394262,
		0.176989, -0.920885, -0.347340,
		-0.353401, -0.388839, 0.850830,
		45.950153, 34.735268, 51.339272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819443, 34.425594, 50.530712>,  <46.197536, 35.007454, 50.743690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819443, 34.425594, 50.530712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.688541, 34.544014, 50.889656>,  <45.610001, 34.615067, 51.105022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.688541, 34.544014, 50.889656>,  <45.819443, 34.425594, 50.530712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688541, 34.544014, 50.889656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941944, -0.026675, -0.334708,
		-0.075154, -0.954799, 0.287594,
		-0.327251, 0.296052, 0.897363,
		45.590366, 34.632828, 51.158867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211018, 34.174641, 50.589817>,  <45.819443, 34.425594, 50.530712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211018, 34.174641, 50.589817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.182140, 34.452522, 50.876083>,  <45.164814, 34.619251, 51.047844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.182140, 34.452522, 50.876083>,  <45.211018, 34.174641, 50.589817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182140, 34.452522, 50.876083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962123, 0.140615, -0.233554,
		-0.262883, -0.705420, 0.658236,
		-0.072196, 0.694701, 0.715666,
		45.160480, 34.660934, 51.090782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670033, 33.978569, 51.029125>,  <45.211018, 34.174641, 50.589817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670033, 33.978569, 51.029125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.721680, 34.373222, 51.068878>,  <44.752666, 34.610016, 51.092731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.721680, 34.373222, 51.068878>,  <44.670033, 33.978569, 51.029125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721680, 34.373222, 51.068878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980018, 0.142256, -0.139025,
		-0.151304, -0.079445, 0.985290,
		0.129119, 0.986637, 0.099381,
		44.760414, 34.669212, 51.098694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002380, 34.272903, 51.140823>,  <44.670033, 33.978569, 51.029125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002380, 34.272903, 51.140823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.213039, 34.609837, 51.095001>,  <44.339436, 34.811996, 51.067509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.213039, 34.609837, 51.095001>,  <44.002380, 34.272903, 51.140823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213039, 34.609837, 51.095001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823277, 0.471808, -0.315615,
		-0.211806, 0.260525, 0.941948,
		0.526644, 0.842332, -0.114553,
		44.371033, 34.862537, 51.060635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527592, 34.651226, 51.441490>,  <44.002380, 34.272903, 51.140823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527592, 34.651226, 51.441490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.778683, 34.891712, 51.243698>,  <43.929337, 35.036003, 51.125023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.778683, 34.891712, 51.243698>,  <43.527592, 34.651226, 51.441490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778683, 34.891712, 51.243698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772882, 0.405607, -0.487992,
		-0.092824, 0.688496, 0.719276,
		0.627723, 0.601212, -0.494476,
		43.966999, 35.072075, 51.095356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191257, 35.396187, 51.425064>,  <43.527592, 34.651226, 51.441490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191257, 35.396187, 51.425064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.458561, 35.349892, 51.131115>,  <43.618942, 35.322117, 50.954746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.458561, 35.349892, 51.131115>,  <43.191257, 35.396187, 51.425064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458561, 35.349892, 51.131115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680659, 0.303535, -0.666761,
		0.300227, 0.945765, 0.124064,
		0.668257, -0.115734, -0.734873,
		43.659039, 35.315170, 50.910652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045906, 36.004246, 51.027069>,  <43.191257, 35.396187, 51.425064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045906, 36.004246, 51.027069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.235199, 35.745232, 50.788155>,  <43.348774, 35.589825, 50.644806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.235199, 35.745232, 50.788155>,  <43.045906, 36.004246, 51.027069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235199, 35.745232, 50.788155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635806, 0.218235, -0.740355,
		0.609754, 0.730117, -0.308431,
		0.473235, -0.647536, -0.597282,
		43.377171, 35.550972, 50.608971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332924, 36.339470, 50.366341>,  <43.045906, 36.004246, 51.027069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332924, 36.339470, 50.366341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.298470, 35.948162, 50.290909>,  <43.277798, 35.713375, 50.245647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.298470, 35.948162, 50.290909>,  <43.332924, 36.339470, 50.366341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298470, 35.948162, 50.290909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556341, 0.204253, -0.805460,
		0.826478, 0.035541, -0.561846,
		-0.086132, -0.978273, -0.188584,
		43.272629, 35.654678, 50.234333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402317, 36.250481, 49.619564>,  <43.332924, 36.339470, 50.366341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402317, 36.250481, 49.619564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.259235, 35.888126, 49.710270>,  <43.173386, 35.670715, 49.764694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.259235, 35.888126, 49.710270>,  <43.402317, 36.250481, 49.619564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259235, 35.888126, 49.710270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608050, 0.041647, -0.792806,
		0.708746, -0.421474, -0.565720,
		-0.357708, -0.905884, 0.226760,
		43.151924, 35.616360, 49.778297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425659, 35.814968, 49.059097>,  <43.402317, 36.250481, 49.619564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425659, 35.814968, 49.059097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.142490, 35.652130, 49.289963>,  <42.972588, 35.554428, 49.428482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.142490, 35.652130, 49.289963>,  <43.425659, 35.814968, 49.059097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142490, 35.652130, 49.289963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598675, -0.087703, -0.796176,
		0.374741, -0.909164, -0.181633,
		-0.707924, -0.407099, 0.577160,
		42.930115, 35.529999, 49.463112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880981, 35.454430, 48.583523>,  <43.425659, 35.814968, 49.059097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880981, 35.454430, 48.583523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.681053, 35.426590, 48.928856>,  <42.561096, 35.409885, 49.136055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.681053, 35.426590, 48.928856>,  <42.880981, 35.454430, 48.583523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681053, 35.426590, 48.928856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859856, -0.079889, -0.504248,
		0.104065, -0.994371, -0.019915,
		-0.499819, -0.069599, 0.863329,
		42.531109, 35.405708, 49.187855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412766, 34.806137, 48.542221>,  <42.880981, 35.454430, 48.583523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412766, 34.806137, 48.542221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.250397, 35.072487, 48.792610>,  <42.152977, 35.232296, 48.942844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.250397, 35.072487, 48.792610>,  <42.412766, 34.806137, 48.542221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250397, 35.072487, 48.792610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871006, -0.074478, -0.485594,
		-0.276722, -0.742340, 0.610210,
		-0.405923, 0.665872, 0.625972,
		42.128620, 35.272247, 48.980404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639393, 34.513592, 48.703869>,  <42.412766, 34.806137, 48.542221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639393, 34.513592, 48.703869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596638, 34.887997, 48.838005>,  <41.570984, 35.112640, 48.918488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596638, 34.887997, 48.838005>,  <41.639393, 34.513592, 48.703869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596638, 34.887997, 48.838005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979229, -0.040655, -0.198639,
		-0.172296, -0.349603, 0.920919,
		-0.106885, 0.936015, 0.335337,
		41.564571, 35.168800, 48.938606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112579, 34.477280, 49.088924>,  <41.639393, 34.513592, 48.703869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112579, 34.477280, 49.088924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112068, 34.871120, 49.019001>,  <41.111763, 35.107426, 48.977047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112068, 34.871120, 49.019001>,  <41.112579, 34.477280, 49.088924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112068, 34.871120, 49.019001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999226, 0.005616, 0.038935,
		0.039317, 0.174720, 0.983833,
		-0.001277, 0.984602, -0.174806,
		41.111687, 35.166500, 48.966560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559772, 34.706120, 49.480816>,  <41.112579, 34.477280, 49.088924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559772, 34.706120, 49.480816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617702, 35.000340, 49.216091>,  <40.652458, 35.176872, 49.057259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617702, 35.000340, 49.216091>,  <40.559772, 34.706120, 49.480816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617702, 35.000340, 49.216091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989257, 0.094159, -0.111826,
		-0.019939, 0.670893, 0.741286,
		0.144822, 0.735552, -0.661808,
		40.661148, 35.221004, 49.017548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993851, 35.262672, 49.644833>,  <40.559772, 34.706120, 49.480816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993851, 35.262672, 49.644833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143200, 35.301006, 49.275745>,  <40.232811, 35.324005, 49.054295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143200, 35.301006, 49.275745>,  <39.993851, 35.262672, 49.644833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143200, 35.301006, 49.275745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888163, 0.324141, -0.325729,
		0.267875, 0.941142, 0.206141,
		0.373376, 0.095833, -0.922717,
		40.255215, 35.329758, 48.998932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814240, 35.990383, 49.429039>,  <39.993851, 35.262672, 49.644833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814240, 35.990383, 49.429039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815826, 35.791245, 49.082138>,  <39.816780, 35.671761, 48.873997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815826, 35.791245, 49.082138>,  <39.814240, 35.990383, 49.429039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815826, 35.791245, 49.082138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928856, 0.319417, -0.187614,
		0.370419, 0.806300, -0.461162,
		0.003970, -0.497849, -0.867255,
		39.817017, 35.641891, 48.821960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228020, 35.857967, 49.055683>,  <39.814240, 35.990383, 49.429039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228020, 35.857967, 49.055683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459129, 36.054871, 48.795265>,  <39.597794, 36.173012, 48.639015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459129, 36.054871, 48.795265>,  <39.228020, 35.857967, 49.055683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459129, 36.054871, 48.795265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404408, -0.520212, -0.752219,
		-0.708966, 0.697901, -0.101493,
		0.577773, 0.492254, -0.651049,
		39.632462, 36.202545, 48.599949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792152, 35.294399, 49.139690>,  <39.228020, 35.857967, 49.055683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792152, 35.294399, 49.139690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761471, 35.379227, 49.529388>,  <38.743061, 35.430122, 49.763206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761471, 35.379227, 49.529388>,  <38.792152, 35.294399, 49.139690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761471, 35.379227, 49.529388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674580, 0.708488, -0.207331,
		-0.734206, -0.673106, 0.088711,
		-0.076705, 0.212066, 0.974240,
		38.738461, 35.442848, 49.821659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447460, 34.647148, 49.123615>,  <38.792152, 35.294399, 49.139690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447460, 34.647148, 49.123615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595703, 34.468121, 48.798080>,  <38.684650, 34.360706, 48.602760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595703, 34.468121, 48.798080>,  <38.447460, 34.647148, 49.123615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595703, 34.468121, 48.798080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928777, -0.173996, -0.327259,
		0.004865, 0.877161, -0.480171,
		0.370607, -0.447564, -0.813841,
		38.706886, 34.333851, 48.553928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985264, 34.792553, 48.573704>,  <38.447460, 34.647148, 49.123615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985264, 34.792553, 48.573704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196095, 34.476669, 48.448135>,  <38.322594, 34.287140, 48.372795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196095, 34.476669, 48.448135>,  <37.985264, 34.792553, 48.573704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196095, 34.476669, 48.448135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824749, -0.386290, -0.413001,
		0.204886, 0.476591, -0.854917,
		0.527078, -0.789710, -0.313922,
		38.354218, 34.239758, 48.353958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806862, 34.705040, 47.932590>,  <37.985264, 34.792553, 48.573704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806862, 34.705040, 47.932590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946541, 34.345451, 48.038361>,  <38.030346, 34.129700, 48.101822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946541, 34.345451, 48.038361>,  <37.806862, 34.705040, 47.932590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946541, 34.345451, 48.038361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796776, -0.433369, -0.421117,
		0.493165, -0.063637, -0.867605,
		0.349194, -0.898968, 0.264426,
		38.051300, 34.075760, 48.117687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666355, 34.276485, 47.318855>,  <37.806862, 34.705040, 47.932590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666355, 34.276485, 47.318855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.757309, 34.002098, 47.595333>,  <37.811882, 33.837467, 47.761219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.757309, 34.002098, 47.595333>,  <37.666355, 34.276485, 47.318855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757309, 34.002098, 47.595333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710213, -0.602436, -0.364237,
		0.666253, -0.408070, -0.624169,
		0.227388, -0.685966, 0.691191,
		37.825523, 33.796307, 47.802689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796597, 33.694126, 46.935566>,  <37.666355, 34.276485, 47.318855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796597, 33.694126, 46.935566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676811, 33.594166, 47.303886>,  <37.604942, 33.534191, 47.524879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676811, 33.594166, 47.303886>,  <37.796597, 33.694126, 46.935566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676811, 33.594166, 47.303886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807290, -0.448021, -0.384134,
		0.508533, -0.858387, -0.067575,
		-0.299461, -0.249898, 0.920801,
		37.586971, 33.519196, 47.580128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615170, 33.030403, 46.825993>,  <37.796597, 33.694126, 46.935566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615170, 33.030403, 46.825993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458065, 33.128685, 47.180477>,  <37.363800, 33.187653, 47.393166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458065, 33.128685, 47.180477>,  <37.615170, 33.030403, 46.825993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458065, 33.128685, 47.180477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801168, -0.564540, -0.198555,
		0.451515, -0.787988, 0.418581,
		-0.392765, 0.245703, 0.886209,
		37.340237, 33.202396, 47.446339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324532, 32.298603, 47.112644>,  <37.615170, 33.030403, 46.825993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324532, 32.298603, 47.112644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173435, 32.619587, 47.297409>,  <37.082775, 32.812180, 47.408268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173435, 32.619587, 47.297409>,  <37.324532, 32.298603, 47.112644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173435, 32.619587, 47.297409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886297, -0.457733, 0.070407,
		0.267932, -0.382797, 0.884126,
		-0.377743, 0.802463, 0.461913,
		37.060112, 32.860325, 47.435982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851574, 31.940987, 47.650436>,  <37.324532, 32.298603, 47.112644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851574, 31.940987, 47.650436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741798, 32.323662, 47.611584>,  <36.675934, 32.553265, 47.588272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741798, 32.323662, 47.611584>,  <36.851574, 31.940987, 47.650436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741798, 32.323662, 47.611584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937039, -0.288748, -0.196427,
		-0.215965, 0.037107, 0.975696,
		-0.274441, 0.956686, -0.097131,
		36.659466, 32.610668, 47.582443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334152, 32.051697, 48.075027>,  <36.851574, 31.940987, 47.650436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334152, 32.051697, 48.075027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288815, 32.349464, 47.811817>,  <36.261612, 32.528126, 47.653893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288815, 32.349464, 47.811817>,  <36.334152, 32.051697, 48.075027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288815, 32.349464, 47.811817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844923, -0.420670, -0.330367,
		-0.522742, 0.518537, 0.676654,
		-0.113341, 0.744417, -0.658026,
		36.254814, 32.572788, 47.614410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715836, 32.284477, 48.185902>,  <36.334152, 32.051697, 48.075027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715836, 32.284477, 48.185902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813560, 32.384132, 47.811043>,  <35.872196, 32.443924, 47.586128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813560, 32.384132, 47.811043>,  <35.715836, 32.284477, 48.185902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813560, 32.384132, 47.811043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861396, -0.388063, -0.327726,
		-0.445320, 0.887322, 0.119795,
		0.244310, 0.249133, -0.937147,
		35.886852, 32.458874, 47.529900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.286598, 31.692938, 52.363831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375031, 32.082661, 52.346642>,  <31.428089, 32.316494, 52.336330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375031, 32.082661, 52.346642>,  <31.286598, 31.692938, 52.363831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375031, 32.082661, 52.346642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364151, -0.123341, -0.923136,
		-0.904720, 0.188440, -0.382064,
		0.221080, 0.974309, -0.042969,
		31.441355, 32.374954, 52.333752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017309, 31.811964, 51.768147>,  <31.286598, 31.692938, 52.363831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017309, 31.811964, 51.768147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234867, 32.135998, 51.855732>,  <31.365402, 32.330418, 51.908283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234867, 32.135998, 51.855732>,  <31.017309, 31.811964, 51.768147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234867, 32.135998, 51.855732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367333, 0.004764, -0.930077,
		-0.754483, 0.586296, -0.294979,
		0.543895, 0.810083, 0.218960,
		31.398035, 32.379025, 51.921421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974243, 32.325768, 51.121258>,  <31.017309, 31.811964, 51.768147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974243, 32.325768, 51.121258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.306927, 32.439190, 51.312195>,  <31.506536, 32.507244, 51.426758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.306927, 32.439190, 51.312195>,  <30.974243, 32.325768, 51.121258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306927, 32.439190, 51.312195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454969, 0.144698, -0.878673,
		-0.318223, 0.947976, -0.008663,
		0.831707, 0.283555, 0.477346,
		31.556438, 32.524258, 51.455399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180315, 33.003914, 50.801434>,  <30.974243, 32.325768, 51.121258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180315, 33.003914, 50.801434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492491, 32.834736, 50.985622>,  <31.679796, 32.733231, 51.096134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492491, 32.834736, 50.985622>,  <31.180315, 33.003914, 50.801434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492491, 32.834736, 50.985622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541231, 0.088282, -0.836226,
		0.313026, 0.901845, 0.297810,
		0.780438, -0.422944, 0.460472,
		31.726622, 32.707851, 51.123764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802706, 33.505665, 50.707462>,  <31.180315, 33.003914, 50.801434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802706, 33.505665, 50.707462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989706, 33.163967, 50.798428>,  <32.101906, 32.958950, 50.853008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989706, 33.163967, 50.798428>,  <31.802706, 33.505665, 50.707462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989706, 33.163967, 50.798428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570498, 0.095040, -0.815781,
		0.675261, 0.511116, 0.531774,
		0.467499, -0.854241, 0.227414,
		32.129955, 32.907696, 50.866653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540981, 33.635490, 50.876827>,  <31.802706, 33.505665, 50.707462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540981, 33.635490, 50.876827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492039, 33.261295, 50.744225>,  <32.462673, 33.036777, 50.664661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492039, 33.261295, 50.744225>,  <32.540981, 33.635490, 50.876827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492039, 33.261295, 50.744225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590525, 0.199838, -0.781885,
		0.797689, -0.291432, 0.527976,
		-0.122357, -0.935485, -0.331507,
		32.455330, 32.980648, 50.644772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147312, 33.500961, 50.584412>,  <32.540981, 33.635490, 50.876827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147312, 33.500961, 50.584412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927017, 33.200829, 50.438152>,  <32.794842, 33.020748, 50.350395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927017, 33.200829, 50.438152>,  <33.147312, 33.500961, 50.584412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927017, 33.200829, 50.438152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432117, 0.118496, -0.893998,
		0.714120, -0.650359, 0.258969,
		-0.550733, -0.750327, -0.365652,
		32.761799, 32.975731, 50.328457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602562, 32.951080, 50.330986>,  <33.147312, 33.500961, 50.584412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602562, 32.951080, 50.330986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267014, 32.911907, 50.116806>,  <33.065685, 32.888401, 49.988297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267014, 32.911907, 50.116806>,  <33.602562, 32.951080, 50.330986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267014, 32.911907, 50.116806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536583, 0.016648, -0.843683,
		0.091543, -0.995053, 0.038586,
		-0.838867, -0.097938, -0.535453,
		33.015354, 32.882526, 49.956169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756283, 32.463074, 49.726913>,  <33.602562, 32.951080, 50.330986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756283, 32.463074, 49.726913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.425529, 32.658108, 49.614819>,  <33.227077, 32.775127, 49.547562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.425529, 32.658108, 49.614819>,  <33.756283, 32.463074, 49.726913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425529, 32.658108, 49.614819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256697, -0.116135, -0.959489,
		-0.500377, -0.865317, -0.029131,
		-0.826879, 0.487584, -0.280235,
		33.177467, 32.804382, 49.530746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564323, 32.079369, 49.186535>,  <33.756283, 32.463074, 49.726913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564323, 32.079369, 49.186535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343079, 32.409069, 49.138069>,  <33.210331, 32.606888, 49.108990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343079, 32.409069, 49.138069>,  <33.564323, 32.079369, 49.186535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343079, 32.409069, 49.138069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228233, 0.010047, -0.973555,
		-0.801234, -0.566139, -0.193678,
		-0.553113, 0.824248, -0.121162,
		33.177143, 32.656345, 49.101719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062561, 31.986229, 48.622627>,  <33.564323, 32.079369, 49.186535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062561, 31.986229, 48.622627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116837, 32.380428, 48.663391>,  <33.149403, 32.616947, 48.687847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116837, 32.380428, 48.663391>,  <33.062561, 31.986229, 48.622627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116837, 32.380428, 48.663391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091738, 0.089918, -0.991715,
		-0.986495, 0.143915, -0.078206,
		0.135690, 0.985497, 0.101906,
		33.157543, 32.676079, 48.693962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800606, 32.273273, 47.998608>,  <33.062561, 31.986229, 48.622627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800606, 32.273273, 47.998608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025639, 32.565052, 48.154255>,  <33.160660, 32.740120, 48.247643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025639, 32.565052, 48.154255>,  <32.800606, 32.273273, 47.998608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025639, 32.565052, 48.154255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311555, 0.248906, -0.917049,
		-0.765789, 0.637148, -0.087231,
		0.562584, 0.729444, 0.389117,
		33.194412, 32.783886, 48.270988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661022, 32.869659, 47.723862>,  <32.800606, 32.273273, 47.998608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661022, 32.869659, 47.723862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032711, 32.909706, 47.866142>,  <33.255726, 32.933735, 47.951511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032711, 32.909706, 47.866142>,  <32.661022, 32.869659, 47.723862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032711, 32.909706, 47.866142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319245, 0.267271, -0.909202,
		-0.186093, 0.958407, 0.216394,
		0.929221, 0.100113, 0.355704,
		33.311478, 32.939739, 47.972855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582100, 32.862888, 46.916878>,  <32.661022, 32.869659, 47.723862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582100, 32.862888, 46.916878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720230, 33.063129, 46.599354>,  <32.803108, 33.183273, 46.408840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720230, 33.063129, 46.599354>,  <32.582100, 32.862888, 46.916878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720230, 33.063129, 46.599354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666246, 0.726489, 0.168315,
		0.660957, 0.470750, 0.584406,
		0.345331, 0.500607, -0.793813,
		32.823830, 33.213310, 46.361210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840130, 33.349041, 47.180428>,  <32.582100, 32.862888, 46.916878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840130, 33.349041, 47.180428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745995, 33.441151, 46.802731>,  <32.689514, 33.496414, 46.576115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745995, 33.441151, 46.802731>,  <32.840130, 33.349041, 47.180428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745995, 33.441151, 46.802731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500813, 0.803885, 0.320866,
		0.832947, 0.548401, -0.073864,
		-0.235341, 0.230272, -0.944240,
		32.675392, 33.510231, 46.519459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964069, 33.999981, 47.246021>,  <32.840130, 33.349041, 47.180428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964069, 33.999981, 47.246021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758720, 33.983841, 46.903133>,  <32.635509, 33.974155, 46.697403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758720, 33.983841, 46.903133>,  <32.964069, 33.999981, 47.246021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758720, 33.983841, 46.903133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588105, 0.743994, 0.317184,
		0.624965, 0.666967, -0.405676,
		-0.513372, -0.040351, -0.857217,
		32.604710, 33.971737, 46.645969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973553, 34.637562, 46.828190>,  <32.964069, 33.999981, 47.246021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973553, 34.637562, 46.828190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640598, 34.450558, 46.709148>,  <32.440826, 34.338356, 46.637722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640598, 34.450558, 46.709148>,  <32.973553, 34.637562, 46.828190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640598, 34.450558, 46.709148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537743, 0.811227, 0.229660,
		0.134058, 0.351201, -0.926653,
		-0.832383, -0.467513, -0.297607,
		32.390884, 34.310303, 46.619865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507484, 35.216221, 46.591652>,  <32.973553, 34.637562, 46.828190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507484, 35.216221, 46.591652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287739, 34.885834, 46.642208>,  <32.155891, 34.687603, 46.672543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287739, 34.885834, 46.642208>,  <32.507484, 35.216221, 46.591652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287739, 34.885834, 46.642208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720863, 0.544980, 0.428197,
		-0.422558, 0.144126, -0.894803,
		-0.549364, -0.825968, 0.126391,
		32.122929, 34.638042, 46.680126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875118, 35.451187, 46.651642>,  <32.507484, 35.216221, 46.591652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875118, 35.451187, 46.651642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806629, 35.089760, 46.808743>,  <31.765535, 34.872906, 46.903004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806629, 35.089760, 46.808743>,  <31.875118, 35.451187, 46.651642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806629, 35.089760, 46.808743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684803, 0.395745, 0.611907,
		-0.708327, -0.164183, -0.686525,
		-0.171224, -0.903565, 0.392750,
		31.755262, 34.818691, 46.926567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122984, 35.475952, 46.756302>,  <31.875118, 35.451187, 46.651642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122984, 35.475952, 46.756302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293619, 35.222805, 47.014759>,  <31.396000, 35.070915, 47.169834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293619, 35.222805, 47.014759>,  <31.122984, 35.475952, 46.756302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293619, 35.222805, 47.014759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628114, 0.306727, 0.715116,
		-0.650765, -0.710910, -0.266668,
		0.426589, -0.632871, 0.646140,
		31.421597, 35.032944, 47.208603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532431, 35.084496, 47.029755>,  <31.122984, 35.475952, 46.756302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532431, 35.084496, 47.029755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.829464, 35.046738, 47.294983>,  <31.007685, 35.024082, 47.454121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.829464, 35.046738, 47.294983>,  <30.532431, 35.084496, 47.029755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829464, 35.046738, 47.294983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572369, 0.424662, 0.701467,
		-0.347796, -0.900417, 0.261317,
		0.742584, -0.094398, 0.663067,
		31.052238, 35.018417, 47.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228561, 34.922268, 47.728798>,  <30.532431, 35.084496, 47.029755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228561, 34.922268, 47.728798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607733, 34.984444, 47.839989>,  <30.835236, 35.021748, 47.906704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607733, 34.984444, 47.839989>,  <30.228561, 34.922268, 47.728798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607733, 34.984444, 47.839989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318486, 0.458887, 0.829451,
		0.001368, -0.874792, 0.484496,
		0.947926, 0.155440, 0.277981,
		30.892111, 35.031075, 47.923382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195656, 34.690426, 48.402859>,  <30.228561, 34.922268, 47.728798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195656, 34.690426, 48.402859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479578, 34.965336, 48.341122>,  <30.649931, 35.130283, 48.304081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479578, 34.965336, 48.341122>,  <30.195656, 34.690426, 48.402859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479578, 34.965336, 48.341122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419465, 0.588444, 0.691218,
		0.565876, -0.425896, 0.705972,
		0.709812, 0.687275, -0.154338,
		30.692520, 35.171520, 48.294819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426926, 34.822990, 49.037327>,  <30.195656, 34.690426, 48.402859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426926, 34.822990, 49.037327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.538517, 35.149590, 48.835136>,  <30.605471, 35.345551, 48.713821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.538517, 35.149590, 48.835136>,  <30.426926, 34.822990, 49.037327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538517, 35.149590, 48.835136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360205, 0.576911, 0.733094,
		0.890182, -0.022443, 0.455052,
		0.278977, 0.816499, -0.505471,
		30.622210, 35.394539, 48.683495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787113, 35.239147, 49.566185>,  <30.426926, 34.822990, 49.037327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787113, 35.239147, 49.566185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.654406, 35.473946, 49.270790>,  <30.574781, 35.614826, 49.093552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.654406, 35.473946, 49.270790>,  <30.787113, 35.239147, 49.566185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654406, 35.473946, 49.270790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267198, 0.692295, 0.670323,
		0.904729, 0.419715, -0.072837,
		-0.331770, 0.586998, -0.738486,
		30.554874, 35.650043, 49.049244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808451, 35.878738, 49.854134>,  <30.787113, 35.239147, 49.566185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808451, 35.878738, 49.854134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.609724, 35.966228, 49.518196>,  <30.490488, 36.018723, 49.316635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.609724, 35.966228, 49.518196>,  <30.808451, 35.878738, 49.854134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609724, 35.966228, 49.518196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413573, 0.791102, 0.450682,
		0.762974, 0.571242, -0.302577,
		-0.496818, 0.218721, -0.839841,
		30.460678, 36.031845, 49.266243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052994, 36.552944, 49.699665>,  <30.808451, 35.878738, 49.854134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052994, 36.552944, 49.699665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697910, 36.473534, 49.533504>,  <30.484859, 36.425888, 49.433807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697910, 36.473534, 49.533504>,  <31.052994, 36.552944, 49.699665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697910, 36.473534, 49.533504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418765, 0.723116, 0.549308,
		0.191331, 0.661582, -0.725053,
		-0.887709, -0.198527, -0.415402,
		30.431597, 36.413975, 49.408882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643936, 37.174232, 49.506817>,  <31.052994, 36.552944, 49.699665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643936, 37.174232, 49.506817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350216, 36.908012, 49.560246>,  <30.173983, 36.748280, 49.592304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350216, 36.908012, 49.560246>,  <30.643936, 37.174232, 49.506817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350216, 36.908012, 49.560246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542922, 0.693927, 0.472971,
		-0.407475, 0.274785, -0.870895,
		-0.734302, -0.665552, 0.133571,
		30.129925, 36.708347, 49.600315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074951, 37.767773, 49.500786>,  <30.643936, 37.174232, 49.506817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074951, 37.767773, 49.500786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.215925, 38.027481, 49.770374>,  <31.300510, 38.183308, 49.932125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.215925, 38.027481, 49.770374>,  <31.074951, 37.767773, 49.500786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215925, 38.027481, 49.770374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770917, 0.206857, -0.602409,
		-0.530543, 0.731884, -0.427632,
		0.352435, 0.649273, 0.673969,
		31.321655, 38.222263, 49.972565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257511, 38.396687, 49.131092>,  <31.074951, 37.767773, 49.500786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257511, 38.396687, 49.131092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472281, 38.402866, 49.468487>,  <31.601143, 38.406574, 49.670925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472281, 38.402866, 49.468487>,  <31.257511, 38.396687, 49.131092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472281, 38.402866, 49.468487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791082, 0.338139, -0.509757,
		-0.293092, 0.940969, 0.169333,
		0.536924, 0.015449, 0.843489,
		31.633358, 38.407501, 49.721535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698395, 39.006435, 48.960571>,  <31.257511, 38.396687, 49.131092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698395, 39.006435, 48.960571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867632, 38.829891, 49.277100>,  <31.969175, 38.723965, 49.467018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867632, 38.829891, 49.277100>,  <31.698395, 39.006435, 48.960571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867632, 38.829891, 49.277100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881831, 0.401292, -0.247665,
		-0.208242, 0.802600, 0.558989,
		0.423094, -0.441359, 0.791324,
		31.994560, 38.697483, 49.514496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164989, 39.511932, 49.362732>,  <31.698395, 39.006435, 48.960571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164989, 39.511932, 49.362732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279186, 39.135059, 49.432911>,  <32.347706, 38.908936, 49.475018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279186, 39.135059, 49.432911>,  <32.164989, 39.511932, 49.362732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279186, 39.135059, 49.432911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947028, 0.249249, -0.202517,
		0.147080, 0.223967, 0.963435,
		0.285493, -0.942186, 0.175443,
		32.364834, 38.852402, 49.485542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878170, 39.645115, 49.635365>,  <32.164989, 39.511932, 49.362732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878170, 39.645115, 49.635365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874195, 39.256260, 49.541683>,  <32.871811, 39.022945, 49.485474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874195, 39.256260, 49.541683>,  <32.878170, 39.645115, 49.635365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874195, 39.256260, 49.541683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988019, 0.026524, -0.152032,
		0.154008, -0.232910, 0.960226,
		-0.009941, -0.972136, -0.234205,
		32.871212, 38.964619, 49.471420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481346, 39.277660, 50.045250>,  <32.878170, 39.645115, 49.635365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481346, 39.277660, 50.045250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397366, 39.052361, 49.725582>,  <33.346977, 38.917179, 49.533783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397366, 39.052361, 49.725582>,  <33.481346, 39.277660, 50.045250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397366, 39.052361, 49.725582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958702, 0.041801, -0.281324,
		0.191862, -0.825229, 0.531212,
		-0.209951, -0.563249, -0.799169,
		33.334381, 38.883385, 49.485832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091061, 38.965935, 49.926758>,  <33.481346, 39.277660, 50.045250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091061, 38.965935, 49.926758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898281, 38.901787, 49.582199>,  <33.782616, 38.863300, 49.375462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898281, 38.901787, 49.582199>,  <34.091061, 38.965935, 49.926758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898281, 38.901787, 49.582199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876050, -0.106418, -0.470331,
		-0.016243, -0.981304, 0.191776,
		-0.481946, -0.160366, -0.861400,
		33.753696, 38.853676, 49.323780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465717, 38.333572, 49.508789>,  <34.091061, 38.965935, 49.926758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465717, 38.333572, 49.508789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246319, 38.507469, 49.223091>,  <34.114677, 38.611809, 49.051670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246319, 38.507469, 49.223091>,  <34.465717, 38.333572, 49.508789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246319, 38.507469, 49.223091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792045, -0.003633, -0.610452,
		-0.267983, -0.900548, -0.342341,
		-0.548498, 0.434741, -0.714248,
		34.081768, 38.637890, 49.008816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437077, 37.860775, 48.936504>,  <34.465717, 38.333572, 49.508789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437077, 37.860775, 48.936504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352043, 38.225418, 48.795780>,  <34.301022, 38.444206, 48.711346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352043, 38.225418, 48.795780>,  <34.437077, 37.860775, 48.936504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352043, 38.225418, 48.795780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759448, -0.072408, -0.646525,
		-0.614853, -0.404628, -0.676928,
		-0.212587, 0.911610, -0.351814,
		34.288265, 38.498901, 48.690235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478245, 37.778328, 48.221943>,  <34.437077, 37.860775, 48.936504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478245, 37.778328, 48.221943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500721, 38.173508, 48.279633>,  <34.514206, 38.410614, 48.314247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500721, 38.173508, 48.279633>,  <34.478245, 37.778328, 48.221943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500721, 38.173508, 48.279633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696622, 0.064687, -0.714516,
		-0.715235, 0.140613, -0.684593,
		0.056186, 0.987949, 0.144220,
		34.517578, 38.469891, 48.322899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587082, 38.057751, 47.572227>,  <34.478245, 37.778328, 48.221943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587082, 38.057751, 47.572227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744743, 38.321537, 47.828274>,  <34.839340, 38.479809, 47.981899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744743, 38.321537, 47.828274>,  <34.587082, 38.057751, 47.572227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744743, 38.321537, 47.828274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813681, 0.073404, -0.576658,
		-0.427273, 0.748143, -0.507662,
		0.394158, 0.659465, 0.640114,
		34.862991, 38.519375, 48.020309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897907, 38.606308, 47.204063>,  <34.587082, 38.057751, 47.572227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897907, 38.606308, 47.204063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076885, 38.614491, 47.561695>,  <35.184273, 38.619400, 47.776272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076885, 38.614491, 47.561695>,  <34.897907, 38.606308, 47.204063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076885, 38.614491, 47.561695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893949, -0.038693, -0.446496,
		0.025460, 0.999042, -0.035601,
		0.447446, 0.020458, 0.894077,
		35.211121, 38.620628, 47.829918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.180256, 39.757614, 55.211559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.888096, 39.797894, 54.941338>,  <28.712801, 39.822060, 54.779205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.888096, 39.797894, 54.941338>,  <29.180256, 39.757614, 55.211559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888096, 39.797894, 54.941338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533849, -0.532802, -0.656603,
		-0.426054, -0.840228, 0.335403,
		-0.730400, 0.100693, -0.675557,
		28.668976, 39.828102, 54.738670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259823, 39.121796, 54.897182>,  <29.180256, 39.757614, 55.211559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259823, 39.121796, 54.897182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022957, 39.335793, 54.656143>,  <28.880838, 39.464191, 54.511520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022957, 39.335793, 54.656143>,  <29.259823, 39.121796, 54.897182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022957, 39.335793, 54.656143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467398, -0.381127, -0.797672,
		-0.656416, -0.754006, -0.024365,
		-0.592163, 0.534993, -0.602599,
		28.845308, 39.496292, 54.475365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042923, 38.679523, 54.293098>,  <29.259823, 39.121796, 54.897182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042923, 38.679523, 54.293098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015469, 39.058064, 54.166790>,  <28.998997, 39.285187, 54.091003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015469, 39.058064, 54.166790>,  <29.042923, 38.679523, 54.293098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015469, 39.058064, 54.166790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429514, -0.257654, -0.865524,
		-0.900448, -0.195036, -0.388786,
		-0.068636, 0.946349, -0.315775,
		28.994877, 39.341969, 54.072056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597481, 38.631783, 53.606964>,  <29.042923, 38.679523, 54.293098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597481, 38.631783, 53.606964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816603, 38.966022, 53.623367>,  <28.948076, 39.166565, 53.633209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816603, 38.966022, 53.623367>,  <28.597481, 38.631783, 53.606964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816603, 38.966022, 53.623367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494648, -0.283973, -0.821391,
		-0.674710, 0.470246, -0.568889,
		0.547805, 0.835600, 0.041007,
		28.980944, 39.216702, 53.635670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516075, 38.965927, 52.925934>,  <28.597481, 38.631783, 53.606964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516075, 38.965927, 52.925934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848755, 39.120907, 53.085014>,  <29.048363, 39.213894, 53.180462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848755, 39.120907, 53.085014>,  <28.516075, 38.965927, 52.925934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848755, 39.120907, 53.085014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470731, -0.112210, -0.875112,
		-0.294433, 0.915038, -0.275707,
		0.831698, 0.387446, 0.397699,
		29.098265, 39.237141, 53.204323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773325, 39.390236, 52.348438>,  <28.516075, 38.965927, 52.925934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773325, 39.390236, 52.348438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082222, 39.307781, 52.588821>,  <29.267561, 39.258308, 52.733051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082222, 39.307781, 52.588821>,  <28.773325, 39.390236, 52.348438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082222, 39.307781, 52.588821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620624, 0.042440, -0.782959,
		0.135894, 0.977602, 0.160709,
		0.772243, -0.206140, 0.600955,
		29.313894, 39.245941, 52.769108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360056, 39.657238, 51.938732>,  <28.773325, 39.390236, 52.348438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360056, 39.657238, 51.938732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527615, 39.420036, 52.213795>,  <29.628149, 39.277714, 52.378830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527615, 39.420036, 52.213795>,  <29.360056, 39.657238, 51.938732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527615, 39.420036, 52.213795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800209, -0.116849, -0.588228,
		0.429176, 0.796673, 0.425583,
		0.418896, -0.593008, 0.687654,
		29.653284, 39.242134, 52.420090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971899, 39.924377, 52.067661>,  <29.360056, 39.657238, 51.938732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971899, 39.924377, 52.067661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991470, 39.536060, 52.161613>,  <30.003214, 39.303070, 52.217983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991470, 39.536060, 52.161613>,  <29.971899, 39.924377, 52.067661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991470, 39.536060, 52.161613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658221, -0.145531, -0.738624,
		0.751233, 0.190741, 0.631876,
		0.048928, -0.970793, 0.234878,
		30.006149, 39.244823, 52.232079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744362, 39.760410, 52.057541>,  <29.971899, 39.924377, 52.067661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744362, 39.760410, 52.057541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.510376, 39.439713, 52.008511>,  <30.369984, 39.247295, 51.979092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.510376, 39.439713, 52.008511>,  <30.744362, 39.760410, 52.057541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510376, 39.439713, 52.008511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546658, -0.278096, -0.789827,
		0.599150, -0.529029, 0.600956,
		-0.584965, -0.801742, -0.122577,
		30.334887, 39.199188, 51.971737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131460, 39.235909, 51.858776>,  <30.744362, 39.760410, 52.057541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131460, 39.235909, 51.858776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772715, 39.111416, 51.733067>,  <30.557467, 39.036720, 51.657639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772715, 39.111416, 51.733067>,  <31.131460, 39.235909, 51.858776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772715, 39.111416, 51.733067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429988, -0.446991, -0.784416,
		0.103654, -0.838651, 0.534716,
		-0.896865, -0.311229, -0.314277,
		30.503654, 39.018047, 51.638783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223742, 38.565319, 51.732826>,  <31.131460, 39.235909, 51.858776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223742, 38.565319, 51.732826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883902, 38.639935, 51.535492>,  <30.679996, 38.684704, 51.417091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883902, 38.639935, 51.535492>,  <31.223742, 38.565319, 51.732826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883902, 38.639935, 51.535492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320530, -0.560204, -0.763827,
		-0.418853, -0.807077, 0.416159,
		-0.849602, 0.186540, -0.493336,
		30.629021, 38.695896, 51.387489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005522, 37.956642, 51.491474>,  <31.223742, 38.565319, 51.732826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005522, 37.956642, 51.491474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819265, 38.219311, 51.254166>,  <30.707512, 38.376911, 51.111782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819265, 38.219311, 51.254166>,  <31.005522, 37.956642, 51.491474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819265, 38.219311, 51.254166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363567, -0.469249, -0.804751,
		-0.806844, -0.590418, -0.020241,
		-0.465641, 0.656667, -0.593267,
		30.679573, 38.416309, 51.076187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883461, 37.516605, 50.949871>,  <31.005522, 37.956642, 51.491474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883461, 37.516605, 50.949871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862701, 37.891716, 50.812538>,  <30.850246, 38.116783, 50.730137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862701, 37.891716, 50.812538>,  <30.883461, 37.516605, 50.949871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862701, 37.891716, 50.812538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239341, -0.322100, -0.915952,
		-0.969548, -0.129710, -0.207732,
		-0.051898, 0.937778, -0.343336,
		30.847132, 38.173050, 50.709538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701469, 37.539017, 50.202854>,  <30.883461, 37.516605, 50.949871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701469, 37.539017, 50.202854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.900320, 37.870571, 50.305477>,  <31.019630, 38.069504, 50.367050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.900320, 37.870571, 50.305477>,  <30.701469, 37.539017, 50.202854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900320, 37.870571, 50.305477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456618, 0.001510, -0.889662,
		-0.737812, 0.559421, -0.377731,
		0.497125, 0.828882, 0.256556,
		31.049458, 38.119236, 50.382442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042515, 37.657112, 49.740246>,  <30.701469, 37.539017, 50.202854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042515, 37.657112, 49.740246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900179, 37.283920, 49.761921>,  <29.814777, 37.060005, 49.774925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900179, 37.283920, 49.761921>,  <30.042515, 37.657112, 49.740246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900179, 37.283920, 49.761921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736377, 0.315613, 0.598446,
		-0.575436, 0.173050, -0.799329,
		-0.355840, -0.932975, 0.054186,
		29.793427, 37.004028, 49.778175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293228, 37.713680, 49.705452>,  <30.042515, 37.657112, 49.740246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293228, 37.713680, 49.705452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328407, 37.346397, 49.859940>,  <29.349514, 37.126026, 49.952633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328407, 37.346397, 49.859940>,  <29.293228, 37.713680, 49.705452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328407, 37.346397, 49.859940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717206, 0.210700, 0.664245,
		-0.691290, -0.335414, -0.640013,
		0.087947, -0.918207, 0.386216,
		29.354792, 37.070934, 49.975803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603024, 37.373974, 49.783260>,  <29.293228, 37.713680, 49.705452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603024, 37.373974, 49.783260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.852011, 37.193508, 50.039070>,  <29.001402, 37.085228, 50.192554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.852011, 37.193508, 50.039070>,  <28.603024, 37.373974, 49.783260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852011, 37.193508, 50.039070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714089, 0.007051, 0.700019,
		-0.320332, -0.892413, -0.317782,
		0.622466, -0.451164, 0.639521,
		29.038750, 37.058159, 50.230927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164684, 36.962158, 50.143337>,  <28.603024, 37.373974, 49.783260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164684, 36.962158, 50.143337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.500263, 36.965855, 50.360989>,  <28.701611, 36.968071, 50.491581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.500263, 36.965855, 50.360989>,  <28.164684, 36.962158, 50.143337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500263, 36.965855, 50.360989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542305, 0.097788, 0.834471,
		-0.045499, -0.995164, 0.087050,
		0.838948, 0.009240, 0.544132,
		28.751947, 36.968628, 50.524227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055672, 36.399582, 50.648117>,  <28.164684, 36.962158, 50.143337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055672, 36.399582, 50.648117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304352, 36.692253, 50.759933>,  <28.453560, 36.867855, 50.827023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304352, 36.692253, 50.759933>,  <28.055672, 36.399582, 50.648117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304352, 36.692253, 50.759933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478659, 0.072412, 0.875010,
		0.619980, -0.677797, 0.395241,
		0.621699, 0.731674, 0.279540,
		28.490862, 36.911755, 50.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144739, 36.290508, 51.229542>,  <28.055672, 36.399582, 50.648117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144739, 36.290508, 51.229542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268703, 36.670807, 51.231758>,  <28.343082, 36.898987, 51.233089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268703, 36.670807, 51.231758>,  <28.144739, 36.290508, 51.229542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268703, 36.670807, 51.231758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481325, 0.151863, 0.863286,
		0.819927, -0.270210, 0.504684,
		0.309911, 0.950749, 0.005543,
		28.361677, 36.956032, 51.233421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279938, 36.354031, 51.918789>,  <28.144739, 36.290508, 51.229542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279938, 36.354031, 51.918789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267302, 36.737091, 51.804314>,  <28.259720, 36.966927, 51.735626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267302, 36.737091, 51.804314>,  <28.279938, 36.354031, 51.918789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267302, 36.737091, 51.804314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403606, 0.249730, 0.880191,
		0.914387, 0.143314, 0.378625,
		-0.031589, 0.957651, -0.286193,
		28.257824, 37.024387, 51.718456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524458, 36.780003, 52.438835>,  <28.279938, 36.354031, 51.918789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524458, 36.780003, 52.438835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323450, 37.045506, 52.217239>,  <28.202847, 37.204807, 52.084282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323450, 37.045506, 52.217239>,  <28.524458, 36.780003, 52.438835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323450, 37.045506, 52.217239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458931, 0.338251, 0.821565,
		0.732706, 0.667093, 0.134641,
		-0.502518, 0.663756, -0.553988,
		28.172695, 37.244633, 52.051044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603212, 37.308201, 52.797249>,  <28.524458, 36.780003, 52.438835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603212, 37.308201, 52.797249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284525, 37.399105, 52.573254>,  <28.093311, 37.453648, 52.438854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284525, 37.399105, 52.573254>,  <28.603212, 37.308201, 52.797249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284525, 37.399105, 52.573254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541743, 0.142139, 0.828439,
		0.267865, 0.963406, 0.009869,
		-0.796720, 0.227257, -0.559992,
		28.045509, 37.467281, 52.405254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488703, 37.941917, 53.032135>,  <28.603212, 37.308201, 52.797249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488703, 37.941917, 53.032135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154961, 37.779350, 52.883179>,  <27.954716, 37.681808, 52.793804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154961, 37.779350, 52.883179>,  <28.488703, 37.941917, 53.032135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154961, 37.779350, 52.883179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459218, 0.138791, 0.877414,
		-0.304911, 0.903085, -0.302435,
		-0.834355, -0.406417, -0.372394,
		27.904654, 37.657425, 52.771461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954788, 38.247868, 53.471577>,  <28.488703, 37.941917, 53.032135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954788, 38.247868, 53.471577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772768, 37.936604, 53.298420>,  <27.663555, 37.749844, 53.194527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772768, 37.936604, 53.298420>,  <27.954788, 38.247868, 53.471577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772768, 37.936604, 53.298420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650156, -0.041840, 0.758648,
		-0.608462, 0.626671, -0.486886,
		-0.455051, -0.778160, -0.432892,
		27.636253, 37.703156, 53.168552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254200, 38.460419, 53.481289>,  <27.954788, 38.247868, 53.471577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254200, 38.460419, 53.481289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247841, 38.060780, 53.465584>,  <27.244024, 37.820995, 53.456161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247841, 38.060780, 53.465584>,  <27.254200, 38.460419, 53.481289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247841, 38.060780, 53.465584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592246, -0.022225, 0.805451,
		-0.805600, 0.036058, -0.591361,
		-0.015900, -0.999103, -0.039260,
		27.243071, 37.761047, 53.453804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568127, 38.274044, 53.548458>,  <27.254200, 38.460419, 53.481289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568127, 38.274044, 53.548458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744305, 37.926277, 53.638004>,  <26.850012, 37.717617, 53.691730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744305, 37.926277, 53.638004>,  <26.568127, 38.274044, 53.548458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744305, 37.926277, 53.638004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586120, -0.089583, 0.805257,
		-0.680052, -0.485883, -0.549041,
		0.440445, -0.869421, 0.223864,
		26.876438, 37.665451, 53.705162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056404, 37.847340, 53.541248>,  <26.568127, 38.274044, 53.548458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056404, 37.847340, 53.541248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.331440, 37.670223, 53.771435>,  <26.496462, 37.563953, 53.909546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.331440, 37.670223, 53.771435>,  <26.056404, 37.847340, 53.541248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331440, 37.670223, 53.771435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684616, -0.131295, 0.716982,
		-0.241915, -0.886961, -0.393417,
		0.687589, -0.442788, 0.575466,
		26.537716, 37.537388, 53.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.169102, 36.734806, 59.089977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069191, 37.043667, 58.856262>,  <34.009243, 37.228981, 58.716034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069191, 37.043667, 58.856262>,  <34.169102, 36.734806, 59.089977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069191, 37.043667, 58.856262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351197, -0.490089, -0.797792,
		-0.902369, -0.404474, -0.148762,
		-0.249780, 0.772148, -0.584292,
		33.994255, 37.275311, 58.680973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085190, 36.409096, 58.475315>,  <34.169102, 36.734806, 59.089977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085190, 36.409096, 58.475315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081184, 36.793262, 58.363960>,  <34.078781, 37.023762, 58.297150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081184, 36.793262, 58.363960>,  <34.085190, 36.409096, 58.475315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081184, 36.793262, 58.363960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502907, -0.235790, -0.831557,
		-0.864282, -0.148328, -0.480640,
		-0.010013, 0.960417, -0.278385,
		34.078182, 37.081387, 58.280445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826160, 36.346943, 57.748047>,  <34.085190, 36.409096, 58.475315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826160, 36.346943, 57.748047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014294, 36.698410, 57.780869>,  <34.127174, 36.909290, 57.800560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014294, 36.698410, 57.780869>,  <33.826160, 36.346943, 57.748047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014294, 36.698410, 57.780869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411444, -0.136076, -0.901220,
		-0.780708, 0.457630, -0.425523,
		0.470329, 0.878668, 0.082053,
		34.155392, 36.962009, 57.805485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778191, 36.700615, 57.081135>,  <33.826160, 36.346943, 57.748047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778191, 36.700615, 57.081135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105640, 36.857265, 57.249172>,  <34.302113, 36.951256, 57.349995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105640, 36.857265, 57.249172>,  <33.778191, 36.700615, 57.081135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105640, 36.857265, 57.249172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473049, -0.044976, -0.879888,
		-0.325690, 0.919025, -0.222076,
		0.818627, 0.391623, 0.420095,
		34.351227, 36.974754, 57.375202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083138, 37.218456, 56.603916>,  <33.778191, 36.700615, 57.081135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083138, 37.218456, 56.603916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374210, 37.159519, 56.871876>,  <34.548855, 37.124157, 57.032654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374210, 37.159519, 56.871876>,  <34.083138, 37.218456, 56.603916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374210, 37.159519, 56.871876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659831, -0.116403, -0.742343,
		0.187357, 0.982212, 0.012516,
		0.727681, -0.147342, 0.669903,
		34.592514, 37.115318, 57.072845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651367, 37.719189, 56.390549>,  <34.083138, 37.218456, 56.603916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651367, 37.719189, 56.390549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832947, 37.441124, 56.613503>,  <34.941895, 37.274284, 56.747276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832947, 37.441124, 56.613503>,  <34.651367, 37.719189, 56.390549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832947, 37.441124, 56.613503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598214, -0.225833, -0.768856,
		0.660356, 0.682457, 0.313340,
		0.453949, -0.695163, 0.557386,
		34.969131, 37.232574, 56.780720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399616, 37.712521, 56.286983>,  <34.651367, 37.719189, 56.390549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399616, 37.712521, 56.286983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346184, 37.348354, 56.443592>,  <35.314125, 37.129852, 56.537560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346184, 37.348354, 56.443592>,  <35.399616, 37.712521, 56.286983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346184, 37.348354, 56.443592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716011, -0.361802, -0.597016,
		0.685189, 0.200586, 0.700201,
		-0.133581, -0.910420, 0.391524,
		35.306110, 37.075230, 56.561050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060547, 37.424995, 56.252888>,  <35.399616, 37.712521, 56.286983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060547, 37.424995, 56.252888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799316, 37.123817, 56.285305>,  <35.642578, 36.943111, 56.304756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799316, 37.123817, 56.285305>,  <36.060547, 37.424995, 56.252888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799316, 37.123817, 56.285305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506100, -0.513549, -0.692915,
		0.563344, -0.411512, 0.716451,
		-0.653075, -0.752945, 0.081039,
		35.603394, 36.897934, 56.309616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477676, 36.817902, 56.209965>,  <36.060547, 37.424995, 56.252888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477676, 36.817902, 56.209965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115284, 36.664093, 56.139145>,  <35.897850, 36.571808, 56.096653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115284, 36.664093, 56.139145>,  <36.477676, 36.817902, 56.209965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115284, 36.664093, 56.139145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399560, -0.638578, -0.657700,
		0.139845, -0.666602, 0.732178,
		-0.905977, -0.384525, -0.177046,
		35.843491, 36.548737, 56.086033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481144, 36.077068, 56.309502>,  <36.477676, 36.817902, 56.209965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481144, 36.077068, 56.309502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166340, 36.158127, 56.076420>,  <35.977455, 36.206764, 55.936573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166340, 36.158127, 56.076420>,  <36.481144, 36.077068, 56.309502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166340, 36.158127, 56.076420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431421, -0.494388, -0.754623,
		-0.441000, -0.845291, 0.301667,
		-0.787017, 0.202643, -0.582701,
		35.930237, 36.218922, 55.901608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178261, 35.436298, 56.059128>,  <36.481144, 36.077068, 56.309502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178261, 35.436298, 56.059128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056850, 35.694702, 55.778973>,  <35.984005, 35.849743, 55.610878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056850, 35.694702, 55.778973>,  <36.178261, 35.436298, 56.059128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056850, 35.694702, 55.778973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392797, -0.584864, -0.709679,
		-0.868093, -0.490514, -0.076232,
		-0.303522, 0.646011, -0.700388,
		35.965794, 35.888504, 55.568855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841274, 35.105679, 55.445801>,  <36.178261, 35.436298, 56.059128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841274, 35.105679, 55.445801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868488, 35.457008, 55.256519>,  <35.884815, 35.667805, 55.142952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868488, 35.457008, 55.256519>,  <35.841274, 35.105679, 55.445801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868488, 35.457008, 55.256519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258907, -0.473593, -0.841829,
		-0.963503, -0.065243, -0.259624,
		0.068033, 0.878324, -0.473200,
		35.888897, 35.720505, 55.114559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546711, 34.997669, 54.863247>,  <35.841274, 35.105679, 55.445801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546711, 34.997669, 54.863247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792461, 35.307251, 54.801884>,  <35.939911, 35.493000, 54.765064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792461, 35.307251, 54.801884>,  <35.546711, 34.997669, 54.863247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792461, 35.307251, 54.801884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200010, -0.340853, -0.918594,
		-0.763238, 0.533683, -0.364211,
		0.614380, 0.773952, -0.153410,
		35.976776, 35.539436, 54.755859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393867, 35.257393, 54.049290>,  <35.546711, 34.997669, 54.863247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393867, 35.257393, 54.049290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754360, 35.402920, 54.143452>,  <35.970657, 35.490234, 54.199947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754360, 35.402920, 54.143452>,  <35.393867, 35.257393, 54.049290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754360, 35.402920, 54.143452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376511, -0.388526, -0.841003,
		-0.214508, 0.846574, -0.487133,
		0.901236, 0.363813, 0.235403,
		36.024731, 35.512062, 54.214073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773979, 35.429768, 53.647030>,  <35.393867, 35.257393, 54.049290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773979, 35.429768, 53.647030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516438, 35.178204, 53.472710>,  <34.361912, 35.027264, 53.368118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516438, 35.178204, 53.472710>,  <34.773979, 35.429768, 53.647030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516438, 35.178204, 53.472710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619528, 0.094245, 0.779296,
		-0.449037, 0.771743, -0.450309,
		-0.643856, -0.628912, -0.435798,
		34.323280, 34.989529, 53.341969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131413, 35.787910, 53.664906>,  <34.773979, 35.429768, 53.647030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131413, 35.787910, 53.664906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021931, 35.407505, 53.607414>,  <33.956242, 35.179260, 53.572918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021931, 35.407505, 53.607414>,  <34.131413, 35.787910, 53.664906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021931, 35.407505, 53.607414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789688, 0.136891, 0.598041,
		-0.549070, 0.277190, -0.788472,
		-0.273705, -0.951014, -0.143731,
		33.939819, 35.122200, 53.564297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328461, 35.814629, 53.697937>,  <34.131413, 35.787910, 53.664906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328461, 35.814629, 53.697937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464344, 35.445816, 53.772190>,  <33.545876, 35.224529, 53.816742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464344, 35.445816, 53.772190>,  <33.328461, 35.814629, 53.697937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464344, 35.445816, 53.772190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438291, 0.019439, 0.898623,
		-0.832165, -0.386631, -0.397514,
		0.339708, -0.922030, 0.185633,
		33.566257, 35.169209, 53.827881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669777, 35.445026, 53.899410>,  <33.328461, 35.814629, 53.697937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669777, 35.445026, 53.899410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974751, 35.242859, 54.061024>,  <33.157734, 35.121559, 54.157993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974751, 35.242859, 54.061024>,  <32.669777, 35.445026, 53.899410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974751, 35.242859, 54.061024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512750, -0.091044, 0.853697,
		-0.394689, -0.858058, -0.328568,
		0.762436, -0.505418, 0.404035,
		33.203480, 35.091232, 54.182236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323559, 34.798306, 54.231510>,  <32.669777, 35.445026, 53.899410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323559, 34.798306, 54.231510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678448, 34.896809, 54.387562>,  <32.891380, 34.955910, 54.481194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678448, 34.896809, 54.387562>,  <32.323559, 34.798306, 54.231510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678448, 34.896809, 54.387562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375645, -0.105310, 0.920761,
		0.267827, -0.963467, -0.000928,
		0.887220, 0.246256, 0.390126,
		32.944614, 34.970684, 54.504601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414017, 34.271484, 54.776852>,  <32.323559, 34.798306, 54.231510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414017, 34.271484, 54.776852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659466, 34.584793, 54.816772>,  <32.806736, 34.772778, 54.840725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659466, 34.584793, 54.816772>,  <32.414017, 34.271484, 54.776852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659466, 34.584793, 54.816772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264302, 0.084645, 0.960718,
		0.744053, -0.615893, 0.258960,
		0.613620, 0.783269, 0.099801,
		32.843552, 34.819775, 54.846714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687023, 34.187359, 55.424797>,  <32.414017, 34.271484, 54.776852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687023, 34.187359, 55.424797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715942, 34.573540, 55.324665>,  <32.733295, 34.805248, 55.264584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715942, 34.573540, 55.324665>,  <32.687023, 34.187359, 55.424797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715942, 34.573540, 55.324665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308609, 0.260329, 0.914871,
		0.948437, 0.011110, 0.316771,
		0.072300, 0.965456, -0.250334,
		32.737633, 34.863178, 55.249565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767715, 34.492550, 56.086075>,  <32.687023, 34.187359, 55.424797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767715, 34.492550, 56.086075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731712, 34.818207, 55.856613>,  <32.710110, 35.013599, 55.718937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731712, 34.818207, 55.856613>,  <32.767715, 34.492550, 56.086075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731712, 34.818207, 55.856613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334864, 0.517715, 0.787297,
		0.937958, 0.262960, 0.226026,
		-0.090010, 0.814139, -0.573651,
		32.704708, 35.062450, 55.684517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090950, 34.987087, 56.364288>,  <32.767715, 34.492550, 56.086075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090950, 34.987087, 56.364288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791874, 35.129257, 56.139919>,  <32.612427, 35.214558, 56.005299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791874, 35.129257, 56.139919>,  <33.090950, 34.987087, 56.364288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791874, 35.129257, 56.139919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426233, 0.390859, 0.815815,
		0.509200, 0.849061, -0.140749,
		-0.747690, 0.355421, -0.560924,
		32.567566, 35.235882, 55.971642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051418, 35.631691, 56.603695>,  <33.090950, 34.987087, 56.364288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051418, 35.631691, 56.603695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704735, 35.571850, 56.413357>,  <32.496723, 35.535946, 56.299152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704735, 35.571850, 56.413357>,  <33.051418, 35.631691, 56.603695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704735, 35.571850, 56.413357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481936, 0.497166, 0.721501,
		0.128638, 0.854661, -0.502998,
		-0.866712, -0.149601, -0.475847,
		32.444721, 35.526970, 56.270603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666653, 36.228794, 56.519058>,  <33.051418, 35.631691, 56.603695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666653, 36.228794, 56.519058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382694, 35.947186, 56.511040>,  <32.212318, 35.778221, 56.506229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382694, 35.947186, 56.511040>,  <32.666653, 36.228794, 56.519058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382694, 35.947186, 56.511040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539864, 0.525652, 0.657447,
		-0.452322, 0.477538, -0.753234,
		-0.709895, -0.704022, -0.020042,
		32.169727, 35.735977, 56.505028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089760, 36.620277, 56.620277>,  <32.666653, 36.228794, 56.519058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089760, 36.620277, 56.620277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924742, 36.263042, 56.692051>,  <31.825731, 36.048702, 56.735115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924742, 36.263042, 56.692051>,  <32.089760, 36.620277, 56.620277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924742, 36.263042, 56.692051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453973, 0.372342, 0.809488,
		-0.789758, 0.252487, -0.559046,
		-0.412541, -0.893091, 0.179438,
		31.800980, 35.995113, 56.745884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484699, 36.719765, 56.524784>,  <32.089760, 36.620277, 56.620277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484699, 36.719765, 56.524784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497583, 36.396511, 56.760029>,  <31.505314, 36.202557, 56.901176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497583, 36.396511, 56.760029>,  <31.484699, 36.719765, 56.524784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497583, 36.396511, 56.760029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576001, 0.465870, 0.671705,
		-0.816814, -0.360389, -0.450482,
		0.032209, -0.808137, 0.588114,
		31.507246, 36.154072, 56.936462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729572, 36.583717, 56.727875>,  <31.484699, 36.719765, 56.524784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729572, 36.583717, 56.727875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.968468, 36.413380, 56.999748>,  <31.111805, 36.311176, 57.162872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.968468, 36.413380, 56.999748>,  <30.729572, 36.583717, 56.727875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968468, 36.413380, 56.999748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474198, 0.495976, 0.727423,
		-0.646871, -0.756748, 0.094284,
		0.597239, -0.425840, 0.679681,
		31.147640, 36.285629, 57.203651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332165, 35.926353, 56.630283>,  <30.729572, 36.583717, 56.727875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332165, 35.926353, 56.630283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978153, 35.745403, 56.674252>,  <29.765747, 35.636833, 56.700634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978153, 35.745403, 56.674252>,  <30.332165, 35.926353, 56.630283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978153, 35.745403, 56.674252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306924, -0.744526, -0.592856,
		0.350033, -0.490956, 0.797771,
		-0.885028, -0.452374, 0.109923,
		29.712645, 35.609692, 56.707230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446201, 35.205051, 56.782360>,  <30.332165, 35.926353, 56.630283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446201, 35.205051, 56.782360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081158, 35.258209, 56.627705>,  <29.862131, 35.290104, 56.534912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081158, 35.258209, 56.627705>,  <30.446201, 35.205051, 56.782360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081158, 35.258209, 56.627705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222684, -0.631523, -0.742692,
		-0.342870, -0.763883, 0.546738,
		-0.912607, 0.132897, -0.386635,
		29.807375, 35.298077, 56.511715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114693, 34.534576, 56.834332>,  <30.446201, 35.205051, 56.782360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114693, 34.534576, 56.834332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.917271, 34.747993, 56.559597>,  <29.798817, 34.876041, 56.394756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.917271, 34.747993, 56.559597>,  <30.114693, 34.534576, 56.834332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917271, 34.747993, 56.559597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183892, -0.707848, -0.682008,
		-0.850051, -0.462912, 0.251249,
		-0.493555, 0.533539, -0.686832,
		29.769203, 34.908054, 56.353546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762177, 33.967163, 56.426266>,  <30.114693, 34.534576, 56.834332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762177, 33.967163, 56.426266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709967, 34.271729, 56.172272>,  <29.678640, 34.454468, 56.019875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709967, 34.271729, 56.172272>,  <29.762177, 33.967163, 56.426266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709967, 34.271729, 56.172272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103914, -0.626434, -0.772517,
		-0.985985, -0.166815, 0.002642,
		-0.130523, 0.761415, -0.634989,
		29.670811, 34.500153, 55.981773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292522, 33.696636, 55.899982>,  <29.762177, 33.967163, 56.426266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292522, 33.696636, 55.899982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.489292, 34.003681, 55.735649>,  <29.607355, 34.187908, 55.637047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.489292, 34.003681, 55.735649>,  <29.292522, 33.696636, 55.899982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489292, 34.003681, 55.735649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153683, -0.541028, -0.826843,
		-0.856965, 0.343607, -0.384115,
		0.491927, 0.767608, -0.410836,
		29.636869, 34.233963, 55.612400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085043, 33.735332, 55.188046>,  <29.292522, 33.696636, 55.899982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085043, 33.735332, 55.188046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.453541, 33.887199, 55.221897>,  <29.674641, 33.978317, 55.242207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.453541, 33.887199, 55.221897>,  <29.085043, 33.735332, 55.188046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453541, 33.887199, 55.221897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267920, -0.461598, -0.845663,
		-0.282003, 0.801737, -0.526965,
		0.921245, 0.379664, 0.084630,
		29.729914, 34.001099, 55.247288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259212, 33.743805, 54.544704>,  <29.085043, 33.735332, 55.188046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259212, 33.743805, 54.544704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.619390, 33.838856, 54.690434>,  <29.835497, 33.895885, 54.777870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.619390, 33.838856, 54.690434>,  <29.259212, 33.743805, 54.544704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619390, 33.838856, 54.690434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433640, -0.425004, -0.794562,
		-0.033975, 0.873443, -0.485739,
		0.900445, 0.237631, 0.364320,
		29.889524, 33.910145, 54.799728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702770, 34.030571, 53.978592>,  <29.259212, 33.743805, 54.544704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702770, 34.030571, 53.978592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953920, 33.886204, 54.254421>,  <30.104610, 33.799583, 54.419918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953920, 33.886204, 54.254421>,  <29.702770, 34.030571, 53.978592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953920, 33.886204, 54.254421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617656, -0.308034, -0.723613,
		0.473576, 0.880258, 0.029515,
		0.627875, -0.360916, 0.689574,
		30.142282, 33.777927, 54.461292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329617, 34.284313, 53.760914>,  <29.702770, 34.030571, 53.978592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329617, 34.284313, 53.760914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426296, 33.965622, 53.982475>,  <30.484304, 33.774406, 54.115410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.426296, 33.965622, 53.982475>,  <30.329617, 34.284313, 53.760914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426296, 33.965622, 53.982475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540217, -0.363698, -0.758874,
		0.806068, 0.482646, 0.342500,
		0.241700, -0.796729, 0.553899,
		30.498806, 33.726604, 54.148643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007471, 34.223579, 53.796986>,  <30.329617, 34.284313, 53.760914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007471, 34.223579, 53.796986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872620, 33.848461, 53.830189>,  <30.791708, 33.623390, 53.850109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872620, 33.848461, 53.830189>,  <31.007471, 34.223579, 53.796986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872620, 33.848461, 53.830189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713750, -0.312086, -0.627027,
		0.613926, -0.152143, 0.774562,
		-0.337128, -0.937793, 0.083006,
		30.771481, 33.567123, 53.855091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607599, 33.863106, 53.628033>,  <31.007471, 34.223579, 53.796986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607599, 33.863106, 53.628033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321280, 33.583801, 53.624767>,  <31.149487, 33.416218, 53.622810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321280, 33.583801, 53.624767>,  <31.607599, 33.863106, 53.628033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321280, 33.583801, 53.624767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534533, -0.540368, -0.649829,
		0.449337, -0.469510, 0.760037,
		-0.715801, -0.698257, -0.008161,
		31.106539, 33.374325, 53.622318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951567, 33.293640, 53.538868>,  <31.607599, 33.863106, 53.628033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951567, 33.293640, 53.538868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585230, 33.152840, 53.461578>,  <31.365429, 33.068359, 53.415207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585230, 33.152840, 53.461578>,  <31.951567, 33.293640, 53.538868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585230, 33.152840, 53.461578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379105, -0.599371, -0.705007,
		0.132350, -0.718924, 0.682372,
		-0.915840, -0.351998, -0.193220,
		31.310478, 33.047241, 53.403614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977110, 32.522503, 53.543541>,  <31.951567, 33.293640, 53.538868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977110, 32.522503, 53.543541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675894, 32.668350, 53.324459>,  <31.495165, 32.755859, 53.193008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675894, 32.668350, 53.324459>,  <31.977110, 32.522503, 53.543541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675894, 32.668350, 53.324459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357415, -0.472217, -0.805770,
		-0.552437, -0.802536, 0.225278,
		-0.753039, 0.364619, -0.547708,
		31.449982, 32.777737, 53.160145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779688, 32.027805, 53.174927>,  <31.977110, 32.522503, 53.543541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779688, 32.027805, 53.174927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637112, 32.341282, 52.971447>,  <31.551565, 32.529369, 52.849361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637112, 32.341282, 52.971447>,  <31.779688, 32.027805, 53.174927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637112, 32.341282, 52.971447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465995, -0.322786, -0.823807,
		-0.809814, -0.530688, -0.250144,
		-0.356442, 0.783696, -0.508695,
		31.530180, 32.576389, 52.818840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.620132, 37.296810, 53.928783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.966557, 37.367043, 54.116020>,  <26.174412, 37.409184, 54.228363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.966557, 37.367043, 54.116020>,  <25.620132, 37.296810, 53.928783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966557, 37.367043, 54.116020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480884, 0.036525, 0.876023,
		0.136715, -0.983787, 0.116067,
		0.866059, 0.175580, 0.468094,
		26.226374, 37.419716, 54.256447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506283, 36.959484, 54.401215>,  <25.620132, 37.296810, 53.928783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506283, 36.959484, 54.401215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.834017, 37.156532, 54.518528>,  <26.030657, 37.274761, 54.588917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.834017, 37.156532, 54.518528>,  <25.506283, 36.959484, 54.401215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834017, 37.156532, 54.518528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315781, -0.039191, 0.948022,
		0.478511, -0.869360, 0.123451,
		0.819334, 0.492623, 0.293281,
		26.079817, 37.304317, 54.606514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619699, 36.788216, 55.131989>,  <25.506283, 36.959484, 54.401215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619699, 36.788216, 55.131989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.810919, 37.136341, 55.084633>,  <25.925650, 37.345219, 55.056217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.810919, 37.136341, 55.084633>,  <25.619699, 36.788216, 55.131989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810919, 37.136341, 55.084633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189509, 0.233818, 0.953633,
		0.857646, -0.433445, 0.276709,
		0.478047, 0.870318, -0.118392,
		25.954332, 37.397438, 55.049114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113598, 36.828083, 55.636772>,  <25.619699, 36.788216, 55.131989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113598, 36.828083, 55.636772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.032774, 37.199871, 55.513313>,  <25.984280, 37.422943, 55.439240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.032774, 37.199871, 55.513313>,  <26.113598, 36.828083, 55.636772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032774, 37.199871, 55.513313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032485, 0.321335, 0.946408,
		0.978834, 0.181205, -0.095123,
		-0.202061, 0.929467, -0.308647,
		25.972157, 37.478710, 55.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466112, 37.271183, 56.071930>,  <26.113598, 36.828083, 55.636772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466112, 37.271183, 56.071930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.226547, 37.547169, 55.909325>,  <26.082808, 37.712761, 55.811764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.226547, 37.547169, 55.909325>,  <26.466112, 37.271183, 56.071930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226547, 37.547169, 55.909325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075106, 0.456986, 0.886297,
		0.797285, 0.561346, -0.221874,
		-0.598912, 0.689967, -0.406509,
		26.046873, 37.754158, 55.787373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609438, 37.945087, 56.289867>,  <26.466112, 37.271183, 56.071930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609438, 37.945087, 56.289867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.223860, 37.984112, 56.190842>,  <25.992514, 38.007526, 56.131424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.223860, 37.984112, 56.190842>,  <26.609438, 37.945087, 56.289867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223860, 37.984112, 56.190842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181258, 0.440404, 0.879312,
		0.194817, 0.892483, -0.406842,
		-0.963946, 0.097561, -0.247568,
		25.934675, 38.013382, 56.116570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334967, 38.735008, 56.386120>,  <26.609438, 37.945087, 56.289867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334967, 38.735008, 56.386120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.020824, 38.487415, 56.382748>,  <25.832338, 38.338860, 56.380726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.020824, 38.487415, 56.382748>,  <26.334967, 38.735008, 56.386120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020824, 38.487415, 56.382748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393235, 0.488321, 0.779044,
		-0.478102, 0.615141, -0.626913,
		-0.785357, -0.618986, -0.008428,
		25.785217, 38.301720, 56.380219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774500, 39.154617, 56.459141>,  <26.334967, 38.735008, 56.386120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774500, 39.154617, 56.459141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.626194, 38.794746, 56.551331>,  <25.537210, 38.578823, 56.606644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.626194, 38.794746, 56.551331>,  <25.774500, 39.154617, 56.459141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626194, 38.794746, 56.551331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352764, 0.365986, 0.861169,
		-0.859123, 0.237988, -0.453068,
		-0.370764, -0.899676, 0.230473,
		25.514965, 38.524845, 56.620472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035278, 39.278492, 56.671700>,  <25.774500, 39.154617, 56.459141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035278, 39.278492, 56.671700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.154324, 38.923622, 56.812748>,  <25.225752, 38.710701, 56.897377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.154324, 38.923622, 56.812748>,  <25.035278, 39.278492, 56.671700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154324, 38.923622, 56.812748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353503, 0.240693, 0.903937,
		-0.886826, -0.393677, -0.241987,
		0.297614, -0.887179, 0.352619,
		25.243608, 38.657467, 56.918533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406004, 39.008553, 56.940681>,  <25.035278, 39.278492, 56.671700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406004, 39.008553, 56.940681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.724142, 38.833218, 57.108150>,  <24.915026, 38.728016, 57.208633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.724142, 38.833218, 57.108150>,  <24.406004, 39.008553, 56.940681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724142, 38.833218, 57.108150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371915, 0.192519, 0.908083,
		-0.478649, -0.877951, -0.009905,
		0.795345, -0.438336, 0.418672,
		24.962746, 38.701717, 57.233753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230062, 38.645996, 57.570969>,  <24.406004, 39.008553, 56.940681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230062, 38.645996, 57.570969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.620333, 38.719006, 57.619537>,  <24.854494, 38.762810, 57.648678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.620333, 38.719006, 57.619537>,  <24.230062, 38.645996, 57.570969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620333, 38.719006, 57.619537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142838, 0.109134, 0.983711,
		0.166304, -0.977125, 0.132551,
		0.975674, 0.182528, 0.121421,
		24.913034, 38.773762, 57.655964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.283173, 38.411736, 58.216511>,  <24.230062, 38.645996, 57.570969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.283173, 38.411736, 58.216511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.645050, 38.580807, 58.195084>,  <24.862177, 38.682251, 58.182228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.645050, 38.580807, 58.195084>,  <24.283173, 38.411736, 58.216511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645050, 38.580807, 58.195084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029148, 0.186843, 0.981957,
		0.425063, -0.886810, 0.181356,
		0.904694, 0.422679, -0.053571,
		24.916458, 38.707611, 58.179012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781925, 37.938610, 58.594959>,  <24.283173, 38.411736, 58.216511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781925, 37.938610, 58.594959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.884027, 38.324856, 58.575230>,  <24.945290, 38.556602, 58.563393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.884027, 38.324856, 58.575230>,  <24.781925, 37.938610, 58.594959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884027, 38.324856, 58.575230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206920, -0.004725, 0.978346,
		0.944472, -0.259936, -0.201011,
		0.255257, 0.965614, -0.049323,
		24.960606, 38.614540, 58.560432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306339, 37.995853, 59.076092>,  <24.781925, 37.938610, 58.594959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306339, 37.995853, 59.076092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.156199, 38.366337, 59.062000>,  <25.066114, 38.588627, 59.053547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.156199, 38.366337, 59.062000>,  <25.306339, 37.995853, 59.076092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156199, 38.366337, 59.062000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093846, 0.075787, 0.992698,
		0.922118, 0.369307, -0.115369,
		-0.375354, 0.926212, -0.035227,
		25.043592, 38.644199, 59.051434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755865, 38.508175, 59.205055>,  <25.306339, 37.995853, 59.076092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755865, 38.508175, 59.205055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.032442, 38.546490, 59.491478>,  <26.198389, 38.569477, 59.663330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.032442, 38.546490, 59.491478>,  <25.755865, 38.508175, 59.205055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032442, 38.546490, 59.491478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722428, -0.094645, -0.684938,
		0.002163, 0.990892, -0.134641,
		0.691443, 0.095786, 0.716053,
		26.239876, 38.575226, 59.706295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249649, 38.949234, 58.926819>,  <25.755865, 38.508175, 59.205055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249649, 38.949234, 58.926819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.440378, 38.739307, 59.208870>,  <26.554815, 38.613354, 59.378101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.440378, 38.739307, 59.208870>,  <26.249649, 38.949234, 58.926819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440378, 38.739307, 59.208870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666797, -0.306728, -0.679190,
		0.572731, 0.794034, 0.203688,
		0.476824, -0.524812, 0.705132,
		26.583426, 38.581863, 59.420410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926683, 39.135162, 58.994904>,  <26.249649, 38.949234, 58.926819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926683, 39.135162, 58.994904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.958231, 38.782696, 59.181374>,  <26.977160, 38.571217, 59.293255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.958231, 38.782696, 59.181374>,  <26.926683, 39.135162, 58.994904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958231, 38.782696, 59.181374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758357, -0.250496, -0.601787,
		0.647051, 0.400991, 0.648484,
		0.078869, -0.881169, 0.466178,
		26.981892, 38.518345, 59.321228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717825, 38.895554, 59.124245>,  <26.926683, 39.135162, 58.994904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717825, 38.895554, 59.124245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.545380, 38.538502, 59.176937>,  <27.441912, 38.324272, 59.208553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.545380, 38.538502, 59.176937>,  <27.717825, 38.895554, 59.124245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545380, 38.538502, 59.176937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820852, -0.448615, -0.353479,
		0.374623, -0.044256, 0.926121,
		-0.431115, -0.892629, 0.131733,
		27.416044, 38.270714, 59.216457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306217, 38.510666, 59.421577>,  <27.717825, 38.895554, 59.124245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306217, 38.510666, 59.421577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.019464, 38.263531, 59.292358>,  <27.847412, 38.115250, 59.214828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.019464, 38.263531, 59.292358>,  <28.306217, 38.510666, 59.421577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019464, 38.263531, 59.292358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696338, -0.657459, -0.287857,
		-0.034539, -0.431307, 0.901544,
		-0.716882, -0.617837, -0.323044,
		27.804399, 38.078178, 59.195446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493887, 37.907566, 59.622242>,  <28.306217, 38.510666, 59.421577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493887, 37.907566, 59.622242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.215387, 37.823429, 59.347729>,  <28.048286, 37.772945, 59.183022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.215387, 37.823429, 59.347729>,  <28.493887, 37.907566, 59.622242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215387, 37.823429, 59.347729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571110, -0.741510, -0.352130,
		-0.434819, -0.637116, 0.636408,
		-0.696251, -0.210347, -0.686287,
		28.006512, 37.760326, 59.141842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366949, 37.153152, 59.686283>,  <28.493887, 37.907566, 59.622242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366949, 37.153152, 59.686283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.298199, 37.289112, 59.316433>,  <28.256948, 37.370689, 59.094524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.298199, 37.289112, 59.316433>,  <28.366949, 37.153152, 59.686283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298199, 37.289112, 59.316433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465592, -0.799117, -0.380312,
		-0.868149, -0.495863, -0.020906,
		-0.171876, 0.339901, -0.924622,
		28.246635, 37.391083, 59.039047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143761, 36.574055, 59.275688>,  <28.366949, 37.153152, 59.686283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143761, 36.574055, 59.275688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.263411, 36.851597, 59.013668>,  <28.335201, 37.018124, 58.856457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.263411, 36.851597, 59.013668>,  <28.143761, 36.574055, 59.275688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263411, 36.851597, 59.013668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325529, -0.719501, -0.613473,
		-0.896970, -0.029732, -0.441090,
		0.299125, 0.693855, -0.655050,
		28.353148, 37.059753, 58.817154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812086, 36.452629, 58.755260>,  <28.143761, 36.574055, 59.275688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812086, 36.452629, 58.755260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.119806, 36.672089, 58.624313>,  <28.304438, 36.803764, 58.545746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.119806, 36.672089, 58.624313>,  <27.812086, 36.452629, 58.755260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119806, 36.672089, 58.624313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132230, -0.638034, -0.758570,
		-0.625056, 0.540279, -0.563386,
		0.769298, 0.548645, -0.327365,
		28.350595, 36.836681, 58.526104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827147, 36.199451, 58.141487>,  <27.812086, 36.452629, 58.755260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827147, 36.199451, 58.141487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.161375, 36.418736, 58.155792>,  <28.361912, 36.550308, 58.164375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.161375, 36.418736, 58.155792>,  <27.827147, 36.199451, 58.141487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161375, 36.418736, 58.155792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418376, -0.592783, -0.688164,
		-0.356060, 0.589975, -0.724673,
		0.835573, 0.548214, 0.035765,
		28.412046, 36.583199, 58.166523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992619, 36.289864, 57.454918>,  <27.827147, 36.199451, 58.141487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992619, 36.289864, 57.454918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.334715, 36.347527, 57.654026>,  <28.539972, 36.382126, 57.773491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.334715, 36.347527, 57.654026>,  <27.992619, 36.289864, 57.454918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334715, 36.347527, 57.654026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468491, -0.625685, -0.623726,
		0.221534, 0.766639, -0.602650,
		0.855242, 0.144160, 0.497774,
		28.591288, 36.390774, 57.803360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425602, 36.582325, 56.902004>,  <27.992619, 36.289864, 57.454918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425602, 36.582325, 56.902004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.668453, 36.436962, 57.184658>,  <28.814163, 36.349743, 57.354248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.668453, 36.436962, 57.184658>,  <28.425602, 36.582325, 56.902004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668453, 36.436962, 57.184658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418842, -0.609356, -0.673244,
		0.675255, 0.704712, -0.217745,
		0.607127, -0.363411, 0.706633,
		28.850592, 36.327938, 57.396648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064363, 36.572922, 56.628246>,  <28.425602, 36.582325, 56.902004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064363, 36.572922, 56.628246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.094086, 36.289486, 56.908924>,  <29.111919, 36.119423, 57.077332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.094086, 36.289486, 56.908924>,  <29.064363, 36.572922, 56.628246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094086, 36.289486, 56.908924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583036, -0.539984, -0.607030,
		0.809041, 0.454219, 0.373012,
		0.074304, -0.708591, 0.701696,
		29.116377, 36.076908, 57.119434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715961, 36.511692, 56.654823>,  <29.064363, 36.572922, 56.628246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715961, 36.511692, 56.654823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578028, 36.175186, 56.821369>,  <29.495268, 35.973282, 56.921295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578028, 36.175186, 56.821369>,  <29.715961, 36.511692, 56.654823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578028, 36.175186, 56.821369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490411, -0.539686, -0.684277,
		0.800367, -0.031771, 0.598668,
		-0.344834, -0.841266, 0.416366,
		29.474577, 35.922806, 56.946278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209753, 36.356724, 57.276386>,  <29.715961, 36.511692, 56.654823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209753, 36.356724, 57.276386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.567829, 36.374435, 57.453777>,  <30.782675, 36.385063, 57.560211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.567829, 36.374435, 57.453777>,  <30.209753, 36.356724, 57.276386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567829, 36.374435, 57.453777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392302, 0.550509, 0.736912,
		-0.211510, -0.833654, 0.510181,
		0.895189, 0.044281, 0.443482,
		30.836386, 36.387718, 57.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081078, 36.156670, 57.937881>,  <30.209753, 36.356724, 57.276386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081078, 36.156670, 57.937881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.435551, 36.329727, 58.004215>,  <30.648235, 36.433559, 58.044018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.435551, 36.329727, 58.004215>,  <30.081078, 36.156670, 57.937881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435551, 36.329727, 58.004215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365958, 0.434045, 0.823213,
		0.284173, -0.790208, 0.542971,
		0.886184, 0.432639, 0.165839,
		30.701405, 36.459518, 58.053967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295841, 35.919300, 58.569424>,  <30.081078, 36.156670, 57.937881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295841, 35.919300, 58.569424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489962, 36.259705, 58.489166>,  <30.606434, 36.463947, 58.441013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489962, 36.259705, 58.489166>,  <30.295841, 35.919300, 58.569424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489962, 36.259705, 58.489166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300956, 0.378040, 0.875506,
		0.820919, -0.364501, 0.439581,
		0.485302, 0.851014, -0.200641,
		30.635551, 36.515007, 58.428974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724298, 36.023392, 59.124630>,  <30.295841, 35.919300, 58.569424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724298, 36.023392, 59.124630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.690109, 36.380985, 58.948681>,  <30.669596, 36.595539, 58.843109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.690109, 36.380985, 58.948681>,  <30.724298, 36.023392, 59.124630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690109, 36.380985, 58.948681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160346, 0.423394, 0.891643,
		0.983353, 0.146746, 0.107157,
		-0.085475, 0.893982, -0.439876,
		30.664467, 36.649181, 58.816719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017271, 36.365948, 59.640656>,  <30.724298, 36.023392, 59.124630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017271, 36.365948, 59.640656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827600, 36.644974, 59.425789>,  <30.713799, 36.812389, 59.296867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827600, 36.644974, 59.425789>,  <31.017271, 36.365948, 59.640656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827600, 36.644974, 59.425789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171059, 0.525504, 0.833417,
		0.863651, 0.487076, -0.129858,
		-0.474178, 0.697569, -0.537171,
		30.685347, 36.854244, 59.264637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267393, 36.981251, 59.865288>,  <31.017271, 36.365948, 59.640656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267393, 36.981251, 59.865288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.907190, 37.054909, 59.707718>,  <30.691069, 37.099102, 59.613174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.907190, 37.054909, 59.707718>,  <31.267393, 36.981251, 59.865288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907190, 37.054909, 59.707718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221298, 0.585747, 0.779697,
		0.374316, 0.789298, -0.486719,
		-0.900508, 0.184143, -0.393925,
		30.637037, 37.110153, 59.589539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098274, 37.562145, 60.194252>,  <31.267393, 36.981251, 59.865288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098274, 37.562145, 60.194252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.742371, 37.456753, 60.045170>,  <30.528830, 37.393517, 59.955719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.742371, 37.456753, 60.045170>,  <31.098274, 37.562145, 60.194252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742371, 37.456753, 60.045170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455871, 0.553553, 0.696965,
		0.022673, 0.790035, -0.612642,
		-0.889757, -0.263483, -0.372705,
		30.475443, 37.377708, 59.933357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374582, 38.282524, 59.946655>,  <31.098274, 37.562145, 60.194252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374582, 38.282524, 59.946655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.670223, 38.441200, 60.164413>,  <31.847607, 38.536407, 60.295067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.670223, 38.441200, 60.164413>,  <31.374582, 38.282524, 59.946655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670223, 38.441200, 60.164413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663433, -0.288851, -0.690233,
		-0.116562, 0.871321, -0.476669,
		0.739101, 0.396693, 0.544394,
		31.891954, 38.560207, 60.327732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782059, 38.723110, 59.475548>,  <31.374582, 38.282524, 59.946655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782059, 38.723110, 59.475548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037323, 38.654625, 59.775799>,  <32.190483, 38.613533, 59.955948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037323, 38.654625, 59.775799>,  <31.782059, 38.723110, 59.475548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037323, 38.654625, 59.775799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691271, -0.301824, -0.656541,
		0.338963, 0.937864, -0.074260,
		0.638160, -0.171209, 0.750626,
		32.228771, 38.603264, 60.000988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405750, 39.177944, 59.358822>,  <31.782059, 38.723110, 59.475548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405750, 39.177944, 59.358822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.487568, 38.856468, 59.582336>,  <32.536659, 38.663582, 59.716446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.487568, 38.856468, 59.582336>,  <32.405750, 39.177944, 59.358822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487568, 38.856468, 59.582336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678432, -0.295109, -0.672786,
		0.705614, 0.516716, 0.484885,
		0.204545, -0.803689, 0.558789,
		32.548931, 38.615360, 59.749973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159477, 39.259525, 59.432575>,  <32.405750, 39.177944, 59.358822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159477, 39.259525, 59.432575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047527, 38.882278, 59.504349>,  <32.980358, 38.655930, 59.547413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047527, 38.882278, 59.504349>,  <33.159477, 39.259525, 59.432575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047527, 38.882278, 59.504349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668338, -0.325580, -0.668821,
		0.689198, -0.067265, 0.721444,
		-0.279876, -0.943119, 0.179433,
		32.963566, 38.599342, 59.558178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780800, 38.917542, 59.437794>,  <33.159477, 39.259525, 59.432575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780800, 38.917542, 59.437794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.514698, 38.621792, 59.396297>,  <33.355038, 38.444340, 59.371399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.514698, 38.621792, 59.396297>,  <33.780800, 38.917542, 59.437794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514698, 38.621792, 59.396297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618101, -0.467460, -0.632007,
		0.418798, -0.484565, 0.767988,
		-0.665252, -0.739377, -0.103739,
		33.315121, 38.399979, 59.365177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202435, 38.369572, 59.382164>,  <33.780800, 38.917542, 59.437794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202435, 38.369572, 59.382164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856068, 38.207279, 59.265160>,  <33.648247, 38.109901, 59.194958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856068, 38.207279, 59.265160>,  <34.202435, 38.369572, 59.382164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856068, 38.207279, 59.265160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499011, -0.660718, -0.560748,
		0.034246, -0.631530, 0.774595,
		-0.865918, -0.405735, -0.292513,
		33.596291, 38.085560, 59.177406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334366, 37.634632, 59.425968>,  <34.202435, 38.369572, 59.382164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334366, 37.634632, 59.425968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034584, 37.680965, 59.165230>,  <33.854713, 37.708767, 59.008785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034584, 37.680965, 59.165230>,  <34.334366, 37.634632, 59.425968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034584, 37.680965, 59.165230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432603, -0.659636, -0.614602,
		-0.501172, -0.742606, 0.444256,
		-0.749454, 0.115835, -0.651845,
		33.809750, 37.715717, 58.969677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.526470, 41.786583, 58.801624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377125, 41.417339, 58.764812>,  <26.287518, 41.195793, 58.742725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377125, 41.417339, 58.764812>,  <26.526470, 41.786583, 58.801624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377125, 41.417339, 58.764812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433113, -0.085722, -0.897254,
		0.820373, -0.374863, 0.431816,
		-0.373363, -0.923108, -0.092034,
		26.265116, 41.140408, 58.737202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039597, 41.352051, 58.573467>,  <26.526470, 41.786583, 58.801624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039597, 41.352051, 58.573467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732153, 41.130348, 58.445690>,  <26.547688, 40.997326, 58.369022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732153, 41.130348, 58.445690>,  <27.039597, 41.352051, 58.573467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732153, 41.130348, 58.445690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503911, -0.216929, -0.836071,
		0.394100, -0.803582, 0.446028,
		-0.768608, -0.554254, -0.319443,
		26.501570, 40.964073, 58.349857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340374, 40.671089, 58.352074>,  <27.039597, 41.352051, 58.573467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340374, 40.671089, 58.352074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999060, 40.753407, 58.160427>,  <26.794271, 40.802799, 58.045441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999060, 40.753407, 58.160427>,  <27.340374, 40.671089, 58.352074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999060, 40.753407, 58.160427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407128, -0.311164, -0.858734,
		-0.325825, -0.927803, 0.181717,
		-0.853279, 0.205815, -0.479119,
		26.743074, 40.815147, 58.016693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237825, 40.116615, 57.901993>,  <27.340374, 40.671089, 58.352074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237825, 40.116615, 57.901993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984686, 40.381401, 57.741341>,  <26.832802, 40.540272, 57.644951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984686, 40.381401, 57.741341>,  <27.237825, 40.116615, 57.901993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984686, 40.381401, 57.741341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203754, -0.358051, -0.911199,
		-0.746987, -0.658482, 0.091713,
		-0.632846, 0.661967, -0.401628,
		26.794832, 40.579990, 57.620853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952999, 39.769417, 57.424675>,  <27.237825, 40.116615, 57.901993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952999, 39.769417, 57.424675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847818, 40.131283, 57.290554>,  <26.784710, 40.348404, 57.210079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847818, 40.131283, 57.290554>,  <26.952999, 39.769417, 57.424675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847818, 40.131283, 57.290554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259790, -0.268311, -0.927642,
		-0.929175, -0.331035, -0.164471,
		-0.262952, 0.904669, -0.335307,
		26.768932, 40.402683, 57.189960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575966, 39.749439, 56.726215>,  <26.952999, 39.769417, 57.424675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575966, 39.749439, 56.726215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699389, 40.128380, 56.760445>,  <26.773441, 40.355743, 56.780983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699389, 40.128380, 56.760445>,  <26.575966, 39.749439, 56.726215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699389, 40.128380, 56.760445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224545, 0.014879, -0.974350,
		-0.924323, 0.319856, -0.208132,
		0.308555, 0.947349, 0.085575,
		26.791954, 40.412586, 56.786118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235254, 40.101936, 56.216373>,  <26.575966, 39.749439, 56.726215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235254, 40.101936, 56.216373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564909, 40.310131, 56.305721>,  <26.762701, 40.435047, 56.359329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564909, 40.310131, 56.305721>,  <26.235254, 40.101936, 56.216373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564909, 40.310131, 56.305721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313106, -0.090023, -0.945442,
		-0.471979, 0.849112, -0.237158,
		0.824136, 0.520485, 0.223373,
		26.812149, 40.466278, 56.372734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317373, 40.497776, 55.575478>,  <26.235254, 40.101936, 56.216373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317373, 40.497776, 55.575478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677214, 40.500526, 55.750141>,  <26.893118, 40.502178, 55.854939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677214, 40.500526, 55.750141>,  <26.317373, 40.497776, 55.575478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677214, 40.500526, 55.750141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436072, -0.068115, -0.897330,
		0.023574, 0.997654, -0.064275,
		0.899603, 0.006875, 0.436655,
		26.947094, 40.502590, 55.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838516, 40.862278, 55.114956>,  <26.317373, 40.497776, 55.575478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838516, 40.862278, 55.114956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090759, 40.664314, 55.354088>,  <27.242105, 40.545536, 55.497566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090759, 40.664314, 55.354088>,  <26.838516, 40.862278, 55.114956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090759, 40.664314, 55.354088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618741, -0.144403, -0.772210,
		0.468502, 0.856862, 0.215159,
		0.630608, -0.494909, 0.597829,
		27.279942, 40.515842, 55.533436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485987, 41.119617, 54.889641>,  <26.838516, 40.862278, 55.114956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485987, 41.119617, 54.889641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575579, 40.775040, 55.071960>,  <27.629333, 40.568295, 55.181351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575579, 40.775040, 55.071960>,  <27.485987, 41.119617, 54.889641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575579, 40.775040, 55.071960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674851, -0.200329, -0.710242,
		0.703142, 0.466673, 0.536476,
		0.223979, -0.861443, 0.455795,
		27.642773, 40.516605, 55.208698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284765, 41.063759, 54.987007>,  <27.485987, 41.119617, 54.889641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284765, 41.063759, 54.987007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142616, 40.691711, 55.024075>,  <28.057327, 40.468483, 55.046314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142616, 40.691711, 55.024075>,  <28.284765, 41.063759, 54.987007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142616, 40.691711, 55.024075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718206, -0.335161, -0.609792,
		0.598238, -0.150150, 0.787125,
		-0.355374, -0.930119, 0.092667,
		28.036003, 40.412674, 55.051876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878618, 40.562290, 55.194206>,  <28.284765, 41.063759, 54.987007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878618, 40.562290, 55.194206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602722, 40.321934, 55.032619>,  <28.437185, 40.177719, 54.935669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602722, 40.321934, 55.032619>,  <28.878618, 40.562290, 55.194206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602722, 40.321934, 55.032619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687662, -0.368981, -0.625279,
		0.226668, -0.709072, 0.667711,
		-0.689741, -0.600890, -0.403966,
		28.395800, 40.141666, 54.911430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446447, 41.118519, 55.381355>,  <28.878618, 40.562290, 55.194206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446447, 41.118519, 55.381355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831629, 41.222591, 55.409718>,  <30.062737, 41.285034, 55.426735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831629, 41.222591, 55.409718>,  <29.446447, 41.118519, 55.381355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831629, 41.222591, 55.409718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162795, 0.351246, 0.922022,
		0.214987, -0.899407, 0.380590,
		0.962953, 0.260181, 0.070906,
		30.120514, 41.300648, 55.430988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602533, 40.960041, 56.112049>,  <29.446447, 41.118519, 55.381355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602533, 40.960041, 56.112049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899103, 41.208118, 56.009560>,  <30.077045, 41.356964, 55.948067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899103, 41.208118, 56.009560>,  <29.602533, 40.960041, 56.112049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899103, 41.208118, 56.009560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008151, 0.373474, 0.927605,
		0.670988, -0.689836, 0.271848,
		0.741424, 0.620196, -0.256219,
		30.121531, 41.394176, 55.932693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809654, 41.181232, 56.735035>,  <29.602533, 40.960041, 56.112049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809654, 41.181232, 56.735035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023981, 41.428165, 56.504627>,  <30.152578, 41.576324, 56.366383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023981, 41.428165, 56.504627>,  <29.809654, 41.181232, 56.735035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023981, 41.428165, 56.504627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264936, 0.524839, 0.808921,
		0.801691, -0.586044, 0.117665,
		0.535818, 0.617330, -0.576023,
		30.184727, 41.613365, 56.331821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461088, 41.143127, 57.018501>,  <29.809654, 41.181232, 56.735035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461088, 41.143127, 57.018501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400221, 41.482445, 56.815628>,  <30.363701, 41.686035, 56.693905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400221, 41.482445, 56.815628>,  <30.461088, 41.143127, 57.018501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400221, 41.482445, 56.815628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283208, 0.529068, 0.799925,
		0.946909, -0.021914, -0.320753,
		-0.152170, 0.848296, -0.507186,
		30.354570, 41.736935, 56.663471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108013, 41.560268, 57.017349>,  <30.461088, 41.143127, 57.018501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108013, 41.560268, 57.017349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780607, 41.784534, 56.967243>,  <30.584164, 41.919094, 56.937180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780607, 41.784534, 56.967243>,  <31.108013, 41.560268, 57.017349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780607, 41.784534, 56.967243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099275, 0.352804, 0.930416,
		0.565841, 0.749124, -0.344436,
		-0.818516, 0.560662, -0.125262,
		30.535053, 41.952732, 56.929665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363403, 42.216808, 57.251602>,  <31.108013, 41.560268, 57.017349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363403, 42.216808, 57.251602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964746, 42.190178, 57.270672>,  <30.725552, 42.174198, 57.282116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964746, 42.190178, 57.270672>,  <31.363403, 42.216808, 57.251602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964746, 42.190178, 57.270672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048688, -0.013634, 0.998721,
		-0.065845, 0.997688, 0.016830,
		-0.996641, -0.066580, 0.047677,
		30.665754, 42.170204, 57.284973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094397, 42.834644, 57.632050>,  <31.363403, 42.216808, 57.251602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094397, 42.834644, 57.632050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788063, 42.580013, 57.668423>,  <30.604263, 42.427235, 57.690247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788063, 42.580013, 57.668423>,  <31.094397, 42.834644, 57.632050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788063, 42.580013, 57.668423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114857, 0.274555, 0.954687,
		-0.632695, 0.720690, -0.283379,
		-0.765836, -0.636574, 0.090933,
		30.558311, 42.389042, 57.695702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633850, 43.198040, 58.187603>,  <31.094397, 42.834644, 57.632050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633850, 43.198040, 58.187603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524601, 42.816010, 58.141594>,  <30.459051, 42.586792, 58.113987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524601, 42.816010, 58.141594>,  <30.633850, 43.198040, 58.187603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524601, 42.816010, 58.141594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222161, -0.053715, 0.973529,
		-0.935974, 0.291448, -0.197510,
		-0.273124, -0.955077, -0.115025,
		30.442663, 42.529488, 58.107086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145042, 43.100182, 58.765686>,  <30.633850, 43.198040, 58.187603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145042, 43.100182, 58.765686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237061, 42.735683, 58.629036>,  <30.292273, 42.516983, 58.547047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237061, 42.735683, 58.629036>,  <30.145042, 43.100182, 58.765686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237061, 42.735683, 58.629036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108208, -0.372817, 0.921574,
		-0.967145, -0.175038, -0.184369,
		0.230046, -0.911246, -0.341628,
		30.306074, 42.462311, 58.526546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708618, 42.566410, 59.146088>,  <30.145042, 43.100182, 58.765686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708618, 42.566410, 59.146088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034348, 42.374054, 59.016090>,  <30.229784, 42.258640, 58.938091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034348, 42.374054, 59.016090>,  <29.708618, 42.566410, 59.146088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034348, 42.374054, 59.016090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029917, -0.593970, 0.803930,
		-0.579632, -0.644941, -0.498074,
		0.814329, -0.480885, -0.324989,
		30.278645, 42.229786, 58.918591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570686, 41.879326, 59.408787>,  <29.708618, 42.566410, 59.146088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570686, 41.879326, 59.408787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954979, 41.916458, 59.304192>,  <30.185555, 41.938736, 59.241436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954979, 41.916458, 59.304192>,  <29.570686, 41.879326, 59.408787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954979, 41.916458, 59.304192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275840, -0.421659, 0.863780,
		-0.030071, -0.901990, -0.430709,
		0.960733, 0.092832, -0.261484,
		30.243198, 41.944309, 59.225746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962229, 41.225124, 59.579014>,  <29.570686, 41.879326, 59.408787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962229, 41.225124, 59.579014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238642, 41.513939, 59.565475>,  <30.404490, 41.687225, 59.557350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238642, 41.513939, 59.565475>,  <29.962229, 41.225124, 59.579014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238642, 41.513939, 59.565475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326973, -0.270482, 0.905499,
		0.644644, -0.636795, -0.422997,
		0.691030, 0.722033, -0.033850,
		30.445951, 41.730549, 59.555321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602409, 40.921101, 59.895840>,  <29.962229, 41.225124, 59.579014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602409, 40.921101, 59.895840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699608, 41.309082, 59.900570>,  <30.757927, 41.541870, 59.903408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699608, 41.309082, 59.900570>,  <30.602409, 40.921101, 59.895840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699608, 41.309082, 59.900570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506667, -0.137309, 0.851137,
		0.827189, -0.200829, -0.524810,
		0.242994, 0.969956, 0.011827,
		30.772507, 41.600067, 59.904118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377069, 41.015305, 60.010220>,  <30.602409, 40.921101, 59.895840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377069, 41.015305, 60.010220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182592, 41.337372, 60.146057>,  <31.065907, 41.530613, 60.227558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182592, 41.337372, 60.146057>,  <31.377069, 41.015305, 60.010220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182592, 41.337372, 60.146057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402454, -0.138631, 0.904882,
		0.775661, 0.576615, -0.256642,
		-0.486190, 0.805169, 0.339592,
		31.036736, 41.578922, 60.247936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285109, 41.224342, 60.659061>,  <31.377069, 41.015305, 60.010220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285109, 41.224342, 60.659061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050573, 41.055912, 60.935871>,  <30.909851, 40.954853, 61.101955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050573, 41.055912, 60.935871>,  <31.285109, 41.224342, 60.659061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050573, 41.055912, 60.935871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367501, -0.899583, -0.235996,
		0.721906, 0.115946, 0.682208,
		-0.586340, -0.421079, 0.692025,
		30.874672, 40.929588, 61.143478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722513, 40.860058, 61.108013>,  <31.285109, 41.224342, 60.659061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722513, 40.860058, 61.108013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357801, 40.699322, 61.141911>,  <31.138975, 40.602879, 61.162251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357801, 40.699322, 61.141911>,  <31.722513, 40.860058, 61.108013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357801, 40.699322, 61.141911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398990, -0.915644, -0.049011,
		0.097292, -0.010875, 0.995196,
		-0.911779, -0.401842, 0.084746,
		31.084269, 40.578770, 61.167336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782040, 40.378181, 61.702991>,  <31.722513, 40.860058, 61.108013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782040, 40.378181, 61.702991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516945, 40.243183, 61.435596>,  <31.357889, 40.162186, 61.275158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516945, 40.243183, 61.435596>,  <31.782040, 40.378181, 61.702991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516945, 40.243183, 61.435596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446319, -0.894826, 0.009287,
		-0.601316, -0.292205, 0.743664,
		-0.662735, -0.337496, -0.668490,
		31.318125, 40.141933, 61.235050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596769, 39.631088, 61.949776>,  <31.782040, 40.378181, 61.702991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596769, 39.631088, 61.949776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440802, 39.670185, 61.583515>,  <31.347221, 39.693642, 61.363758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440802, 39.670185, 61.583515>,  <31.596769, 39.631088, 61.949776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440802, 39.670185, 61.583515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239898, -0.949233, -0.203485,
		-0.889051, -0.299005, 0.346677,
		-0.389920, 0.097742, -0.915647,
		31.323826, 39.699509, 61.308823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351353, 38.916248, 61.876183>,  <31.596769, 39.631088, 61.949776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351353, 38.916248, 61.876183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384890, 39.082432, 61.513885>,  <31.405012, 39.182144, 61.296509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384890, 39.082432, 61.513885>,  <31.351353, 38.916248, 61.876183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384890, 39.082432, 61.513885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218418, -0.894498, -0.390086,
		-0.972247, -0.165124, -0.165743,
		0.083844, 0.415461, -0.905738,
		31.410044, 39.207069, 61.242165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322702, 38.303043, 61.436733>,  <31.351353, 38.916248, 61.876183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322702, 38.303043, 61.436733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423134, 38.611450, 61.202644>,  <31.483393, 38.796494, 61.062191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423134, 38.611450, 61.202644>,  <31.322702, 38.303043, 61.436733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423134, 38.611450, 61.202644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534222, -0.614551, -0.580461,
		-0.807197, -0.166897, -0.566197,
		0.251079, 0.771021, -0.585223,
		31.498457, 38.842758, 61.027077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162050, 38.161171, 60.719017>,  <31.322702, 38.303043, 61.436733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162050, 38.161171, 60.719017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439631, 38.447994, 60.692924>,  <31.606178, 38.620090, 60.677269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439631, 38.447994, 60.692924>,  <31.162050, 38.161171, 60.719017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439631, 38.447994, 60.692924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482132, -0.530053, -0.697562,
		-0.534774, 0.452621, -0.713548,
		0.693949, 0.717063, -0.065236,
		31.647816, 38.663113, 60.673355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637020, 38.126095, 60.334106>,  <31.162050, 38.161171, 60.719017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637020, 38.126095, 60.334106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384882, 37.827202, 60.249905>,  <30.233599, 37.647865, 60.199383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384882, 37.827202, 60.249905>,  <30.637020, 38.126095, 60.334106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384882, 37.827202, 60.249905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663706, 0.378065, 0.645415,
		-0.402687, 0.546550, -0.734252,
		-0.630346, -0.747228, -0.210507,
		30.195778, 37.603035, 60.186752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081923, 38.509499, 60.098862>,  <30.637020, 38.126095, 60.334106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081923, 38.509499, 60.098862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968069, 38.148033, 60.226845>,  <29.899757, 37.931152, 60.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968069, 38.148033, 60.226845>,  <30.081923, 38.509499, 60.098862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968069, 38.148033, 60.226845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681158, 0.425499, 0.595797,
		-0.674542, -0.048355, -0.736651,
		-0.284634, -0.903666, 0.319955,
		29.882679, 37.876934, 60.322830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469027, 38.658783, 60.152252>,  <30.081923, 38.509499, 60.098862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469027, 38.658783, 60.152252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475098, 38.316257, 60.358742>,  <29.478741, 38.110741, 60.482635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475098, 38.316257, 60.358742>,  <29.469027, 38.658783, 60.152252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475098, 38.316257, 60.358742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785377, 0.309321, 0.536193,
		-0.618832, -0.413572, -0.667837,
		0.015179, -0.856317, 0.516227,
		29.479650, 38.059364, 60.513611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798311, 38.465385, 60.248890>,  <29.469027, 38.658783, 60.152252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798311, 38.465385, 60.248890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007065, 38.278271, 60.534214>,  <29.132317, 38.166000, 60.705410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007065, 38.278271, 60.534214>,  <28.798311, 38.465385, 60.248890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007065, 38.278271, 60.534214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659420, 0.309217, 0.685237,
		-0.541113, -0.827985, -0.147094,
		0.521882, -0.467788, 0.713311,
		29.163630, 38.137936, 60.748207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368294, 37.995548, 60.649670>,  <28.798311, 38.465385, 60.248890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368294, 37.995548, 60.649670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678534, 38.070023, 60.890926>,  <28.864677, 38.114708, 61.035679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678534, 38.070023, 60.890926>,  <28.368294, 37.995548, 60.649670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678534, 38.070023, 60.890926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624402, 0.366398, 0.689837,
		-0.092551, -0.911640, 0.400434,
		0.775600, 0.186186, 0.603140,
		28.911213, 38.125877, 61.071869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161701, 37.734940, 61.156750>,  <28.368294, 37.995548, 60.649670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161701, 37.734940, 61.156750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428444, 37.996349, 61.299973>,  <28.588490, 38.153194, 61.385906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428444, 37.996349, 61.299973>,  <28.161701, 37.734940, 61.156750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428444, 37.996349, 61.299973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725781, 0.460668, 0.510908,
		0.168947, -0.600573, 0.781517,
		0.666858, 0.653526, 0.358056,
		28.628502, 38.192406, 61.407391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001659, 37.785831, 61.896187>,  <28.161701, 37.734940, 61.156750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001659, 37.785831, 61.896187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206738, 38.116604, 61.803810>,  <28.329784, 38.315067, 61.748383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206738, 38.116604, 61.803810>,  <28.001659, 37.785831, 61.896187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206738, 38.116604, 61.803810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661791, 0.551987, 0.507290,
		0.546965, -0.107256, 0.830256,
		0.512700, 0.826926, -0.230937,
		28.360546, 38.364681, 61.734528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088303, 38.195084, 62.501247>,  <28.001659, 37.785831, 61.896187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088303, 38.195084, 62.501247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118265, 38.464424, 62.207039>,  <28.136242, 38.626030, 62.030514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118265, 38.464424, 62.207039>,  <28.088303, 38.195084, 62.501247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118265, 38.464424, 62.207039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611191, 0.613809, 0.499684,
		0.787931, 0.412114, 0.457523,
		0.074905, 0.673350, -0.735519,
		28.140738, 38.666428, 61.986382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317204, 38.740005, 62.850014>,  <28.088303, 38.195084, 62.501247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317204, 38.740005, 62.850014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152637, 38.891506, 62.518402>,  <28.053898, 38.982407, 62.319435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152637, 38.891506, 62.518402>,  <28.317204, 38.740005, 62.850014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152637, 38.891506, 62.518402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535169, 0.635884, 0.556099,
		0.737788, 0.672457, -0.058915,
		-0.411415, 0.378754, -0.829026,
		28.029213, 39.005131, 62.269695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.604610, 34.908070, 47.189312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638420, 35.294567, 47.286667>,  <36.658707, 35.526466, 47.345078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638420, 35.294567, 47.286667>,  <36.604610, 34.908070, 47.189312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638420, 35.294567, 47.286667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928278, -0.012420, 0.371679,
		0.362154, -0.257345, 0.895890,
		0.084522, 0.966240, 0.243385,
		36.663776, 35.584438, 47.359684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280201, 34.896313, 47.829361>,  <36.604610, 34.908070, 47.189312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280201, 34.896313, 47.829361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293251, 35.282848, 47.727280>,  <36.301083, 35.514771, 47.666031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293251, 35.282848, 47.727280>,  <36.280201, 34.896313, 47.829361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293251, 35.282848, 47.727280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787493, 0.182089, 0.588812,
		0.615460, 0.181758, 0.766924,
		0.032627, 0.966337, -0.255201,
		36.303040, 35.572750, 47.650719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261642, 35.267929, 48.428516>,  <36.280201, 34.896313, 47.829361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261642, 35.267929, 48.428516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126755, 35.515205, 48.144508>,  <36.045822, 35.663570, 47.974106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126755, 35.515205, 48.144508>,  <36.261642, 35.267929, 48.428516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126755, 35.515205, 48.144508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866132, 0.091820, 0.491309,
		0.368916, 0.780648, 0.504470,
		-0.337219, 0.618189, -0.710018,
		36.025589, 35.700661, 47.931503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147411, 35.806465, 48.760075>,  <36.261642, 35.267929, 48.428516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147411, 35.806465, 48.760075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912292, 35.851776, 48.439659>,  <35.771221, 35.878963, 48.247410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912292, 35.851776, 48.439659>,  <36.147411, 35.806465, 48.760075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912292, 35.851776, 48.439659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785504, 0.157023, 0.598605,
		0.193591, 0.981077, -0.003316,
		-0.587798, 0.113279, -0.801038,
		35.735954, 35.885761, 48.199348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652702, 36.310364, 48.998528>,  <36.147411, 35.806465, 48.760075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652702, 36.310364, 48.998528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485043, 36.149624, 48.672871>,  <35.384445, 36.053181, 48.477474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485043, 36.149624, 48.672871>,  <35.652702, 36.310364, 48.998528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485043, 36.149624, 48.672871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907788, 0.200588, 0.368354,
		0.015285, 0.893467, -0.448868,
		-0.419150, -0.401847, -0.814145,
		35.359299, 36.029068, 48.428627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126381, 36.740208, 48.863152>,  <35.652702, 36.310364, 48.998528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126381, 36.740208, 48.863152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044868, 36.398579, 48.671722>,  <34.995960, 36.193600, 48.556866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044868, 36.398579, 48.671722>,  <35.126381, 36.740208, 48.863152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044868, 36.398579, 48.671722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955410, 0.066797, 0.287627,
		-0.213688, 0.515844, -0.829604,
		-0.203785, -0.854074, -0.478569,
		34.983734, 36.142357, 48.528152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511456, 36.844189, 48.553791>,  <35.126381, 36.740208, 48.863152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511456, 36.844189, 48.553791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533669, 36.445347, 48.574581>,  <34.546997, 36.206043, 48.587055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533669, 36.445347, 48.574581>,  <34.511456, 36.844189, 48.553791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533669, 36.445347, 48.574581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968700, -0.041192, 0.244791,
		-0.241941, -0.063944, -0.968182,
		0.055534, -0.997103, 0.051977,
		34.550327, 36.146217, 48.590176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924149, 36.592224, 48.376930>,  <34.511456, 36.844189, 48.553791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924149, 36.592224, 48.376930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065723, 36.252747, 48.534130>,  <34.150669, 36.049061, 48.628448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065723, 36.252747, 48.534130>,  <33.924149, 36.592224, 48.376930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065723, 36.252747, 48.534130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891111, -0.178418, 0.417240,
		-0.283992, -0.497880, -0.819429,
		0.353936, -0.848695, 0.392997,
		34.171906, 35.998138, 48.652031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471603, 36.070042, 48.241825>,  <33.924149, 36.592224, 48.376930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471603, 36.070042, 48.241825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679268, 35.938869, 48.557529>,  <33.803867, 35.860168, 48.746952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679268, 35.938869, 48.557529>,  <33.471603, 36.070042, 48.241825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679268, 35.938869, 48.557529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854062, -0.233977, 0.464578,
		0.032321, -0.915270, -0.401542,
		0.519166, -0.327926, 0.789260,
		33.835018, 35.840492, 48.794308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062981, 35.574749, 48.414703>,  <33.471603, 36.070042, 48.241825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062981, 35.574749, 48.414703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.279877, 35.638504, 48.744690>,  <33.410015, 35.676758, 48.942680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.279877, 35.638504, 48.744690>,  <33.062981, 35.574749, 48.414703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279877, 35.638504, 48.744690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790681, -0.235368, 0.565177,
		0.284253, -0.958748, -0.001602,
		0.542240, 0.159387, 0.824968,
		33.442547, 35.686321, 48.992180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902458, 35.018013, 48.801941>,  <33.062981, 35.574749, 48.414703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902458, 35.018013, 48.801941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067245, 35.282063, 49.053185>,  <33.166119, 35.440491, 49.203930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067245, 35.282063, 49.053185>,  <32.902458, 35.018013, 48.801941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067245, 35.282063, 49.053185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802813, -0.063106, 0.592882,
		0.431011, -0.748504, 0.503955,
		0.411972, 0.660121, 0.628108,
		33.190838, 35.480099, 49.241615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000900, 34.667107, 49.507801>,  <32.902458, 35.018013, 48.801941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000900, 34.667107, 49.507801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972866, 35.063461, 49.553825>,  <32.956047, 35.301273, 49.581440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972866, 35.063461, 49.553825>,  <33.000900, 34.667107, 49.507801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972866, 35.063461, 49.553825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684088, -0.131693, 0.717412,
		0.726024, -0.028432, 0.687081,
		-0.070086, 0.990883, 0.115062,
		32.951839, 35.360725, 49.588345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919586, 34.756073, 50.190742>,  <33.000900, 34.667107, 49.507801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919586, 34.756073, 50.190742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784676, 35.109558, 50.060940>,  <32.703728, 35.321648, 49.983059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784676, 35.109558, 50.060940>,  <32.919586, 34.756073, 50.190742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784676, 35.109558, 50.060940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760041, -0.052214, 0.647774,
		0.555500, 0.465117, 0.689265,
		-0.337280, 0.883708, -0.324503,
		32.683491, 35.374672, 49.963589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925400, 35.138329, 50.793533>,  <32.919586, 34.756073, 50.190742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925400, 35.138329, 50.793533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667484, 35.309929, 50.540489>,  <32.512733, 35.412891, 50.388664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667484, 35.309929, 50.540489>,  <32.925400, 35.138329, 50.793533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667484, 35.309929, 50.540489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703853, -0.010524, 0.710268,
		0.298051, 0.903241, 0.308743,
		-0.644792, 0.429006, -0.632612,
		32.474049, 35.438629, 50.350704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501129, 35.675304, 51.241734>,  <32.925400, 35.138329, 50.793533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501129, 35.675304, 51.241734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.344929, 35.547771, 50.896282>,  <32.251209, 35.471252, 50.689011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.344929, 35.547771, 50.896282>,  <32.501129, 35.675304, 51.241734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344929, 35.547771, 50.896282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887752, -0.117954, 0.444953,
		-0.243733, 0.940444, -0.236980,
		-0.390501, -0.318829, -0.863630,
		32.227779, 35.452122, 50.637192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938318, 36.044933, 51.074127>,  <32.501129, 35.675304, 51.241734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938318, 36.044933, 51.074127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873472, 35.707428, 50.869469>,  <31.834564, 35.504925, 50.746674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873472, 35.707428, 50.869469>,  <31.938318, 36.044933, 51.074127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873472, 35.707428, 50.869469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856870, -0.136777, 0.497057,
		-0.489380, 0.518998, -0.700820,
		-0.162115, -0.843761, -0.511650,
		31.824837, 35.454300, 50.715973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431000, 36.159134, 50.709347>,  <31.938318, 36.044933, 51.074127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431000, 36.159134, 50.709347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.436998, 35.759663, 50.729019>,  <31.440598, 35.519981, 50.740822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.436998, 35.759663, 50.729019>,  <31.431000, 36.159134, 50.709347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436998, 35.759663, 50.729019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945129, 0.001895, 0.326692,
		-0.326353, -0.051379, -0.943851,
		0.014997, -0.998678, 0.049178,
		31.441498, 35.460060, 50.743774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735874, 36.056824, 50.837990>,  <31.431000, 36.159134, 50.709347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735874, 36.056824, 50.837990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.879784, 35.688084, 50.895611>,  <30.966129, 35.466839, 50.930183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.879784, 35.688084, 50.895611>,  <30.735874, 36.056824, 50.837990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879784, 35.688084, 50.895611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886861, -0.289898, 0.359772,
		-0.289898, -0.257187, -0.921854,
		-0.359772, 0.921854, -0.144048,
		30.987715, 35.411526, 50.938824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303577, 35.532593, 50.385941>,  <30.735874, 36.056824, 50.837990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303577, 35.532593, 50.385941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.472662, 35.335224, 50.690006>,  <30.574114, 35.216805, 50.872448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.472662, 35.335224, 50.690006>,  <30.303577, 35.532593, 50.385941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472662, 35.335224, 50.690006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904995, -0.274201, 0.325267,
		0.047947, -0.825442, -0.562447,
		0.422712, -0.493416, 0.760167,
		30.599476, 35.187199, 50.918056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041409, 34.793938, 50.400196>,  <30.303577, 35.532593, 50.385941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041409, 34.793938, 50.400196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.184250, 34.878059, 50.764229>,  <30.269955, 34.928532, 50.982647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.184250, 34.878059, 50.764229>,  <30.041409, 34.793938, 50.400196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184250, 34.878059, 50.764229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832505, -0.370166, 0.412205,
		0.423570, -0.904847, 0.042892,
		0.357105, 0.210305, 0.910081,
		30.291382, 34.941151, 51.037254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979000, 34.145935, 50.669334>,  <30.041409, 34.793938, 50.400196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979000, 34.145935, 50.669334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.016945, 34.423210, 50.955132>,  <30.039711, 34.589573, 51.126610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.016945, 34.423210, 50.955132>,  <29.979000, 34.145935, 50.669334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016945, 34.423210, 50.955132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831916, -0.338982, 0.439326,
		0.546733, -0.636070, 0.544516,
		0.094861, 0.693186, 0.714489,
		30.045403, 34.631165, 51.169479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839859, 33.771454, 51.382427>,  <29.979000, 34.145935, 50.669334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839859, 33.771454, 51.382427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.765089, 34.163738, 51.405319>,  <29.720228, 34.399109, 51.419052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.765089, 34.163738, 51.405319>,  <29.839859, 33.771454, 51.382427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765089, 34.163738, 51.405319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890882, -0.193776, 0.410830,
		0.413992, 0.025812, 0.909914,
		-0.186924, 0.980706, 0.057226,
		29.709011, 34.457951, 51.422485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597736, 33.846565, 52.100441>,  <29.839859, 33.771454, 51.382427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597736, 33.846565, 52.100441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.451057, 34.161240, 51.901783>,  <29.363050, 34.350044, 51.782589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.451057, 34.161240, 51.901783>,  <29.597736, 33.846565, 52.100441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451057, 34.161240, 51.901783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920216, -0.228159, 0.318035,
		0.136878, 0.573647, 0.807585,
		-0.366698, 0.786684, -0.496650,
		29.341047, 34.397243, 51.752789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092489, 34.128605, 52.548870>,  <29.597736, 33.846565, 52.100441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092489, 34.128605, 52.548870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.003681, 34.287281, 52.192593>,  <28.950397, 34.382488, 51.978825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.003681, 34.287281, 52.192593>,  <29.092489, 34.128605, 52.548870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003681, 34.287281, 52.192593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974210, -0.127996, 0.185830,
		-0.040288, 0.908984, 0.414881,
		-0.222019, 0.396694, -0.890697,
		28.937075, 34.406288, 51.925385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473785, 34.418285, 52.603382>,  <29.092489, 34.128605, 52.548870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473785, 34.418285, 52.603382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490191, 34.459724, 52.205872>,  <28.500034, 34.484589, 51.967365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490191, 34.459724, 52.205872>,  <28.473785, 34.418285, 52.603382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490191, 34.459724, 52.205872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999056, -0.010040, -0.042277,
		-0.014357, 0.994569, 0.103088,
		0.041012, 0.103598, -0.993773,
		28.502495, 34.490803, 51.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235369, 34.991974, 52.344727>,  <28.473785, 34.418285, 52.603382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235369, 34.991974, 52.344727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.169157, 34.734489, 52.045864>,  <28.129431, 34.579998, 51.866547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.169157, 34.734489, 52.045864>,  <28.235369, 34.991974, 52.344727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169157, 34.734489, 52.045864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976181, 0.214688, 0.031303,
		0.140255, 0.734538, -0.663915,
		-0.165528, -0.643710, -0.747153,
		28.119499, 34.541378, 51.821716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884390, 35.345299, 51.956810>,  <28.235369, 34.991974, 52.344727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884390, 35.345299, 51.956810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.799427, 34.971169, 51.843643>,  <27.748449, 34.746689, 51.775742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.799427, 34.971169, 51.843643>,  <27.884390, 35.345299, 51.956810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799427, 34.971169, 51.843643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975638, 0.219253, 0.007635,
		0.054889, 0.277649, -0.959113,
		-0.212408, -0.935328, -0.282919,
		27.735704, 34.690571, 51.758766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490030, 35.429031, 51.411537>,  <27.884390, 35.345299, 51.956810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490030, 35.429031, 51.411537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.387695, 35.056267, 51.514362>,  <27.326294, 34.832607, 51.576057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.387695, 35.056267, 51.514362>,  <27.490030, 35.429031, 51.411537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387695, 35.056267, 51.514362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966570, 0.251269, -0.051048,
		-0.017019, -0.261527, -0.965046,
		-0.255836, -0.931916, 0.257061,
		27.310944, 34.776691, 51.591480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885609, 35.360985, 50.995621>,  <27.490030, 35.429031, 51.411537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885609, 35.360985, 50.995621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.875046, 35.056499, 51.254803>,  <26.868708, 34.873806, 51.410313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.875046, 35.056499, 51.254803>,  <26.885609, 35.360985, 50.995621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875046, 35.056499, 51.254803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998614, -0.009431, -0.051780,
		0.045527, -0.648428, -0.759914,
		-0.026409, -0.761218, 0.647958,
		26.867123, 34.828133, 51.449192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365913, 34.883736, 50.739204>,  <26.885609, 35.360985, 50.995621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365913, 34.883736, 50.739204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.407396, 34.824078, 51.132549>,  <26.432285, 34.788284, 51.368557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.407396, 34.824078, 51.132549>,  <26.365913, 34.883736, 50.739204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407396, 34.824078, 51.132549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992893, -0.073554, 0.093555,
		0.058377, -0.986077, -0.155705,
		0.103705, -0.149137, 0.983364,
		26.438507, 34.779335, 51.427559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890030, 34.344151, 50.919662>,  <26.365913, 34.883736, 50.739204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890030, 34.344151, 50.919662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.969717, 34.552013, 51.251991>,  <26.017530, 34.676731, 51.451389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.969717, 34.552013, 51.251991>,  <25.890030, 34.344151, 50.919662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969717, 34.552013, 51.251991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972104, -0.002306, 0.234539,
		0.123797, -0.854370, 0.504705,
		0.199219, 0.519661, 0.830821,
		26.029482, 34.707912, 51.501236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450310, 33.995571, 51.488571>,  <25.890030, 34.344151, 50.919662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450310, 33.995571, 51.488571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.549076, 34.357090, 51.628387>,  <25.608335, 34.574001, 51.712276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.549076, 34.357090, 51.628387>,  <25.450310, 33.995571, 51.488571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549076, 34.357090, 51.628387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900995, 0.081347, 0.426134,
		0.356706, -0.420152, 0.834406,
		0.246918, 0.903800, 0.349538,
		25.623152, 34.628231, 51.733250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409979, 33.981625, 52.232250>,  <25.450310, 33.995571, 51.488571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409979, 33.981625, 52.232250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.381836, 34.373798, 52.158714>,  <25.364950, 34.609104, 52.114594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.381836, 34.373798, 52.158714>,  <25.409979, 33.981625, 52.232250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381836, 34.373798, 52.158714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955353, -0.013207, 0.295170,
		0.286967, 0.196402, 0.937591,
		-0.070355, 0.980435, -0.183843,
		25.360729, 34.667931, 52.103561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072407, 34.244469, 52.862679>,  <25.409979, 33.981625, 52.232250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072407, 34.244469, 52.862679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.011463, 34.525978, 52.585121>,  <24.974897, 34.694881, 52.418587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.011463, 34.525978, 52.585121>,  <25.072407, 34.244469, 52.862679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011463, 34.525978, 52.585121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896383, 0.197318, 0.396942,
		0.416275, 0.682474, 0.600786,
		-0.152357, 0.703771, -0.693897,
		24.965755, 34.737110, 52.376953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881731, 34.867531, 53.266254>,  <25.072407, 34.244469, 52.862679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881731, 34.867531, 53.266254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.749176, 34.911251, 52.891399>,  <24.669643, 34.937485, 52.666485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.749176, 34.911251, 52.891399>,  <24.881731, 34.867531, 53.266254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749176, 34.911251, 52.891399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824506, 0.449311, 0.343963,
		0.458664, 0.886664, -0.058776,
		-0.331388, 0.109303, -0.937142,
		24.649759, 34.944042, 52.610256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.517124, 32.881844, 49.769615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302174, 33.122692, 49.533417>,  <36.173203, 33.267200, 49.391697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302174, 33.122692, 49.533417>,  <36.517124, 32.881844, 49.769615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302174, 33.122692, 49.533417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337963, 0.487746, 0.804913,
		0.772662, 0.632106, -0.058610,
		-0.537377, 0.602118, -0.590491,
		36.140961, 33.303326, 49.356270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547756, 33.636501, 49.942074>,  <36.517124, 32.881844, 49.769615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547756, 33.636501, 49.942074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189880, 33.564026, 49.778763>,  <35.975155, 33.520542, 49.680775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189880, 33.564026, 49.778763>,  <36.547756, 33.636501, 49.942074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189880, 33.564026, 49.778763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429848, 0.597792, 0.676665,
		0.121465, 0.780907, -0.612724,
		-0.894694, -0.181187, -0.408282,
		35.921471, 33.509670, 49.656277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257069, 34.243896, 49.875648>,  <36.547756, 33.636501, 49.942074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257069, 34.243896, 49.875648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964504, 33.971722, 49.893723>,  <35.788967, 33.808418, 49.904568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964504, 33.971722, 49.893723>,  <36.257069, 34.243896, 49.875648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964504, 33.971722, 49.893723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460298, 0.541497, 0.703496,
		-0.503153, 0.493747, -0.709261,
		-0.731412, -0.680438, 0.045185,
		35.745079, 33.767590, 49.907276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555367, 34.598667, 49.914089>,  <36.257069, 34.243896, 49.875648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555367, 34.598667, 49.914089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485657, 34.228092, 50.047565>,  <35.443832, 34.005749, 50.127651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485657, 34.228092, 50.047565>,  <35.555367, 34.598667, 49.914089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485657, 34.228092, 50.047565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535861, 0.373527, 0.757186,
		-0.826124, -0.046853, -0.561536,
		-0.174273, -0.926435, 0.333687,
		35.433376, 33.950161, 50.147671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908226, 34.626743, 49.989296>,  <35.555367, 34.598667, 49.914089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908226, 34.626743, 49.989296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060089, 34.339050, 50.222038>,  <35.151207, 34.166435, 50.361683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060089, 34.339050, 50.222038>,  <34.908226, 34.626743, 49.989296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060089, 34.339050, 50.222038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545608, 0.333848, 0.768672,
		-0.747109, -0.609300, -0.265673,
		0.379658, -0.719235, 0.581860,
		35.173985, 34.123280, 50.396595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351925, 34.382160, 50.329956>,  <34.908226, 34.626743, 49.989296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351925, 34.382160, 50.329956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653843, 34.239750, 50.550327>,  <34.834995, 34.154305, 50.682549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653843, 34.239750, 50.550327>,  <34.351925, 34.382160, 50.329956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653843, 34.239750, 50.550327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467957, 0.296299, 0.832600,
		-0.459669, -0.886257, 0.057040,
		0.754799, -0.356028, 0.550929,
		34.880283, 34.132942, 50.715607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066437, 34.190605, 50.934528>,  <34.351925, 34.382160, 50.329956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066437, 34.190605, 50.934528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457085, 34.205563, 51.019199>,  <34.691475, 34.214539, 51.070004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457085, 34.205563, 51.019199>,  <34.066437, 34.190605, 50.934528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457085, 34.205563, 51.019199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214518, 0.106518, 0.970894,
		0.013758, -0.993607, 0.112050,
		0.976623, 0.037394, 0.211681,
		34.750072, 34.216782, 51.082703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251713, 33.712662, 51.546597>,  <34.066437, 34.190605, 50.934528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251713, 33.712662, 51.546597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519810, 34.008659, 51.524010>,  <34.680668, 34.186256, 51.510460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519810, 34.008659, 51.524010>,  <34.251713, 33.712662, 51.546597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519810, 34.008659, 51.524010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072055, 0.140606, 0.987440,
		0.738637, -0.657754, 0.147560,
		0.670241, 0.739992, -0.056462,
		34.720882, 34.230656, 51.507072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719055, 33.517433, 52.011219>,  <34.251713, 33.712662, 51.546597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719055, 33.517433, 52.011219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753078, 33.913666, 51.968315>,  <34.773495, 34.151405, 51.942574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753078, 33.913666, 51.968315>,  <34.719055, 33.517433, 52.011219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753078, 33.913666, 51.968315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233085, 0.124446, 0.964461,
		0.968729, -0.057039, 0.241476,
		0.085062, 0.990586, -0.107260,
		34.778599, 34.210842, 51.936138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061466, 33.712643, 52.610909>,  <34.719055, 33.517433, 52.011219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061466, 33.712643, 52.610909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904861, 34.054882, 52.475456>,  <34.810898, 34.260227, 52.394184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904861, 34.054882, 52.475456>,  <35.061466, 33.712643, 52.610909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904861, 34.054882, 52.475456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386277, 0.181201, 0.904410,
		0.835172, 0.484890, 0.259556,
		-0.391507, 0.855598, -0.338635,
		34.787411, 34.311562, 52.373867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144360, 34.106655, 53.141037>,  <35.061466, 33.712643, 52.610909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144360, 34.106655, 53.141037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904427, 34.323143, 52.905315>,  <34.760468, 34.453037, 52.763882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904427, 34.323143, 52.905315>,  <35.144360, 34.106655, 53.141037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904427, 34.323143, 52.905315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419657, 0.414282, 0.807625,
		0.681244, 0.731744, -0.021371,
		-0.599829, 0.541222, -0.589309,
		34.724480, 34.485508, 52.728523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155548, 34.759842, 53.466675>,  <35.144360, 34.106655, 53.141037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155548, 34.759842, 53.466675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827557, 34.740540, 53.238533>,  <34.630760, 34.728958, 53.101650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827557, 34.740540, 53.238533>,  <35.155548, 34.759842, 53.466675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827557, 34.740540, 53.238533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556046, 0.303565, 0.773732,
		0.135800, 0.951588, -0.275751,
		-0.819982, -0.048258, -0.570351,
		34.581562, 34.726063, 53.067429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683762, 35.379002, 53.395134>,  <35.155548, 34.759842, 53.466675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683762, 35.379002, 53.395134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019531, 35.423565, 53.607910>,  <36.220993, 35.450302, 53.735577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019531, 35.423565, 53.607910>,  <35.683762, 35.379002, 53.395134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019531, 35.423565, 53.607910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526938, -0.406504, -0.746385,
		0.133083, 0.906831, -0.399933,
		0.839420, 0.111409, 0.531942,
		36.271358, 35.456989, 53.767494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147472, 36.007893, 53.177277>,  <35.683762, 35.379002, 53.395134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147472, 36.007893, 53.177277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357311, 35.719959, 53.359108>,  <36.483215, 35.547199, 53.468208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357311, 35.719959, 53.359108>,  <36.147472, 36.007893, 53.177277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357311, 35.719959, 53.359108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451783, -0.217189, -0.865287,
		0.721589, 0.659298, 0.211271,
		0.524596, -0.719830, 0.454581,
		36.514690, 35.504009, 53.495483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817928, 35.945946, 52.791962>,  <36.147472, 36.007893, 53.177277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817928, 35.945946, 52.791962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829006, 35.618084, 53.020836>,  <36.835651, 35.421368, 53.158161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829006, 35.618084, 53.020836>,  <36.817928, 35.945946, 52.791962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829006, 35.618084, 53.020836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591722, -0.447903, -0.670259,
		0.805666, 0.357136, 0.472605,
		0.027692, -0.819656, 0.572186,
		36.837315, 35.372189, 53.192493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558983, 35.803875, 53.018875>,  <36.817928, 35.945946, 52.791962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558983, 35.803875, 53.018875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333694, 35.473396, 53.024269>,  <37.198521, 35.275108, 53.027504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333694, 35.473396, 53.024269>,  <37.558983, 35.803875, 53.018875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333694, 35.473396, 53.024269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562289, -0.395164, -0.726414,
		0.605490, -0.401547, 0.687126,
		-0.563217, -0.826199, 0.013482,
		37.164730, 35.225536, 53.028313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043552, 35.339710, 52.923389>,  <37.558983, 35.803875, 53.018875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043552, 35.339710, 52.923389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708843, 35.125835, 52.876175>,  <37.508018, 34.997513, 52.847847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708843, 35.125835, 52.876175>,  <38.043552, 35.339710, 52.923389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708843, 35.125835, 52.876175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462048, -0.573820, -0.676198,
		0.293820, -0.620359, 0.727203,
		-0.836769, -0.534683, -0.118036,
		37.457813, 34.965431, 52.840763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271069, 34.622322, 52.815266>,  <38.043552, 35.339710, 52.923389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271069, 34.622322, 52.815266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899288, 34.637627, 52.668488>,  <37.676220, 34.646809, 52.580421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899288, 34.637627, 52.668488>,  <38.271069, 34.622322, 52.815266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899288, 34.637627, 52.668488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289620, -0.540462, -0.789950,
		-0.228548, -0.840498, 0.491253,
		-0.929455, 0.038265, -0.366946,
		37.620453, 34.649105, 52.558403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147999, 33.881042, 52.637875>,  <38.271069, 34.622322, 52.815266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147999, 33.881042, 52.637875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906090, 34.126732, 52.435104>,  <37.760944, 34.274147, 52.313442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906090, 34.126732, 52.435104>,  <38.147999, 33.881042, 52.637875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906090, 34.126732, 52.435104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242014, -0.464684, -0.851762,
		-0.758734, -0.637808, 0.132378,
		-0.604774, 0.614223, -0.506930,
		37.724659, 34.310997, 52.283024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784176, 33.518436, 52.193218>,  <38.147999, 33.881042, 52.637875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784176, 33.518436, 52.193218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749165, 33.875294, 52.015945>,  <37.728157, 34.089409, 51.909580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749165, 33.875294, 52.015945>,  <37.784176, 33.518436, 52.193218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749165, 33.875294, 52.015945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295398, -0.401639, -0.866849,
		-0.951357, -0.206786, -0.228385,
		-0.087524, 0.892146, -0.443186,
		37.722908, 34.142937, 51.882988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381435, 33.407383, 51.596870>,  <37.784176, 33.518436, 52.193218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381435, 33.407383, 51.596870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577534, 33.749786, 51.531261>,  <37.695190, 33.955231, 51.491898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577534, 33.749786, 51.531261>,  <37.381435, 33.407383, 51.596870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577534, 33.749786, 51.531261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383413, -0.380809, -0.841415,
		-0.782723, 0.349609, -0.514896,
		0.490243, 0.856013, -0.164024,
		37.724606, 34.006592, 51.482056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136520, 33.735146, 50.993046>,  <37.381435, 33.407383, 51.596870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136520, 33.735146, 50.993046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509933, 33.869759, 51.042465>,  <37.733982, 33.950527, 51.072117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509933, 33.869759, 51.042465>,  <37.136520, 33.735146, 50.993046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509933, 33.869759, 51.042465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263048, -0.408862, -0.873864,
		-0.243567, 0.848280, -0.470210,
		0.933531, 0.336532, 0.123553,
		37.789993, 33.970718, 51.079533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285847, 34.131859, 50.406876>,  <37.136520, 33.735146, 50.993046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285847, 34.131859, 50.406876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619610, 33.963333, 50.549004>,  <37.819870, 33.862217, 50.634281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619610, 33.963333, 50.549004>,  <37.285847, 34.131859, 50.406876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619610, 33.963333, 50.549004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296108, -0.201053, -0.933755,
		0.464842, 0.884348, -0.043006,
		0.834411, -0.421314, 0.355321,
		37.869934, 33.836937, 50.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062309, 34.439304, 50.203854>,  <37.285847, 34.131859, 50.406876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062309, 34.439304, 50.203854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048237, 34.044193, 50.264603>,  <38.039791, 33.807129, 50.301052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048237, 34.044193, 50.264603>,  <38.062309, 34.439304, 50.203854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048237, 34.044193, 50.264603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408905, -0.152896, -0.899678,
		0.911899, 0.030449, 0.409284,
		-0.035183, -0.987773, 0.151877,
		38.037682, 33.747860, 50.310165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788277, 35.145084, 50.081848>,  <38.062309, 34.439304, 50.203854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788277, 35.145084, 50.081848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.590767, 35.426609, 49.877560>,  <37.472260, 35.595524, 49.754986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.590767, 35.426609, 49.877560>,  <37.788277, 35.145084, 50.081848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590767, 35.426609, 49.877560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090913, 0.542311, 0.835245,
		0.864824, 0.458854, -0.203794,
		-0.493775, 0.703813, -0.510719,
		37.442635, 35.637753, 49.724342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090572, 35.845760, 50.045029>,  <37.788277, 35.145084, 50.081848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090572, 35.845760, 50.045029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721783, 35.991539, 49.992664>,  <37.500507, 36.079006, 49.961246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721783, 35.991539, 49.992664>,  <38.090572, 35.845760, 50.045029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721783, 35.991539, 49.992664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134546, 0.618463, 0.774210,
		0.363121, 0.696191, -0.619244,
		-0.921977, 0.364448, -0.130907,
		37.445190, 36.100872, 49.953392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199833, 36.520317, 50.082111>,  <38.090572, 35.845760, 50.045029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199833, 36.520317, 50.082111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811657, 36.454941, 50.153133>,  <37.578751, 36.415714, 50.195747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811657, 36.454941, 50.153133>,  <38.199833, 36.520317, 50.082111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811657, 36.454941, 50.153133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028736, 0.652251, 0.757458,
		-0.239609, 0.740173, -0.628277,
		-0.970444, -0.163439, 0.177555,
		37.520523, 36.405910, 50.206398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006145, 37.132175, 50.265991>,  <38.199833, 36.520317, 50.082111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006145, 37.132175, 50.265991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736359, 36.869762, 50.401470>,  <37.574486, 36.712315, 50.482758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736359, 36.869762, 50.401470>,  <38.006145, 37.132175, 50.265991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736359, 36.869762, 50.401470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073692, 0.516272, 0.853248,
		-0.734618, 0.550529, -0.396553,
		-0.674467, -0.656034, 0.338693,
		37.534019, 36.672951, 50.503078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070419, 37.516216, 50.877022>,  <38.006145, 37.132175, 50.265991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070419, 37.516216, 50.877022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773548, 37.249275, 50.852310>,  <37.595425, 37.089111, 50.837482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773548, 37.249275, 50.852310>,  <38.070419, 37.516216, 50.877022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773548, 37.249275, 50.852310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312667, 0.263236, 0.912659,
		-0.592803, 0.696669, -0.404026,
		-0.742175, -0.667352, -0.061779,
		37.550896, 37.049068, 50.833778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509392, 37.844612, 50.710876>,  <38.070419, 37.516216, 50.877022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509392, 37.844612, 50.710876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408092, 37.907455, 50.329052>,  <37.347313, 37.945164, 50.099957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408092, 37.907455, 50.329052>,  <37.509392, 37.844612, 50.710876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408092, 37.907455, 50.329052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349886, 0.905051, 0.241791,
		0.901911, 0.395221, -0.174236,
		-0.253253, 0.157111, -0.954557,
		37.332115, 37.954590, 50.042686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821201, 38.538391, 50.328533>,  <37.509392, 37.844612, 50.710876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821201, 38.538391, 50.328533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471600, 38.391785, 50.200920>,  <37.261837, 38.303822, 50.124352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471600, 38.391785, 50.200920>,  <37.821201, 38.538391, 50.328533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471600, 38.391785, 50.200920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434296, 0.883695, 0.174559,
		0.217949, 0.291120, -0.931530,
		-0.874005, -0.366515, -0.319032,
		37.209396, 38.281830, 50.105209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598671, 39.025238, 49.795918>,  <37.821201, 38.538391, 50.328533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598671, 39.025238, 49.795918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285892, 38.809055, 49.920155>,  <37.098225, 38.679348, 49.994698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285892, 38.809055, 49.920155>,  <37.598671, 39.025238, 49.795918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285892, 38.809055, 49.920155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542159, 0.835551, 0.088983,
		-0.307605, -0.098809, -0.946370,
		-0.781948, -0.540454, 0.310590,
		37.051308, 38.646919, 50.013332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022335, 39.425709, 49.620953>,  <37.598671, 39.025238, 49.795918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022335, 39.425709, 49.620953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849949, 39.160885, 49.866211>,  <36.746517, 39.001991, 50.013367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849949, 39.160885, 49.866211>,  <37.022335, 39.425709, 49.620953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849949, 39.160885, 49.866211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660197, 0.694542, 0.285921,
		-0.615152, -0.281575, -0.736413,
		-0.430961, -0.662062, 0.613144,
		36.720661, 38.962265, 50.050156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283092, 39.510860, 49.482609>,  <37.022335, 39.425709, 49.620953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283092, 39.510860, 49.482609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285702, 39.330730, 49.839745>,  <36.287270, 39.222652, 50.054028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285702, 39.330730, 49.839745>,  <36.283092, 39.510860, 49.482609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285702, 39.330730, 49.839745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831103, 0.494068, 0.255273,
		-0.556080, -0.743707, -0.371045,
		0.006527, -0.450329, 0.892839,
		36.287659, 39.195633, 50.107597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531284, 39.304829, 49.569481>,  <36.283092, 39.510860, 49.482609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531284, 39.304829, 49.569481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729034, 39.308170, 49.917164>,  <35.847687, 39.310173, 50.125774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729034, 39.308170, 49.917164>,  <35.531284, 39.304829, 49.569481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729034, 39.308170, 49.917164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772093, 0.463591, 0.434691,
		-0.399326, -0.886010, 0.235636,
		0.494379, 0.008350, 0.869206,
		35.877350, 39.310677, 50.177925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119682, 39.036224, 50.122356>,  <35.531284, 39.304829, 49.569481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119682, 39.036224, 50.122356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385300, 39.250046, 50.331470>,  <35.544670, 39.378338, 50.456940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385300, 39.250046, 50.331470>,  <35.119682, 39.036224, 50.122356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385300, 39.250046, 50.331470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741633, 0.382038, 0.551387,
		0.095024, -0.753856, 0.650132,
		0.664042, 0.534554, 0.522782,
		35.584511, 39.410412, 50.488304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912128, 38.855503, 50.813427>,  <35.119682, 39.036224, 50.122356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912128, 38.855503, 50.813427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103748, 39.206165, 50.831230>,  <35.218719, 39.416565, 50.841911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103748, 39.206165, 50.831230>,  <34.912128, 38.855503, 50.813427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103748, 39.206165, 50.831230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769034, 0.394714, 0.502781,
		0.423203, -0.275078, 0.863268,
		0.479047, 0.876660, 0.044500,
		35.247463, 39.469162, 50.844582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780781, 39.103428, 51.560143>,  <34.912128, 38.855503, 50.813427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780781, 39.103428, 51.560143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882038, 39.422085, 51.340584>,  <34.942791, 39.613277, 51.208847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882038, 39.422085, 51.340584>,  <34.780781, 39.103428, 51.560143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882038, 39.422085, 51.340584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751429, 0.519264, 0.407085,
		0.609322, 0.309407, 0.730064,
		0.253142, 0.796638, -0.548896,
		34.957981, 39.661076, 51.175915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954453, 39.539509, 52.002365>,  <34.780781, 39.103428, 51.560143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954453, 39.539509, 52.002365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871166, 39.755039, 51.675854>,  <34.821194, 39.884357, 51.479946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871166, 39.755039, 51.675854>,  <34.954453, 39.539509, 52.002365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871166, 39.755039, 51.675854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651829, 0.545779, 0.526539,
		0.729222, 0.641708, 0.237583,
		-0.208217, 0.538828, -0.816278,
		34.808701, 39.916687, 51.430969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931507, 40.369282, 52.124142>,  <34.954453, 39.539509, 52.002365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931507, 40.369282, 52.124142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697498, 40.314621, 51.804375>,  <34.557091, 40.281822, 51.612514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697498, 40.314621, 51.804375>,  <34.931507, 40.369282, 52.124142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697498, 40.314621, 51.804375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759062, 0.439387, 0.480380,
		0.285608, 0.887843, -0.360783,
		-0.585025, -0.136656, -0.799419,
		34.521992, 40.273624, 51.564548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539108, 40.980259, 52.105202>,  <34.931507, 40.369282, 52.124142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539108, 40.980259, 52.105202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356186, 40.732883, 51.849579>,  <34.246433, 40.584457, 51.696205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356186, 40.732883, 51.849579>,  <34.539108, 40.980259, 52.105202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356186, 40.732883, 51.849579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888810, 0.341869, 0.305193,
		0.029731, 0.707571, -0.706016,
		-0.457311, -0.618440, -0.639061,
		34.218994, 40.547352, 51.657860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036678, 41.317093, 51.724346>,  <34.539108, 40.980259, 52.105202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036678, 41.317093, 51.724346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896156, 40.942589, 51.724522>,  <33.811844, 40.717888, 51.724628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896156, 40.942589, 51.724522>,  <34.036678, 41.317093, 51.724346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896156, 40.942589, 51.724522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893158, 0.335274, 0.299767,
		-0.280808, 0.104916, -0.954012,
		-0.351306, -0.936260, 0.000441,
		33.790764, 40.661709, 51.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393791, 41.296368, 51.334126>,  <34.036678, 41.317093, 51.724346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393791, 41.296368, 51.334126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414143, 40.980556, 51.578766>,  <33.426353, 40.791069, 51.725552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414143, 40.980556, 51.578766>,  <33.393791, 41.296368, 51.334126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414143, 40.980556, 51.578766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933516, 0.180033, 0.310057,
		-0.354907, -0.586717, -0.727876,
		0.050874, -0.789526, 0.611605,
		33.429405, 40.743698, 51.762249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704018, 41.123180, 51.340645>,  <33.393791, 41.296368, 51.334126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704018, 41.123180, 51.340645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837395, 40.894493, 51.640499>,  <32.917419, 40.757282, 51.820412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837395, 40.894493, 51.640499>,  <32.704018, 41.123180, 51.340645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837395, 40.894493, 51.640499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883482, 0.088034, 0.460118,
		-0.329052, -0.815713, -0.475749,
		0.333442, -0.571719, 0.749636,
		32.937428, 40.722977, 51.865391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206680, 40.588856, 51.432278>,  <32.704018, 41.123180, 51.340645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206680, 40.588856, 51.432278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399410, 40.636013, 51.779598>,  <32.515049, 40.664307, 51.987991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399410, 40.636013, 51.779598>,  <32.206680, 40.588856, 51.432278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399410, 40.636013, 51.779598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875738, 0.030404, 0.481828,
		0.030404, -0.992561, 0.117893,
		-0.481828, -0.117893, -0.868299,
		32.543961, 40.671379, 52.040089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900677, 40.160309, 51.881504>,  <32.206680, 40.588856, 51.432278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900677, 40.160309, 51.881504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097111, 40.369373, 52.160263>,  <32.214970, 40.494812, 52.327518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097111, 40.369373, 52.160263>,  <31.900677, 40.160309, 51.881504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097111, 40.369373, 52.160263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841894, 0.079310, 0.533783,
		0.223716, -0.848844, 0.478973,
		0.491086, 0.522660, 0.696894,
		32.244438, 40.526173, 52.369331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786453, 39.840111, 52.649761>,  <31.900677, 40.160309, 51.881504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786453, 39.840111, 52.649761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906527, 40.221466, 52.662090>,  <31.978571, 40.450279, 52.669487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906527, 40.221466, 52.662090>,  <31.786453, 39.840111, 52.649761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906527, 40.221466, 52.662090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824562, 0.243104, 0.510880,
		0.479572, -0.178771, 0.859099,
		0.300181, 0.953384, 0.030822,
		31.996580, 40.507481, 52.671337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894003, 39.927956, 53.356499>,  <31.786453, 39.840111, 52.649761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894003, 39.927956, 53.356499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838619, 40.286770, 53.188614>,  <31.805389, 40.502056, 53.087883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838619, 40.286770, 53.188614>,  <31.894003, 39.927956, 53.356499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838619, 40.286770, 53.188614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428480, 0.327824, 0.841984,
		0.892880, 0.296419, 0.338971,
		-0.138457, 0.897033, -0.419717,
		31.797083, 40.555882, 53.062698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193569, 40.413319, 53.871487>,  <31.894003, 39.927956, 53.356499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193569, 40.413319, 53.871487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953127, 40.630314, 53.636753>,  <31.808861, 40.760513, 53.495914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953127, 40.630314, 53.636753>,  <32.193569, 40.413319, 53.871487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953127, 40.630314, 53.636753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495597, 0.323008, 0.806257,
		0.626939, 0.775479, 0.074694,
		-0.601108, 0.542492, -0.586831,
		31.772795, 40.793060, 53.460705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184158, 41.046452, 54.184513>,  <32.193569, 40.413319, 53.871487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184158, 41.046452, 54.184513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849907, 41.041286, 53.964855>,  <31.649357, 41.038189, 53.833061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849907, 41.041286, 53.964855>,  <32.184158, 41.046452, 54.184513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849907, 41.041286, 53.964855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516653, 0.357982, 0.777765,
		0.186542, 0.933639, -0.305810,
		-0.835626, -0.012911, -0.549147,
		31.599218, 41.037415, 53.800110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897881, 41.717537, 54.277679>,  <32.184158, 41.046452, 54.184513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897881, 41.717537, 54.277679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.599857, 41.483196, 54.150139>,  <31.421043, 41.342594, 54.073612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.599857, 41.483196, 54.150139>,  <31.897881, 41.717537, 54.277679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599857, 41.483196, 54.150139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607936, 0.399790, 0.685990,
		-0.274410, 0.704947, -0.654025,
		-0.745059, -0.585848, -0.318856,
		31.376339, 41.307442, 54.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265827, 42.193554, 54.189903>,  <31.897881, 41.717537, 54.277679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265827, 42.193554, 54.189903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129930, 41.820660, 54.239712>,  <31.048393, 41.596924, 54.269596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129930, 41.820660, 54.239712>,  <31.265827, 42.193554, 54.189903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129930, 41.820660, 54.239712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648841, 0.328162, 0.686524,
		-0.680868, 0.152446, -0.716365,
		-0.339741, -0.932239, 0.124522,
		31.028008, 41.540989, 54.277069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583643, 42.324097, 54.160774>,  <31.265827, 42.193554, 54.189903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583643, 42.324097, 54.160774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640028, 41.972359, 54.342712>,  <30.673859, 41.761314, 54.451874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640028, 41.972359, 54.342712>,  <30.583643, 42.324097, 54.160774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640028, 41.972359, 54.342712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543724, 0.315175, 0.777836,
		-0.827341, -0.356957, -0.433692,
		0.140965, -0.879344, 0.454843,
		30.682318, 41.708557, 54.479164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992737, 42.208397, 54.397396>,  <30.583643, 42.324097, 54.160774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992737, 42.208397, 54.397396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.184267, 41.935356, 54.618225>,  <30.299185, 41.771534, 54.750725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.184267, 41.935356, 54.618225>,  <29.992737, 42.208397, 54.397396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184267, 41.935356, 54.618225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586249, 0.219480, 0.779834,
		-0.653484, -0.697055, -0.295081,
		0.478823, -0.682600, 0.552075,
		30.327913, 41.730576, 54.783848>
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
