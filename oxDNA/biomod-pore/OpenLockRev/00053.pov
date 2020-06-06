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
	<39.955410, 35.127113, 49.465099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047756, 34.831005, 49.212528>,  <40.103165, 34.653339, 49.060986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047756, 34.831005, 49.212528>,  <39.955410, 35.127113, 49.465099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047756, 34.831005, 49.212528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966181, 0.251036, 0.058957,
		0.114868, -0.623688, 0.773187,
		0.230868, -0.740267, -0.631431,
		40.117016, 34.608925, 49.023098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582310, 35.004784, 49.657803>,  <39.955410, 35.127113, 49.465099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582310, 35.004784, 49.657803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594730, 34.814163, 49.306362>,  <40.602184, 34.699791, 49.095497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594730, 34.814163, 49.306362>,  <40.582310, 35.004784, 49.657803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594730, 34.814163, 49.306362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997490, 0.070733, -0.003110,
		0.063628, -0.876298, 0.477549,
		0.031053, -0.476548, -0.878600,
		40.604046, 34.671200, 49.042782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056244, 34.318310, 49.666336>,  <40.582310, 35.004784, 49.657803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056244, 34.318310, 49.666336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037994, 34.489342, 49.305206>,  <41.027042, 34.591961, 49.088528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037994, 34.489342, 49.305206>,  <41.056244, 34.318310, 49.666336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037994, 34.489342, 49.305206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998650, -0.002945, -0.051864,
		-0.024835, -0.903971, -0.426872,
		-0.045626, 0.427584, -0.902824,
		41.024307, 34.617619, 49.034359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378216, 33.957676, 49.078690>,  <41.056244, 34.318310, 49.666336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378216, 33.957676, 49.078690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401421, 34.352703, 49.020256>,  <41.415344, 34.589722, 48.985195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401421, 34.352703, 49.020256>,  <41.378216, 33.957676, 49.078690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401421, 34.352703, 49.020256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993109, -0.042167, 0.109348,
		0.101829, -0.151418, -0.983211,
		0.058016, 0.987570, -0.146081,
		41.418827, 34.648975, 48.976433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108429, 33.850319, 48.936501>,  <41.378216, 33.957676, 49.078690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108429, 33.850319, 48.936501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035152, 34.243542, 48.934288>,  <41.991188, 34.479477, 48.932961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035152, 34.243542, 48.934288>,  <42.108429, 33.850319, 48.936501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035152, 34.243542, 48.934288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969750, 0.181628, 0.163083,
		0.161324, 0.024516, -0.986597,
		-0.183192, 0.983062, -0.005527,
		41.980194, 34.538460, 48.932629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544064, 34.111256, 48.477734>,  <42.108429, 33.850319, 48.936501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544064, 34.111256, 48.477734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451530, 34.417427, 48.717934>,  <42.396011, 34.601131, 48.862053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451530, 34.417427, 48.717934>,  <42.544064, 34.111256, 48.477734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451530, 34.417427, 48.717934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964464, 0.099448, 0.244783,
		0.127646, 0.635789, -0.761235,
		-0.231334, 0.765429, 0.600502,
		42.382130, 34.647057, 48.898083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112217, 34.510960, 48.386559>,  <42.544064, 34.111256, 48.477734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112217, 34.510960, 48.386559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940308, 34.680096, 48.705681>,  <42.837162, 34.781578, 48.897156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940308, 34.680096, 48.705681>,  <43.112217, 34.510960, 48.386559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940308, 34.680096, 48.705681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893457, 0.071464, 0.443426,
		0.130484, 0.903382, -0.408504,
		-0.429776, 0.422841, 0.797808,
		42.811375, 34.806950, 48.945023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583469, 34.949894, 48.621765>,  <43.112217, 34.510960, 48.386559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583469, 34.949894, 48.621765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356586, 34.920891, 48.949917>,  <43.220455, 34.903488, 49.146809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356586, 34.920891, 48.949917>,  <43.583469, 34.949894, 48.621765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356586, 34.920891, 48.949917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786160, 0.249165, 0.565570,
		-0.245418, 0.965743, -0.084324,
		-0.567206, -0.072509, 0.820378,
		43.186424, 34.899139, 49.196030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793701, 35.421165, 49.080524>,  <43.583469, 34.949894, 48.621765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793701, 35.421165, 49.080524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621555, 35.141396, 49.308769>,  <43.518269, 34.973534, 49.445717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621555, 35.141396, 49.308769>,  <43.793701, 35.421165, 49.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621555, 35.141396, 49.308769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821771, -0.042034, 0.568265,
		-0.373473, 0.713469, 0.592857,
		-0.430360, -0.699425, 0.570610,
		43.492447, 34.931568, 49.479954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095783, 35.576313, 49.637276>,  <43.793701, 35.421165, 49.080524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095783, 35.576313, 49.637276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961418, 35.210548, 49.727623>,  <43.880798, 34.991089, 49.781830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961418, 35.210548, 49.727623>,  <44.095783, 35.576313, 49.637276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961418, 35.210548, 49.727623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723365, -0.096868, 0.683637,
		-0.603245, 0.393028, 0.693992,
		-0.335913, -0.914410, 0.225868,
		43.860645, 34.936226, 49.795383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198380, 35.491589, 50.350975>,  <44.095783, 35.576313, 49.637276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198380, 35.491589, 50.350975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118927, 35.116611, 50.236610>,  <44.071255, 34.891624, 50.167992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118927, 35.116611, 50.236610>,  <44.198380, 35.491589, 50.350975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118927, 35.116611, 50.236610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572364, -0.347763, 0.742604,
		-0.795579, -0.016144, 0.605635,
		-0.198629, -0.937444, -0.285913,
		44.059338, 34.835377, 50.150837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064156, 35.088184, 51.012550>,  <44.198380, 35.491589, 50.350975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064156, 35.088184, 51.012550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218529, 34.868351, 50.716167>,  <44.311153, 34.736450, 50.538338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218529, 34.868351, 50.716167>,  <44.064156, 35.088184, 51.012550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218529, 34.868351, 50.716167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753721, -0.275283, 0.596762,
		-0.531942, -0.788784, 0.307991,
		0.385931, -0.549581, -0.740957,
		44.334309, 34.703476, 50.493881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276291, 34.561043, 51.413200>,  <44.064156, 35.088184, 51.012550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276291, 34.561043, 51.413200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468418, 34.553551, 51.062443>,  <44.583694, 34.549057, 50.851990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468418, 34.553551, 51.062443>,  <44.276291, 34.561043, 51.413200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468418, 34.553551, 51.062443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805001, -0.387531, 0.449214,
		-0.348237, -0.921666, -0.171061,
		0.480317, -0.018729, -0.876895,
		44.612514, 34.547932, 50.799374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686100, 33.992714, 51.427322>,  <44.276291, 34.561043, 51.413200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686100, 33.992714, 51.427322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862858, 34.189022, 51.126957>,  <44.968914, 34.306808, 50.946739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862858, 34.189022, 51.126957>,  <44.686100, 33.992714, 51.427322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862858, 34.189022, 51.126957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888438, -0.355248, 0.290648,
		-0.124117, -0.795576, -0.593005,
		0.441896, 0.490774, -0.750912,
		44.995426, 34.336254, 50.901684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172123, 33.506458, 51.182648>,  <44.686100, 33.992714, 51.427322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172123, 33.506458, 51.182648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311787, 33.862846, 51.066536>,  <45.395584, 34.076679, 50.996868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311787, 33.862846, 51.066536>,  <45.172123, 33.506458, 51.182648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311787, 33.862846, 51.066536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920739, -0.268627, 0.282983,
		0.174152, -0.366077, -0.914144,
		0.349157, 0.890970, -0.290279,
		45.416534, 34.130138, 50.979450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720528, 33.418781, 50.781040>,  <45.172123, 33.506458, 51.182648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720528, 33.418781, 50.781040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791313, 33.795849, 50.894222>,  <45.833782, 34.022087, 50.962132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791313, 33.795849, 50.894222>,  <45.720528, 33.418781, 50.781040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791313, 33.795849, 50.894222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945242, -0.242882, 0.218005,
		0.274232, 0.228886, -0.934028,
		0.176960, 0.942666, 0.282959,
		45.844402, 34.078648, 50.979111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295483, 33.648872, 50.481983>,  <45.720528, 33.418781, 50.781040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295483, 33.648872, 50.481983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249191, 33.883835, 50.802376>,  <46.221416, 34.024811, 50.994610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249191, 33.883835, 50.802376>,  <46.295483, 33.648872, 50.481983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249191, 33.883835, 50.802376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957925, -0.147236, 0.246377,
		0.262655, 0.795789, -0.545649,
		-0.115725, 0.587403, 0.800978,
		46.214474, 34.060055, 51.042667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930576, 33.868668, 50.519550>,  <46.295483, 33.648872, 50.481983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930576, 33.868668, 50.519550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763470, 33.970474, 50.868420>,  <46.663204, 34.031559, 51.077744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763470, 33.970474, 50.868420>,  <46.930576, 33.868668, 50.519550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763470, 33.970474, 50.868420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888704, -0.085097, 0.450514,
		0.188883, 0.963317, -0.190641,
		-0.417765, 0.254518, 0.872177,
		46.638142, 34.046829, 51.130074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.452145, 34.365936, 50.816967>,  <46.930576, 33.868668, 50.519550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.452145, 34.365936, 50.816967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215443, 34.278225, 51.127254>,  <47.073421, 34.225597, 51.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215443, 34.278225, 51.127254>,  <47.452145, 34.365936, 50.816967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215443, 34.278225, 51.127254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765558, 0.148519, 0.625990,
		-0.252473, 0.964293, 0.079981,
		-0.591758, -0.219276, 0.775719,
		47.037914, 34.212440, 51.359970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.532482, 34.879822, 51.336773>,  <47.452145, 34.365936, 50.816967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.532482, 34.879822, 51.336773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363861, 34.591824, 51.557281>,  <47.262688, 34.419025, 51.689587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363861, 34.591824, 51.557281>,  <47.532482, 34.879822, 51.336773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.363861, 34.591824, 51.557281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750249, 0.064534, 0.657998,
		-0.509331, 0.690973, 0.512971,
		-0.421555, -0.719994, 0.551271,
		47.237396, 34.375824, 51.722664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.489590, 35.151932, 52.082237>,  <47.532482, 34.879822, 51.336773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.489590, 35.151932, 52.082237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479176, 34.752087, 52.086269>,  <47.472927, 34.512180, 52.088688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479176, 34.752087, 52.086269>,  <47.489590, 35.151932, 52.082237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479176, 34.752087, 52.086269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838114, -0.016331, 0.545251,
		-0.544874, 0.022648, 0.838212,
		-0.026038, -0.999610, 0.010083,
		47.471363, 34.452202, 52.089294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.424301, 34.710960, 51.537315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.572990, 34.799030, 51.898056>,  <24.662205, 34.851871, 52.114502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.572990, 34.799030, 51.898056>,  <24.424301, 34.710960, 51.537315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572990, 34.799030, 51.898056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841022, 0.331457, -0.427573,
		-0.393069, 0.917419, -0.061964,
		0.371725, 0.220178, 0.901855,
		24.684507, 34.865086, 52.168613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617760, 35.421928, 51.522118>,  <24.424301, 34.710960, 51.537315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617760, 35.421928, 51.522118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.821753, 35.252903, 51.821812>,  <24.944149, 35.151485, 52.001629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.821753, 35.252903, 51.821812>,  <24.617760, 35.421928, 51.522118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821753, 35.252903, 51.821812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860040, 0.266423, -0.435144,
		-0.015737, 0.866289, 0.499296,
		0.509984, -0.422566, 0.749236,
		24.974749, 35.126133, 52.046581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188196, 35.906918, 51.633213>,  <24.617760, 35.421928, 51.522118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188196, 35.906918, 51.633213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.316494, 35.553562, 51.769886>,  <25.393473, 35.341549, 51.851891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.316494, 35.553562, 51.769886>,  <25.188196, 35.906918, 51.633213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316494, 35.553562, 51.769886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857581, 0.117711, -0.500699,
		0.402093, 0.453616, 0.795332,
		0.320744, -0.883389, 0.341682,
		25.412718, 35.288544, 51.872391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847036, 36.071808, 51.765064>,  <25.188196, 35.906918, 51.633213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847036, 36.071808, 51.765064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.824076, 35.672840, 51.747849>,  <25.810299, 35.433460, 51.737518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.824076, 35.672840, 51.747849>,  <25.847036, 36.071808, 51.765064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824076, 35.672840, 51.747849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873525, -0.029305, -0.485897,
		0.483384, -0.065483, 0.872956,
		-0.057400, -0.997423, -0.043035,
		25.806856, 35.373611, 51.734940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413208, 35.745625, 52.101234>,  <25.847036, 36.071808, 51.765064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413208, 35.745625, 52.101234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.289747, 35.444729, 51.868385>,  <26.215672, 35.264191, 51.728676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.289747, 35.444729, 51.868385>,  <26.413208, 35.745625, 52.101234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289747, 35.444729, 51.868385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852418, 0.052792, -0.520189,
		0.422040, -0.656767, 0.624932,
		-0.308651, -0.752243, -0.582120,
		26.197151, 35.219055, 51.693748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955490, 35.372326, 52.032017>,  <26.413208, 35.745625, 52.101234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955490, 35.372326, 52.032017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.733160, 35.253017, 51.721638>,  <26.599762, 35.181431, 51.535412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.733160, 35.253017, 51.721638>,  <26.955490, 35.372326, 52.032017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733160, 35.253017, 51.721638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818929, -0.036047, -0.572762,
		0.142869, -0.953800, 0.264300,
		-0.555828, -0.298273, -0.775944,
		26.566412, 35.163536, 51.488853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258320, 34.820873, 51.869465>,  <26.955490, 35.372326, 52.032017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258320, 34.820873, 51.869465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.045210, 34.927776, 51.548286>,  <26.917343, 34.991920, 51.355579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.045210, 34.927776, 51.548286>,  <27.258320, 34.820873, 51.869465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045210, 34.927776, 51.548286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782505, -0.205707, -0.587682,
		-0.322237, -0.941411, -0.099539,
		-0.532775, 0.267263, -0.802945,
		26.885378, 35.007954, 51.307404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374897, 34.333565, 51.288334>,  <27.258320, 34.820873, 51.869465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374897, 34.333565, 51.288334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.254686, 34.663681, 51.097095>,  <27.182560, 34.861752, 50.982353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.254686, 34.663681, 51.097095>,  <27.374897, 34.333565, 51.288334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254686, 34.663681, 51.097095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737690, -0.116605, -0.664993,
		-0.604564, -0.552531, -0.573770,
		-0.300525, 0.825295, -0.478092,
		27.164528, 34.911270, 50.953667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375473, 34.165710, 50.566132>,  <27.374897, 34.333565, 51.288334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375473, 34.165710, 50.566132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.382063, 34.563301, 50.609474>,  <27.386017, 34.801857, 50.635479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.382063, 34.563301, 50.609474>,  <27.375473, 34.165710, 50.566132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382063, 34.563301, 50.609474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824454, 0.047809, -0.563906,
		-0.565690, 0.098626, -0.818699,
		0.016475, 0.993975, 0.108358,
		27.387005, 34.861492, 50.641983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309765, 34.443546, 49.871487>,  <27.375473, 34.165710, 50.566132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309765, 34.443546, 49.871487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.498518, 34.710197, 50.102287>,  <27.611771, 34.870190, 50.240768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.498518, 34.710197, 50.102287>,  <27.309765, 34.443546, 49.871487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498518, 34.710197, 50.102287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812326, -0.074344, -0.578445,
		-0.342713, 0.741671, -0.576604,
		0.471883, 0.666631, 0.577000,
		27.640083, 34.910187, 50.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907125, 34.374741, 49.593479>,  <27.309765, 34.443546, 49.871487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907125, 34.374741, 49.593479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.966639, 34.694714, 49.826023>,  <28.002346, 34.886696, 49.965549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.966639, 34.694714, 49.826023>,  <27.907125, 34.374741, 49.593479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966639, 34.694714, 49.826023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896580, 0.138874, -0.420546,
		-0.417143, 0.583802, -0.696539,
		0.148784, 0.799931, 0.581355,
		28.011274, 34.934692, 50.000431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068401, 34.969902, 49.199276>,  <27.907125, 34.374741, 49.593479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068401, 34.969902, 49.199276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.242008, 35.036114, 49.553505>,  <28.346172, 35.075840, 49.766041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.242008, 35.036114, 49.553505>,  <28.068401, 34.969902, 49.199276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242008, 35.036114, 49.553505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895888, 0.024299, -0.443616,
		-0.094949, 0.985906, -0.137747,
		0.434016, 0.165527, 0.885568,
		28.372213, 35.085773, 49.819176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531849, 35.523106, 49.049801>,  <28.068401, 34.969902, 49.199276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531849, 35.523106, 49.049801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.650583, 35.364223, 49.397160>,  <28.721825, 35.268894, 49.605576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.650583, 35.364223, 49.397160>,  <28.531849, 35.523106, 49.049801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650583, 35.364223, 49.397160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945979, -0.001896, -0.324223,
		0.130431, 0.917726, 0.375189,
		0.296837, -0.397209, 0.868397,
		28.739634, 35.245060, 49.657677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018974, 35.897511, 49.265743>,  <28.531849, 35.523106, 49.049801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018974, 35.897511, 49.265743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.086246, 35.533745, 49.417889>,  <29.126610, 35.315483, 49.509174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.086246, 35.533745, 49.417889>,  <29.018974, 35.897511, 49.265743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086246, 35.533745, 49.417889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923497, 0.010402, -0.383465,
		0.344773, 0.415754, 0.841594,
		0.168181, -0.909418, 0.380362,
		29.136702, 35.260918, 49.531998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781223, 35.923824, 49.488258>,  <29.018974, 35.897511, 49.265743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781223, 35.923824, 49.488258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.698305, 35.533508, 49.460350>,  <29.648554, 35.299320, 49.443604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.698305, 35.533508, 49.460350>,  <29.781223, 35.923824, 49.488258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698305, 35.533508, 49.460350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883050, -0.155945, -0.442611,
		0.421014, -0.153362, 0.893995,
		-0.207294, -0.975787, -0.069772,
		29.636116, 35.240772, 49.439419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384594, 35.545128, 49.644394>,  <29.781223, 35.923824, 49.488258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384594, 35.545128, 49.644394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192324, 35.245316, 49.462337>,  <30.076962, 35.065430, 49.353104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192324, 35.245316, 49.462337>,  <30.384594, 35.545128, 49.644394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192324, 35.245316, 49.462337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837360, -0.238241, -0.492007,
		0.260342, -0.617611, 0.742145,
		-0.480678, -0.749532, -0.455138,
		30.048120, 35.020454, 49.325794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740427, 34.920025, 49.751495>,  <30.384594, 35.545128, 49.644394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740427, 34.920025, 49.751495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.534473, 34.873219, 49.411800>,  <30.410900, 34.845135, 49.207985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.534473, 34.873219, 49.411800>,  <30.740427, 34.920025, 49.751495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534473, 34.873219, 49.411800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825955, -0.332977, -0.454891,
		-0.229546, -0.935646, 0.268095,
		-0.514886, -0.117016, -0.849234,
		30.380007, 34.838116, 49.157028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056101, 34.351902, 49.456676>,  <30.740427, 34.920025, 49.751495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056101, 34.351902, 49.456676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.838955, 34.502502, 49.156399>,  <30.708668, 34.592861, 48.976231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.838955, 34.502502, 49.156399>,  <31.056101, 34.351902, 49.456676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838955, 34.502502, 49.156399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761879, -0.155279, -0.628832,
		-0.353323, -0.913310, -0.202553,
		-0.542866, 0.376502, -0.750695,
		30.676096, 34.615452, 48.931190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167511, 33.859810, 48.983582>,  <31.056101, 34.351902, 49.456676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167511, 33.859810, 48.983582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.062845, 34.210442, 48.822014>,  <31.000046, 34.420818, 48.725075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.062845, 34.210442, 48.822014>,  <31.167511, 33.859810, 48.983582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062845, 34.210442, 48.822014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830442, -0.008784, -0.557036,
		-0.491832, -0.481184, -0.725647,
		-0.261662, 0.876576, -0.403916,
		30.984346, 34.473415, 48.700840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188519, 33.770901, 48.200180>,  <31.167511, 33.859810, 48.983582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188519, 33.770901, 48.200180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229307, 34.158249, 48.291267>,  <31.253780, 34.390659, 48.345921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229307, 34.158249, 48.291267>,  <31.188519, 33.770901, 48.200180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229307, 34.158249, 48.291267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559875, 0.133347, -0.817776,
		-0.822278, 0.210885, -0.528571,
		0.101973, 0.968373, 0.227717,
		31.259899, 34.448761, 48.359581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327074, 34.013721, 47.571491>,  <31.188519, 33.770901, 48.200180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327074, 34.013721, 47.571491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.463949, 34.321419, 47.787334>,  <31.546074, 34.506035, 47.916840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.463949, 34.321419, 47.787334>,  <31.327074, 34.013721, 47.571491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463949, 34.321419, 47.787334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751960, 0.120171, -0.648162,
		-0.563438, 0.627556, -0.537318,
		0.342188, 0.769241, 0.539607,
		31.566607, 34.552193, 47.949215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.658003, 34.557186, 35.155598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.530273, 34.855839, 34.922165>,  <24.453636, 35.035030, 34.782104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.530273, 34.855839, 34.922165>,  <24.658003, 34.557186, 35.155598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530273, 34.855839, 34.922165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937560, -0.159309, 0.309195,
		0.137886, 0.645878, 0.750886,
		-0.319325, 0.746634, -0.583583,
		24.434477, 35.079830, 34.747089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929075, 35.215034, 35.194210>,  <24.658003, 34.557186, 35.155598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929075, 35.215034, 35.194210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.175671, 35.498165, 35.332146>,  <25.323627, 35.668045, 35.414909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.175671, 35.498165, 35.332146>,  <24.929075, 35.215034, 35.194210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.175671, 35.498165, 35.332146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452191, -0.040248, 0.891013,
		0.644566, -0.705234, 0.295262,
		0.616489, 0.707831, 0.344843,
		25.360617, 35.710514, 35.435600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195065, 35.012379, 35.855228>,  <24.929075, 35.215034, 35.194210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195065, 35.012379, 35.855228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.199577, 35.411152, 35.824242>,  <25.202284, 35.650414, 35.805649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.199577, 35.411152, 35.824242>,  <25.195065, 35.012379, 35.855228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199577, 35.411152, 35.824242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526774, 0.071778, 0.846969,
		0.849931, 0.031256, 0.525967,
		0.011280, 0.996931, -0.077471,
		25.202961, 35.710232, 35.800999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527868, 35.424873, 36.367790>,  <25.195065, 35.012379, 35.855228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527868, 35.424873, 36.367790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.234955, 35.658276, 36.227345>,  <25.059206, 35.798317, 36.143078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.234955, 35.658276, 36.227345>,  <25.527868, 35.424873, 36.367790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234955, 35.658276, 36.227345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385074, 0.070453, 0.920192,
		0.561672, 0.809049, 0.173101,
		-0.732286, 0.583503, -0.351115,
		25.015268, 35.833328, 36.122009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650085, 36.257843, 36.546249>,  <25.527868, 35.424873, 36.367790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650085, 36.257843, 36.546249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.284451, 36.110287, 36.478886>,  <25.065069, 36.021751, 36.438465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.284451, 36.110287, 36.478886>,  <25.650085, 36.257843, 36.546249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284451, 36.110287, 36.478886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286163, 0.292529, 0.912435,
		-0.287327, 0.882238, -0.372961,
		-0.914086, -0.368895, -0.168412,
		25.010225, 35.999619, 36.428364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974335, 35.813496, 36.930367>,  <25.650085, 36.257843, 36.546249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974335, 35.813496, 36.930367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.270834, 35.672302, 37.158733>,  <26.448734, 35.587585, 37.295753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.270834, 35.672302, 37.158733>,  <25.974335, 35.813496, 36.930367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270834, 35.672302, 37.158733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160316, -0.732841, -0.661243,
		0.651805, 0.581673, -0.486628,
		0.741248, -0.352987, 0.570921,
		26.493208, 35.566406, 37.330009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447645, 35.570847, 36.465523>,  <25.974335, 35.813496, 36.930367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447645, 35.570847, 36.465523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.571609, 35.399391, 36.804985>,  <26.645988, 35.296516, 37.008663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.571609, 35.399391, 36.804985>,  <26.447645, 35.570847, 36.465523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571609, 35.399391, 36.804985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210496, -0.839522, -0.500894,
		0.927172, 0.333871, -0.169949,
		0.309910, -0.428641, 0.848659,
		26.664583, 35.270798, 37.059582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218828, 35.304951, 36.340576>,  <26.447645, 35.570847, 36.465523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218828, 35.304951, 36.340576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.958982, 35.147945, 36.601017>,  <26.803074, 35.053741, 36.757282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.958982, 35.147945, 36.601017>,  <27.218828, 35.304951, 36.340576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958982, 35.147945, 36.601017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080157, -0.816280, -0.572068,
		0.756025, -0.423815, 0.498806,
		-0.649616, -0.392515, 0.651100,
		26.764097, 35.030190, 36.796349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254530, 34.591614, 36.204178>,  <27.218828, 35.304951, 36.340576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254530, 34.591614, 36.204178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.912771, 34.637867, 36.406815>,  <26.707716, 34.665619, 36.528397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.912771, 34.637867, 36.406815>,  <27.254530, 34.591614, 36.204178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912771, 34.637867, 36.406815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453253, -0.642601, -0.617758,
		0.254105, -0.757425, 0.601446,
		-0.854396, 0.115632, 0.506594,
		26.656452, 34.672558, 36.558792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884956, 34.934723, 36.391216>,  <27.254530, 34.591614, 36.204178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884956, 34.934723, 36.391216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.198112, 34.708160, 36.494186>,  <28.386005, 34.572224, 36.555969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.198112, 34.708160, 36.494186>,  <27.884956, 34.934723, 36.391216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198112, 34.708160, 36.494186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254176, -0.668831, -0.698613,
		0.567874, 0.481505, -0.667587,
		0.782888, -0.566409, 0.257425,
		28.432980, 34.538239, 36.571415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549889, 34.831612, 35.876091>,  <27.884956, 34.934723, 36.391216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549889, 34.831612, 35.876091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.487638, 34.507694, 36.102371>,  <28.450289, 34.313343, 36.238140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.487638, 34.507694, 36.102371>,  <28.549889, 34.831612, 35.876091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487638, 34.507694, 36.102371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324339, -0.499035, -0.803597,
		0.933052, -0.308536, -0.184987,
		-0.155623, -0.809796, 0.565696,
		28.440952, 34.264755, 36.272079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905897, 34.259209, 35.520092>,  <28.549889, 34.831612, 35.876091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905897, 34.259209, 35.520092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.595135, 34.134026, 35.738621>,  <28.408676, 34.058914, 35.869740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.595135, 34.134026, 35.738621>,  <28.905897, 34.259209, 35.520092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595135, 34.134026, 35.738621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261389, -0.629074, -0.732080,
		0.572791, -0.711562, 0.406928,
		-0.776908, -0.312963, 0.546322,
		28.362062, 34.040138, 35.902519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333824, 33.804901, 36.109840>,  <28.905897, 34.259209, 35.520092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333824, 33.804901, 36.109840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.034061, 33.541790, 36.079597>,  <28.854204, 33.383923, 36.061451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.034061, 33.541790, 36.079597>,  <29.333824, 33.804901, 36.109840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034061, 33.541790, 36.079597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259344, -0.186549, -0.947597,
		0.609205, -0.729744, 0.310392,
		-0.749407, -0.657779, -0.075608,
		28.809238, 33.344456, 36.056915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613775, 33.245235, 35.834290>,  <29.333824, 33.804901, 36.109840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613775, 33.245235, 35.834290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221685, 33.287712, 35.767498>,  <28.986431, 33.313198, 35.727425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221685, 33.287712, 35.767498>,  <29.613775, 33.245235, 35.834290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221685, 33.287712, 35.767498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174032, 0.061004, -0.982849,
		-0.094188, -0.992472, -0.078279,
		-0.980225, 0.106195, -0.166976,
		28.927618, 33.319572, 35.717403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129358, 32.694534, 36.083889>,  <29.613775, 33.245235, 35.834290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129358, 32.694534, 36.083889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089745, 32.734852, 36.479874>,  <30.065977, 32.759045, 36.717464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089745, 32.734852, 36.479874>,  <30.129358, 32.694534, 36.083889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089745, 32.734852, 36.479874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400678, -0.914682, 0.053047,
		0.910851, -0.391404, 0.130972,
		-0.099035, 0.100796, 0.989966,
		30.060034, 32.765091, 36.776863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383600, 32.014820, 36.283516>,  <30.129358, 32.694534, 36.083889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383600, 32.014820, 36.283516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159464, 32.196747, 36.560402>,  <30.024982, 32.305904, 36.726532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159464, 32.196747, 36.560402>,  <30.383600, 32.014820, 36.283516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159464, 32.196747, 36.560402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198682, -0.885150, 0.420755,
		0.804078, 0.098237, 0.586352,
		-0.560343, 0.454818, 0.692211,
		29.991362, 32.333191, 36.768066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580675, 31.768379, 36.989750>,  <30.383600, 32.014820, 36.283516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580675, 31.768379, 36.989750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204477, 31.902246, 36.966198>,  <29.978758, 31.982567, 36.952065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204477, 31.902246, 36.966198>,  <30.580675, 31.768379, 36.989750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204477, 31.902246, 36.966198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337270, -0.898201, 0.281928,
		0.041465, 0.285011, 0.957627,
		-0.940494, 0.334669, -0.058882,
		29.922329, 32.002647, 36.948532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925261, 32.336315, 37.404819>,  <30.580675, 31.768379, 36.989750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925261, 32.336315, 37.404819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259619, 32.529396, 37.300304>,  <31.460234, 32.645245, 37.237595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259619, 32.529396, 37.300304>,  <30.925261, 32.336315, 37.404819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259619, 32.529396, 37.300304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342029, -0.085750, 0.935768,
		0.429295, -0.871575, -0.236777,
		0.835896, 0.482705, -0.261292,
		31.510387, 32.674206, 37.221916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574070, 31.994167, 37.624989>,  <30.925261, 32.336315, 37.404819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574070, 31.994167, 37.624989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680016, 32.379574, 37.609581>,  <31.743584, 32.610817, 37.600334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680016, 32.379574, 37.609581>,  <31.574070, 31.994167, 37.624989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680016, 32.379574, 37.609581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365611, -0.063378, 0.928608,
		0.892287, -0.260039, -0.369058,
		0.264865, 0.963516, -0.038521,
		31.759476, 32.668629, 37.598026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423534, 32.139980, 37.691525>,  <31.574070, 31.994167, 37.624989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423534, 32.139980, 37.691525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181641, 32.421692, 37.840271>,  <32.036503, 32.590717, 37.929520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181641, 32.421692, 37.840271>,  <32.423534, 32.139980, 37.691525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181641, 32.421692, 37.840271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357192, -0.177487, 0.917013,
		0.711833, 0.687381, -0.144229,
		-0.604738, 0.704277, 0.371868,
		32.000217, 32.632977, 37.951832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732372, 32.709629, 37.970093>,  <32.423534, 32.139980, 37.691525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732372, 32.709629, 37.970093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401501, 32.684502, 38.193462>,  <32.202980, 32.669426, 38.327484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401501, 32.684502, 38.193462>,  <32.732372, 32.709629, 37.970093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401501, 32.684502, 38.193462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537006, 0.204388, 0.818444,
		-0.165551, 0.976872, -0.135329,
		-0.827174, -0.062822, 0.558423,
		32.153347, 32.665653, 38.360989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571373, 33.324993, 38.512932>,  <32.732372, 32.709629, 37.970093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571373, 33.324993, 38.512932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405464, 33.000359, 38.677517>,  <32.305920, 32.805580, 38.776268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405464, 33.000359, 38.677517>,  <32.571373, 33.324993, 38.512932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405464, 33.000359, 38.677517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691945, 0.012335, 0.721845,
		-0.590913, 0.584106, 0.556455,
		-0.414770, -0.811584, 0.411458,
		32.281033, 32.756882, 38.800953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629051, 33.473270, 39.235592>,  <32.571373, 33.324993, 38.512932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629051, 33.473270, 39.235592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554970, 33.082806, 39.190323>,  <32.510521, 32.848526, 39.163162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554970, 33.082806, 39.190323>,  <32.629051, 33.473270, 39.235592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554970, 33.082806, 39.190323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644451, -0.207593, 0.735927,
		-0.741878, 0.063361, 0.667535,
		-0.185205, -0.976161, -0.113176,
		32.499409, 32.789959, 39.156368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185452, 33.428822, 39.908291>,  <32.629051, 33.473270, 39.235592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185452, 33.428822, 39.908291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379353, 33.128433, 40.087650>,  <32.495693, 32.948200, 40.195267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379353, 33.128433, 40.087650>,  <32.185452, 33.428822, 39.908291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379353, 33.128433, 40.087650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874570, -0.423239, 0.236635,
		0.012076, -0.506867, -0.861940,
		0.484749, -0.750969, 0.448402,
		32.524776, 32.903141, 40.222172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839741, 33.609741, 40.504581>,  <32.185452, 33.428822, 39.908291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839741, 33.609741, 40.504581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201981, 33.778694, 40.520020>,  <32.419323, 33.880066, 40.529282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201981, 33.778694, 40.520020>,  <31.839741, 33.609741, 40.504581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201981, 33.778694, 40.520020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382298, 0.773462, 0.505573,
		0.183687, -0.472602, 0.861920,
		0.905598, 0.422378, 0.038600,
		32.473660, 33.905407, 40.531601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165001, 33.804569, 41.239494>,  <31.839741, 33.609741, 40.504581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165001, 33.804569, 41.239494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239712, 34.042927, 40.927078>,  <32.284538, 34.185944, 40.739628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239712, 34.042927, 40.927078>,  <32.165001, 33.804569, 41.239494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239712, 34.042927, 40.927078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418341, 0.767587, 0.485593,
		0.888878, 0.236041, 0.392660,
		0.186781, 0.595898, -0.781037,
		32.295746, 34.221695, 40.692768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442680, 34.459248, 41.471394>,  <32.165001, 33.804569, 41.239494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442680, 34.459248, 41.471394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.298710, 34.560497, 41.112198>,  <32.212330, 34.621246, 40.896679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.298710, 34.560497, 41.112198>,  <32.442680, 34.459248, 41.471394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298710, 34.560497, 41.112198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395199, 0.830515, 0.392508,
		0.845147, 0.496156, -0.198884,
		-0.359922, 0.253129, -0.897988,
		32.190735, 34.636436, 40.842800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156673, 34.551975, 41.789433>,  <32.442680, 34.459248, 41.471394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156673, 34.551975, 41.789433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002945, 34.920834, 41.771801>,  <32.910709, 35.142147, 41.761223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002945, 34.920834, 41.771801>,  <33.156673, 34.551975, 41.789433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002945, 34.920834, 41.771801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273113, -0.067961, 0.959578,
		0.881877, 0.380823, 0.277969,
		-0.384321, 0.922147, -0.044075,
		32.887650, 35.197479, 41.758579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346825, 34.971706, 42.438732>,  <33.156673, 34.551975, 41.789433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346825, 34.971706, 42.438732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997112, 35.121418, 42.315086>,  <32.787285, 35.211246, 42.240898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997112, 35.121418, 42.315086>,  <33.346825, 34.971706, 42.438732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997112, 35.121418, 42.315086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376178, -0.119935, 0.918752,
		0.306796, 0.919528, 0.245652,
		-0.874281, 0.374279, -0.309110,
		32.734829, 35.233700, 42.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178829, 35.552654, 42.848408>,  <33.346825, 34.971706, 42.438732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178829, 35.552654, 42.848408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864044, 35.348415, 42.709850>,  <32.675175, 35.225872, 42.626717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864044, 35.348415, 42.709850>,  <33.178829, 35.552654, 42.848408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864044, 35.348415, 42.709850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204263, -0.314151, 0.927138,
		-0.582209, 0.800377, 0.142930,
		-0.786962, -0.510593, -0.346389,
		32.627956, 35.195236, 42.605934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395885, 35.824574, 42.968246>,  <33.178829, 35.552654, 42.848408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395885, 35.824574, 42.968246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472809, 35.433277, 42.999390>,  <32.518963, 35.198498, 43.018074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472809, 35.433277, 42.999390>,  <32.395885, 35.824574, 42.968246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472809, 35.433277, 42.999390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061858, 0.067093, 0.995827,
		-0.979383, -0.196323, -0.047609,
		0.192309, -0.978241, 0.077854,
		32.530502, 35.139805, 43.022747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852966, 35.384743, 43.349907>,  <32.395885, 35.824574, 42.968246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852966, 35.384743, 43.349907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.223133, 35.240681, 43.397049>,  <32.445232, 35.154243, 43.425335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.223133, 35.240681, 43.397049>,  <31.852966, 35.384743, 43.349907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223133, 35.240681, 43.397049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010042, 0.287593, 0.957700,
		-0.378812, -0.887457, 0.262527,
		0.925419, -0.360152, 0.117856,
		32.500759, 35.132637, 43.432407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817305, 35.122845, 44.075302>,  <31.852966, 35.384743, 43.349907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817305, 35.122845, 44.075302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207336, 35.158672, 43.994110>,  <32.441357, 35.180168, 43.945396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207336, 35.158672, 43.994110>,  <31.817305, 35.122845, 44.075302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207336, 35.158672, 43.994110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184904, 0.177517, 0.966591,
		0.122607, -0.980034, 0.156531,
		0.975079, 0.089567, -0.202977,
		32.499859, 35.185543, 43.933216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292568, 34.501244, 44.335308>,  <31.817305, 35.122845, 44.075302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292568, 34.501244, 44.335308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448921, 34.869392, 44.330723>,  <32.542732, 35.090282, 44.327972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448921, 34.869392, 44.330723>,  <32.292568, 34.501244, 44.335308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448921, 34.869392, 44.330723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067583, 0.041115, 0.996866,
		0.917955, -0.388887, 0.078273,
		0.390886, 0.920368, -0.011460,
		32.566189, 35.145504, 44.327286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019360, 34.492672, 44.642021>,  <32.292568, 34.501244, 44.335308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019360, 34.492672, 44.642021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766510, 34.802593, 44.646027>,  <32.614799, 34.988544, 44.648430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766510, 34.802593, 44.646027>,  <33.019360, 34.492672, 44.642021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766510, 34.802593, 44.646027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008954, -0.020221, 0.999755,
		0.774812, 0.631884, 0.019720,
		-0.632129, 0.774799, 0.010010,
		32.576870, 35.035034, 44.649029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817661, 34.127289, 45.199684>,  <33.019360, 34.492672, 44.642021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817661, 34.127289, 45.199684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467819, 34.213783, 45.373260>,  <32.257915, 34.265678, 45.477406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467819, 34.213783, 45.373260>,  <32.817661, 34.127289, 45.199684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467819, 34.213783, 45.373260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070811, -0.942406, 0.326889,
		0.479638, 0.255171, 0.839545,
		-0.874605, 0.216237, 0.433945,
		32.205437, 34.278656, 45.503445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938637, 34.028469, 45.870533>,  <32.817661, 34.127289, 45.199684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938637, 34.028469, 45.870533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542263, 34.020863, 45.817345>,  <32.304440, 34.016300, 45.785431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542263, 34.020863, 45.817345>,  <32.938637, 34.028469, 45.870533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542263, 34.020863, 45.817345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056589, -0.838690, 0.541661,
		-0.121817, 0.544277, 0.830014,
		-0.990938, -0.019014, -0.132967,
		32.244980, 34.015160, 45.777454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457069, 34.416496, 46.283718>,  <32.938637, 34.028469, 45.870533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457069, 34.416496, 46.283718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365944, 34.058372, 46.130608>,  <32.311268, 33.843498, 46.038742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365944, 34.058372, 46.130608>,  <32.457069, 34.416496, 46.283718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365944, 34.058372, 46.130608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209713, -0.338776, 0.917198,
		-0.950852, 0.289228, -0.110578,
		-0.227818, -0.895309, -0.382780,
		32.297600, 33.789780, 46.015774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752846, 34.212055, 46.437267>,  <32.457069, 34.416496, 46.283718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752846, 34.212055, 46.437267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973482, 33.879082, 46.416065>,  <32.105865, 33.679298, 46.403343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973482, 33.879082, 46.416065>,  <31.752846, 34.212055, 46.437267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973482, 33.879082, 46.416065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394893, -0.316584, 0.862458,
		-0.734716, -0.454793, -0.503345,
		0.551590, -0.832429, -0.053004,
		32.138958, 33.629353, 46.400166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477478, 34.726063, 47.027058>,  <31.752846, 34.212055, 46.437267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477478, 34.726063, 47.027058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690897, 34.762547, 47.363392>,  <31.818949, 34.784435, 47.565193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690897, 34.762547, 47.363392>,  <31.477478, 34.726063, 47.027058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690897, 34.762547, 47.363392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827671, 0.148255, -0.541277,
		-0.174026, 0.984734, 0.003614,
		0.533550, 0.091205, 0.840837,
		31.850962, 34.789909, 47.615643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004646, 35.174908, 46.803177>,  <31.477478, 34.726063, 47.027058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004646, 35.174908, 46.803177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136276, 35.036259, 47.154533>,  <32.215256, 34.953072, 47.365345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136276, 35.036259, 47.154533>,  <32.004646, 35.174908, 46.803177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136276, 35.036259, 47.154533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932166, -0.029430, -0.360834,
		0.150923, 0.937544, 0.313423,
		0.329074, -0.346621, 0.878387,
		32.234997, 34.932274, 47.418049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521008, 35.589195, 46.916843>,  <32.004646, 35.174908, 46.803177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521008, 35.589195, 46.916843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600903, 35.277473, 47.154430>,  <32.648838, 35.090443, 47.296982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600903, 35.277473, 47.154430>,  <32.521008, 35.589195, 46.916843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600903, 35.277473, 47.154430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954630, 0.018119, -0.297241,
		0.220879, 0.626386, 0.747565,
		0.199733, -0.779302, 0.593965,
		32.660824, 35.043682, 47.332619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049164, 35.770546, 47.363434>,  <32.521008, 35.589195, 46.916843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049164, 35.770546, 47.363434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058784, 35.371910, 47.331844>,  <33.064556, 35.132729, 47.312889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058784, 35.371910, 47.331844>,  <33.049164, 35.770546, 47.363434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058784, 35.371910, 47.331844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985686, 0.036827, -0.164518,
		0.166865, -0.073891, 0.983207,
		0.024053, -0.996586, -0.078978,
		33.066002, 35.072933, 47.308151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547695, 35.572857, 47.849239>,  <33.049164, 35.770546, 47.363434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547695, 35.572857, 47.849239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527607, 35.256577, 47.605186>,  <33.515553, 35.066807, 47.458755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527607, 35.256577, 47.605186>,  <33.547695, 35.572857, 47.849239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527607, 35.256577, 47.605186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998015, -0.016482, -0.060786,
		0.038008, -0.611975, 0.789963,
		-0.050220, -0.790705, -0.610134,
		33.512543, 35.019363, 47.422146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232086, 35.193764, 47.943016>,  <33.547695, 35.572857, 47.849239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232086, 35.193764, 47.943016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100838, 35.017876, 47.608597>,  <34.022087, 34.912342, 47.407944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100838, 35.017876, 47.608597>,  <34.232086, 35.193764, 47.943016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100838, 35.017876, 47.608597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935065, -0.276850, -0.221376,
		-0.134118, -0.854403, 0.502004,
		-0.328124, -0.439716, -0.836053,
		34.002399, 34.885960, 47.357780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770374, 34.658596, 47.817741>,  <34.232086, 35.193764, 47.943016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770374, 34.658596, 47.817741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587528, 34.678497, 47.462536>,  <34.477821, 34.690437, 47.249413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587528, 34.678497, 47.462536>,  <34.770374, 34.658596, 47.817741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587528, 34.678497, 47.462536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865911, -0.203091, -0.457113,
		-0.203091, -0.977895, 0.049753,
		0.457113, -0.049753, 0.888016,
		34.450394, 34.693424, 47.196133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039509, 34.171314, 47.418587>,  <34.770374, 34.658596, 47.817741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039509, 34.171314, 47.418587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882309, 34.422962, 47.150330>,  <34.787991, 34.573952, 46.989376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882309, 34.422962, 47.150330>,  <35.039509, 34.171314, 47.418587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882309, 34.422962, 47.150330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757677, -0.191712, -0.623836,
		-0.521037, -0.753298, -0.401326,
		-0.392996, 0.629118, -0.670645,
		34.764412, 34.611698, 46.949135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185070, 33.878475, 46.791180>,  <35.039509, 34.171314, 47.418587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185070, 33.878475, 46.791180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.121296, 34.263683, 46.704300>,  <35.083031, 34.494808, 46.652172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.121296, 34.263683, 46.704300>,  <35.185070, 33.878475, 46.791180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121296, 34.263683, 46.704300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666853, -0.057173, -0.742993,
		-0.727934, -0.263299, -0.633076,
		-0.159434, 0.963018, -0.217200,
		35.073467, 34.552589, 46.639141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366482, 33.972641, 46.132378>,  <35.185070, 33.878475, 46.791180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366482, 33.972641, 46.132378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376896, 34.343304, 46.282383>,  <35.383144, 34.565701, 46.372387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376896, 34.343304, 46.282383>,  <35.366482, 33.972641, 46.132378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376896, 34.343304, 46.282383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696108, 0.252439, -0.672092,
		-0.717465, 0.278550, -0.638478,
		0.026034, 0.926652, 0.375017,
		35.384705, 34.621300, 46.394890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356094, 34.455307, 45.560448>,  <35.366482, 33.972641, 46.132378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356094, 34.455307, 45.560448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509598, 34.654556, 45.871471>,  <35.601700, 34.774105, 46.058086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509598, 34.654556, 45.871471>,  <35.356094, 34.455307, 45.560448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509598, 34.654556, 45.871471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721334, 0.364025, -0.589206,
		-0.576551, 0.786993, -0.219618,
		0.383754, 0.498125, 0.777563,
		35.624725, 34.803993, 46.104740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512386, 35.042305, 45.234215>,  <35.356094, 34.455307, 45.560448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512386, 35.042305, 45.234215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739788, 35.018112, 45.562397>,  <35.876228, 35.003597, 45.759308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739788, 35.018112, 45.562397>,  <35.512386, 35.042305, 45.234215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739788, 35.018112, 45.562397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780689, 0.354213, -0.514838,
		-0.259477, 0.933207, 0.248590,
		0.568504, -0.060483, 0.820454,
		35.910339, 34.999966, 45.808533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864330, 35.655930, 45.188232>,  <35.512386, 35.042305, 45.234215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864330, 35.655930, 45.188232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044182, 35.362091, 45.391487>,  <36.152092, 35.185787, 45.513439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044182, 35.362091, 45.391487>,  <35.864330, 35.655930, 45.188232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044182, 35.362091, 45.391487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799651, 0.077576, -0.595433,
		0.397981, 0.674058, 0.622299,
		0.449632, -0.734593, 0.508137,
		36.179070, 35.141712, 45.543930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540897, 35.955315, 45.154808>,  <35.864330, 35.655930, 45.188232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540897, 35.955315, 45.154808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578522, 35.578926, 45.284870>,  <36.601097, 35.353092, 45.362907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578522, 35.578926, 45.284870>,  <36.540897, 35.955315, 45.154808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578522, 35.578926, 45.284870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900718, -0.058694, -0.430420,
		0.424098, 0.333360, 0.842029,
		0.094063, -0.940971, 0.325156,
		36.606739, 35.296635, 45.382416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186409, 35.707619, 45.507252>,  <36.540897, 35.955315, 45.154808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186409, 35.707619, 45.507252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543064, 35.882912, 45.461754>,  <37.757057, 35.988087, 45.434456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543064, 35.882912, 45.461754>,  <37.186409, 35.707619, 45.507252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543064, 35.882912, 45.461754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111414, -0.455887, -0.883037,
		-0.438829, 0.774675, -0.455311,
		0.891637, 0.438230, -0.113747,
		37.810555, 36.014381, 45.427631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823544, 35.217567, 45.584629>,  <37.186409, 35.707619, 45.507252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823544, 35.217567, 45.584629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079678, 35.349247, 45.862217>,  <38.233360, 35.428253, 46.028770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079678, 35.349247, 45.862217>,  <37.823544, 35.217567, 45.584629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079678, 35.349247, 45.862217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242666, -0.943929, 0.223856,
		0.728754, 0.025061, -0.684317,
		0.640337, 0.329196, 0.693973,
		38.271778, 35.448006, 46.070408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709351, 35.209717, 45.538071>,  <37.823544, 35.217567, 45.584629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709351, 35.209717, 45.538071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581894, 35.163532, 45.914398>,  <38.505421, 35.135822, 46.140194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581894, 35.163532, 45.914398>,  <38.709351, 35.209717, 45.538071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581894, 35.163532, 45.914398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453099, -0.890364, 0.044187,
		0.832566, 0.440362, 0.336029,
		-0.318646, -0.115466, 0.940815,
		38.486301, 35.128891, 46.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273911, 34.958515, 45.822842>,  <38.709351, 35.209717, 45.538071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273911, 34.958515, 45.822842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968506, 34.859241, 46.061321>,  <38.785263, 34.799679, 46.204407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968506, 34.859241, 46.061321>,  <39.273911, 34.958515, 45.822842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968506, 34.859241, 46.061321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385126, -0.916057, 0.111878,
		0.518383, 0.315031, 0.795006,
		-0.763516, -0.248182, 0.596195,
		38.739452, 34.784786, 46.240181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573956, 34.829674, 46.580368>,  <39.273911, 34.958515, 45.822842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573956, 34.829674, 46.580368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254665, 34.621437, 46.459152>,  <39.063091, 34.496494, 46.386425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254665, 34.621437, 46.459152>,  <39.573956, 34.829674, 46.580368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254665, 34.621437, 46.459152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550781, -0.834472, -0.017258,
		-0.243890, -0.180682, 0.952823,
		-0.798222, -0.520588, -0.303035,
		39.015198, 34.465260, 46.368240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452301, 34.197952, 47.079731>,  <39.573956, 34.829674, 46.580368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452301, 34.197952, 47.079731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338013, 34.171940, 46.697289>,  <39.269440, 34.156334, 46.467823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338013, 34.171940, 46.697289>,  <39.452301, 34.197952, 47.079731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338013, 34.171940, 46.697289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478478, -0.874117, -0.083535,
		-0.830313, -0.481342, 0.280873,
		-0.285725, -0.065032, -0.956103,
		39.252296, 34.152431, 46.410458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378124, 34.273937, 47.870781>,  <39.452301, 34.197952, 47.079731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378124, 34.273937, 47.870781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.190727, 34.622059, 47.931564>,  <39.078289, 34.830933, 47.968033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.190727, 34.622059, 47.931564>,  <39.378124, 34.273937, 47.870781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190727, 34.622059, 47.931564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538570, -0.417686, 0.731765,
		0.700325, 0.260990, 0.664401,
		-0.468495, 0.870300, 0.151954,
		39.050179, 34.883148, 47.977150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233925, 34.301529, 48.589134>,  <39.378124, 34.273937, 47.870781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233925, 34.301529, 48.589134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027897, 34.630291, 48.491829>,  <38.904282, 34.827549, 48.433445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027897, 34.630291, 48.491829>,  <39.233925, 34.301529, 48.589134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027897, 34.630291, 48.491829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485045, -0.045495, 0.873305,
		0.706707, 0.567805, 0.422094,
		-0.515070, 0.821905, -0.243259,
		38.873375, 34.876862, 48.418850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321526, 34.746048, 49.147488>,  <39.233925, 34.301529, 48.589134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321526, 34.746048, 49.147488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.978176, 34.836357, 48.963223>,  <38.772167, 34.890541, 48.852661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.978176, 34.836357, 48.963223>,  <39.321526, 34.746048, 49.147488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978176, 34.836357, 48.963223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484437, -0.061178, 0.872685,
		0.168847, 0.972257, 0.161887,
		-0.858377, 0.225774, -0.460667,
		38.720661, 34.904091, 48.825024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983280, 35.275169, 49.605957>,  <39.321526, 34.746048, 49.147488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983280, 35.275169, 49.605957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695370, 35.130623, 49.368862>,  <38.522625, 35.043896, 49.226604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695370, 35.130623, 49.368862>,  <38.983280, 35.275169, 49.605957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695370, 35.130623, 49.368862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645712, 0.034975, 0.762779,
		-0.254911, 0.931768, -0.258513,
		-0.719775, -0.361366, -0.592739,
		38.479439, 35.022213, 49.191040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459629, 35.606483, 49.755394>,  <38.983280, 35.275169, 49.605957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459629, 35.606483, 49.755394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287933, 35.281689, 49.597195>,  <38.184914, 35.086811, 49.502274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287933, 35.281689, 49.597195>,  <38.459629, 35.606483, 49.755394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287933, 35.281689, 49.597195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645194, -0.030767, 0.763399,
		-0.632042, 0.582858, -0.510685,
		-0.429241, -0.811991, -0.395503,
		38.159161, 35.038090, 49.478542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849579, 35.772270, 49.672478>,  <38.459629, 35.606483, 49.755394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849579, 35.772270, 49.672478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816513, 35.374001, 49.655548>,  <37.796673, 35.135036, 49.645390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816513, 35.374001, 49.655548>,  <37.849579, 35.772270, 49.672478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816513, 35.374001, 49.655548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722955, 0.030684, 0.690213,
		-0.685932, 0.087654, -0.722368,
		-0.082665, -0.995679, -0.042322,
		37.791714, 35.075298, 49.642853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243034, 35.724789, 49.809795>,  <37.849579, 35.772270, 49.672478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243034, 35.724789, 49.809795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347523, 35.339195, 49.829823>,  <37.410213, 35.107841, 49.841839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347523, 35.339195, 49.829823>,  <37.243034, 35.724789, 49.809795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347523, 35.339195, 49.829823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857631, -0.207971, 0.470337,
		-0.442982, -0.165802, -0.881066,
		0.261219, -0.963980, 0.050069,
		37.425888, 35.050003, 49.844845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681099, 35.326195, 49.497578>,  <37.243034, 35.724789, 49.809795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681099, 35.326195, 49.497578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888313, 35.125553, 49.774715>,  <37.012642, 35.005169, 49.940998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888313, 35.125553, 49.774715>,  <36.681099, 35.326195, 49.497578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888313, 35.125553, 49.774715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826073, -0.083236, 0.557382,
		-0.221915, -0.861084, -0.457480,
		0.518031, -0.501604, 0.692847,
		37.043724, 34.975071, 49.982571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154144, 35.090874, 49.866398>,  <36.681099, 35.326195, 49.497578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154144, 35.090874, 49.866398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458897, 35.013634, 50.113701>,  <36.641750, 34.967289, 50.262081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458897, 35.013634, 50.113701>,  <36.154144, 35.090874, 49.866398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458897, 35.013634, 50.113701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623646, 0.039076, 0.780730,
		-0.174920, -0.980400, -0.090656,
		0.761885, -0.193103, 0.618258,
		36.687462, 34.955704, 50.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916779, 34.593868, 50.351322>,  <36.154144, 35.090874, 49.866398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916779, 34.593868, 50.351322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229160, 34.777287, 50.520954>,  <36.416592, 34.887337, 50.622734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229160, 34.777287, 50.520954>,  <35.916779, 34.593868, 50.351322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229160, 34.777287, 50.520954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565919, 0.232200, 0.791087,
		0.264291, -0.857792, 0.440844,
		0.780952, 0.458559, 0.424073,
		36.463448, 34.914848, 50.648178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867214, 34.497932, 51.028114>,  <35.916779, 34.593868, 50.351322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867214, 34.497932, 51.028114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107178, 34.816463, 51.059048>,  <36.251156, 35.007580, 51.077610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107178, 34.816463, 51.059048>,  <35.867214, 34.497932, 51.028114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107178, 34.816463, 51.059048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528161, 0.321564, 0.785903,
		0.600964, -0.512314, 0.613495,
		0.599907, 0.796323, 0.077336,
		36.287151, 35.055359, 51.082249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861759, 34.577389, 51.735790>,  <35.867214, 34.497932, 51.028114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861759, 34.577389, 51.735790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019131, 34.908920, 51.576660>,  <36.113552, 35.107838, 51.481182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019131, 34.908920, 51.576660>,  <35.861759, 34.577389, 51.735790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019131, 34.908920, 51.576660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508232, 0.556660, 0.657137,
		0.766104, -0.056349, 0.640241,
		0.393426, 0.828827, -0.397822,
		36.137157, 35.157570, 51.457314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927006, 35.024227, 52.342686>,  <35.861759, 34.577389, 51.735790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927006, 35.024227, 52.342686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923225, 35.265018, 52.023304>,  <35.920956, 35.409492, 51.831673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923225, 35.265018, 52.023304>,  <35.927006, 35.024227, 52.342686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923225, 35.265018, 52.023304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476929, 0.699107, 0.532719,
		0.878891, 0.385842, 0.280493,
		-0.009451, 0.601976, -0.798458,
		35.920391, 35.445610, 51.783768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056797, 35.662441, 52.623852>,  <35.927006, 35.024227, 52.342686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056797, 35.662441, 52.623852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878872, 35.754696, 52.277683>,  <35.772118, 35.810047, 52.069984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878872, 35.754696, 52.277683>,  <36.056797, 35.662441, 52.623852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878872, 35.754696, 52.277683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460294, 0.770028, 0.441798,
		0.768290, 0.594865, -0.236360,
		-0.444814, 0.230634, -0.865418,
		35.745426, 35.823887, 52.018059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070549, 36.430515, 52.586498>,  <36.056797, 35.662441, 52.623852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070549, 36.430515, 52.586498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777832, 36.288998, 52.353497>,  <35.602203, 36.204086, 52.213696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777832, 36.288998, 52.353497>,  <36.070549, 36.430515, 52.586498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777832, 36.288998, 52.353497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627504, 0.683277, 0.373323,
		0.265928, 0.638716, -0.722027,
		-0.731792, -0.353798, -0.582500,
		35.558292, 36.182858, 52.178745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756969, 36.955162, 52.128597>,  <36.070549, 36.430515, 52.586498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756969, 36.955162, 52.128597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484261, 36.673161, 52.206726>,  <35.320633, 36.503960, 52.253601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484261, 36.673161, 52.206726>,  <35.756969, 36.955162, 52.128597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484261, 36.673161, 52.206726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610961, 0.695566, 0.378041,
		-0.402379, 0.138407, -0.904950,
		-0.681776, -0.705005, 0.195320,
		35.279728, 36.461658, 52.265324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140957, 37.104897, 51.769035>,  <35.756969, 36.955162, 52.128597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140957, 37.104897, 51.769035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968540, 36.853931, 52.028439>,  <34.865089, 36.703354, 52.184078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968540, 36.853931, 52.028439>,  <35.140957, 37.104897, 51.769035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968540, 36.853931, 52.028439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687498, 0.693843, 0.214310,
		-0.584422, -0.353470, -0.730418,
		-0.431043, -0.627408, 0.648506,
		34.839226, 36.665710, 52.222992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395592, 36.961094, 51.688709>,  <35.140957, 37.104897, 51.769035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395592, 36.961094, 51.688709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486050, 36.924873, 52.076660>,  <34.540325, 36.903141, 52.309429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486050, 36.924873, 52.076660>,  <34.395592, 36.961094, 51.688709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486050, 36.924873, 52.076660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706838, 0.669845, 0.227349,
		-0.670254, -0.736959, 0.087474,
		0.226141, -0.090551, 0.969877,
		34.553890, 36.897709, 52.367622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812553, 37.225067, 51.954967>,  <34.395592, 36.961094, 51.688709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812553, 37.225067, 51.954967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027088, 37.233566, 52.292461>,  <34.155807, 37.238667, 52.494957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027088, 37.233566, 52.292461>,  <33.812553, 37.225067, 51.954967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027088, 37.233566, 52.292461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732789, 0.507727, 0.453027,
		-0.418762, -0.861256, 0.287882,
		0.536338, 0.021246, 0.843736,
		34.187988, 37.239941, 52.545582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376614, 37.024097, 52.561340>,  <33.812553, 37.225067, 51.954967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376614, 37.024097, 52.561340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682919, 37.185711, 52.761490>,  <33.866699, 37.282681, 52.881580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682919, 37.185711, 52.761490>,  <33.376614, 37.024097, 52.561340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682919, 37.185711, 52.761490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642908, 0.460479, 0.612070,
		0.016885, -0.790391, 0.612371,
		0.765758, 0.404032, 0.500373,
		33.912647, 37.306919, 52.911602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297184, 36.851826, 53.276485>,  <33.376614, 37.024097, 52.561340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297184, 36.851826, 53.276485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539703, 37.169384, 53.258015>,  <33.685215, 37.359917, 53.246933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539703, 37.169384, 53.258015>,  <33.297184, 36.851826, 53.276485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539703, 37.169384, 53.258015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622371, 0.509856, 0.593886,
		0.495029, -0.331331, 0.803222,
		0.606301, 0.793893, -0.046183,
		33.721596, 37.407551, 53.244160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213833, 37.038013, 53.876293>,  <33.297184, 36.851826, 53.276485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213833, 37.038013, 53.876293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380394, 37.359619, 53.706509>,  <33.480331, 37.552582, 53.604637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380394, 37.359619, 53.706509>,  <33.213833, 37.038013, 53.876293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380394, 37.359619, 53.706509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548794, 0.594492, 0.587711,
		0.724865, -0.011786, 0.688789,
		0.416407, 0.804015, -0.424459,
		33.505318, 37.600822, 53.579170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344028, 37.378815, 54.471233>,  <33.213833, 37.038013, 53.876293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344028, 37.378815, 54.471233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352585, 37.633133, 54.162609>,  <33.357719, 37.785725, 53.977436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352585, 37.633133, 54.162609>,  <33.344028, 37.378815, 54.471233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352585, 37.633133, 54.162609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566748, 0.643471, 0.514530,
		0.823613, 0.426274, 0.374102,
		0.021393, 0.635795, -0.771561,
		33.359001, 37.823872, 53.931141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608345, 38.021801, 54.766388>,  <33.344028, 37.378815, 54.471233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608345, 38.021801, 54.766388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410313, 38.115059, 54.431595>,  <33.291492, 38.171013, 54.230721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410313, 38.115059, 54.431595>,  <33.608345, 38.021801, 54.766388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410313, 38.115059, 54.431595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554936, 0.656383, 0.511084,
		0.668535, 0.717500, -0.195586,
		-0.495083, 0.233140, -0.836982,
		33.261787, 38.185001, 54.180500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578541, 38.692837, 54.679634>,  <33.608345, 38.021801, 54.766388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578541, 38.692837, 54.679634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267181, 38.566559, 54.462589>,  <33.080364, 38.490791, 54.332363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267181, 38.566559, 54.462589>,  <33.578541, 38.692837, 54.679634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267181, 38.566559, 54.462589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563725, 0.731849, 0.382898,
		0.276231, 0.603933, -0.747637,
		-0.778402, -0.315693, -0.542612,
		33.033661, 38.471851, 54.299805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234493, 39.268501, 54.334618>,  <33.578541, 38.692837, 54.679634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234493, 39.268501, 54.334618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959248, 38.978352, 54.341866>,  <32.794102, 38.804260, 54.346214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959248, 38.978352, 54.341866>,  <33.234493, 39.268501, 54.334618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959248, 38.978352, 54.341866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720068, 0.685731, 0.106189,
		-0.089451, 0.060023, -0.994181,
		-0.688115, -0.725376, 0.018119,
		32.752811, 38.760738, 54.347301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659527, 39.622025, 54.110813>,  <33.234493, 39.268501, 54.334618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659527, 39.622025, 54.110813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497360, 39.287807, 54.259140>,  <32.400059, 39.087276, 54.348137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497360, 39.287807, 54.259140>,  <32.659527, 39.622025, 54.110813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497360, 39.287807, 54.259140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858588, 0.487295, 0.159284,
		-0.313787, -0.253806, -0.914943,
		-0.405419, -0.835540, 0.370821,
		32.375736, 39.037144, 54.370388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989883, 39.535954, 53.740738>,  <32.659527, 39.622025, 54.110813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989883, 39.535954, 53.740738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973396, 39.312172, 54.071873>,  <31.963503, 39.177902, 54.270554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973396, 39.312172, 54.071873>,  <31.989883, 39.535954, 53.740738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973396, 39.312172, 54.071873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946634, 0.286947, 0.146784,
		-0.319664, -0.777610, -0.541422,
		-0.041219, -0.559450, 0.827838,
		31.961031, 39.144337, 54.320225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341642, 39.337120, 53.747375>,  <31.989883, 39.535954, 53.740738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341642, 39.337120, 53.747375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456354, 39.307930, 54.129459>,  <31.525181, 39.290417, 54.358711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456354, 39.307930, 54.129459>,  <31.341642, 39.337120, 53.747375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456354, 39.307930, 54.129459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871515, 0.394129, 0.291761,
		-0.397770, -0.916153, 0.049426,
		0.286777, -0.072978, 0.955213,
		31.542387, 39.286037, 54.416023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786993, 39.120701, 54.042347>,  <31.341642, 39.337120, 53.747375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786993, 39.120701, 54.042347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012625, 39.273796, 54.335011>,  <31.148005, 39.365654, 54.510609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012625, 39.273796, 54.335011>,  <30.786993, 39.120701, 54.042347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012625, 39.273796, 54.335011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820518, 0.359121, 0.444726,
		-0.092538, -0.851199, 0.516620,
		0.564080, 0.382742, 0.731657,
		31.181849, 39.388618, 54.554508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518545, 38.974915, 54.805370>,  <30.786993, 39.120701, 54.042347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518545, 38.974915, 54.805370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737768, 39.309170, 54.820057>,  <30.869303, 39.509724, 54.828869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737768, 39.309170, 54.820057>,  <30.518545, 38.974915, 54.805370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737768, 39.309170, 54.820057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805759, 0.515663, 0.291280,
		0.224469, -0.189226, 0.955933,
		0.548057, 0.835635, 0.036720,
		30.902185, 39.559860, 54.831074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338247, 39.269039, 55.508503>,  <30.518545, 38.974915, 54.805370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338247, 39.269039, 55.508503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542271, 39.571453, 55.344425>,  <30.664684, 39.752899, 55.245979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542271, 39.571453, 55.344425>,  <30.338247, 39.269039, 55.508503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542271, 39.571453, 55.344425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622158, 0.653577, 0.430994,
		0.593935, 0.035370, 0.803735,
		0.510058, 0.756033, -0.410189,
		30.695288, 39.798264, 55.221367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652514, 39.750465, 56.023304>,  <30.338247, 39.269039, 55.508503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652514, 39.750465, 56.023304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.588924, 39.920792, 55.667011>,  <30.550770, 40.022987, 55.453236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.588924, 39.920792, 55.667011>,  <30.652514, 39.750465, 56.023304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588924, 39.920792, 55.667011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584050, 0.686844, 0.432586,
		0.795998, 0.589003, 0.139508,
		-0.158974, 0.425817, -0.890734,
		30.541233, 40.048538, 55.399792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433447, 40.343822, 56.183956>,  <30.652514, 39.750465, 56.023304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433447, 40.343822, 56.183956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386389, 40.367462, 55.787437>,  <30.358154, 40.381645, 55.549526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386389, 40.367462, 55.787437>,  <30.433447, 40.343822, 56.183956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386389, 40.367462, 55.787437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662684, 0.738781, 0.122692,
		0.739601, 0.671350, -0.047750,
		-0.117646, 0.059100, -0.991296,
		30.351095, 40.385193, 55.490047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509752, 41.092335, 56.082859>,  <30.433447, 40.343822, 56.183956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509752, 41.092335, 56.082859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.300434, 40.906986, 55.796799>,  <30.174843, 40.795776, 55.625160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.300434, 40.906986, 55.796799>,  <30.509752, 41.092335, 56.082859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300434, 40.906986, 55.796799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756268, 0.639292, 0.139155,
		0.392712, 0.613668, -0.684974,
		-0.523293, -0.463376, -0.715155,
		30.143446, 40.767975, 55.582253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341696, 41.654984, 55.625713>,  <30.509752, 41.092335, 56.082859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341696, 41.654984, 55.625713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.099152, 41.340034, 55.581219>,  <29.953625, 41.151066, 55.554523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.099152, 41.340034, 55.581219>,  <30.341696, 41.654984, 55.625713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099152, 41.340034, 55.581219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794756, 0.595447, 0.117495,
		-0.026278, 0.159648, -0.986824,
		-0.606360, -0.787372, -0.111234,
		29.917244, 41.103825, 55.547848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867254, 41.860626, 55.124268>,  <30.341696, 41.654984, 55.625713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867254, 41.860626, 55.124268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.679470, 41.569130, 55.323685>,  <29.566799, 41.394234, 55.443336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.679470, 41.569130, 55.323685>,  <29.867254, 41.860626, 55.124268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679470, 41.569130, 55.323685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811160, 0.578979, 0.082478,
		-0.348752, -0.365680, -0.862931,
		-0.469459, -0.728739, 0.498545,
		29.538631, 41.350510, 55.473248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243212, 41.688824, 54.707680>,  <29.867254, 41.860626, 55.124268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243212, 41.688824, 54.707680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169292, 41.554363, 55.077080>,  <29.124941, 41.473686, 55.298721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169292, 41.554363, 55.077080>,  <29.243212, 41.688824, 54.707680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169292, 41.554363, 55.077080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750916, 0.654512, 0.087975,
		-0.634015, -0.677214, -0.373371,
		-0.184798, -0.336148, 0.923501,
		29.113853, 41.453518, 55.354130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467709, 41.672741, 54.789036>,  <29.243212, 41.688824, 54.707680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467709, 41.672741, 54.789036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.613873, 41.699043, 55.160446>,  <28.701571, 41.714825, 55.383293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.613873, 41.699043, 55.160446>,  <28.467709, 41.672741, 54.789036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613873, 41.699043, 55.160446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719522, 0.652804, 0.236929,
		-0.590564, -0.754667, 0.285853,
		0.365408, 0.065755, 0.928522,
		28.723495, 41.718769, 55.439003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867682, 41.735310, 55.118797>,  <28.467709, 41.672741, 54.789036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867682, 41.735310, 55.118797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.146635, 41.861076, 55.376415>,  <28.314007, 41.936535, 55.530987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.146635, 41.861076, 55.376415>,  <27.867682, 41.735310, 55.118797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146635, 41.861076, 55.376415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704250, 0.467394, 0.534392,
		-0.133003, -0.826248, 0.547381,
		0.697382, 0.314417, 0.644050,
		28.355850, 41.955402, 55.569630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558456, 41.671177, 55.750126>,  <27.867682, 41.735310, 55.118797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558456, 41.671177, 55.750126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856840, 41.929619, 55.814735>,  <28.035872, 42.084686, 55.853500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856840, 41.929619, 55.814735>,  <27.558456, 41.671177, 55.750126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856840, 41.929619, 55.814735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581611, 0.513845, 0.630629,
		0.324457, -0.564367, 0.759090,
		0.745961, 0.646107, 0.161521,
		28.080627, 42.123451, 55.863190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223759, 41.898506, 56.296360>,  <27.558456, 41.671177, 55.750126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223759, 41.898506, 56.296360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531641, 42.147278, 56.238724>,  <27.716370, 42.296539, 56.204144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531641, 42.147278, 56.238724>,  <27.223759, 41.898506, 56.296360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531641, 42.147278, 56.238724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493245, 0.722639, 0.484254,
		0.405297, -0.301660, 0.862980,
		0.769704, 0.621927, -0.144091,
		27.762552, 42.333855, 56.195496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474373, 42.293533, 56.927425>,  <27.223759, 41.898506, 56.296360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474373, 42.293533, 56.927425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.563824, 42.511051, 56.603878>,  <27.617495, 42.641563, 56.409748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.563824, 42.511051, 56.603878>,  <27.474373, 42.293533, 56.927425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563824, 42.511051, 56.603878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599159, 0.731266, 0.325975,
		0.768765, 0.411746, 0.489352,
		0.223627, 0.543798, -0.808872,
		27.630913, 42.674191, 56.361217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819345, 43.003868, 56.973408>,  <27.474373, 42.293533, 56.927425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819345, 43.003868, 56.973408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.551031, 42.899082, 56.695869>,  <27.390043, 42.836212, 56.529346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.551031, 42.899082, 56.695869>,  <27.819345, 43.003868, 56.973408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551031, 42.899082, 56.695869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618847, 0.713307, 0.328971,
		0.408746, 0.650053, -0.640591,
		-0.670787, -0.261962, -0.693845,
		27.349794, 42.820492, 56.487717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569859, 43.618439, 56.705246>,  <27.819345, 43.003868, 56.973408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569859, 43.618439, 56.705246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288166, 43.339153, 56.653774>,  <27.119150, 43.171581, 56.622890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288166, 43.339153, 56.653774>,  <27.569859, 43.618439, 56.705246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288166, 43.339153, 56.653774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685805, 0.622109, 0.377694,
		-0.183656, 0.354234, -0.916945,
		-0.704232, -0.698211, -0.128681,
		27.076897, 43.129688, 56.615170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043211, 43.969822, 56.945885>,  <27.569859, 43.618439, 56.705246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043211, 43.969822, 56.945885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.831635, 43.640278, 56.864418>,  <26.704689, 43.442551, 56.815536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.831635, 43.640278, 56.864418>,  <27.043211, 43.969822, 56.945885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831635, 43.640278, 56.864418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680647, 0.268488, 0.681640,
		-0.506892, 0.499173, -0.702771,
		-0.528942, -0.823857, -0.203666,
		26.672953, 43.393120, 56.803318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561676, 44.577217, 56.931652>,  <27.043211, 43.969822, 56.945885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561676, 44.577217, 56.931652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782562, 44.884590, 56.802303>,  <27.915094, 45.069012, 56.724693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782562, 44.884590, 56.802303>,  <27.561676, 44.577217, 56.931652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782562, 44.884590, 56.802303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579641, 0.075086, -0.811405,
		-0.599226, 0.635515, 0.486877,
		0.552218, 0.768429, -0.323376,
		27.948227, 45.115120, 56.705292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034239, 44.907383, 56.826172>,  <27.561676, 44.577217, 56.931652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034239, 44.907383, 56.826172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.342489, 45.019768, 56.597370>,  <27.527439, 45.087200, 56.460087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.342489, 45.019768, 56.597370>,  <27.034239, 44.907383, 56.826172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342489, 45.019768, 56.597370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635744, 0.276532, -0.720666,
		-0.044302, 0.919015, 0.391724,
		0.770627, 0.280964, -0.572008,
		27.573677, 45.104057, 56.425766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347561, 44.782742, 56.495975>,  <27.034239, 44.907383, 56.826172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347561, 44.782742, 56.495975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.419230, 44.565758, 56.824276>,  <26.462231, 44.435566, 57.021255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.419230, 44.565758, 56.824276>,  <26.347561, 44.782742, 56.495975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419230, 44.565758, 56.824276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727481, 0.488579, 0.481727,
		-0.662320, -0.683395, -0.307089,
		0.179173, -0.542459, 0.820753,
		26.472980, 44.403019, 57.070503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743244, 44.477879, 56.771004>,  <26.347561, 44.782742, 56.495975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743244, 44.477879, 56.771004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.020853, 44.566822, 57.044907>,  <26.187418, 44.620186, 57.209248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.020853, 44.566822, 57.044907>,  <25.743244, 44.477879, 56.771004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020853, 44.566822, 57.044907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649131, 0.604630, 0.461575,
		-0.311391, -0.764839, 0.563965,
		0.694021, 0.222357, 0.684757,
		26.229059, 44.633530, 57.250332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547638, 44.271584, 56.029804>,  <25.743244, 44.477879, 56.771004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547638, 44.271584, 56.029804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.611990, 44.664963, 56.063133>,  <25.650600, 44.900990, 56.083130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.611990, 44.664963, 56.063133>,  <25.547638, 44.271584, 56.029804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611990, 44.664963, 56.063133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566873, -0.022963, -0.823485,
		-0.807943, 0.179717, -0.561186,
		0.160881, 0.983450, 0.083324,
		25.660254, 44.959999, 56.088131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615910, 44.750900, 55.311893>,  <25.547638, 44.271584, 56.029804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615910, 44.750900, 55.311893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.818298, 44.979168, 55.570606>,  <25.939732, 45.116131, 55.725834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.818298, 44.979168, 55.570606>,  <25.615910, 44.750900, 55.311893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818298, 44.979168, 55.570606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791206, -0.008459, -0.611492,
		-0.343491, 0.821133, -0.455800,
		0.505972, 0.570674, 0.646780,
		25.970089, 45.150372, 55.764641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933626, 45.216293, 54.916851>,  <25.615910, 44.750900, 55.311893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933626, 45.216293, 54.916851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.134638, 45.190083, 55.261681>,  <26.255245, 45.174355, 55.468578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.134638, 45.190083, 55.261681>,  <25.933626, 45.216293, 54.916851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134638, 45.190083, 55.261681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837661, -0.209884, -0.504254,
		0.213978, 0.975528, -0.050582,
		0.502530, -0.065529, 0.862073,
		26.285397, 45.170425, 55.520302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517757, 45.795887, 54.954910>,  <25.933626, 45.216293, 54.916851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517757, 45.795887, 54.954910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.555361, 45.425644, 55.101559>,  <26.577923, 45.203499, 55.189548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.555361, 45.425644, 55.101559>,  <26.517757, 45.795887, 54.954910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555361, 45.425644, 55.101559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834668, -0.127454, -0.535803,
		0.542671, 0.356377, 0.760594,
		0.094007, -0.925608, 0.366622,
		26.583563, 45.147961, 55.211544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143332, 45.663727, 54.891891>,  <26.517757, 45.795887, 54.954910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143332, 45.663727, 54.891891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.030664, 45.283524, 54.944332>,  <26.963064, 45.055401, 54.975796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.030664, 45.283524, 54.944332>,  <27.143332, 45.663727, 54.891891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030664, 45.283524, 54.944332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760131, -0.304431, -0.574041,
		0.585546, -0.062032, 0.808262,
		-0.281669, -0.950512, 0.131106,
		26.946163, 44.998371, 54.983665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749832, 45.338886, 54.974960>,  <27.143332, 45.663727, 54.891891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749832, 45.338886, 54.974960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.497332, 45.047375, 54.868828>,  <27.345831, 44.872467, 54.805149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.497332, 45.047375, 54.868828>,  <27.749832, 45.338886, 54.974960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497332, 45.047375, 54.868828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732558, -0.447905, -0.512582,
		0.254719, -0.517936, 0.816615,
		-0.631250, -0.728783, -0.265328,
		27.307957, 44.828739, 54.789230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052183, 44.686283, 55.055637>,  <27.749832, 45.338886, 54.974960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052183, 44.686283, 55.055637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.760069, 44.577164, 54.805115>,  <27.584801, 44.511692, 54.654800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.760069, 44.577164, 54.805115>,  <28.052183, 44.686283, 55.055637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760069, 44.577164, 54.805115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652923, -0.548396, -0.522449,
		-0.200940, -0.790468, 0.578604,
		-0.730284, -0.272803, -0.626310,
		27.540983, 44.495323, 54.617222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211494, 44.115414, 54.831093>,  <28.052183, 44.686283, 55.055637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211494, 44.115414, 54.831093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.958729, 44.210087, 54.535885>,  <27.807070, 44.266891, 54.358761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.958729, 44.210087, 54.535885>,  <28.211494, 44.115414, 54.831093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958729, 44.210087, 54.535885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603086, -0.447932, -0.660034,
		-0.486799, -0.862171, 0.140314,
		-0.631913, 0.236682, -0.738016,
		27.769156, 44.281094, 54.314480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226536, 43.569748, 54.422604>,  <28.211494, 44.115414, 54.831093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226536, 43.569748, 54.422604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.041111, 43.834003, 54.186409>,  <27.929855, 43.992558, 54.044693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.041111, 43.834003, 54.186409>,  <28.226536, 43.569748, 54.422604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041111, 43.834003, 54.186409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306089, -0.505991, -0.806401,
		-0.831516, -0.554558, 0.032345,
		-0.463562, 0.660635, -0.590484,
		27.902042, 44.032192, 54.009262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808434, 43.140991, 53.904453>,  <28.226536, 43.569748, 54.422604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808434, 43.140991, 53.904453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.860952, 43.494823, 53.725441>,  <27.892464, 43.707123, 53.618034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.860952, 43.494823, 53.725441>,  <27.808434, 43.140991, 53.904453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860952, 43.494823, 53.725441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236252, -0.466352, -0.852467,
		-0.962780, 0.006196, -0.270214,
		0.131297, 0.884577, -0.447531,
		27.900341, 43.760197, 53.591183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482616, 43.077419, 53.227123>,  <27.808434, 43.140991, 53.904453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482616, 43.077419, 53.227123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.728510, 43.391697, 53.199429>,  <27.876045, 43.580261, 53.182812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.728510, 43.391697, 53.199429>,  <27.482616, 43.077419, 53.227123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728510, 43.391697, 53.199429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476488, -0.439888, -0.761221,
		-0.628538, 0.434960, -0.644786,
		0.614734, 0.785690, -0.069233,
		27.912930, 43.627403, 53.178658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490574, 43.179478, 52.548672>,  <27.482616, 43.077419, 53.227123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490574, 43.179478, 52.548672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.843897, 43.311932, 52.681404>,  <28.055891, 43.391403, 52.761044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.843897, 43.311932, 52.681404>,  <27.490574, 43.179478, 52.548672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843897, 43.311932, 52.681404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460913, -0.484211, -0.743706,
		-0.085592, 0.809868, -0.580334,
		0.883308, 0.331139, 0.331834,
		28.108889, 43.411274, 52.780956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915945, 43.528198, 51.935188>,  <27.490574, 43.179478, 52.548672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915945, 43.528198, 51.935188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.172771, 43.385178, 52.206455>,  <28.326866, 43.299366, 52.369213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.172771, 43.385178, 52.206455>,  <27.915945, 43.528198, 51.935188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172771, 43.385178, 52.206455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542183, -0.413628, -0.731402,
		0.542024, 0.837297, -0.071716,
		0.642065, -0.357554, 0.678165,
		28.365391, 43.277912, 52.409904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535124, 43.802784, 51.661358>,  <27.915945, 43.528198, 51.935188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535124, 43.802784, 51.661358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668562, 43.543301, 51.934967>,  <28.748625, 43.387611, 52.099133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668562, 43.543301, 51.934967>,  <28.535124, 43.802784, 51.661358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668562, 43.543301, 51.934967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715033, -0.298745, -0.632044,
		0.614363, 0.699945, 0.364191,
		0.333596, -0.648713, 0.684022,
		28.768641, 43.348686, 52.140175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238928, 43.933228, 51.777763>,  <28.535124, 43.802784, 51.661358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238928, 43.933228, 51.777763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168800, 43.549389, 51.865791>,  <29.126724, 43.319084, 51.918606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168800, 43.549389, 51.865791>,  <29.238928, 43.933228, 51.777763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168800, 43.549389, 51.865791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741667, -0.275735, -0.611474,
		0.647451, 0.056013, 0.760046,
		-0.175321, -0.959600, 0.220068,
		29.116203, 43.261509, 51.931812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885605, 43.626328, 51.731678>,  <29.238928, 43.933228, 51.777763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885605, 43.626328, 51.731678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658587, 43.299557, 51.772690>,  <29.522375, 43.103493, 51.797298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658587, 43.299557, 51.772690>,  <29.885605, 43.626328, 51.731678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658587, 43.299557, 51.772690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674948, -0.532956, -0.510298,
		0.471524, -0.220414, 0.853864,
		-0.567548, -0.816931, 0.102534,
		29.488321, 43.054478, 51.803452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227566, 43.063400, 52.081001>,  <29.885605, 43.626328, 51.731678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227566, 43.063400, 52.081001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964813, 42.930183, 51.810421>,  <29.807161, 42.850254, 51.648071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964813, 42.930183, 51.810421>,  <30.227566, 43.063400, 52.081001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964813, 42.930183, 51.810421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743486, -0.435369, -0.507624,
		-0.125446, -0.836383, 0.533599,
		-0.656880, -0.333044, -0.676454,
		29.767750, 42.830269, 51.607483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171341, 42.356548, 51.966553>,  <30.227566, 43.063400, 52.081001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171341, 42.356548, 51.966553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.055264, 42.518917, 51.619907>,  <29.985617, 42.616337, 51.411919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.055264, 42.518917, 51.619907>,  <30.171341, 42.356548, 51.966553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055264, 42.518917, 51.619907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596849, -0.631098, -0.495466,
		-0.748037, -0.661018, -0.059132,
		-0.290193, 0.405920, -0.866613,
		29.968204, 42.640694, 51.359924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140011, 41.795815, 51.561596>,  <30.171341, 42.356548, 51.966553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140011, 41.795815, 51.561596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.161919, 42.103874, 51.307392>,  <30.175064, 42.288712, 51.154869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.161919, 42.103874, 51.307392>,  <30.140011, 41.795815, 51.561596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161919, 42.103874, 51.307392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646639, -0.512325, -0.565139,
		-0.760828, -0.379991, -0.526068,
		0.054770, 0.770149, -0.635508,
		30.178350, 42.334919, 51.116741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931730, 41.546486, 50.877640>,  <30.140011, 41.795815, 51.561596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931730, 41.546486, 50.877640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.174864, 41.863930, 50.866875>,  <30.320744, 42.054394, 50.860416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.174864, 41.863930, 50.866875>,  <29.931730, 41.546486, 50.877640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174864, 41.863930, 50.866875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602718, -0.483169, -0.635042,
		-0.516979, 0.369778, -0.772008,
		0.607836, 0.793607, -0.026916,
		30.357214, 42.102013, 50.858799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221212, 41.379665, 50.221577>,  <29.931730, 41.546486, 50.877640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221212, 41.379665, 50.221577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443056, 41.692684, 50.334736>,  <30.576162, 41.880493, 50.402634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443056, 41.692684, 50.334736>,  <30.221212, 41.379665, 50.221577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443056, 41.692684, 50.334736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788165, -0.385005, -0.480174,
		-0.266838, 0.489283, -0.830301,
		0.554611, 0.782542, 0.282902,
		30.609440, 41.927448, 50.419605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550621, 41.645401, 49.641014>,  <30.221212, 41.379665, 50.221577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550621, 41.645401, 49.641014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778801, 41.753723, 49.951176>,  <30.915709, 41.818714, 50.137272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778801, 41.753723, 49.951176>,  <30.550621, 41.645401, 49.641014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778801, 41.753723, 49.951176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800018, -0.396890, -0.449944,
		0.185904, 0.877008, -0.443053,
		0.570448, 0.270804, 0.775406,
		30.949936, 41.834965, 50.183796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116795, 42.093731, 49.452431>,  <30.550621, 41.645401, 49.641014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116795, 42.093731, 49.452431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.246830, 41.935883, 49.796196>,  <31.324852, 41.841171, 50.002457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.246830, 41.935883, 49.796196>,  <31.116795, 42.093731, 49.452431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246830, 41.935883, 49.796196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770171, -0.416876, -0.482753,
		0.548774, 0.818832, 0.168407,
		0.325089, -0.394625, 0.859412,
		31.344357, 41.817493, 50.054020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821484, 42.191116, 49.370575>,  <31.116795, 42.093731, 49.452431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821484, 42.191116, 49.370575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762028, 41.910862, 49.649723>,  <31.726355, 41.742710, 49.817211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762028, 41.910862, 49.649723>,  <31.821484, 42.191116, 49.370575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762028, 41.910862, 49.649723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830714, -0.471324, -0.296257,
		0.536489, 0.535691, 0.652085,
		-0.148641, -0.700634, 0.697866,
		31.717436, 41.700672, 49.859081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483128, 42.089741, 49.809341>,  <31.821484, 42.191116, 49.370575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483128, 42.089741, 49.809341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261196, 41.760223, 49.855865>,  <32.128036, 41.562515, 49.883781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261196, 41.760223, 49.855865>,  <32.483128, 42.089741, 49.809341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261196, 41.760223, 49.855865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783164, -0.564337, -0.261110,
		0.280740, -0.053781, 0.958276,
		-0.554833, -0.823791, 0.116313,
		32.094746, 41.513084, 49.890759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815979, 41.580250, 50.337105>,  <32.483128, 42.089741, 49.809341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815979, 41.580250, 50.337105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571388, 41.356869, 50.112881>,  <32.424633, 41.222839, 49.978348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571388, 41.356869, 50.112881>,  <32.815979, 41.580250, 50.337105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571388, 41.356869, 50.112881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774240, -0.568431, -0.278278,
		-0.163232, -0.604166, 0.779961,
		-0.611480, -0.558453, -0.560556,
		32.387943, 41.189331, 49.944714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072685, 40.957939, 50.391624>,  <32.815979, 41.580250, 50.337105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072685, 40.957939, 50.391624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837959, 40.886620, 50.075687>,  <32.697124, 40.843826, 49.886124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837959, 40.886620, 50.075687>,  <33.072685, 40.957939, 50.391624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837959, 40.886620, 50.075687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682177, -0.634358, -0.363627,
		-0.436208, -0.752196, 0.493886,
		-0.586819, -0.178301, -0.789843,
		32.661915, 40.833130, 49.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095806, 40.270889, 50.224747>,  <33.072685, 40.957939, 50.391624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095806, 40.270889, 50.224747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950005, 40.410145, 49.879276>,  <32.862522, 40.493698, 49.671993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950005, 40.410145, 49.879276>,  <33.095806, 40.270889, 50.224747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950005, 40.410145, 49.879276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544868, -0.672401, -0.500995,
		-0.755152, -0.653204, 0.055402,
		-0.364504, 0.348141, -0.863675,
		32.840652, 40.514587, 49.620174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891369, 39.665260, 49.796200>,  <33.095806, 40.270889, 50.224747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891369, 39.665260, 49.796200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930897, 39.981464, 49.554428>,  <32.954613, 40.171185, 49.409367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930897, 39.981464, 49.554428>,  <32.891369, 39.665260, 49.796200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930897, 39.981464, 49.554428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508447, -0.562240, -0.652202,
		-0.855404, -0.242868, -0.457493,
		0.098822, 0.790507, -0.604428,
		32.960545, 40.218616, 49.373100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618023, 39.500042, 49.141720>,  <32.891369, 39.665260, 49.796200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618023, 39.500042, 49.141720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.862011, 39.804714, 49.054287>,  <33.008404, 39.987518, 49.001827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.862011, 39.804714, 49.054287>,  <32.618023, 39.500042, 49.141720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862011, 39.804714, 49.054287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473032, -0.571297, -0.670717,
		-0.635749, 0.305719, -0.708773,
		0.609971, 0.761679, -0.218587,
		33.045002, 40.033218, 48.988712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639774, 39.526958, 48.393894>,  <32.618023, 39.500042, 49.141720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639774, 39.526958, 48.393894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967354, 39.696369, 48.548790>,  <33.163902, 39.798016, 48.641727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967354, 39.696369, 48.548790>,  <32.639774, 39.526958, 48.393894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967354, 39.696369, 48.548790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561670, -0.453130, -0.692243,
		-0.117712, 0.784411, -0.608969,
		0.818945, 0.423525, 0.387242,
		33.213036, 39.823425, 48.664963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005138, 39.649227, 47.804897>,  <32.639774, 39.526958, 48.393894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005138, 39.649227, 47.804897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277882, 39.704639, 48.092197>,  <33.441528, 39.737888, 48.264576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277882, 39.704639, 48.092197>,  <33.005138, 39.649227, 47.804897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277882, 39.704639, 48.092197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662415, -0.533448, -0.525965,
		0.310285, 0.834412, -0.455500,
		0.681857, 0.138531, 0.718248,
		33.482437, 39.746201, 48.307671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624344, 39.949375, 47.509502>,  <33.005138, 39.649227, 47.804897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624344, 39.949375, 47.509502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720554, 39.751350, 47.843464>,  <33.778278, 39.632538, 48.043842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720554, 39.751350, 47.843464>,  <33.624344, 39.949375, 47.509502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720554, 39.751350, 47.843464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593365, -0.605728, -0.530105,
		0.768158, 0.622906, 0.148059,
		0.240522, -0.495057, 0.834906,
		33.792709, 39.602833, 48.093937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247658, 39.826275, 47.435211>,  <33.624344, 39.949375, 47.509502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247658, 39.826275, 47.435211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176979, 39.556831, 47.722271>,  <34.134571, 39.395164, 47.894508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176979, 39.556831, 47.722271>,  <34.247658, 39.826275, 47.435211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176979, 39.556831, 47.722271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600086, -0.651665, -0.463927,
		0.780177, 0.348681, 0.519370,
		-0.176693, -0.673612, 0.717653,
		34.123970, 39.354748, 47.937569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875538, 39.634808, 47.718948>,  <34.247658, 39.826275, 47.435211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875538, 39.634808, 47.718948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635159, 39.328892, 47.811863>,  <34.490932, 39.145344, 47.867611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635159, 39.328892, 47.811863>,  <34.875538, 39.634808, 47.718948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635159, 39.328892, 47.811863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580369, -0.617343, -0.531093,
		0.549576, -0.184346, 0.814851,
		-0.600948, -0.764790, 0.232288,
		34.454876, 39.099453, 47.881550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358597, 39.091072, 47.738506>,  <34.875538, 39.634808, 47.718948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358597, 39.091072, 47.738506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008186, 38.898266, 47.744675>,  <34.797939, 38.782581, 47.748375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008186, 38.898266, 47.744675>,  <35.358597, 39.091072, 47.738506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008186, 38.898266, 47.744675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391382, -0.729255, -0.561256,
		0.281781, -0.485639, 0.827499,
		-0.876025, -0.482019, 0.015420,
		34.745380, 38.753662, 47.749302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568600, 38.416435, 47.856441>,  <35.358597, 39.091072, 47.738506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568600, 38.416435, 47.856441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207359, 38.385845, 47.687416>,  <34.990616, 38.367493, 47.586002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207359, 38.385845, 47.687416>,  <35.568600, 38.416435, 47.856441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207359, 38.385845, 47.687416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351756, -0.696181, -0.625779,
		-0.246327, -0.713781, 0.655622,
		-0.903101, -0.076473, -0.422565,
		34.936428, 38.362904, 47.560646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465916, 37.698574, 47.800842>,  <35.568600, 38.416435, 47.856441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465916, 37.698574, 47.800842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238960, 37.885506, 47.529644>,  <35.102787, 37.997665, 47.366924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238960, 37.885506, 47.529644>,  <35.465916, 37.698574, 47.800842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238960, 37.885506, 47.529644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209670, -0.714229, -0.667769,
		-0.796308, -0.521040, 0.307263,
		-0.567391, 0.467326, -0.677993,
		35.068745, 38.025703, 47.326248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917076, 37.271076, 47.755890>,  <35.465916, 37.698574, 47.800842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917076, 37.271076, 47.755890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.938694, 37.501167, 47.429409>,  <34.951664, 37.639221, 47.233521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.938694, 37.501167, 47.429409>,  <34.917076, 37.271076, 47.755890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938694, 37.501167, 47.429409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302999, -0.788309, -0.535500,
		-0.951457, -0.218367, -0.216900,
		0.054049, 0.575226, -0.816207,
		34.954910, 37.673737, 47.184547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533028, 36.892792, 47.183258>,  <34.917076, 37.271076, 47.755890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533028, 36.892792, 47.183258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766811, 37.161224, 47.000801>,  <34.907082, 37.322285, 46.891327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766811, 37.161224, 47.000801>,  <34.533028, 36.892792, 47.183258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766811, 37.161224, 47.000801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438065, -0.734141, -0.518783,
		-0.683015, 0.103387, -0.723050,
		0.584457, 0.671079, -0.456139,
		34.942150, 37.362549, 46.863960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425255, 36.652897, 46.503471>,  <34.533028, 36.892792, 47.183258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425255, 36.652897, 46.503471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744549, 36.893612, 46.493088>,  <34.936123, 37.038040, 46.486858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744549, 36.893612, 46.493088>,  <34.425255, 36.652897, 46.503471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744549, 36.893612, 46.493088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438340, -0.609899, -0.660213,
		-0.413141, 0.515625, -0.750630,
		0.798231, 0.601792, -0.025955,
		34.984016, 37.074150, 46.485302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491428, 36.810429, 45.828918>,  <34.425255, 36.652897, 46.503471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491428, 36.810429, 45.828918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843884, 36.838947, 46.015903>,  <35.055355, 36.856056, 46.128094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843884, 36.838947, 46.015903>,  <34.491428, 36.810429, 45.828918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843884, 36.838947, 46.015903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433838, -0.515158, -0.739187,
		0.188116, 0.854125, -0.484854,
		0.881134, 0.071295, 0.467461,
		35.108223, 36.860336, 46.156143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469303, 36.821640, 45.136345>,  <34.491428, 36.810429, 45.828918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469303, 36.821640, 45.136345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259407, 36.740181, 44.805729>,  <34.133469, 36.691307, 44.607357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259407, 36.740181, 44.805729>,  <34.469303, 36.821640, 45.136345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259407, 36.740181, 44.805729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676966, 0.688508, 0.260143,
		0.516104, 0.696050, -0.499151,
		-0.524742, -0.203648, -0.826543,
		34.101986, 36.679085, 44.557766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176914, 37.540894, 44.959087>,  <34.469303, 36.821640, 45.136345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176914, 37.540894, 44.959087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962082, 37.260689, 44.771118>,  <33.833183, 37.092564, 44.658337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962082, 37.260689, 44.771118>,  <34.176914, 37.540894, 44.959087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962082, 37.260689, 44.771118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825584, 0.550837, 0.122433,
		0.173083, 0.453715, -0.874177,
		-0.537079, -0.700516, -0.469920,
		33.800957, 37.050533, 44.630142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782867, 37.901703, 44.465683>,  <34.176914, 37.540894, 44.959087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782867, 37.901703, 44.465683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573967, 37.574341, 44.561573>,  <33.448627, 37.377926, 44.619106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573967, 37.574341, 44.561573>,  <33.782867, 37.901703, 44.465683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573967, 37.574341, 44.561573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820496, 0.558841, 0.120348,
		-0.232462, -0.133842, -0.963352,
		-0.522253, -0.818403, 0.239726,
		33.417290, 37.328819, 44.633492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128014, 37.971764, 44.209202>,  <33.782867, 37.901703, 44.465683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128014, 37.971764, 44.209202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060818, 37.670120, 44.463161>,  <33.020500, 37.489136, 44.615536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060818, 37.670120, 44.463161>,  <33.128014, 37.971764, 44.209202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060818, 37.670120, 44.463161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808641, 0.473772, 0.348770,
		-0.563809, -0.454817, -0.689392,
		-0.167988, -0.754110, 0.634901,
		33.010422, 37.443886, 44.653633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469387, 37.851192, 44.043606>,  <33.128014, 37.971764, 44.209202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469387, 37.851192, 44.043606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526981, 37.702911, 44.410614>,  <32.561539, 37.613945, 44.630821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526981, 37.702911, 44.410614>,  <32.469387, 37.851192, 44.043606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526981, 37.702911, 44.410614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918990, 0.293814, 0.262928,
		-0.367048, -0.881053, -0.298363,
		0.143990, -0.370700, 0.917523,
		32.570179, 37.591702, 44.685871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863638, 37.715939, 44.306004>,  <32.469387, 37.851192, 44.043606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863638, 37.715939, 44.306004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.056953, 37.660465, 44.651768>,  <32.172943, 37.627182, 44.859226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.056953, 37.660465, 44.651768>,  <31.863638, 37.715939, 44.306004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056953, 37.660465, 44.651768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774417, 0.392773, 0.495991,
		-0.408301, -0.909118, 0.082425,
		0.483289, -0.138683, 0.864407,
		32.201939, 37.618862, 44.911091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489021, 37.285065, 44.689754>,  <31.863638, 37.715939, 44.306004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489021, 37.285065, 44.689754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712700, 37.508511, 44.934784>,  <31.846907, 37.642578, 45.081802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712700, 37.508511, 44.934784>,  <31.489021, 37.285065, 44.689754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712700, 37.508511, 44.934784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815396, 0.237108, 0.528118,
		0.149768, -0.794814, 0.588083,
		0.559194, 0.558616, 0.612577,
		31.880459, 37.676094, 45.118557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274464, 37.161610, 45.383915>,  <31.489021, 37.285065, 44.689754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274464, 37.161610, 45.383915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.461660, 37.514996, 45.375267>,  <31.573978, 37.727028, 45.370079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.461660, 37.514996, 45.375267>,  <31.274464, 37.161610, 45.383915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461660, 37.514996, 45.375267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711223, 0.391046, 0.584162,
		0.524542, -0.258008, 0.811349,
		0.467993, 0.883468, -0.021618,
		31.602058, 37.780037, 45.368782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283627, 37.352016, 46.124447>,  <31.274464, 37.161610, 45.383915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283627, 37.352016, 46.124447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315956, 37.690495, 45.913761>,  <31.335354, 37.893581, 45.787350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315956, 37.690495, 45.913761>,  <31.283627, 37.352016, 46.124447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315956, 37.690495, 45.913761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784353, 0.380068, 0.490244,
		0.615027, 0.373506, 0.694431,
		0.080822, 0.846193, -0.526712,
		31.340202, 37.944351, 45.755749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151522, 37.844501, 46.519451>,  <31.283627, 37.352016, 46.124447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151522, 37.844501, 46.519451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.089529, 38.046322, 46.179710>,  <31.052334, 38.167416, 45.975864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.089529, 38.046322, 46.179710>,  <31.151522, 37.844501, 46.519451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089529, 38.046322, 46.179710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795126, 0.446532, 0.410345,
		0.586307, 0.738940, 0.331982,
		-0.154980, 0.504555, -0.849356,
		31.043036, 38.197689, 45.924904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228027, 38.550224, 46.672779>,  <31.151522, 37.844501, 46.519451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228027, 38.550224, 46.672779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.017248, 38.554317, 46.332844>,  <30.890781, 38.556774, 46.128883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.017248, 38.554317, 46.332844>,  <31.228027, 38.550224, 46.672779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017248, 38.554317, 46.332844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697685, 0.565816, 0.439417,
		0.485347, 0.824468, -0.291017,
		-0.526947, 0.010231, -0.849836,
		30.859163, 38.557388, 46.077892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078201, 39.247181, 46.538319>,  <31.228027, 38.550224, 46.672779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078201, 39.247181, 46.538319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805878, 39.053371, 46.318596>,  <30.642483, 38.937084, 46.186764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805878, 39.053371, 46.318596>,  <31.078201, 39.247181, 46.538319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805878, 39.053371, 46.318596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710870, 0.617822, 0.336095,
		0.176525, 0.619300, -0.765053,
		-0.680810, -0.484524, -0.549303,
		30.601635, 38.908012, 46.153805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607574, 39.787727, 46.358990>,  <31.078201, 39.247181, 46.538319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607574, 39.787727, 46.358990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.408220, 39.448547, 46.286785>,  <30.288609, 39.245037, 46.243462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.408220, 39.448547, 46.286785>,  <30.607574, 39.787727, 46.358990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408220, 39.448547, 46.286785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862913, 0.465102, 0.197639,
		-0.083631, 0.254269, -0.963511,
		-0.498384, -0.847955, -0.180515,
		30.258705, 39.194160, 46.232632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027241, 39.890083, 45.834873>,  <30.607574, 39.787727, 46.358990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027241, 39.890083, 45.834873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893223, 39.577633, 46.045620>,  <29.812811, 39.390163, 46.172070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893223, 39.577633, 46.045620>,  <30.027241, 39.890083, 45.834873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893223, 39.577633, 46.045620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773125, 0.547538, 0.320125,
		-0.538537, -0.300077, -0.787357,
		-0.335046, -0.781125, 0.526867,
		29.792709, 39.343296, 46.203678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296757, 39.825203, 45.733913>,  <30.027241, 39.890083, 45.834873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296757, 39.825203, 45.733913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354042, 39.644714, 46.086250>,  <29.388412, 39.536423, 46.297653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354042, 39.644714, 46.086250>,  <29.296757, 39.825203, 45.733913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354042, 39.644714, 46.086250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762209, 0.517428, 0.388980,
		-0.631291, -0.727095, -0.269824,
		0.143211, -0.451221, 0.880846,
		29.397005, 39.509350, 46.350506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622391, 39.706760, 46.069668>,  <29.296757, 39.825203, 45.733913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622391, 39.706760, 46.069668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869886, 39.632366, 46.374973>,  <29.018385, 39.587730, 46.558155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869886, 39.632366, 46.374973>,  <28.622391, 39.706760, 46.069668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869886, 39.632366, 46.374973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623615, 0.474596, 0.621179,
		-0.477771, -0.860330, 0.177669,
		0.618740, -0.185984, 0.763263,
		29.055508, 39.576572, 46.603951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151608, 39.329124, 46.592262>,  <28.622391, 39.706760, 46.069668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151608, 39.329124, 46.592262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.462011, 39.487503, 46.788643>,  <28.648254, 39.582531, 46.906471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.462011, 39.487503, 46.788643>,  <28.151608, 39.329124, 46.592262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462011, 39.487503, 46.788643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626982, 0.568894, 0.532216,
		-0.068566, -0.720821, 0.689722,
		0.776011, 0.395951, 0.490948,
		28.694815, 39.606289, 46.935928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949694, 39.271942, 47.298561>,  <28.151608, 39.329124, 46.592262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949694, 39.271942, 47.298561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237621, 39.548779, 47.277107>,  <28.410378, 39.714878, 47.264236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237621, 39.548779, 47.277107>,  <27.949694, 39.271942, 47.298561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237621, 39.548779, 47.277107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434931, 0.509876, 0.742200,
		0.541016, -0.510920, 0.668028,
		0.719817, 0.692089, -0.053636,
		28.453568, 39.756405, 47.261017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248432, 39.302345, 47.983631>,  <27.949694, 39.271942, 47.298561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248432, 39.302345, 47.983631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.289499, 39.645706, 47.782593>,  <28.314138, 39.851723, 47.661968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.289499, 39.645706, 47.782593>,  <28.248432, 39.302345, 47.983631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289499, 39.645706, 47.782593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219884, 0.512350, 0.830149,
		0.970109, 0.025285, 0.241350,
		0.102666, 0.858404, -0.502595,
		28.320299, 39.903229, 47.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549683, 39.734505, 48.521961>,  <28.248432, 39.302345, 47.983631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549683, 39.734505, 48.521961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415596, 39.973309, 48.230423>,  <28.335144, 40.116592, 48.055500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415596, 39.973309, 48.230423>,  <28.549683, 39.734505, 48.521961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415596, 39.973309, 48.230423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312414, 0.659394, 0.683811,
		0.888835, 0.456924, -0.034526,
		-0.335216, 0.597009, -0.728842,
		28.315031, 40.152412, 48.011772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758614, 40.402988, 48.773064>,  <28.549683, 39.734505, 48.521961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758614, 40.402988, 48.773064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486034, 40.470303, 48.488163>,  <28.322487, 40.510693, 48.317223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486034, 40.470303, 48.488163>,  <28.758614, 40.402988, 48.773064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486034, 40.470303, 48.488163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404934, 0.723971, 0.558475,
		0.609638, 0.668988, -0.425202,
		-0.681447, 0.168289, -0.712256,
		28.281601, 40.520790, 48.274487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740833, 41.098415, 48.669415>,  <28.758614, 40.402988, 48.773064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740833, 41.098415, 48.669415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391655, 40.944798, 48.549099>,  <28.182148, 40.852627, 48.476910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391655, 40.944798, 48.549099>,  <28.740833, 41.098415, 48.669415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391655, 40.944798, 48.549099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487814, 0.688599, 0.536534,
		0.001074, 0.615097, -0.788451,
		-0.872947, -0.384041, -0.300793,
		28.129770, 40.829586, 48.458862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476206, 41.710468, 48.437153>,  <28.740833, 41.098415, 48.669415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476206, 41.710468, 48.437153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.163326, 41.464199, 48.475330>,  <27.975599, 41.316437, 48.498238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.163326, 41.464199, 48.475330>,  <28.476206, 41.710468, 48.437153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163326, 41.464199, 48.475330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345437, 0.556059, 0.755958,
		-0.518498, 0.558339, -0.647625,
		-0.782198, -0.615676, 0.095444,
		27.928667, 41.279495, 48.503963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980902, 42.136349, 48.576099>,  <28.476206, 41.710468, 48.437153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980902, 42.136349, 48.576099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.808266, 41.794949, 48.692905>,  <27.704685, 41.590107, 48.762989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.808266, 41.794949, 48.692905>,  <27.980902, 42.136349, 48.576099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808266, 41.794949, 48.692905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418601, 0.476240, 0.773284,
		-0.799065, 0.211505, -0.562815,
		-0.431589, -0.853499, 0.292011,
		27.678789, 41.538898, 48.780510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216412, 42.214890, 48.705448>,  <27.980902, 42.136349, 48.576099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216412, 42.214890, 48.705448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.342815, 41.905777, 48.925613>,  <27.418657, 41.720310, 49.057713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.342815, 41.905777, 48.925613>,  <27.216412, 42.214890, 48.705448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342815, 41.905777, 48.925613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588672, 0.295260, 0.752520,
		-0.744046, -0.561813, -0.361609,
		0.316007, -0.772779, 0.550410,
		27.437618, 41.673943, 49.090736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692606, 42.037457, 49.074787>,  <27.216412, 42.214890, 48.705448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692606, 42.037457, 49.074787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.975183, 41.865452, 49.299652>,  <27.144730, 41.762249, 49.434570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.975183, 41.865452, 49.299652>,  <26.692606, 42.037457, 49.074787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975183, 41.865452, 49.299652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518933, 0.225428, 0.824555,
		-0.481297, -0.874226, -0.063896,
		0.706443, -0.430013, 0.562162,
		27.187117, 41.736446, 49.468300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362244, 41.553776, 49.563610>,  <26.692606, 42.037457, 49.074787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362244, 41.553776, 49.563610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709389, 41.638138, 49.743538>,  <26.917675, 41.688755, 49.851494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709389, 41.638138, 49.743538>,  <26.362244, 41.553776, 49.563610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709389, 41.638138, 49.743538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438563, -0.100140, 0.893104,
		0.233404, -0.972364, 0.005587,
		0.867863, 0.210904, 0.449815,
		26.969748, 41.701408, 49.878483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395979, 41.155647, 50.097889>,  <26.362244, 41.553776, 49.563610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395979, 41.155647, 50.097889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.691317, 41.392197, 50.227577>,  <26.868519, 41.534126, 50.305389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.691317, 41.392197, 50.227577>,  <26.395979, 41.155647, 50.097889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691317, 41.392197, 50.227577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301362, -0.140781, 0.943060,
		0.603349, -0.794011, 0.074274,
		0.738343, 0.591378, 0.324224,
		26.912819, 41.569611, 50.324844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577532, 40.851456, 50.747372>,  <26.395979, 41.155647, 50.097889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577532, 40.851456, 50.747372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.735306, 41.218948, 50.754932>,  <26.829969, 41.439442, 50.759468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.735306, 41.218948, 50.754932>,  <26.577532, 40.851456, 50.747372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735306, 41.218948, 50.754932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475373, 0.186398, 0.859812,
		0.786411, -0.348125, 0.510261,
		0.394433, 0.918730, 0.018903,
		26.853636, 41.494568, 50.760605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755320, 40.881477, 51.437366>,  <26.577532, 40.851456, 50.747372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755320, 40.881477, 51.437366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.771944, 41.263103, 51.318680>,  <26.781919, 41.492077, 51.247467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.771944, 41.263103, 51.318680>,  <26.755320, 40.881477, 51.437366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771944, 41.263103, 51.318680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308229, 0.294728, 0.904505,
		0.950404, 0.053862, 0.306320,
		0.041563, 0.954062, -0.296713,
		26.784412, 41.549320, 51.229668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233150, 41.251881, 51.867752>,  <26.755320, 40.881477, 51.437366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233150, 41.251881, 51.867752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987144, 41.517445, 51.697586>,  <26.839540, 41.676785, 51.595486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987144, 41.517445, 51.697586>,  <27.233150, 41.251881, 51.867752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987144, 41.517445, 51.697586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280307, 0.320186, 0.904936,
		0.737009, 0.675796, -0.010821,
		-0.615017, 0.663913, -0.425410,
		26.802639, 41.716618, 51.569962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345200, 41.925709, 52.114605>,  <27.233150, 41.251881, 51.867752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345200, 41.925709, 52.114605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.966982, 41.920269, 51.984520>,  <26.740051, 41.917004, 51.906467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.966982, 41.920269, 51.984520>,  <27.345200, 41.925709, 52.114605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966982, 41.920269, 51.984520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311660, 0.326050, 0.892502,
		0.093894, 0.945254, -0.312534,
		-0.945543, -0.013604, -0.325212,
		26.683319, 41.916187, 51.886955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126339, 42.574085, 52.294575>,  <27.345200, 41.925709, 52.114605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126339, 42.574085, 52.294575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.786980, 42.371059, 52.234436>,  <26.583364, 42.249245, 52.198353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.786980, 42.371059, 52.234436>,  <27.126339, 42.574085, 52.294575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786980, 42.371059, 52.234436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347872, 0.320488, 0.881064,
		-0.399011, 0.799792, -0.448467,
		-0.848396, -0.507563, -0.150347,
		26.532461, 42.218792, 52.189331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612675, 42.984333, 52.606796>,  <27.126339, 42.574085, 52.294575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612675, 42.984333, 52.606796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.398542, 42.647652, 52.578617>,  <26.270063, 42.445644, 52.561710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.398542, 42.647652, 52.578617>,  <26.612675, 42.984333, 52.606796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398542, 42.647652, 52.578617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178281, 0.031073, 0.983489,
		-0.825614, 0.539051, -0.166693,
		-0.535330, -0.841700, -0.070448,
		26.237944, 42.395142, 52.557484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984900, 43.106087, 52.940971>,  <26.612675, 42.984333, 52.606796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984900, 43.106087, 52.940971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.039682, 42.709911, 52.934334>,  <26.072552, 42.472206, 52.930351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.039682, 42.709911, 52.934334>,  <25.984900, 43.106087, 52.940971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039682, 42.709911, 52.934334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335057, -0.062081, 0.940150,
		-0.932191, -0.123200, -0.340356,
		0.136956, -0.990438, -0.016592,
		26.080769, 42.412781, 52.929356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310520, 43.002174, 52.983845>,  <25.984900, 43.106087, 52.940971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310520, 43.002174, 52.983845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.486340, 42.661816, 53.098923>,  <25.591831, 42.457600, 53.167969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.486340, 42.661816, 53.098923>,  <25.310520, 43.002174, 52.983845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486340, 42.661816, 53.098923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510593, 0.026813, 0.859405,
		-0.738981, -0.524643, -0.422677,
		0.439548, -0.850900, 0.287693,
		25.618204, 42.406548, 53.185230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825090, 42.457207, 53.112240>,  <25.310520, 43.002174, 52.983845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825090, 42.457207, 53.112240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.157606, 42.384983, 53.322517>,  <25.357115, 42.341648, 53.448685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.157606, 42.384983, 53.322517>,  <24.825090, 42.457207, 53.112240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157606, 42.384983, 53.322517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521672, 0.073040, 0.850014,
		-0.191875, -0.980848, -0.033475,
		0.831289, -0.180560, 0.525696,
		25.406994, 42.330814, 53.480225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657904, 41.999485, 53.574505>,  <24.825090, 42.457207, 53.112240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657904, 41.999485, 53.574505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.976585, 42.186550, 53.727634>,  <25.167795, 42.298790, 53.819511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.976585, 42.186550, 53.727634>,  <24.657904, 41.999485, 53.574505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976585, 42.186550, 53.727634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495787, 0.143484, 0.856509,
		0.345627, -0.872184, 0.346175,
		0.796704, 0.467661, 0.382826,
		25.215597, 42.326847, 53.842484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657696, 41.556675, 54.163803>,  <24.657904, 41.999485, 53.574505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657696, 41.556675, 54.163803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.860611, 41.892689, 54.240749>,  <24.982359, 42.094296, 54.286915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.860611, 41.892689, 54.240749>,  <24.657696, 41.556675, 54.163803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860611, 41.892689, 54.240749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719622, 0.290110, 0.630857,
		0.474136, -0.458452, 0.751676,
		0.507287, 0.840034, 0.192361,
		25.012796, 42.144699, 54.298458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091124, 41.621811, 54.792515>,  <24.657696, 41.556675, 54.163803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091124, 41.621811, 54.792515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.989193, 41.294094, 54.997967>,  <24.928034, 41.097462, 55.121239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.989193, 41.294094, 54.997967>,  <25.091124, 41.621811, 54.792515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989193, 41.294094, 54.997967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390566, -0.573119, -0.720411,
		0.884602, 0.017028, 0.466035,
		-0.254826, -0.819295, 0.513633,
		24.912745, 41.048306, 55.152058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621935, 41.104851, 54.723881>,  <25.091124, 41.621811, 54.792515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621935, 41.104851, 54.723881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.315685, 40.880146, 54.849258>,  <25.131935, 40.745323, 54.924484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.315685, 40.880146, 54.849258>,  <25.621935, 41.104851, 54.723881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315685, 40.880146, 54.849258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351832, -0.773588, -0.527045,
		0.538551, -0.293236, 0.789921,
		-0.765622, -0.561760, 0.313446,
		25.085999, 40.711617, 54.943291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958000, 40.593735, 55.171349>,  <25.621935, 41.104851, 54.723881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958000, 40.593735, 55.171349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.617271, 40.490425, 54.989056>,  <25.412834, 40.428440, 54.879681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.617271, 40.490425, 54.989056>,  <25.958000, 40.593735, 55.171349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617271, 40.490425, 54.989056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476792, -0.742593, -0.470346,
		-0.216946, -0.617941, 0.755700,
		-0.851824, -0.258272, -0.455732,
		25.361725, 40.412945, 54.852337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042372, 39.912926, 55.283264>,  <25.958000, 40.593735, 55.171349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042372, 39.912926, 55.283264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.736519, 39.926998, 55.025860>,  <25.553007, 39.935444, 54.871418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.736519, 39.926998, 55.025860>,  <26.042372, 39.912926, 55.283264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736519, 39.926998, 55.025860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495137, -0.607078, -0.621527,
		-0.412526, -0.793863, 0.446771,
		-0.764632, 0.035183, -0.643506,
		25.507130, 39.937553, 54.832809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819290, 39.136528, 55.060829>,  <26.042372, 39.912926, 55.283264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819290, 39.136528, 55.060829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.747801, 39.421570, 54.789459>,  <25.704906, 39.592594, 54.626637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.747801, 39.421570, 54.789459>,  <25.819290, 39.136528, 55.060829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747801, 39.421570, 54.789459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499843, -0.528158, -0.686444,
		-0.847475, -0.461788, -0.261795,
		-0.178723, 0.712601, -0.678423,
		25.694183, 39.635349, 54.585934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691545, 38.718380, 54.525066>,  <25.819290, 39.136528, 55.060829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691545, 38.718380, 54.525066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.717506, 39.079250, 54.354485>,  <25.733084, 39.295773, 54.252136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.717506, 39.079250, 54.354485>,  <25.691545, 38.718380, 54.525066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717506, 39.079250, 54.354485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375542, -0.418018, -0.827182,
		-0.924530, -0.106463, -0.365937,
		0.064904, 0.902179, -0.426451,
		25.736979, 39.349903, 54.226551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432665, 38.619686, 53.914291>,  <25.691545, 38.718380, 54.525066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432665, 38.619686, 53.914291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.676077, 38.936386, 53.893070>,  <25.822124, 39.126408, 53.880337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.676077, 38.936386, 53.893070>,  <25.432665, 38.619686, 53.914291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676077, 38.936386, 53.893070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292263, -0.285781, -0.912640,
		-0.737747, 0.539866, -0.405307,
		0.608532, 0.791754, -0.053051,
		25.858637, 39.173912, 53.877155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192289, 38.794029, 53.213623>,  <25.432665, 38.619686, 53.914291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192289, 38.794029, 53.213623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.532156, 38.983761, 53.305775>,  <25.736076, 39.097599, 53.361065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.532156, 38.983761, 53.305775>,  <25.192289, 38.794029, 53.213623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532156, 38.983761, 53.305775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360619, -0.203933, -0.910146,
		-0.384729, 0.856400, -0.344328,
		0.849669, 0.474331, 0.230375,
		25.787056, 39.126060, 53.374886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414366, 39.159790, 52.641972>,  <25.192289, 38.794029, 53.213623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414366, 39.159790, 52.641972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.755100, 39.108135, 52.845028>,  <25.959541, 39.077145, 52.966862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.755100, 39.108135, 52.845028>,  <25.414366, 39.159790, 52.641972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755100, 39.108135, 52.845028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446833, -0.326575, -0.832880,
		0.273336, 0.936308, -0.220487,
		0.851838, -0.129135, 0.507638,
		26.010651, 39.069393, 52.997318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957209, 39.384918, 52.220829>,  <25.414366, 39.159790, 52.641972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957209, 39.384918, 52.220829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.134233, 39.135284, 52.478401>,  <26.240448, 38.985504, 52.632946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.134233, 39.135284, 52.478401>,  <25.957209, 39.384918, 52.220829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134233, 39.135284, 52.478401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556561, -0.371879, -0.742930,
		0.703119, 0.687184, 0.182762,
		0.442564, -0.624087, 0.643935,
		26.267002, 38.948059, 52.671581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689314, 39.528625, 52.173195>,  <25.957209, 39.384918, 52.220829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689314, 39.528625, 52.173195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.683781, 39.165073, 52.339928>,  <26.680460, 38.946941, 52.439968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.683781, 39.165073, 52.339928>,  <26.689314, 39.528625, 52.173195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683781, 39.165073, 52.339928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514795, -0.363849, -0.776273,
		0.857201, 0.203844, 0.472920,
		-0.013832, -0.908879, 0.416830,
		26.679630, 38.892410, 52.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382235, 39.208042, 52.053555>,  <26.689314, 39.528625, 52.173195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382235, 39.208042, 52.053555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.131407, 38.901005, 52.106594>,  <26.980909, 38.716782, 52.138416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.131407, 38.901005, 52.106594>,  <27.382235, 39.208042, 52.053555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131407, 38.901005, 52.106594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445015, -0.492721, -0.747789,
		0.639331, -0.409909, 0.650562,
		-0.627071, -0.767594, 0.132595,
		26.943285, 38.670727, 52.146374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861465, 38.764191, 52.060509>,  <27.382235, 39.208042, 52.053555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861465, 38.764191, 52.060509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507786, 38.618492, 51.943539>,  <27.295578, 38.531071, 51.873356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507786, 38.618492, 51.943539>,  <27.861465, 38.764191, 52.060509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507786, 38.618492, 51.943539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460696, -0.576668, -0.674694,
		0.077125, -0.731284, 0.677699,
		-0.884201, -0.364249, -0.292425,
		27.242525, 38.509216, 51.855812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938034, 38.055908, 51.926380>,  <27.861465, 38.764191, 52.060509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938034, 38.055908, 51.926380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595068, 38.123817, 51.732052>,  <27.389288, 38.164562, 51.615456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595068, 38.123817, 51.732052>,  <27.938034, 38.055908, 51.926380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595068, 38.123817, 51.732052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409589, -0.346431, -0.843933,
		-0.311578, -0.922585, 0.227498,
		-0.857412, 0.169771, -0.485821,
		27.337845, 38.174747, 51.586308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871183, 37.469757, 51.437302>,  <27.938034, 38.055908, 51.926380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871183, 37.469757, 51.437302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632984, 37.739407, 51.262512>,  <27.490065, 37.901196, 51.157639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632984, 37.739407, 51.262512>,  <27.871183, 37.469757, 51.437302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632984, 37.739407, 51.262512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293659, -0.323627, -0.899461,
		-0.747760, -0.663948, -0.005242,
		-0.595499, 0.674120, -0.436970,
		27.454334, 37.941643, 51.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635281, 37.271236, 50.796955>,  <27.871183, 37.469757, 51.437302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635281, 37.271236, 50.796955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.566458, 37.661350, 50.741497>,  <27.525164, 37.895416, 50.708221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.566458, 37.661350, 50.741497>,  <27.635281, 37.271236, 50.796955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566458, 37.661350, 50.741497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265623, -0.089599, -0.959904,
		-0.948599, -0.201986, -0.243641,
		-0.172057, 0.975281, -0.138645,
		27.514841, 37.953934, 50.699902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064604, 37.378532, 50.268917>,  <27.635281, 37.271236, 50.796955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064604, 37.378532, 50.268917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.252539, 37.731255, 50.285294>,  <27.365299, 37.942886, 50.295120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.252539, 37.731255, 50.285294>,  <27.064604, 37.378532, 50.268917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252539, 37.731255, 50.285294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344061, -0.140211, -0.928420,
		-0.812942, 0.450295, -0.369270,
		0.469838, 0.881802, 0.040945,
		27.393490, 37.995796, 50.297577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178240, 37.688576, 49.548748>,  <27.064604, 37.378532, 50.268917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178240, 37.688576, 49.548748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.448877, 37.926445, 49.722454>,  <27.611259, 38.069168, 49.826679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.448877, 37.926445, 49.722454>,  <27.178240, 37.688576, 49.548748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448877, 37.926445, 49.722454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546061, -0.009554, -0.837691,
		-0.494003, 0.803911, -0.331192,
		0.676593, 0.594673, 0.434265,
		27.651855, 38.104847, 49.852734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368586, 38.135757, 49.010742>,  <27.178240, 37.688576, 49.548748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368586, 38.135757, 49.010742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.661602, 38.153290, 49.282467>,  <27.837412, 38.163811, 49.445499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.661602, 38.153290, 49.282467>,  <27.368586, 38.135757, 49.010742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661602, 38.153290, 49.282467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679961, 0.000016, -0.733248,
		-0.032150, 0.999039, -0.029792,
		0.732543, 0.043832, 0.679308,
		27.881365, 38.166439, 49.486259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857912, 38.633766, 48.780037>,  <27.368586, 38.135757, 49.010742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857912, 38.633766, 48.780037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.060575, 38.413319, 49.045238>,  <28.182173, 38.281052, 49.204357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.060575, 38.413319, 49.045238>,  <27.857912, 38.633766, 48.780037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060575, 38.413319, 49.045238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712529, -0.165281, -0.681898,
		0.485385, 0.817896, 0.308944,
		0.506659, -0.551115, 0.663000,
		28.212574, 38.247986, 49.244137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603601, 38.858356, 48.740379>,  <27.857912, 38.633766, 48.780037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603601, 38.858356, 48.740379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.598394, 38.486790, 48.888405>,  <28.595270, 38.263851, 48.977219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.598394, 38.486790, 48.888405>,  <28.603601, 38.858356, 48.740379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598394, 38.486790, 48.888405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604881, -0.302011, -0.736823,
		0.796210, 0.214250, 0.565816,
		-0.013018, -0.928917, 0.370060,
		28.594488, 38.208115, 48.999424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236076, 38.644947, 48.551205>,  <28.603601, 38.858356, 48.740379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236076, 38.644947, 48.551205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.031992, 38.311119, 48.634327>,  <28.909540, 38.110825, 48.684200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.031992, 38.311119, 48.634327>,  <29.236076, 38.644947, 48.551205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031992, 38.311119, 48.634327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589802, -0.515376, -0.621708,
		0.625953, -0.194642, 0.755181,
		-0.510212, -0.834567, 0.207801,
		28.878929, 38.060749, 48.696667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773153, 38.158272, 48.489113>,  <29.236076, 38.644947, 48.551205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773153, 38.158272, 48.489113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427565, 37.958782, 48.461308>,  <29.220211, 37.839088, 48.444622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427565, 37.958782, 48.461308>,  <29.773153, 38.158272, 48.489113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427565, 37.958782, 48.461308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392593, -0.580704, -0.713199,
		0.315318, -0.643475, 0.697506,
		-0.863971, -0.498721, -0.069517,
		29.168373, 37.809166, 48.440453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872738, 37.441200, 48.529167>,  <29.773153, 38.158272, 48.489113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872738, 37.441200, 48.529167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515070, 37.454067, 48.350536>,  <29.300470, 37.461788, 48.243359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515070, 37.454067, 48.350536>,  <29.872738, 37.441200, 48.529167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515070, 37.454067, 48.350536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300891, -0.695432, -0.652564,
		-0.331553, -0.717872, 0.612154,
		-0.894168, 0.032168, -0.446574,
		29.246819, 37.463718, 48.216564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670250, 36.773041, 48.343590>,  <29.872738, 37.441200, 48.529167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670250, 36.773041, 48.343590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427217, 36.982384, 48.104610>,  <29.281399, 37.107990, 47.961224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427217, 36.982384, 48.104610>,  <29.670250, 36.773041, 48.343590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427217, 36.982384, 48.104610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164013, -0.653324, -0.739099,
		-0.777141, -0.547050, 0.311108,
		-0.607578, 0.523358, -0.597448,
		29.244944, 37.139389, 47.925377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196728, 36.296867, 48.190586>,  <29.670250, 36.773041, 48.343590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196728, 36.296867, 48.190586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175978, 36.563023, 47.892708>,  <29.163528, 36.722717, 47.713982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175978, 36.563023, 47.892708>,  <29.196728, 36.296867, 48.190586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175978, 36.563023, 47.892708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033989, -0.744087, -0.667217,
		-0.998075, -0.059923, 0.015983,
		-0.051874, 0.665390, -0.744692,
		29.160416, 36.762638, 47.669300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775471, 36.017811, 47.750511>,  <29.196728, 36.296867, 48.190586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775471, 36.017811, 47.750511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969696, 36.290806, 47.531990>,  <29.086231, 36.454601, 47.400879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969696, 36.290806, 47.531990>,  <28.775471, 36.017811, 47.750511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969696, 36.290806, 47.531990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055578, -0.647749, -0.759824,
		-0.872433, 0.338581, -0.352454,
		0.485564, 0.682484, -0.546300,
		29.115366, 36.495552, 47.368099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366283, 36.125698, 47.058754>,  <28.775471, 36.017811, 47.750511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366283, 36.125698, 47.058754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756798, 36.199902, 47.014118>,  <28.991106, 36.244423, 46.987335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756798, 36.199902, 47.014118>,  <28.366283, 36.125698, 47.058754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756798, 36.199902, 47.014118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044081, -0.675011, -0.736490,
		-0.211947, 0.714106, -0.667181,
		0.976286, 0.185507, -0.111588,
		29.049685, 36.255554, 46.980640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433037, 35.924747, 46.437012>,  <28.366283, 36.125698, 47.058754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433037, 35.924747, 46.437012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.824930, 35.959999, 46.508965>,  <29.060066, 35.981148, 46.552135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.824930, 35.959999, 46.508965>,  <28.433037, 35.924747, 46.437012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824930, 35.959999, 46.508965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193341, -0.650823, -0.734199,
		0.052369, 0.754097, -0.654672,
		0.979733, 0.088126, 0.179881,
		29.118851, 35.986435, 46.562927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745377, 35.973640, 45.761246>,  <28.433037, 35.924747, 46.437012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745377, 35.973640, 45.761246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.026917, 35.869282, 46.025528>,  <29.195841, 35.806667, 46.184097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.026917, 35.869282, 46.025528>,  <28.745377, 35.973640, 45.761246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026917, 35.869282, 46.025528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331768, -0.701699, -0.630515,
		0.628111, 0.662989, -0.407336,
		0.703851, -0.260892, 0.660703,
		29.238071, 35.791016, 46.223740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460859, 36.055370, 45.408134>,  <28.745377, 35.973640, 45.761246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460859, 36.055370, 45.408134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495584, 35.795158, 45.709934>,  <29.516420, 35.639030, 45.891014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495584, 35.795158, 45.709934>,  <29.460859, 36.055370, 45.408134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495584, 35.795158, 45.709934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286892, -0.708953, -0.644266,
		0.954021, 0.272393, 0.125084,
		0.086815, -0.650529, 0.754503,
		29.521629, 35.599998, 45.936287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996790, 35.614307, 45.150871>,  <29.460859, 36.055370, 45.408134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996790, 35.614307, 45.150871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.858776, 35.410206, 45.465981>,  <29.775969, 35.287746, 45.655048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.858776, 35.410206, 45.465981>,  <29.996790, 35.614307, 45.150871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858776, 35.410206, 45.465981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410910, -0.836729, -0.361990,
		0.843863, 0.198807, 0.498369,
		-0.345034, -0.510254, 0.787777,
		29.755266, 35.257130, 45.702312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530424, 35.210941, 45.422920>,  <29.996790, 35.614307, 45.150871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530424, 35.210941, 45.422920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187397, 35.036499, 45.532017>,  <29.981581, 34.931831, 45.597473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187397, 35.036499, 45.532017>,  <30.530424, 35.210941, 45.422920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187397, 35.036499, 45.532017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386857, -0.896296, -0.216783,
		0.338998, -0.080394, 0.937346,
		-0.857567, -0.436108, 0.272742,
		29.930126, 34.905666, 45.613838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690889, 34.773003, 46.006268>,  <30.530424, 35.210941, 45.422920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690889, 34.773003, 46.006268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.352455, 34.621174, 45.856564>,  <30.149395, 34.530079, 45.766743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.352455, 34.621174, 45.856564>,  <30.690889, 34.773003, 46.006268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352455, 34.621174, 45.856564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435279, -0.897244, -0.074061,
		-0.307689, -0.225568, 0.924362,
		-0.846085, -0.379568, -0.374258,
		30.098629, 34.507305, 45.744286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501276, 34.086605, 46.353146>,  <30.690889, 34.773003, 46.006268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501276, 34.086605, 46.353146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345957, 34.103294, 45.984909>,  <30.252766, 34.113308, 45.763969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345957, 34.103294, 45.984909>,  <30.501276, 34.086605, 46.353146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345957, 34.103294, 45.984909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493399, -0.834313, -0.245925,
		-0.778320, -0.549710, 0.303376,
		-0.388298, 0.041723, -0.920589,
		30.229467, 34.115810, 45.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245369, 33.467377, 46.286514>,  <30.501276, 34.086605, 46.353146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245369, 33.467377, 46.286514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261263, 33.578888, 45.902702>,  <30.270800, 33.645794, 45.672413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261263, 33.578888, 45.902702>,  <30.245369, 33.467377, 46.286514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261263, 33.578888, 45.902702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429468, -0.871832, -0.235515,
		-0.902208, -0.402730, -0.154367,
		0.039733, 0.278779, -0.959533,
		30.273182, 33.662521, 45.614841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952162, 32.976418, 45.865303>,  <30.245369, 33.467377, 46.286514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952162, 32.976418, 45.865303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187675, 33.173882, 45.609295>,  <30.328983, 33.292358, 45.455688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187675, 33.173882, 45.609295>,  <29.952162, 32.976418, 45.865303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187675, 33.173882, 45.609295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504827, -0.842988, -0.185798,
		-0.631254, -0.213706, -0.745552,
		0.588785, 0.493660, -0.640025,
		30.364311, 33.321980, 45.417286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114489, 32.494835, 45.435604>,  <29.952162, 32.976418, 45.865303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114489, 32.494835, 45.435604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390703, 32.767761, 45.339596>,  <30.556433, 32.931515, 45.281990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390703, 32.767761, 45.339596>,  <30.114489, 32.494835, 45.435604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390703, 32.767761, 45.339596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675666, -0.726941, -0.122608,
		-0.258135, -0.077506, -0.962995,
		0.690537, 0.682312, -0.240017,
		30.597864, 32.972454, 45.267590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487778, 32.258533, 44.804405>,  <30.114489, 32.494835, 45.435604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487778, 32.258533, 44.804405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.739191, 32.533379, 44.950184>,  <30.890039, 32.698284, 45.037651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.739191, 32.533379, 44.950184>,  <30.487778, 32.258533, 44.804405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739191, 32.533379, 44.950184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765364, -0.629798, -0.132561,
		0.138445, 0.362255, -0.921740,
		0.628531, 0.687114, 0.364449,
		30.927750, 32.739513, 45.059517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044680, 32.279285, 44.370567>,  <30.487778, 32.258533, 44.804405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044680, 32.279285, 44.370567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181932, 32.429684, 44.714867>,  <31.264284, 32.519920, 44.921448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181932, 32.429684, 44.714867>,  <31.044680, 32.279285, 44.370567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181932, 32.429684, 44.714867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822874, -0.562211, -0.082448,
		0.452923, 0.736579, -0.502307,
		0.343132, 0.375993, 0.860750,
		31.284872, 32.542480, 44.973091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787117, 32.565002, 44.244762>,  <31.044680, 32.279285, 44.370567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787117, 32.565002, 44.244762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739145, 32.451725, 44.625378>,  <31.710361, 32.383759, 44.853745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739145, 32.451725, 44.625378>,  <31.787117, 32.565002, 44.244762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739145, 32.451725, 44.625378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884381, -0.465971, -0.027216,
		0.451095, 0.838255, 0.306336,
		-0.119930, -0.283195, 0.951534,
		31.703167, 32.366768, 44.910839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389832, 32.656010, 44.657303>,  <31.787117, 32.565002, 44.244762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389832, 32.656010, 44.657303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179615, 32.366192, 44.835667>,  <32.053486, 32.192299, 44.942684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179615, 32.366192, 44.835667>,  <32.389832, 32.656010, 44.657303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179615, 32.366192, 44.835667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788101, -0.612036, -0.065643,
		0.320476, 0.316926, 0.892666,
		-0.525540, -0.724548, 0.445913,
		32.021954, 32.148827, 44.969440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773037, 32.234390, 45.190384>,  <32.389832, 32.656010, 44.657303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773037, 32.234390, 45.190384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475697, 31.985210, 45.092926>,  <32.297291, 31.835703, 45.034451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475697, 31.985210, 45.092926>,  <32.773037, 32.234390, 45.190384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475697, 31.985210, 45.092926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643427, -0.566350, -0.515023,
		0.182842, -0.539613, 0.821819,
		-0.743350, -0.622949, -0.243649,
		32.252693, 31.798326, 45.019833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952934, 31.525270, 45.409729>,  <32.773037, 32.234390, 45.190384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952934, 31.525270, 45.409729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729843, 31.481480, 45.080620>,  <32.595989, 31.455204, 44.883156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729843, 31.481480, 45.080620>,  <32.952934, 31.525270, 45.409729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729843, 31.481480, 45.080620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715881, -0.565113, -0.410074,
		-0.420066, -0.817717, 0.393552,
		-0.557726, -0.109479, -0.822773,
		32.562527, 31.448635, 44.833786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352108, 31.874861, 45.918640>,  <32.952934, 31.525270, 45.409729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352108, 31.874861, 45.918640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475460, 32.050270, 45.580978>,  <33.549473, 32.155514, 45.378380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475460, 32.050270, 45.580978>,  <33.352108, 31.874861, 45.918640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475460, 32.050270, 45.580978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732412, -0.456819, -0.504866,
		-0.607021, 0.773961, 0.180304,
		0.308380, 0.438521, -0.844157,
		33.567974, 32.181828, 45.327732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927258, 31.697205, 46.342594>,  <33.352108, 31.874861, 45.918640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927258, 31.697205, 46.342594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081112, 31.562527, 45.998806>,  <34.173424, 31.481720, 45.792534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081112, 31.562527, 45.998806>,  <33.927258, 31.697205, 46.342594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081112, 31.562527, 45.998806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922909, 0.122980, 0.364848,
		-0.017145, -0.933547, 0.358043,
		0.384635, -0.336696, -0.859471,
		34.196503, 31.461517, 45.740963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498890, 31.226536, 46.464344>,  <33.927258, 31.697205, 46.342594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498890, 31.226536, 46.464344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555149, 31.382793, 46.100452>,  <34.588905, 31.476549, 45.882118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555149, 31.382793, 46.100452>,  <34.498890, 31.226536, 46.464344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555149, 31.382793, 46.100452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959737, 0.171871, 0.222181,
		0.243151, -0.904354, -0.350743,
		0.140648, 0.390645, -0.909733,
		34.597343, 31.499987, 45.827534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085617, 30.880035, 46.094109>,  <34.498890, 31.226536, 46.464344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085617, 30.880035, 46.094109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049496, 31.252731, 45.953423>,  <35.027824, 31.476349, 45.869011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049496, 31.252731, 45.953423>,  <35.085617, 30.880035, 46.094109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049496, 31.252731, 45.953423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967573, 0.165732, 0.190618,
		0.235897, -0.323101, -0.916492,
		-0.090304, 0.931740, -0.351720,
		35.022404, 31.532253, 45.847908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598244, 31.004465, 45.706268>,  <35.085617, 30.880035, 46.094109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598244, 31.004465, 45.706268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486565, 31.380245, 45.785744>,  <35.419556, 31.605713, 45.833427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486565, 31.380245, 45.785744>,  <35.598244, 31.004465, 45.706268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486565, 31.380245, 45.785744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958375, 0.285494, -0.003158,
		-0.059691, 0.189537, -0.980058,
		-0.279202, 0.939451, 0.198689,
		35.402805, 31.662081, 45.845348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966671, 31.386333, 45.355515>,  <35.598244, 31.004465, 45.706268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966671, 31.386333, 45.355515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838257, 31.639172, 45.637619>,  <35.761208, 31.790874, 45.806881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838257, 31.639172, 45.637619>,  <35.966671, 31.386333, 45.355515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838257, 31.639172, 45.637619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909394, 0.413688, 0.043191,
		-0.264455, 0.655222, -0.707635,
		-0.321040, 0.632096, 0.705257,
		35.741943, 31.828800, 45.849197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171436, 32.101482, 45.156509>,  <35.966671, 31.386333, 45.355515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171436, 32.101482, 45.156509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100216, 32.117306, 45.549801>,  <36.057484, 32.126801, 45.785774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100216, 32.117306, 45.549801>,  <36.171436, 32.101482, 45.156509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100216, 32.117306, 45.549801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915773, 0.372293, 0.150857,
		-0.360081, 0.927272, -0.102510,
		-0.178049, 0.039555, 0.983226,
		36.046803, 32.129173, 45.844769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420395, 32.793228, 45.385296>,  <36.171436, 32.101482, 45.156509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420395, 32.793228, 45.385296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386238, 32.572613, 45.717201>,  <36.365746, 32.440243, 45.916344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386238, 32.572613, 45.717201>,  <36.420395, 32.793228, 45.385296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386238, 32.572613, 45.717201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846465, 0.399131, 0.352409,
		-0.525553, 0.732462, 0.432775,
		-0.085393, -0.551538, 0.829767,
		36.360619, 32.407150, 45.966133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551945, 33.254875, 46.006218>,  <36.420395, 32.793228, 45.385296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551945, 33.254875, 46.006218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591896, 32.878822, 46.136555>,  <36.615868, 32.653191, 46.214756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591896, 32.878822, 46.136555>,  <36.551945, 33.254875, 46.006218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591896, 32.878822, 46.136555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770099, 0.280407, 0.572991,
		-0.630056, 0.193698, 0.752004,
		0.099880, -0.940134, 0.325839,
		36.621861, 32.596783, 46.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453880, 33.178677, 46.760284>,  <36.551945, 33.254875, 46.006218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453880, 33.178677, 46.760284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695190, 32.887897, 46.629074>,  <36.839977, 32.713428, 46.550346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695190, 32.887897, 46.629074>,  <36.453880, 33.178677, 46.760284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695190, 32.887897, 46.629074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699605, 0.284904, 0.655273,
		-0.382895, -0.624800, 0.680453,
		0.603279, -0.726949, -0.328024,
		36.876175, 32.669811, 46.530666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813927, 33.113392, 47.320614>,  <36.453880, 33.178677, 46.760284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813927, 33.113392, 47.320614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046093, 32.914597, 47.062584>,  <37.185394, 32.795319, 46.907768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046093, 32.914597, 47.062584>,  <36.813927, 33.113392, 47.320614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046093, 32.914597, 47.062584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771741, 0.082912, 0.630509,
		-0.259872, -0.863787, 0.431670,
		0.580416, -0.496989, -0.645073,
		37.220219, 32.765499, 46.869061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196247, 32.604248, 47.697994>,  <36.813927, 33.113392, 47.320614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196247, 32.604248, 47.697994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416039, 32.650867, 47.367058>,  <37.547913, 32.678837, 47.168495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416039, 32.650867, 47.367058>,  <37.196247, 32.604248, 47.697994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416039, 32.650867, 47.367058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824610, 0.083771, 0.559465,
		0.134510, -0.989646, -0.050073,
		0.549477, 0.116545, -0.827340,
		37.580883, 32.685829, 47.118855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852409, 32.231022, 47.861607>,  <37.196247, 32.604248, 47.697994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852409, 32.231022, 47.861607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917076, 32.476303, 47.552326>,  <37.955875, 32.623474, 47.366756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917076, 32.476303, 47.552326>,  <37.852409, 32.231022, 47.861607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917076, 32.476303, 47.552326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775450, 0.405662, 0.483855,
		0.610362, -0.677802, -0.409931,
		0.161664, 0.613208, -0.773202,
		37.965576, 32.660267, 47.320366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578213, 32.149784, 47.643978>,  <37.852409, 32.231022, 47.861607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578213, 32.149784, 47.643978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462322, 32.518177, 47.539780>,  <38.392788, 32.739212, 47.477261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462322, 32.518177, 47.539780>,  <38.578213, 32.149784, 47.643978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462322, 32.518177, 47.539780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840361, 0.375048, 0.391322,
		0.458097, -0.105533, -0.882615,
		-0.289726, 0.920979, -0.260494,
		38.375404, 32.794472, 47.461632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190689, 32.408257, 47.480412>,  <38.578213, 32.149784, 47.643978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190689, 32.408257, 47.480412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941608, 32.719147, 47.516544>,  <38.792160, 32.905682, 47.538223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941608, 32.719147, 47.516544>,  <39.190689, 32.408257, 47.480412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941608, 32.719147, 47.516544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721376, 0.525535, 0.451032,
		0.303081, 0.346023, -0.887925,
		-0.622703, 0.777227, 0.090333,
		38.754799, 32.952316, 47.543644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549763, 31.935862, 47.076351>,  <39.190689, 32.408257, 47.480412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549763, 31.935862, 47.076351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821308, 31.826054, 47.348759>,  <39.984234, 31.760168, 47.512203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821308, 31.826054, 47.348759>,  <39.549763, 31.935862, 47.076351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821308, 31.826054, 47.348759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685130, -0.096749, -0.721967,
		0.264082, 0.956702, 0.122402,
		0.678865, -0.274520, 0.681015,
		40.024967, 31.743698, 47.553062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140171, 32.447403, 47.214165>,  <39.549763, 31.935862, 47.076351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140171, 32.447403, 47.214165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220379, 32.058125, 47.259205>,  <40.268501, 31.824556, 47.286228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220379, 32.058125, 47.259205>,  <40.140171, 32.447403, 47.214165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220379, 32.058125, 47.259205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605342, 0.032704, -0.795293,
		0.770295, 0.227632, 0.595675,
		0.200515, -0.973198, 0.112603,
		40.280533, 31.766165, 47.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879730, 32.298027, 47.157963>,  <40.140171, 32.447403, 47.214165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879730, 32.298027, 47.157963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696888, 31.951988, 47.075348>,  <40.587185, 31.744364, 47.025780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696888, 31.951988, 47.075348>,  <40.879730, 32.298027, 47.157963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696888, 31.951988, 47.075348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480952, -0.045086, -0.875587,
		0.748160, -0.499566, 0.436681,
		-0.457102, -0.865102, -0.206536,
		40.559757, 31.692457, 47.013386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357590, 31.909262, 46.944134>,  <40.879730, 32.298027, 47.157963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357590, 31.909262, 46.944134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020851, 31.785706, 46.767101>,  <40.818810, 31.711573, 46.660881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020851, 31.785706, 46.767101>,  <41.357590, 31.909262, 46.944134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020851, 31.785706, 46.767101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511724, -0.196146, -0.836460,
		0.171563, -0.930652, 0.323191,
		-0.841846, -0.308890, -0.442585,
		40.768299, 31.693039, 46.634327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488186, 31.188251, 46.745083>,  <41.357590, 31.909262, 46.944134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488186, 31.188251, 46.745083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211823, 31.379274, 46.527981>,  <41.046005, 31.493889, 46.397720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211823, 31.379274, 46.527981>,  <41.488186, 31.188251, 46.745083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211823, 31.379274, 46.527981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455336, -0.295672, -0.839790,
		-0.561524, -0.827355, -0.013166,
		-0.690912, 0.477557, -0.542752,
		41.004547, 31.522541, 46.365154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109657, 30.761560, 46.284737>,  <41.488186, 31.188251, 46.745083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109657, 30.761560, 46.284737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126480, 31.128368, 46.126087>,  <41.136574, 31.348454, 46.030899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126480, 31.128368, 46.126087>,  <41.109657, 30.761560, 46.284737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126480, 31.128368, 46.126087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378576, -0.382000, -0.843064,
		-0.924614, -0.114693, -0.363227,
		0.042059, 0.917018, -0.396622,
		41.139099, 31.403473, 46.007099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813999, 30.773287, 45.578232>,  <41.109657, 30.761560, 46.284737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813999, 30.773287, 45.578232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081638, 31.062590, 45.646595>,  <41.242222, 31.236172, 45.687614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081638, 31.062590, 45.646595>,  <40.813999, 30.773287, 45.578232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081638, 31.062590, 45.646595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346321, -0.099968, -0.932774,
		-0.657550, 0.683305, -0.317367,
		0.669096, 0.723257, 0.170908,
		41.282368, 31.279568, 45.697868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889969, 31.229969, 44.973057>,  <40.813999, 30.773287, 45.578232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889969, 31.229969, 44.973057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.252827, 31.208128, 45.139961>,  <41.470543, 31.195023, 45.240105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.252827, 31.208128, 45.139961>,  <40.889969, 31.229969, 44.973057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252827, 31.208128, 45.139961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385900, -0.287510, -0.876595,
		0.167832, 0.956220, -0.239742,
		0.907146, -0.054604, 0.417258,
		41.524971, 31.191748, 45.265141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397705, 31.602552, 44.539246>,  <40.889969, 31.229969, 44.973057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397705, 31.602552, 44.539246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.561760, 31.288504, 44.724880>,  <41.660194, 31.100075, 44.836262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.561760, 31.288504, 44.724880>,  <41.397705, 31.602552, 44.539246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561760, 31.288504, 44.724880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242097, -0.396875, -0.885370,
		0.879305, 0.475476, 0.027303,
		0.410136, -0.785120, 0.464085,
		41.684799, 31.052967, 44.864105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540276, 31.168058, 44.002537>,  <41.397705, 31.602552, 44.539246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540276, 31.168058, 44.002537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.332638, 30.874874, 43.826672>,  <41.208054, 30.698963, 43.721153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.332638, 30.874874, 43.826672>,  <41.540276, 31.168058, 44.002537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332638, 30.874874, 43.826672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202391, -0.394363, 0.896390,
		-0.830406, 0.554300, 0.056368,
		-0.519098, -0.732960, -0.439667,
		41.176907, 30.654985, 43.694771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972752, 31.458681, 43.492699>,  <41.540276, 31.168058, 44.002537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972752, 31.458681, 43.492699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834057, 31.323303, 43.142792>,  <41.750839, 31.242077, 42.932846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834057, 31.323303, 43.142792>,  <41.972752, 31.458681, 43.492699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834057, 31.323303, 43.142792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927799, 0.260672, 0.266905,
		0.137696, 0.904159, -0.404396,
		-0.346740, -0.338447, -0.874772,
		41.730034, 31.221769, 42.880360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480007, 31.932989, 43.157444>,  <41.972752, 31.458681, 43.492699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480007, 31.932989, 43.157444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.461021, 31.537113, 43.103397>,  <41.449631, 31.299587, 43.070969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.461021, 31.537113, 43.103397>,  <41.480007, 31.932989, 43.157444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461021, 31.537113, 43.103397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946740, 0.001439, 0.321997,
		-0.318483, 0.143206, -0.937049,
		-0.047461, -0.989692, -0.135120,
		41.446785, 31.240206, 43.062862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832417, 31.768435, 42.684311>,  <41.480007, 31.932989, 43.157444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832417, 31.768435, 42.684311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948925, 31.475342, 42.930325>,  <41.018829, 31.299486, 43.077934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948925, 31.475342, 42.930325>,  <40.832417, 31.768435, 42.684311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948925, 31.475342, 42.930325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888881, 0.030361, 0.457132,
		-0.353628, -0.679840, -0.642467,
		0.291271, -0.732732, 0.615034,
		41.036304, 31.255522, 43.114834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365398, 31.814236, 42.290550>,  <40.832417, 31.768435, 42.684311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365398, 31.814236, 42.290550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493252, 31.467583, 42.137302>,  <41.569962, 31.259590, 42.045353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493252, 31.467583, 42.137302>,  <41.365398, 31.814236, 42.290550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493252, 31.467583, 42.137302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904454, 0.399587, -0.149310,
		0.282488, -0.298794, 0.911550,
		0.319630, -0.866633, -0.383124,
		41.589142, 31.207592, 42.022366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995663, 32.005230, 42.249279>,  <41.365398, 31.814236, 42.290550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995663, 32.005230, 42.249279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.049599, 31.636244, 42.104572>,  <42.081959, 31.414852, 42.017746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.049599, 31.636244, 42.104572>,  <41.995663, 32.005230, 42.249279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049599, 31.636244, 42.104572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935548, 0.238807, -0.260233,
		0.326449, -0.303363, 0.895210,
		0.134837, -0.922465, -0.361769,
		42.090050, 31.359505, 41.996040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595581, 31.679924, 42.518070>,  <41.995663, 32.005230, 42.249279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595581, 31.679924, 42.518070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520382, 31.583757, 42.137154>,  <42.475262, 31.526058, 41.908604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520382, 31.583757, 42.137154>,  <42.595581, 31.679924, 42.518070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520382, 31.583757, 42.137154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844102, 0.456155, -0.281805,
		0.502142, -0.856810, 0.117177,
		-0.188002, -0.240416, -0.952290,
		42.463982, 31.511633, 41.851467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006626, 31.137278, 42.257275>,  <42.595581, 31.679924, 42.518070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006626, 31.137278, 42.257275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.889244, 31.405788, 41.985020>,  <42.818813, 31.566895, 41.821667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.889244, 31.405788, 41.985020>,  <43.006626, 31.137278, 42.257275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889244, 31.405788, 41.985020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946673, 0.303129, -0.109197,
		0.133019, -0.676385, -0.724437,
		-0.293457, 0.671280, -0.680637,
		42.801208, 31.607172, 41.780827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368393, 31.002586, 41.623264>,  <43.006626, 31.137278, 42.257275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368393, 31.002586, 41.623264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258942, 31.367149, 41.746204>,  <43.193272, 31.585888, 41.819969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258942, 31.367149, 41.746204>,  <43.368393, 31.002586, 41.623264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258942, 31.367149, 41.746204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961833, 0.259979, 0.085370,
		-0.002096, 0.318975, -0.947761,
		-0.273629, 0.911409, 0.307346,
		43.176853, 31.640572, 41.838409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533607, 31.440645, 41.060856>,  <43.368393, 31.002586, 41.623264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533607, 31.440645, 41.060856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.524635, 31.560072, 41.442505>,  <43.519253, 31.631729, 41.671494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.524635, 31.560072, 41.442505>,  <43.533607, 31.440645, 41.060856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524635, 31.560072, 41.442505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997274, 0.073780, 0.000354,
		-0.070290, 0.951532, -0.299410,
		-0.022427, 0.298569, 0.954125,
		43.517906, 31.649643, 41.728741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845448, 32.078472, 41.117344>,  <43.533607, 31.440645, 41.060856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845448, 32.078472, 41.117344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.875050, 31.902470, 41.475319>,  <43.892811, 31.796867, 41.690105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.875050, 31.902470, 41.475319>,  <43.845448, 32.078472, 41.117344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875050, 31.902470, 41.475319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997256, 0.034362, -0.065575,
		-0.001899, 0.897337, 0.441341,
		0.074008, -0.440005, 0.894940,
		43.897251, 31.770468, 41.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247780, 32.609005, 41.616577>,  <43.845448, 32.078472, 41.117344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247780, 32.609005, 41.616577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.275211, 32.216591, 41.689083>,  <44.291672, 31.981142, 41.732586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.275211, 32.216591, 41.689083>,  <44.247780, 32.609005, 41.616577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275211, 32.216591, 41.689083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997006, 0.073905, 0.022762,
		-0.035726, 0.179162, 0.983171,
		0.068583, -0.981040, 0.181266,
		44.295788, 31.922279, 41.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846054, 32.493992, 42.126007>,  <44.247780, 32.609005, 41.616577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846054, 32.493992, 42.126007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.775261, 32.190132, 41.875690>,  <44.732784, 32.007816, 41.725502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.775261, 32.190132, 41.875690>,  <44.846054, 32.493992, 42.126007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775261, 32.190132, 41.875690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981319, -0.087466, -0.171358,
		0.075437, -0.644426, 0.760937,
		-0.176984, -0.759648, -0.625789,
		44.722164, 31.962238, 41.687954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155155, 31.957335, 42.458488>,  <44.846054, 32.493992, 42.126007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155155, 31.957335, 42.458488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.121998, 31.931576, 42.060699>,  <45.102104, 31.916121, 41.822025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.121998, 31.931576, 42.060699>,  <45.155155, 31.957335, 42.458488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121998, 31.931576, 42.060699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992876, 0.080368, -0.087967,
		0.085589, -0.994683, 0.057275,
		-0.082897, -0.064396, -0.994475,
		45.097130, 31.912256, 41.762356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642078, 31.591295, 42.053284>,  <45.155155, 31.957335, 42.458488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642078, 31.591295, 42.053284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.555222, 31.849707, 41.760574>,  <45.503105, 32.004753, 41.584949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.555222, 31.849707, 41.760574>,  <45.642078, 31.591295, 42.053284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555222, 31.849707, 41.760574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973125, 0.084405, -0.214248,
		-0.076645, -0.758634, -0.646994,
		-0.217146, 0.646027, -0.731777,
		45.490078, 32.043514, 41.541042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899292, 31.405678, 41.260571>,  <45.642078, 31.591295, 42.053284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899292, 31.405678, 41.260571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.933380, 31.787048, 41.376308>,  <45.953831, 32.015869, 41.445751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.933380, 31.787048, 41.376308>,  <45.899292, 31.405678, 41.260571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933380, 31.787048, 41.376308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989215, -0.046240, -0.138978,
		-0.119126, 0.298065, -0.947083,
		0.085218, 0.953425, 0.289342,
		45.958946, 32.073074, 41.463112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327919, 31.733829, 40.735893>,  <45.899292, 31.405678, 41.260571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327919, 31.733829, 40.735893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.448853, 32.110050, 40.797802>,  <46.521412, 32.335781, 40.834949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.448853, 32.110050, 40.797802>,  <46.327919, 31.733829, 40.735893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448853, 32.110050, 40.797802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635852, 0.319969, -0.702361,
		-0.710131, 0.113932, 0.694790,
		0.302332, 0.940553, 0.154776,
		46.539551, 32.392216, 40.844234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646053, 32.055981, 40.699177>,  <46.327919, 31.733829, 40.735893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646053, 32.055981, 40.699177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.948513, 32.311337, 40.641628>,  <46.129990, 32.464550, 40.607101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.948513, 32.311337, 40.641628>,  <45.646053, 32.055981, 40.699177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948513, 32.311337, 40.641628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488834, 0.404861, -0.772741,
		-0.435063, 0.654635, 0.618202,
		0.756149, 0.638389, -0.143868,
		46.175358, 32.502853, 40.598469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374237, 32.697666, 40.628468>,  <45.646053, 32.055981, 40.699177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374237, 32.697666, 40.628468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.705956, 32.639183, 40.412727>,  <45.904987, 32.604095, 40.283283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.705956, 32.639183, 40.412727>,  <45.374237, 32.697666, 40.628468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705956, 32.639183, 40.412727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414810, 0.485663, -0.769457,
		0.374441, 0.861832, 0.342110,
		0.829293, -0.146206, -0.539349,
		45.954742, 32.595322, 40.250923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731579, 33.333965, 40.398811>,  <45.374237, 32.697666, 40.628468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731579, 33.333965, 40.398811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.729847, 33.051125, 40.115971>,  <45.728809, 32.881420, 39.946266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.729847, 33.051125, 40.115971>,  <45.731579, 33.333965, 40.398811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729847, 33.051125, 40.115971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507493, 0.610837, -0.607724,
		0.861645, 0.356219, -0.361492,
		-0.004330, -0.707097, -0.707103,
		45.728546, 32.838997, 39.903839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915390, 33.620689, 39.826591>,  <45.731579, 33.333965, 40.398811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915390, 33.620689, 39.826591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.689083, 33.303101, 39.737591>,  <45.553299, 33.112545, 39.684193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.689083, 33.303101, 39.737591>,  <45.915390, 33.620689, 39.826591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689083, 33.303101, 39.737591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568537, 0.571069, -0.592153,
		0.597219, -0.208521, -0.774499,
		-0.565769, -0.793976, -0.222501,
		45.519352, 33.064907, 39.670841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902149, 33.297256, 39.110020>,  <45.915390, 33.620689, 39.826591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902149, 33.297256, 39.110020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.536240, 33.284447, 39.271095>,  <45.316692, 33.276760, 39.367741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.536240, 33.284447, 39.271095>,  <45.902149, 33.297256, 39.110020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536240, 33.284447, 39.271095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349479, 0.562730, -0.749133,
		-0.202614, -0.826020, -0.525964,
		-0.914774, -0.032028, 0.402693,
		45.261806, 33.274837, 39.391903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569813, 33.704575, 39.438496>,  <45.902149, 33.297256, 39.110020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569813, 33.704575, 39.438496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.578979, 33.396332, 39.183735>,  <46.584480, 33.211388, 39.030880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.578979, 33.396332, 39.183735>,  <46.569813, 33.704575, 39.438496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578979, 33.396332, 39.183735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612994, 0.514092, -0.599957,
		0.789755, -0.376665, 0.484160,
		0.022920, -0.770606, -0.636900,
		46.585854, 33.165150, 38.992664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253181, 33.715916, 39.244499>,  <46.569813, 33.704575, 39.438496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253181, 33.715916, 39.244499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.028290, 33.518116, 38.979359>,  <46.893356, 33.399437, 38.820274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.028290, 33.518116, 38.979359>,  <47.253181, 33.715916, 39.244499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028290, 33.518116, 38.979359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391761, 0.546627, -0.740082,
		0.728304, -0.675772, -0.113601,
		-0.562225, -0.494500, -0.662852,
		46.859623, 33.369766, 38.780502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615849, 33.335033, 38.780380>,  <47.253181, 33.715916, 39.244499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615849, 33.335033, 38.780380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.274792, 33.464310, 38.616165>,  <47.070156, 33.541878, 38.517635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.274792, 33.464310, 38.616165>,  <47.615849, 33.335033, 38.780380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.274792, 33.464310, 38.616165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522088, 0.496107, -0.693760,
		-0.020547, -0.805869, -0.591738,
		-0.852644, 0.323194, -0.410541,
		47.018997, 33.561268, 38.493004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364761, 33.106461, 38.061108>,  <47.615849, 33.335033, 38.780380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364761, 33.106461, 38.061108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.227402, 33.475906, 38.129250>,  <47.144985, 33.697575, 38.170135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.227402, 33.475906, 38.129250>,  <47.364761, 33.106461, 38.061108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227402, 33.475906, 38.129250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545369, 0.343765, -0.764459,
		-0.764624, -0.169610, -0.621758,
		-0.343399, 0.923611, 0.170351,
		47.124382, 33.752991, 38.180355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206524, 33.340759, 37.468952>,  <47.364761, 33.106461, 38.061108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206524, 33.340759, 37.468952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.208649, 33.687286, 37.668739>,  <47.209923, 33.895203, 37.788612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.208649, 33.687286, 37.668739>,  <47.206524, 33.340759, 37.468952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208649, 33.687286, 37.668739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425144, 0.450133, -0.785260,
		-0.905110, 0.216518, -0.365917,
		0.005312, 0.866314, 0.499471,
		47.210243, 33.947182, 37.818581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491291, 33.750839, 37.332909>,  <47.206524, 33.340759, 37.468952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491291, 33.750839, 37.332909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.456066, 33.965988, 37.668274>,  <46.434929, 34.095078, 37.869492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.456066, 33.965988, 37.668274>,  <46.491291, 33.750839, 37.332909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456066, 33.965988, 37.668274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367701, 0.764686, -0.529199,
		-0.925765, -0.354890, 0.130433,
		-0.088067, 0.537874, 0.838413,
		46.429646, 34.127350, 37.919796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.864937, 34.254784, 36.841042>,  <46.491291, 33.750839, 37.332909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.864937, 34.254784, 36.841042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.234821, 34.323242, 36.705032>,  <47.456753, 34.364319, 36.623428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.234821, 34.323242, 36.705032>,  <46.864937, 34.254784, 36.841042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234821, 34.323242, 36.705032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374766, 0.252628, -0.892037,
		-0.066772, 0.952306, 0.297749,
		0.924712, 0.171149, -0.340023,
		47.512234, 34.374588, 36.603024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893478, 35.001175, 36.584362>,  <46.864937, 34.254784, 36.841042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893478, 35.001175, 36.584362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.119415, 34.715931, 36.418266>,  <47.254978, 34.544785, 36.318607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.119415, 34.715931, 36.418266>,  <46.893478, 35.001175, 36.584362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119415, 34.715931, 36.418266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529909, 0.072286, -0.844968,
		0.632573, 0.697313, -0.337054,
		0.564843, -0.713112, -0.415239,
		47.288868, 34.501999, 36.293694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254944, 35.117111, 35.921413>,  <46.893478, 35.001175, 36.584362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254944, 35.117111, 35.921413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.185638, 34.723671, 35.901360>,  <47.144054, 34.487606, 35.889328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.185638, 34.723671, 35.901360>,  <47.254944, 35.117111, 35.921413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185638, 34.723671, 35.901360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464828, 0.126548, -0.876311,
		0.868283, -0.128525, -0.479130,
		-0.173261, -0.983599, -0.050138,
		47.133659, 34.428593, 35.886318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.671356, 34.874187, 35.392391>,  <47.254944, 35.117111, 35.921413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.671356, 34.874187, 35.392391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.758705, 35.180714, 35.150707>,  <47.811115, 35.364628, 35.005695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.758705, 35.180714, 35.150707>,  <47.671356, 34.874187, 35.392391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758705, 35.180714, 35.150707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479050, -0.455241, -0.750511,
		-0.850191, 0.453338, 0.267693,
		0.218371, 0.766316, -0.604214,
		47.824215, 35.410610, 34.969444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.836592, 35.324703, 54.445374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.141325, 35.570312, 54.527912>,  <31.324165, 35.717678, 54.577435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.141325, 35.570312, 54.527912>,  <30.836592, 35.324703, 54.445374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141325, 35.570312, 54.527912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521131, -0.391757, -0.758254,
		-0.384750, 0.685198, -0.618443,
		0.761833, 0.614028, 0.206349,
		31.369875, 35.754520, 54.589817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174263, 35.428741, 53.767635>,  <30.836592, 35.324703, 54.445374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174263, 35.428741, 53.767635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.457815, 35.559254, 54.017765>,  <31.627947, 35.637562, 54.167843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.457815, 35.559254, 54.017765>,  <31.174263, 35.428741, 53.767635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457815, 35.559254, 54.017765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702377, -0.407540, -0.583590,
		0.064430, 0.852908, -0.518070,
		0.708883, 0.326280, 0.625321,
		31.670481, 35.657139, 54.205360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671549, 35.710423, 53.413757>,  <31.174263, 35.428741, 53.767635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671549, 35.710423, 53.413757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.855183, 35.575844, 53.742645>,  <31.965363, 35.495094, 53.939980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.855183, 35.575844, 53.742645>,  <31.671549, 35.710423, 53.413757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855183, 35.575844, 53.742645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788324, -0.272453, -0.551647,
		0.409617, 0.901428, 0.140151,
		0.459085, -0.336448, 0.822219,
		31.992908, 35.474911, 53.989311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387054, 35.732750, 53.184631>,  <31.671549, 35.710423, 53.413757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387054, 35.732750, 53.184631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.454784, 35.551754, 53.534851>,  <32.495422, 35.443157, 53.744984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.454784, 35.551754, 53.534851>,  <32.387054, 35.732750, 53.184631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454784, 35.551754, 53.534851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786589, -0.473208, -0.396675,
		0.593807, 0.755863, 0.275796,
		0.169323, -0.452487, 0.875548,
		32.505581, 35.416008, 53.797516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090305, 35.891582, 53.478756>,  <32.387054, 35.732750, 53.184631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090305, 35.891582, 53.478756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.956203, 35.540195, 53.614937>,  <32.875744, 35.329365, 53.696648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.956203, 35.540195, 53.614937>,  <33.090305, 35.891582, 53.478756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956203, 35.540195, 53.614937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800058, -0.456283, -0.389504,
		0.497509, 0.141802, 0.855790,
		-0.335251, -0.878463, 0.340455,
		32.855629, 35.276657, 53.717072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636189, 35.623497, 53.833851>,  <33.090305, 35.891582, 53.478756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636189, 35.623497, 53.833851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.409504, 35.311798, 53.726810>,  <33.273495, 35.124779, 53.662586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.409504, 35.311798, 53.726810>,  <33.636189, 35.623497, 53.833851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409504, 35.311798, 53.726810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795305, -0.432517, -0.424759,
		0.215252, -0.453537, 0.864853,
		-0.566707, -0.779252, -0.267600,
		33.239491, 35.078022, 53.646530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118980, 35.168648, 53.747425>,  <33.636189, 35.623497, 53.833851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118980, 35.168648, 53.747425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790916, 35.003426, 53.589077>,  <33.594078, 34.904293, 53.494068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790916, 35.003426, 53.589077>,  <34.118980, 35.168648, 53.747425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790916, 35.003426, 53.589077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570262, -0.534361, -0.623907,
		0.046175, -0.737455, 0.673816,
		-0.820164, -0.413060, -0.395869,
		33.544868, 34.879509, 53.470318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195927, 34.396126, 53.784710>,  <34.118980, 35.168648, 53.747425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195927, 34.396126, 53.784710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.934620, 34.465096, 53.489815>,  <33.777836, 34.506477, 53.312878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.934620, 34.465096, 53.489815>,  <34.195927, 34.396126, 53.784710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934620, 34.465096, 53.489815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512049, -0.616657, -0.597946,
		-0.557722, -0.768117, 0.314550,
		-0.653262, 0.172423, -0.737238,
		33.738640, 34.516823, 53.268642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194981, 33.844566, 53.419502>,  <34.195927, 34.396126, 53.784710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194981, 33.844566, 53.419502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.998520, 34.076069, 53.159100>,  <33.880642, 34.214970, 53.002857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.998520, 34.076069, 53.159100>,  <34.194981, 33.844566, 53.419502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998520, 34.076069, 53.159100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322797, -0.573222, -0.753139,
		-0.809055, -0.580050, 0.094720,
		-0.491154, 0.578756, -0.651007,
		33.851173, 34.249695, 52.963799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133774, 33.487457, 52.839890>,  <34.194981, 33.844566, 53.419502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133774, 33.487457, 52.839890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.047192, 33.833267, 52.658451>,  <33.995243, 34.040752, 52.549587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.047192, 33.833267, 52.658451>,  <34.133774, 33.487457, 52.839890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047192, 33.833267, 52.658451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219179, -0.409715, -0.885491,
		-0.951371, -0.291088, -0.100800,
		-0.216456, 0.864524, -0.453591,
		33.982254, 34.092625, 52.522373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617218, 33.368641, 52.290031>,  <34.133774, 33.487457, 52.839890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617218, 33.368641, 52.290031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.822975, 33.696419, 52.188908>,  <33.946430, 33.893085, 52.128235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.822975, 33.696419, 52.188908>,  <33.617218, 33.368641, 52.290031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822975, 33.696419, 52.188908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166715, -0.384735, -0.907846,
		-0.841192, 0.424844, -0.334519,
		0.514395, 0.819443, -0.252808,
		33.977295, 33.942253, 52.113064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294800, 33.638458, 51.820274>,  <33.617218, 33.368641, 52.290031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294800, 33.638458, 51.820274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.676834, 33.745449, 51.769245>,  <33.906055, 33.809643, 51.738628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.676834, 33.745449, 51.769245>,  <33.294800, 33.638458, 51.820274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676834, 33.745449, 51.769245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017339, -0.379319, -0.925104,
		-0.295836, 0.885761, -0.357643,
		0.955082, 0.267477, -0.127574,
		33.963360, 33.825691, 51.730972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262783, 33.913506, 51.102921>,  <33.294800, 33.638458, 51.820274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262783, 33.913506, 51.102921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.649971, 33.852802, 51.182922>,  <33.882286, 33.816380, 51.230923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.649971, 33.852802, 51.182922>,  <33.262783, 33.913506, 51.102921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649971, 33.852802, 51.182922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162184, -0.230117, -0.959553,
		0.191640, 0.961258, -0.198135,
		0.967972, -0.151755, 0.200001,
		33.940361, 33.807278, 51.242924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679462, 34.112209, 50.513317>,  <33.262783, 33.913506, 51.102921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679462, 34.112209, 50.513317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.949963, 33.885410, 50.701447>,  <34.112263, 33.749332, 50.814323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.949963, 33.885410, 50.701447>,  <33.679462, 34.112209, 50.513317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949963, 33.885410, 50.701447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214065, -0.459647, -0.861917,
		0.704886, 0.683550, -0.189461,
		0.676248, -0.566996, 0.470323,
		34.152836, 33.715313, 50.842545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146610, 34.039371, 50.075684>,  <33.679462, 34.112209, 50.513317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146610, 34.039371, 50.075684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.240528, 33.743973, 50.328506>,  <34.296879, 33.566734, 50.480202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.240528, 33.743973, 50.328506>,  <34.146610, 34.039371, 50.075684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240528, 33.743973, 50.328506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192060, -0.602169, -0.774923,
		0.952881, 0.303344, 0.000447,
		0.234799, -0.738495, 0.632056,
		34.310966, 33.522423, 50.518124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777149, 33.762424, 49.870480>,  <34.146610, 34.039371, 50.075684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777149, 33.762424, 49.870480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.599190, 33.470772, 50.078487>,  <34.492413, 33.295780, 50.203293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.599190, 33.470772, 50.078487>,  <34.777149, 33.762424, 49.870480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599190, 33.470772, 50.078487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356020, -0.676795, -0.644359,
		0.821775, -0.101536, 0.560693,
		-0.444900, -0.729136, 0.520024,
		34.465721, 33.252029, 50.234493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354267, 33.265453, 50.060421>,  <34.777149, 33.762424, 49.870480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354267, 33.265453, 50.060421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.999844, 33.080616, 50.045609>,  <34.787189, 32.969715, 50.036720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.999844, 33.080616, 50.045609>,  <35.354267, 33.265453, 50.060421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999844, 33.080616, 50.045609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369588, -0.655938, -0.658141,
		0.279828, -0.596840, 0.751983,
		-0.886059, -0.462090, -0.037036,
		34.734024, 32.941990, 50.034496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564278, 32.571186, 49.989891>,  <35.354267, 33.265453, 50.060421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564278, 32.571186, 49.989891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179810, 32.566780, 49.879593>,  <34.949131, 32.564137, 49.813412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179810, 32.566780, 49.879593>,  <35.564278, 32.571186, 49.989891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179810, 32.566780, 49.879593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222796, -0.620600, -0.751809,
		-0.162849, -0.784050, 0.598954,
		-0.961167, -0.011013, -0.275748,
		34.891460, 32.563477, 49.796867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373711, 31.893957, 49.936810>,  <35.564278, 32.571186, 49.989891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373711, 31.893957, 49.936810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.124718, 32.096611, 49.698200>,  <34.975323, 32.218204, 49.555035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.124718, 32.096611, 49.698200>,  <35.373711, 31.893957, 49.936810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124718, 32.096611, 49.698200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206645, -0.628748, -0.749649,
		-0.754860, -0.589910, 0.286690,
		-0.622481, 0.506637, -0.596519,
		34.937973, 32.248604, 49.519245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048721, 31.360334, 49.607033>,  <35.373711, 31.893957, 49.936810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048721, 31.360334, 49.607033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.981407, 31.671951, 49.365448>,  <34.941017, 31.858921, 49.220497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.981407, 31.671951, 49.365448>,  <35.048721, 31.360334, 49.607033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981407, 31.671951, 49.365448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278064, -0.550300, -0.787306,
		-0.945706, -0.300434, -0.124015,
		-0.168288, 0.779044, -0.603961,
		34.930920, 31.905664, 49.184261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468773, 31.151304, 49.181057>,  <35.048721, 31.360334, 49.607033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468773, 31.151304, 49.181057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.627819, 31.447853, 48.964809>,  <34.723248, 31.625782, 48.835060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.627819, 31.447853, 48.964809>,  <34.468773, 31.151304, 49.181057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627819, 31.447853, 48.964809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091454, -0.618286, -0.780614,
		-0.912985, 0.260939, -0.313639,
		0.397612, 0.741372, -0.540622,
		34.747101, 31.670265, 48.802624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126022, 31.221191, 48.503643>,  <34.468773, 31.151304, 49.181057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126022, 31.221191, 48.503643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.477901, 31.398453, 48.434647>,  <34.689030, 31.504808, 48.393250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.477901, 31.398453, 48.434647>,  <34.126022, 31.221191, 48.503643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477901, 31.398453, 48.434647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238648, -0.725155, -0.645908,
		-0.411320, 0.527036, -0.743672,
		0.879694, 0.443151, -0.172495,
		34.741810, 31.531399, 48.382896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470764, 31.420706, 47.998070>,  <34.126022, 31.221191, 48.503643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470764, 31.420706, 47.998070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.181190, 31.426033, 47.722172>,  <33.007446, 31.429230, 47.556633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.181190, 31.426033, 47.722172>,  <33.470764, 31.420706, 47.998070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181190, 31.426033, 47.722172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612181, 0.448546, 0.651185,
		0.318053, 0.893660, -0.316563,
		-0.723931, 0.013318, -0.689743,
		32.964012, 31.430029, 47.515247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227367, 32.081493, 48.041996>,  <33.470764, 31.420706, 47.998070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227367, 32.081493, 48.041996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.937527, 31.842234, 47.905075>,  <32.763622, 31.698677, 47.822922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.937527, 31.842234, 47.905075>,  <33.227367, 32.081493, 48.041996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937527, 31.842234, 47.905075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656319, 0.447414, 0.607509,
		-0.210231, 0.664860, -0.716774,
		-0.724602, -0.598149, -0.342300,
		32.720146, 31.662788, 47.802383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606831, 32.494350, 48.076424>,  <33.227367, 32.081493, 48.041996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606831, 32.494350, 48.076424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.474556, 32.118969, 48.036499>,  <32.395191, 31.893742, 48.012543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.474556, 32.118969, 48.036499>,  <32.606831, 32.494350, 48.076424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474556, 32.118969, 48.036499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738568, 0.191497, 0.646411,
		-0.587509, 0.287475, -0.756433,
		-0.330682, -0.938449, -0.099814,
		32.375351, 31.837435, 48.006554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837051, 32.496552, 47.839634>,  <32.606831, 32.494350, 48.076424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837051, 32.496552, 47.839634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.911385, 32.162209, 48.046249>,  <31.955984, 31.961603, 48.170219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.911385, 32.162209, 48.046249>,  <31.837051, 32.496552, 47.839634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911385, 32.162209, 48.046249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486605, 0.378416, 0.787412,
		-0.853628, -0.397678, -0.336409,
		0.185834, -0.835855, 0.516538,
		31.967134, 31.911451, 48.201210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226400, 32.393299, 48.221138>,  <31.837051, 32.496552, 47.839634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226400, 32.393299, 48.221138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.492201, 32.165165, 48.414284>,  <31.651680, 32.028282, 48.530170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.492201, 32.165165, 48.414284>,  <31.226400, 32.393299, 48.221138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492201, 32.165165, 48.414284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442747, 0.220060, 0.869223,
		-0.602009, -0.791384, -0.106286,
		0.664500, -0.570338, 0.482861,
		31.691551, 31.994064, 48.559143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804857, 31.951414, 48.665977>,  <31.226400, 32.393299, 48.221138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804857, 31.951414, 48.665977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.173838, 31.953390, 48.820412>,  <31.395226, 31.954576, 48.913071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.173838, 31.953390, 48.820412>,  <30.804857, 31.951414, 48.665977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173838, 31.953390, 48.820412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384598, 0.100308, 0.917618,
		-0.034193, -0.994944, 0.094430,
		0.922451, 0.004942, 0.386083,
		31.450573, 31.954872, 48.936237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784895, 31.534489, 49.250824>,  <30.804857, 31.951414, 48.665977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784895, 31.534489, 49.250824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.126835, 31.729998, 49.320492>,  <31.331999, 31.847303, 49.362293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.126835, 31.729998, 49.320492>,  <30.784895, 31.534489, 49.250824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126835, 31.729998, 49.320492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216222, 0.030420, 0.975870,
		0.471681, -0.871880, 0.131688,
		0.854848, 0.488774, 0.174171,
		31.383289, 31.876629, 49.372742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012766, 31.198814, 49.882515>,  <30.784895, 31.534489, 49.250824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012766, 31.198814, 49.882515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.217266, 31.541824, 49.859631>,  <31.339966, 31.747631, 49.845901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.217266, 31.541824, 49.859631>,  <31.012766, 31.198814, 49.882515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217266, 31.541824, 49.859631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046789, 0.094236, 0.994450,
		0.858157, -0.505737, 0.088301,
		0.511251, 0.857525, -0.057206,
		31.370642, 31.799082, 49.842468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591087, 31.157564, 50.423172>,  <31.012766, 31.198814, 49.882515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591087, 31.157564, 50.423172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.560871, 31.550093, 50.352406>,  <31.542742, 31.785610, 50.309948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.560871, 31.550093, 50.352406>,  <31.591087, 31.157564, 50.423172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560871, 31.550093, 50.352406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013863, 0.176370, 0.984226,
		0.997047, 0.076799, 0.000281,
		-0.075538, 0.981323, -0.176914,
		31.538210, 31.844490, 50.299332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909523, 31.566950, 51.027863>,  <31.591087, 31.157564, 50.423172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909523, 31.566950, 51.027863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.716949, 31.847183, 50.817184>,  <31.601404, 32.015324, 50.690777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.716949, 31.847183, 50.817184>,  <31.909523, 31.566950, 51.027863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716949, 31.847183, 50.817184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218545, 0.485984, 0.846202,
		0.848798, 0.522497, -0.080861,
		-0.481435, 0.700583, -0.526691,
		31.572519, 32.057358, 50.659176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223915, 32.266815, 51.201710>,  <31.909523, 31.566950, 51.027863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223915, 32.266815, 51.201710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849363, 32.341743, 51.082977>,  <31.624632, 32.386700, 51.011738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849363, 32.341743, 51.082977>,  <32.223915, 32.266815, 51.201710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849363, 32.341743, 51.082977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205224, 0.393877, 0.895960,
		0.284746, 0.899873, -0.330375,
		-0.936378, 0.187320, -0.296830,
		31.568451, 32.397938, 50.993927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018265, 33.042118, 51.446274>,  <32.223915, 32.266815, 51.201710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018265, 33.042118, 51.446274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.660027, 32.876549, 51.381069>,  <31.445084, 32.777206, 51.341946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.660027, 32.876549, 51.381069>,  <32.018265, 33.042118, 51.446274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660027, 32.876549, 51.381069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382216, 0.528457, 0.758053,
		-0.227636, 0.741213, -0.631494,
		-0.895596, -0.413927, -0.163008,
		31.391348, 32.752369, 51.332169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501482, 33.553913, 51.539425>,  <32.018265, 33.042118, 51.446274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501482, 33.553913, 51.539425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.263151, 33.232777, 51.547768>,  <31.120153, 33.040092, 51.552773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.263151, 33.232777, 51.547768>,  <31.501482, 33.553913, 51.539425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263151, 33.232777, 51.547768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521788, 0.406720, 0.749877,
		-0.610515, 0.435915, -0.661248,
		-0.595826, -0.802843, 0.020853,
		31.084404, 32.991924, 51.554024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741423, 33.796055, 51.603207>,  <31.501482, 33.553913, 51.539425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741423, 33.796055, 51.603207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.774931, 33.425495, 51.750046>,  <30.795036, 33.203159, 51.838150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.774931, 33.425495, 51.750046>,  <30.741423, 33.796055, 51.603207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774931, 33.425495, 51.750046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428987, 0.298981, 0.852397,
		-0.899418, -0.228886, -0.372368,
		0.083771, -0.926403, 0.367098,
		30.800062, 33.147575, 51.860176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040712, 33.626923, 51.739059>,  <30.741423, 33.796055, 51.603207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040712, 33.626923, 51.739059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.281443, 33.405968, 51.969769>,  <30.425880, 33.273396, 52.108196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.281443, 33.405968, 51.969769>,  <30.040712, 33.626923, 51.739059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281443, 33.405968, 51.969769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533799, 0.258953, 0.804985,
		-0.594024, -0.792343, -0.139021,
		0.601825, -0.552390, 0.576777,
		30.461990, 33.240250, 52.142803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568380, 33.257729, 52.213757>,  <30.040712, 33.626923, 51.739059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568380, 33.257729, 52.213757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.932718, 33.256397, 52.378853>,  <30.151321, 33.255600, 52.477909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.932718, 33.256397, 52.378853>,  <29.568380, 33.257729, 52.213757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932718, 33.256397, 52.378853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368727, 0.442818, 0.817284,
		-0.185488, -0.896605, 0.402111,
		0.910843, -0.003328, 0.412740,
		30.205971, 33.255398, 52.502674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416285, 32.970203, 52.968349>,  <29.568380, 33.257729, 52.213757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416285, 32.970203, 52.968349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.787848, 33.118053, 52.959301>,  <30.010784, 33.206764, 52.953873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.787848, 33.118053, 52.959301>,  <29.416285, 32.970203, 52.968349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787848, 33.118053, 52.959301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155633, 0.445092, 0.881857,
		0.336023, -0.815642, 0.470974,
		0.928906, 0.369623, -0.022621,
		30.066519, 33.228943, 52.952515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683222, 32.811844, 53.614059>,  <29.416285, 32.970203, 52.968349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683222, 32.811844, 53.614059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.846531, 33.135685, 53.445370>,  <29.944517, 33.329990, 53.344154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.846531, 33.135685, 53.445370>,  <29.683222, 32.811844, 53.614059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846531, 33.135685, 53.445370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238377, 0.540505, 0.806864,
		0.881186, -0.228891, 0.413665,
		0.408273, 0.809607, -0.421724,
		29.969013, 33.378567, 53.318851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.911386, 33.339554, 54.061649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924536, 33.589813, 53.749886>,  <29.932426, 33.739967, 53.562828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924536, 33.589813, 53.749886>,  <29.911386, 33.339554, 54.061649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924536, 33.589813, 53.749886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389491, 0.726200, 0.566506,
		0.920443, 0.284950, 0.267559,
		0.032875, 0.625649, -0.779412,
		29.934399, 33.777508, 53.516064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184980, 33.960732, 54.332474>,  <29.911386, 33.339554, 54.061649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184980, 33.960732, 54.332474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002396, 34.088642, 54.000359>,  <29.892845, 34.165390, 53.801090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002396, 34.088642, 54.000359>,  <30.184980, 33.960732, 54.332474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002396, 34.088642, 54.000359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242922, 0.852934, 0.462052,
		0.855938, 0.412606, -0.311652,
		-0.456464, 0.319781, -0.830290,
		29.865456, 34.184578, 53.751270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350847, 34.700630, 54.262100>,  <30.184980, 33.960732, 54.332474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350847, 34.700630, 54.262100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027550, 34.623188, 54.039658>,  <29.833570, 34.576721, 53.906193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027550, 34.623188, 54.039658>,  <30.350847, 34.700630, 54.262100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027550, 34.623188, 54.039658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429192, 0.840279, 0.331247,
		0.403158, 0.506407, -0.762244,
		-0.808244, -0.193604, -0.556111,
		29.785076, 34.565105, 53.872826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244654, 35.321712, 53.885422>,  <30.350847, 34.700630, 54.262100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244654, 35.321712, 53.885422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899900, 35.118874, 53.886665>,  <29.693048, 34.997169, 53.887413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899900, 35.118874, 53.886665>,  <30.244654, 35.321712, 53.885422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899900, 35.118874, 53.886665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492888, 0.839142, 0.230003,
		-0.119243, 0.196703, -0.973185,
		-0.861883, -0.507098, 0.003110,
		29.641336, 34.966743, 53.887600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827044, 35.732510, 53.399967>,  <30.244654, 35.321712, 53.885422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827044, 35.732510, 53.399967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582378, 35.499378, 53.613949>,  <29.435579, 35.359501, 53.742336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582378, 35.499378, 53.613949>,  <29.827044, 35.732510, 53.399967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582378, 35.499378, 53.613949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522324, 0.805385, 0.280237,
		-0.594175, -0.108010, -0.797051,
		-0.611665, -0.582829, 0.534956,
		29.398878, 35.324528, 53.774437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169903, 35.956570, 53.350643>,  <29.827044, 35.732510, 53.399967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169903, 35.956570, 53.350643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141743, 35.758152, 53.696819>,  <29.124847, 35.639103, 53.904526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141743, 35.758152, 53.696819>,  <29.169903, 35.956570, 53.350643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141743, 35.758152, 53.696819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511324, 0.762887, 0.395667,
		-0.856500, -0.414665, -0.307344,
		-0.070400, -0.496041, 0.865441,
		29.120623, 35.609341, 53.956451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559059, 36.270416, 53.651398>,  <29.169903, 35.956570, 53.350643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559059, 36.270416, 53.651398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705118, 36.072475, 53.966812>,  <28.792753, 35.953712, 54.156059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705118, 36.072475, 53.966812>,  <28.559059, 36.270416, 53.651398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705118, 36.072475, 53.966812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465267, 0.636649, 0.614984,
		-0.806346, -0.591440, 0.002232,
		0.365147, -0.494851, 0.788537,
		28.814663, 35.924019, 54.203373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925497, 36.174000, 54.003517>,  <28.559059, 36.270416, 53.651398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925497, 36.174000, 54.003517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211952, 36.143135, 54.280991>,  <28.383825, 36.124615, 54.447475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211952, 36.143135, 54.280991>,  <27.925497, 36.174000, 54.003517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211952, 36.143135, 54.280991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657893, 0.257261, 0.707808,
		-0.233074, -0.963256, 0.133469,
		0.716137, -0.077163, 0.693681,
		28.426794, 36.119987, 54.489094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660421, 35.770298, 54.515377>,  <27.925497, 36.174000, 54.003517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660421, 35.770298, 54.515377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957783, 35.979191, 54.682529>,  <28.136200, 36.104527, 54.782822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957783, 35.979191, 54.682529>,  <27.660421, 35.770298, 54.515377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957783, 35.979191, 54.682529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596788, 0.235835, 0.766959,
		0.301984, -0.819543, 0.486985,
		0.743404, 0.522236, 0.417876,
		28.180805, 36.135860, 54.807892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709578, 35.544411, 55.199512>,  <27.660421, 35.770298, 54.515377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709578, 35.544411, 55.199512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870640, 35.910419, 55.189682>,  <27.967278, 36.130024, 55.183784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870640, 35.910419, 55.189682>,  <27.709578, 35.544411, 55.199512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870640, 35.910419, 55.189682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449380, 0.220999, 0.865573,
		0.797450, -0.337483, 0.500179,
		0.402656, 0.915022, -0.024578,
		27.991436, 36.184925, 55.182308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604057, 35.685215, 55.884983>,  <27.709578, 35.544411, 55.199512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604057, 35.685215, 55.884983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733120, 36.045639, 55.769066>,  <27.810558, 36.261894, 55.699516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733120, 36.045639, 55.769066>,  <27.604057, 35.685215, 55.884983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733120, 36.045639, 55.769066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541496, 0.426842, 0.724284,
		0.776320, -0.076774, 0.625645,
		0.322658, 0.901061, -0.289794,
		27.829918, 36.315956, 55.682129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763628, 36.182213, 56.473721>,  <27.604057, 35.685215, 55.884983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763628, 36.182213, 56.473721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690413, 36.413349, 56.155575>,  <27.646484, 36.552032, 55.964687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690413, 36.413349, 56.155575>,  <27.763628, 36.182213, 56.473721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690413, 36.413349, 56.155575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682249, 0.507840, 0.525961,
		0.707837, 0.638904, 0.301277,
		-0.183038, 0.577840, -0.795360,
		27.635502, 36.586700, 55.916965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704702, 36.888680, 56.753952>,  <27.763628, 36.182213, 56.473721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704702, 36.888680, 56.753952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525908, 36.885769, 56.396149>,  <27.418631, 36.884022, 56.181465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525908, 36.885769, 56.396149>,  <27.704702, 36.888680, 56.753952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525908, 36.885769, 56.396149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653526, 0.685468, 0.320995,
		0.610823, 0.728066, -0.311150,
		-0.446989, -0.007274, -0.894510,
		27.391811, 36.883587, 56.127796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411894, 37.522167, 56.674767>,  <27.704702, 36.888680, 56.753952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411894, 37.522167, 56.674767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231760, 37.311417, 56.386433>,  <27.123680, 37.184967, 56.213432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231760, 37.311417, 56.386433>,  <27.411894, 37.522167, 56.674767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231760, 37.311417, 56.386433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840115, 0.523416, 0.142274,
		0.302334, 0.669653, -0.678350,
		-0.450333, -0.526878, -0.720832,
		27.096661, 37.153355, 56.170181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125290, 37.991123, 56.255287>,  <27.411894, 37.522167, 56.674767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125290, 37.991123, 56.255287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925541, 37.649651, 56.196156>,  <26.805693, 37.444767, 56.160675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925541, 37.649651, 56.196156>,  <27.125290, 37.991123, 56.255287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925541, 37.649651, 56.196156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844345, 0.441284, 0.303892,
		-0.194193, 0.276574, -0.941168,
		-0.499371, -0.853684, -0.147829,
		26.775730, 37.393547, 56.151806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596699, 38.145409, 55.756794>,  <27.125290, 37.991123, 56.255287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596699, 38.145409, 55.756794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474611, 37.828186, 55.967659>,  <26.401360, 37.637852, 56.094177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474611, 37.828186, 55.967659>,  <26.596699, 38.145409, 55.756794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474611, 37.828186, 55.967659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735379, 0.548004, 0.398634,
		-0.605029, -0.265997, -0.750457,
		-0.305219, -0.793056, 0.527167,
		26.383045, 37.590271, 56.125809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878654, 38.008572, 55.574184>,  <26.596699, 38.145409, 55.756794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878654, 38.008572, 55.574184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897999, 37.823841, 55.928444>,  <25.909605, 37.713001, 56.140999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897999, 37.823841, 55.928444>,  <25.878654, 38.008572, 55.574184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897999, 37.823841, 55.928444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726863, 0.591890, 0.348334,
		-0.685078, -0.660593, -0.307059,
		0.048362, -0.461825, 0.885651,
		25.912508, 37.685295, 56.194138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207775, 38.018471, 55.784321>,  <25.878654, 38.008572, 55.574184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207775, 38.018471, 55.784321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435450, 37.943428, 56.104527>,  <25.572054, 37.898403, 56.296650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435450, 37.943428, 56.104527>,  <25.207775, 38.018471, 55.784321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435450, 37.943428, 56.104527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666104, 0.465555, 0.582721,
		-0.482007, -0.864906, 0.140024,
		0.569188, -0.187605, 0.800518,
		25.606207, 37.887146, 56.344681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772099, 37.855053, 56.398918>,  <25.207775, 38.018471, 55.784321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772099, 37.855053, 56.398918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109680, 37.976131, 56.576057>,  <25.312229, 38.048779, 56.682339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109680, 37.976131, 56.576057>,  <24.772099, 37.855053, 56.398918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109680, 37.976131, 56.576057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535397, 0.526114, 0.660722,
		-0.032989, -0.794719, 0.606081,
		0.843956, 0.302698, 0.442846,
		25.362867, 38.066940, 56.708912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602402, 37.958687, 57.106308>,  <24.772099, 37.855053, 56.398918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602402, 37.958687, 57.106308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936848, 38.169483, 57.045395>,  <25.137516, 38.295963, 57.008846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936848, 38.169483, 57.045395>,  <24.602402, 37.958687, 57.106308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936848, 38.169483, 57.045395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299486, 0.671120, 0.678164,
		0.459586, -0.521417, 0.718961,
		0.836115, 0.526993, -0.152280,
		25.187683, 38.327579, 56.999710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.750427, 38.349388, 57.766533>,  <24.602402, 37.958687, 57.106308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.750427, 38.349388, 57.766533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985271, 38.554302, 57.515816>,  <25.126177, 38.677250, 57.365387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985271, 38.554302, 57.515816>,  <24.750427, 38.349388, 57.766533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985271, 38.554302, 57.515816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122592, 0.821625, 0.556690,
		0.800169, -0.250000, 0.545188,
		0.587112, 0.512281, -0.626791,
		25.161404, 38.707989, 57.327778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167265, 38.797276, 58.242279>,  <24.750427, 38.349388, 57.766533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167265, 38.797276, 58.242279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208799, 38.990238, 57.894371>,  <25.233719, 39.106014, 57.685627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208799, 38.990238, 57.894371>,  <25.167265, 38.797276, 58.242279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208799, 38.990238, 57.894371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224783, 0.863254, 0.451957,
		0.968861, 0.148581, 0.198072,
		0.103834, 0.482407, -0.869771,
		25.239950, 39.134960, 57.633438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657738, 39.281288, 58.281631>,  <25.167265, 38.797276, 58.242279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657738, 39.281288, 58.281631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415506, 39.392040, 57.983204>,  <25.270168, 39.458492, 57.804150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415506, 39.392040, 57.983204>,  <25.657738, 39.281288, 58.281631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415506, 39.392040, 57.983204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242104, 0.828975, 0.504169,
		0.758065, 0.485937, -0.434973,
		-0.605576, 0.276884, -0.746065,
		25.233833, 39.475105, 57.759384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367004, 39.182335, 58.453274>,  <25.657738, 39.281288, 58.281631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367004, 39.182335, 58.453274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059544, 38.935726, 58.521488>,  <25.875067, 38.787762, 58.562416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059544, 38.935726, 58.521488>,  <26.367004, 39.182335, 58.453274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059544, 38.935726, 58.521488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225066, -0.011112, 0.974280,
		-0.598766, 0.787262, 0.147298,
		-0.768651, -0.616518, 0.170533,
		25.828949, 38.750771, 58.572647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012829, 39.921543, 58.459831>,  <26.367004, 39.182335, 58.453274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012829, 39.921543, 58.459831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316067, 40.118866, 58.630451>,  <26.498011, 40.237259, 58.732822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316067, 40.118866, 58.630451>,  <26.012829, 39.921543, 58.459831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316067, 40.118866, 58.630451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474603, 0.031250, -0.879645,
		-0.447262, 0.869296, -0.210432,
		0.758096, 0.493303, 0.426547,
		26.543495, 40.266857, 58.758415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172606, 40.464901, 58.009033>,  <26.012829, 39.921543, 58.459831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172606, 40.464901, 58.009033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499481, 40.387924, 58.226353>,  <26.695606, 40.341740, 58.356743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499481, 40.387924, 58.226353>,  <26.172606, 40.464901, 58.009033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499481, 40.387924, 58.226353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553956, 0.001921, -0.832543,
		0.159169, 0.981307, 0.108172,
		0.817189, -0.192438, 0.543296,
		26.744638, 40.330193, 58.389343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696835, 40.756123, 57.664383>,  <26.172606, 40.464901, 58.009033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696835, 40.756123, 57.664383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918497, 40.528645, 57.907524>,  <27.051495, 40.392159, 58.053410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918497, 40.528645, 57.907524>,  <26.696835, 40.756123, 57.664383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918497, 40.528645, 57.907524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574728, -0.266849, -0.773615,
		0.602160, 0.778057, 0.178970,
		0.554159, -0.568699, 0.607857,
		27.084745, 40.358036, 58.089882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415155, 40.975349, 57.672962>,  <26.696835, 40.756123, 57.664383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415155, 40.975349, 57.672962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411848, 40.584370, 57.757370>,  <27.409863, 40.349781, 57.808014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411848, 40.584370, 57.757370>,  <27.415155, 40.975349, 57.672962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411848, 40.584370, 57.757370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616385, -0.171152, -0.768619,
		0.787401, 0.123714, 0.603899,
		-0.008270, -0.977446, 0.211021,
		27.409367, 40.291134, 57.820675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106255, 40.716320, 57.482536>,  <27.415155, 40.975349, 57.672962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106255, 40.716320, 57.482536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920868, 40.367622, 57.546112>,  <27.809635, 40.158405, 57.584255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920868, 40.367622, 57.546112>,  <28.106255, 40.716320, 57.482536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920868, 40.367622, 57.546112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571373, -0.431096, -0.698348,
		0.677297, -0.232848, 0.697889,
		-0.463466, -0.871744, 0.158937,
		27.781828, 40.106098, 57.593792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666040, 40.264816, 57.329197>,  <28.106255, 40.716320, 57.482536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666040, 40.264816, 57.329197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329912, 40.048340, 57.316738>,  <28.128235, 39.918453, 57.309265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329912, 40.048340, 57.316738>,  <28.666040, 40.264816, 57.329197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329912, 40.048340, 57.316738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443180, -0.652778, -0.614388,
		0.312173, -0.530086, 0.788389,
		-0.840321, -0.541193, -0.031144,
		28.077816, 39.885983, 57.307396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758963, 39.657303, 57.722168>,  <28.666040, 40.264816, 57.329197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758963, 39.657303, 57.722168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468105, 39.585018, 57.457260>,  <28.293591, 39.541649, 57.298313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468105, 39.585018, 57.457260>,  <28.758963, 39.657303, 57.722168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468105, 39.585018, 57.457260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537989, -0.749254, -0.386247,
		-0.426412, -0.637152, 0.642035,
		-0.727145, -0.180708, -0.662272,
		28.249962, 39.530807, 57.258579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521965, 38.952438, 57.743599>,  <28.758963, 39.657303, 57.722168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521965, 38.952438, 57.743599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458508, 39.098106, 57.376511>,  <28.420433, 39.185505, 57.156258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458508, 39.098106, 57.376511>,  <28.521965, 38.952438, 57.743599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458508, 39.098106, 57.376511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651639, -0.659680, -0.374418,
		-0.741753, -0.657424, -0.132649,
		-0.158645, 0.364165, -0.917723,
		28.410913, 39.207355, 57.101192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645119, 38.414299, 57.357849>,  <28.521965, 38.952438, 57.743599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645119, 38.414299, 57.357849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633490, 38.696777, 57.074879>,  <28.626513, 38.866264, 56.905098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633490, 38.696777, 57.074879>,  <28.645119, 38.414299, 57.357849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633490, 38.696777, 57.074879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688235, -0.499106, -0.526522,
		-0.724905, -0.502180, -0.471517,
		-0.029072, 0.706193, -0.707422,
		28.624767, 38.908634, 56.862652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682384, 38.047367, 56.727463>,  <28.645119, 38.414299, 57.357849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682384, 38.047367, 56.727463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783218, 38.412704, 56.599552>,  <28.843719, 38.631908, 56.522808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783218, 38.412704, 56.599552>,  <28.682384, 38.047367, 56.727463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783218, 38.412704, 56.599552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566742, -0.407188, -0.716241,
		-0.784383, -0.000676, -0.620276,
		0.252085, 0.913344, -0.319775,
		28.858843, 38.686707, 56.503620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468380, 38.166134, 55.964039>,  <28.682384, 38.047367, 56.727463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468380, 38.166134, 55.964039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788857, 38.377098, 56.077126>,  <28.981142, 38.503677, 56.144978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788857, 38.377098, 56.077126>,  <28.468380, 38.166134, 55.964039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788857, 38.377098, 56.077126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540461, -0.434937, -0.720230,
		-0.256891, 0.729842, -0.633512,
		0.801192, 0.527410, 0.282720,
		29.029215, 38.535320, 56.161942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874231, 38.237526, 55.372921>,  <28.468380, 38.166134, 55.964039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874231, 38.237526, 55.372921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148495, 38.330967, 55.648689>,  <29.313053, 38.387032, 55.814152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148495, 38.330967, 55.648689>,  <28.874231, 38.237526, 55.372921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148495, 38.330967, 55.648689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687152, -0.520234, -0.507128,
		0.240194, 0.821454, -0.517224,
		0.685660, 0.233602, 0.689421,
		29.354193, 38.401047, 55.855515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457476, 38.371029, 55.004269>,  <28.874231, 38.237526, 55.372921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457476, 38.371029, 55.004269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595886, 38.291096, 55.370949>,  <29.678932, 38.243137, 55.590958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595886, 38.291096, 55.370949>,  <29.457476, 38.371029, 55.004269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595886, 38.291096, 55.370949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798758, -0.449815, -0.399565,
		0.492190, 0.870479, 0.003970,
		0.346027, -0.199833, 0.916696,
		29.699694, 38.231144, 55.645958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178942, 38.286060, 54.881344>,  <29.457476, 38.371029, 55.004269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178942, 38.286060, 54.881344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109470, 38.118553, 55.237877>,  <30.067787, 38.018047, 55.451797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109470, 38.118553, 55.237877>,  <30.178942, 38.286060, 54.881344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109470, 38.118553, 55.237877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712577, -0.678170, -0.179778,
		0.679758, 0.603917, 0.416190,
		-0.173676, -0.418773, 0.891328,
		30.057367, 37.992920, 55.505276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847168, 38.293880, 55.107994>,  <30.178942, 38.286060, 54.881344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847168, 38.293880, 55.107994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634092, 38.027298, 55.316639>,  <30.506247, 37.867348, 55.441826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634092, 38.027298, 55.316639>,  <30.847168, 38.293880, 55.107994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634092, 38.027298, 55.316639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705968, -0.689834, -0.160428,
		0.466747, 0.282787, 0.837961,
		-0.532687, -0.666453, 0.521616,
		30.474285, 37.827362, 55.473125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337477, 37.859463, 55.505054>,  <30.847168, 38.293880, 55.107994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337477, 37.859463, 55.505054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012812, 37.628326, 55.539227>,  <30.818012, 37.489643, 55.559731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012812, 37.628326, 55.539227>,  <31.337477, 37.859463, 55.505054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012812, 37.628326, 55.539227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575085, -0.816141, -0.056502,
		0.102371, 0.003268, 0.994741,
		-0.811664, -0.577844, 0.085429,
		30.769312, 37.454971, 55.564854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426010, 37.385567, 55.965748>,  <31.337477, 37.859463, 55.505054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426010, 37.385567, 55.965748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139647, 37.214561, 55.744946>,  <30.967829, 37.111958, 55.612465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139647, 37.214561, 55.744946>,  <31.426010, 37.385567, 55.965748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139647, 37.214561, 55.744946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565954, -0.818322, -0.100228,
		-0.408866, -0.384161, 0.827797,
		-0.715908, -0.427516, -0.552001,
		30.924873, 37.086308, 55.579346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468019, 36.687454, 56.156975>,  <31.426010, 37.385567, 55.965748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468019, 36.687454, 56.156975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252554, 36.640675, 55.823227>,  <31.123276, 36.612606, 55.622978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252554, 36.640675, 55.823227>,  <31.468019, 36.687454, 56.156975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252554, 36.640675, 55.823227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516093, -0.828576, -0.217050,
		-0.665951, -0.547526, 0.506679,
		-0.538663, -0.116949, -0.834365,
		31.090956, 36.605591, 55.572918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427792, 36.010925, 56.069691>,  <31.468019, 36.687454, 56.156975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427792, 36.010925, 56.069691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318939, 36.125343, 55.702187>,  <31.253628, 36.193993, 55.481682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318939, 36.125343, 55.702187>,  <31.427792, 36.010925, 56.069691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318939, 36.125343, 55.702187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682160, -0.616066, -0.393853,
		-0.678678, -0.733922, -0.027479,
		-0.272128, 0.286045, -0.918762,
		31.237301, 36.211155, 55.426559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076672, 35.384933, 55.653732>,  <31.427792, 36.010925, 56.069691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076672, 35.384933, 55.653732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232935, 35.667648, 55.417820>,  <31.326693, 35.837276, 55.276272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232935, 35.667648, 55.417820>,  <31.076672, 35.384933, 55.653732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232935, 35.667648, 55.417820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618334, -0.676110, -0.400672,
		-0.681945, -0.208154, -0.701159,
		0.390659, 0.706786, -0.589778,
		31.350132, 35.879684, 55.240887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.419151, 33.103184, 52.028870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.436218, 33.500004, 52.076214>,  <47.446457, 33.738098, 52.104622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.436218, 33.500004, 52.076214>,  <47.419151, 33.103184, 52.028870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436218, 33.500004, 52.076214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914926, 0.086390, -0.394267,
		-0.401359, -0.091470, 0.911342,
		0.042667, 0.992053, 0.118362,
		47.449017, 33.797619, 52.111721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860447, 33.290241, 52.282288>,  <47.419151, 33.103184, 52.028870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860447, 33.290241, 52.282288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.964714, 33.637924, 52.114220>,  <47.027275, 33.846535, 52.013378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.964714, 33.637924, 52.114220>,  <46.860447, 33.290241, 52.282288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964714, 33.637924, 52.114220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931610, 0.112280, -0.345681,
		-0.253291, 0.481538, 0.839026,
		0.260665, 0.869203, -0.420166,
		47.042915, 33.898685, 51.988171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408382, 33.759789, 52.442280>,  <46.860447, 33.290241, 52.282288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408382, 33.759789, 52.442280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.578789, 33.939293, 52.128052>,  <46.681030, 34.046997, 51.939514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.578789, 33.939293, 52.128052>,  <46.408382, 33.759789, 52.442280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578789, 33.939293, 52.128052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901432, 0.136621, -0.410798,
		-0.077025, 0.883146, 0.462732,
		0.426014, 0.448763, -0.785572,
		46.706593, 34.073921, 51.892380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196079, 34.419674, 52.330807>,  <46.408382, 33.759789, 52.442280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196079, 34.419674, 52.330807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.322556, 34.314983, 51.966053>,  <46.398441, 34.252171, 51.747200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.322556, 34.314983, 51.966053>,  <46.196079, 34.419674, 52.330807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322556, 34.314983, 51.966053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835703, 0.378102, -0.398296,
		0.449028, 0.887997, -0.099175,
		0.316187, -0.261727, -0.911880,
		46.417412, 34.236465, 51.692490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897007, 34.926399, 51.977436>,  <46.196079, 34.419674, 52.330807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897007, 34.926399, 51.977436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.007435, 34.658871, 51.701332>,  <46.073692, 34.498352, 51.535667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.007435, 34.658871, 51.701332>,  <45.897007, 34.926399, 51.977436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007435, 34.658871, 51.701332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668521, 0.382371, -0.637865,
		0.690556, 0.637548, -0.341563,
		0.276066, -0.668823, -0.690263,
		46.090256, 34.458225, 51.494251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871304, 35.356083, 51.281895>,  <45.897007, 34.926399, 51.977436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871304, 35.356083, 51.281895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.882084, 34.967026, 51.189606>,  <45.888554, 34.733589, 51.134232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.882084, 34.967026, 51.189606>,  <45.871304, 35.356083, 51.281895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882084, 34.967026, 51.189606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718782, 0.141546, -0.680673,
		0.694712, 0.184187, -0.695306,
		0.026953, -0.972646, -0.230724,
		45.890171, 34.675232, 51.120388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836781, 35.351593, 50.641434>,  <45.871304, 35.356083, 51.281895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836781, 35.351593, 50.641434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.721119, 34.982422, 50.743092>,  <45.651722, 34.760918, 50.804089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.721119, 34.982422, 50.743092>,  <45.836781, 35.351593, 50.641434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721119, 34.982422, 50.743092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801552, 0.088275, -0.591373,
		0.523361, -0.374709, -0.765301,
		-0.289150, -0.922930, 0.254149,
		45.634373, 34.705544, 50.819336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705189, 34.920395, 50.030334>,  <45.836781, 35.351593, 50.641434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705189, 34.920395, 50.030334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.464603, 34.753624, 50.302925>,  <45.320251, 34.653561, 50.466480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.464603, 34.753624, 50.302925>,  <45.705189, 34.920395, 50.030334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464603, 34.753624, 50.302925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792070, 0.199919, -0.576765,
		0.104227, -0.886683, -0.450478,
		-0.601467, -0.416925, 0.681478,
		45.284164, 34.628548, 50.507366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209362, 34.540363, 49.647827>,  <45.705189, 34.920395, 50.030334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209362, 34.540363, 49.647827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.025063, 34.526482, 50.002567>,  <44.914482, 34.518154, 50.215412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.025063, 34.526482, 50.002567>,  <45.209362, 34.540363, 49.647827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025063, 34.526482, 50.002567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884109, 0.105580, -0.455197,
		-0.077837, -0.993805, -0.079328,
		-0.460752, -0.034703, 0.886850,
		44.886837, 34.516071, 50.268623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711258, 33.905937, 49.593658>,  <45.209362, 34.540363, 49.647827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711258, 33.905937, 49.593658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.598873, 34.165401, 49.876587>,  <44.531445, 34.321079, 50.046345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.598873, 34.165401, 49.876587>,  <44.711258, 33.905937, 49.593658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598873, 34.165401, 49.876587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898146, 0.082027, -0.431979,
		-0.338226, -0.756648, 0.559542,
		-0.280958, 0.648657, 0.707323,
		44.514587, 34.359997, 50.088783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074867, 33.612671, 49.811764>,  <44.711258, 33.905937, 49.593658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074867, 33.612671, 49.811764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.056095, 34.002392, 49.899887>,  <44.044834, 34.236225, 49.952759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.056095, 34.002392, 49.899887>,  <44.074867, 33.612671, 49.811764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056095, 34.002392, 49.899887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964076, 0.013548, -0.265279,
		-0.261447, -0.224841, 0.938665,
		-0.046928, 0.974301, 0.220306,
		44.042015, 34.294682, 49.965981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484409, 33.729233, 50.157787>,  <44.074867, 33.612671, 49.811764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484409, 33.729233, 50.157787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.542690, 34.093201, 50.002449>,  <43.577660, 34.311581, 49.909248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.542690, 34.093201, 50.002449>,  <43.484409, 33.729233, 50.157787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542690, 34.093201, 50.002449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950024, 0.019144, -0.311590,
		-0.276089, 0.414334, 0.867238,
		0.145705, 0.909923, -0.388342,
		43.586403, 34.366177, 49.885948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921516, 34.024776, 50.242329>,  <43.484409, 33.729233, 50.157787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921516, 34.024776, 50.242329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.078888, 34.296486, 49.994522>,  <43.173313, 34.459511, 49.845837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.078888, 34.296486, 49.994522>,  <42.921516, 34.024776, 50.242329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078888, 34.296486, 49.994522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908671, 0.184886, -0.374345,
		-0.139741, 0.710218, 0.689973,
		0.393433, 0.679270, -0.619519,
		43.196918, 34.500267, 49.808666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506737, 34.514896, 50.195274>,  <42.921516, 34.024776, 50.242329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506737, 34.514896, 50.195274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.713242, 34.657276, 49.883694>,  <42.837147, 34.742702, 49.696743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.713242, 34.657276, 49.883694>,  <42.506737, 34.514896, 50.195274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713242, 34.657276, 49.883694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833470, 0.418007, -0.361385,
		0.196975, 0.835807, 0.512473,
		0.516265, 0.355947, -0.778956,
		42.868122, 34.764061, 49.650005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269016, 35.209091, 50.074642>,  <42.506737, 34.514896, 50.195274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269016, 35.209091, 50.074642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.439854, 35.081245, 49.736309>,  <42.542358, 35.004539, 49.533310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.439854, 35.081245, 49.736309>,  <42.269016, 35.209091, 50.074642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439854, 35.081245, 49.736309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850435, 0.175787, -0.495842,
		0.307165, 0.931100, -0.196732,
		0.427096, -0.319613, -0.845835,
		42.567982, 34.985363, 49.482559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103676, 35.707615, 49.552109>,  <42.269016, 35.209091, 50.074642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103676, 35.707615, 49.552109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.184242, 35.368046, 49.356655>,  <42.232582, 35.164307, 49.239384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.184242, 35.368046, 49.356655>,  <42.103676, 35.707615, 49.552109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184242, 35.368046, 49.356655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927803, -0.005418, -0.373031,
		0.314027, 0.528492, -0.788723,
		0.201417, -0.848921, -0.488635,
		42.244667, 35.113369, 49.210064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931129, 35.813110, 48.882977>,  <42.103676, 35.707615, 49.552109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931129, 35.813110, 48.882977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.923050, 35.414722, 48.917942>,  <41.918201, 35.175690, 48.938923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.923050, 35.414722, 48.917942>,  <41.931129, 35.813110, 48.882977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923050, 35.414722, 48.917942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780012, -0.038996, -0.624548,
		0.625438, -0.080801, -0.776079,
		-0.020200, -0.995966, 0.087415,
		41.916988, 35.115932, 48.944168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324135, 35.786236, 48.486553>,  <41.931129, 35.813110, 48.882977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324135, 35.786236, 48.486553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.396133, 35.410381, 48.602959>,  <41.439335, 35.184868, 48.672802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.396133, 35.410381, 48.602959>,  <41.324135, 35.786236, 48.486553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396133, 35.410381, 48.602959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842817, -0.299867, -0.446922,
		0.507208, -0.164824, -0.845915,
		0.179999, -0.939634, 0.291011,
		41.450134, 35.128490, 48.690262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042389, 35.382938, 48.023018>,  <41.324135, 35.786236, 48.486553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042389, 35.382938, 48.023018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032326, 35.135693, 48.337292>,  <41.026287, 34.987343, 48.525856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032326, 35.135693, 48.337292>,  <41.042389, 35.382938, 48.023018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032326, 35.135693, 48.337292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869602, -0.374142, -0.322196,
		0.493112, -0.691338, -0.528103,
		-0.025161, -0.618117, 0.785683,
		41.024776, 34.950256, 48.572998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420052, 35.048908, 47.961861>,  <41.042389, 35.382938, 48.023018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420052, 35.048908, 47.961861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.230888, 35.274410, 48.232723>,  <40.117390, 35.409710, 48.395241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.230888, 35.274410, 48.232723>,  <40.420052, 35.048908, 47.961861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230888, 35.274410, 48.232723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274946, 0.635736, -0.721280,
		-0.837116, -0.527280, -0.145642,
		-0.472907, 0.563751, 0.677159,
		40.089016, 35.443535, 48.435871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648251, 35.244873, 47.733269>,  <40.420052, 35.048908, 47.961861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648251, 35.244873, 47.733269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880913, 35.531143, 47.887924>,  <40.020508, 35.702908, 47.980717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880913, 35.531143, 47.887924>,  <39.648251, 35.244873, 47.733269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880913, 35.531143, 47.887924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136037, 0.554199, -0.821193,
		-0.801982, 0.425051, 0.419709,
		0.581652, 0.715678, 0.386635,
		40.055408, 35.745846, 48.003914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934673, 35.358032, 47.407276>,  <39.648251, 35.244873, 47.733269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934673, 35.358032, 47.407276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772549, 35.127815, 47.123169>,  <38.675274, 34.989685, 46.952705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772549, 35.127815, 47.123169>,  <38.934673, 35.358032, 47.407276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772549, 35.127815, 47.123169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588169, -0.758958, 0.279359,
		-0.699845, -0.304531, 0.646125,
		-0.405308, -0.575538, -0.710268,
		38.650955, 34.955154, 46.910088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599667, 34.770855, 47.706448>,  <38.934673, 35.358032, 47.407276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599667, 34.770855, 47.706448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713806, 34.688652, 47.331997>,  <38.782291, 34.639328, 47.107327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713806, 34.688652, 47.331997>,  <38.599667, 34.770855, 47.706448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713806, 34.688652, 47.331997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546903, -0.767192, 0.335133,
		-0.787065, -0.607603, -0.106524,
		0.285352, -0.205513, -0.936130,
		38.799412, 34.626999, 47.051159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102051, 34.187569, 47.598270>,  <38.599667, 34.770855, 47.706448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102051, 34.187569, 47.598270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.277782, 33.828594, 47.582253>,  <38.383221, 33.613209, 47.572643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.277782, 33.828594, 47.582253>,  <38.102051, 34.187569, 47.598270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277782, 33.828594, 47.582253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654075, -0.289007, -0.699043,
		0.615773, 0.333299, -0.713958,
		0.439329, -0.897433, -0.040040,
		38.409580, 33.559364, 47.570240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077518, 33.944653, 46.935467>,  <38.102051, 34.187569, 47.598270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077518, 33.944653, 46.935467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167126, 33.590115, 47.097561>,  <38.220890, 33.377392, 47.194817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167126, 33.590115, 47.097561>,  <38.077518, 33.944653, 46.935467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167126, 33.590115, 47.097561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630907, -0.448809, -0.632872,
		0.742813, -0.113889, -0.659742,
		0.224021, -0.886341, 0.405234,
		38.234333, 33.324211, 47.219131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226322, 33.553963, 46.355381>,  <38.077518, 33.944653, 46.935467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226322, 33.553963, 46.355381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158623, 33.281052, 46.639874>,  <38.118004, 33.117306, 46.810570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158623, 33.281052, 46.639874>,  <38.226322, 33.553963, 46.355381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158623, 33.281052, 46.639874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621953, -0.485865, -0.614092,
		0.764545, -0.546286, -0.342115,
		-0.169248, -0.682281, 0.711230,
		38.107849, 33.076366, 46.853241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215260, 32.963047, 46.041725>,  <38.226322, 33.553963, 46.355381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215260, 32.963047, 46.041725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005253, 32.879959, 46.371868>,  <37.879250, 32.830105, 46.569954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005253, 32.879959, 46.371868>,  <38.215260, 32.963047, 46.041725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005253, 32.879959, 46.371868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629501, -0.557878, -0.540834,
		0.572788, -0.803508, 0.162136,
		-0.525017, -0.207718, 0.825355,
		37.847748, 32.817642, 46.619476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972034, 32.187210, 46.067822>,  <38.215260, 32.963047, 46.041725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972034, 32.187210, 46.067822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722130, 32.401810, 46.294746>,  <37.572186, 32.530571, 46.430901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722130, 32.401810, 46.294746>,  <37.972034, 32.187210, 46.067822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722130, 32.401810, 46.294746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779162, -0.381111, -0.497655,
		-0.050784, -0.752943, 0.656124,
		-0.624761, 0.536500, 0.567310,
		37.534702, 32.562759, 46.464939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492870, 31.622391, 46.318043>,  <37.972034, 32.187210, 46.067822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492870, 31.622391, 46.318043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328369, 31.984457, 46.361023>,  <37.229668, 32.201698, 46.386810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328369, 31.984457, 46.361023>,  <37.492870, 31.622391, 46.318043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328369, 31.984457, 46.361023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910002, -0.400908, -0.105687,
		-0.052585, -0.141248, 0.988577,
		-0.411256, 0.905164, 0.107455,
		37.204990, 32.256004, 46.393261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859333, 31.409096, 46.677597>,  <37.492870, 31.622391, 46.318043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859333, 31.409096, 46.677597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.791039, 31.767303, 46.513210>,  <36.750061, 31.982227, 46.414577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.791039, 31.767303, 46.513210>,  <36.859333, 31.409096, 46.677597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791039, 31.767303, 46.513210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968972, -0.228258, -0.094821,
		-0.178721, 0.382030, 0.906704,
		-0.170738, 0.895517, -0.410971,
		36.739819, 32.035957, 46.389919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233242, 31.584538, 46.978073>,  <36.859333, 31.409096, 46.677597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233242, 31.584538, 46.978073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272270, 31.846148, 46.678013>,  <36.295689, 32.003113, 46.497974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272270, 31.846148, 46.678013>,  <36.233242, 31.584538, 46.978073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272270, 31.846148, 46.678013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938238, -0.190955, -0.288522,
		-0.331946, 0.731975, 0.594999,
		0.097573, 0.654025, -0.750154,
		36.301540, 32.042355, 46.452969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724686, 32.176785, 47.100384>,  <36.233242, 31.584538, 46.978073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724686, 32.176785, 47.100384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822372, 32.181286, 46.712521>,  <35.880985, 32.183987, 46.479805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822372, 32.181286, 46.712521>,  <35.724686, 32.176785, 47.100384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822372, 32.181286, 46.712521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926482, -0.292550, -0.236739,
		-0.286337, 0.956184, -0.061021,
		0.244217, 0.011252, -0.969655,
		35.895638, 32.184662, 46.421623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248573, 32.669987, 46.743294>,  <35.724686, 32.176785, 47.100384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248573, 32.669987, 46.743294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400082, 32.403564, 46.486263>,  <35.490986, 32.243713, 46.332043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400082, 32.403564, 46.486263>,  <35.248573, 32.669987, 46.743294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400082, 32.403564, 46.486263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921699, -0.208691, -0.326985,
		0.083688, 0.716116, -0.692946,
		0.378771, -0.666052, -0.642578,
		35.513714, 32.203751, 46.293491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868206, 32.805542, 46.204704>,  <35.248573, 32.669987, 46.743294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868206, 32.805542, 46.204704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048557, 32.464817, 46.098022>,  <35.156769, 32.260384, 46.034016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048557, 32.464817, 46.098022>,  <34.868206, 32.805542, 46.204704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048557, 32.464817, 46.098022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805225, -0.259248, -0.533294,
		0.385123, 0.455206, -0.802787,
		0.450880, -0.851809, -0.266700,
		35.183823, 32.209274, 46.018013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789799, 32.774242, 45.408108>,  <34.868206, 32.805542, 46.204704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789799, 32.774242, 45.408108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862148, 32.415924, 45.570511>,  <34.905560, 32.200935, 45.667953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862148, 32.415924, 45.570511>,  <34.789799, 32.774242, 45.408108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862148, 32.415924, 45.570511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816343, -0.366973, -0.445998,
		0.548515, -0.250770, -0.797650,
		0.180874, -0.895793, 0.406005,
		34.916409, 32.147186, 45.692314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.260719, 32.167439, 51.132153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613607, 32.348816, 51.182869>,  <30.825340, 32.457642, 51.213299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613607, 32.348816, 51.182869>,  <30.260719, 32.167439, 51.132153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613607, 32.348816, 51.182869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301934, -0.338219, -0.891316,
		-0.361283, 0.824617, -0.435294,
		0.882219, 0.453447, 0.126788,
		30.878273, 32.484852, 51.220905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435635, 32.517097, 50.472397>,  <30.260719, 32.167439, 51.132153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435635, 32.517097, 50.472397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.784708, 32.467342, 50.661270>,  <30.994152, 32.437489, 50.774593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.784708, 32.467342, 50.661270>,  <30.435635, 32.517097, 50.472397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784708, 32.467342, 50.661270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428478, -0.268657, -0.862688,
		0.234162, 0.955171, -0.181155,
		0.872683, -0.124388, 0.472179,
		31.046513, 32.430027, 50.802925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838099, 32.966194, 50.178951>,  <30.435635, 32.517097, 50.472397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838099, 32.966194, 50.178951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.092934, 32.700447, 50.335278>,  <31.245834, 32.541000, 50.429073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.092934, 32.700447, 50.335278>,  <30.838099, 32.966194, 50.178951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092934, 32.700447, 50.335278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552394, 0.039920, -0.832627,
		0.537569, 0.746339, 0.392425,
		0.637088, -0.664368, 0.390814,
		31.284060, 32.501137, 50.452522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483997, 33.124367, 49.995037>,  <30.838099, 32.966194, 50.178951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483997, 33.124367, 49.995037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.503706, 32.732197, 50.071278>,  <31.515532, 32.496895, 50.117023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.503706, 32.732197, 50.071278>,  <31.483997, 33.124367, 49.995037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503706, 32.732197, 50.071278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452431, -0.148227, -0.879395,
		0.890437, 0.129565, 0.436274,
		0.049272, -0.980429, 0.190606,
		31.518488, 32.438068, 50.128460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093182, 32.862511, 49.779209>,  <31.483997, 33.124367, 49.995037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093182, 32.862511, 49.779209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898239, 32.515533, 49.819271>,  <31.781273, 32.307346, 49.843307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898239, 32.515533, 49.819271>,  <32.093182, 32.862511, 49.779209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898239, 32.515533, 49.819271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397235, -0.322386, -0.859227,
		0.777615, -0.378969, 0.501695,
		-0.487360, -0.867439, 0.100153,
		31.752031, 32.255302, 49.849316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568764, 32.256157, 49.771015>,  <32.093182, 32.862511, 49.779209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568764, 32.256157, 49.771015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209328, 32.159309, 49.624638>,  <31.993666, 32.101200, 49.536812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209328, 32.159309, 49.624638>,  <32.568764, 32.256157, 49.771015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209328, 32.159309, 49.624638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417374, -0.214264, -0.883114,
		0.135410, -0.946292, 0.293589,
		-0.898590, -0.242119, -0.365944,
		31.939751, 32.086674, 49.514854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645557, 31.692331, 49.386017>,  <32.568764, 32.256157, 49.771015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645557, 31.692331, 49.386017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282665, 31.796009, 49.253502>,  <32.064930, 31.858215, 49.173992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282665, 31.796009, 49.253502>,  <32.645557, 31.692331, 49.386017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282665, 31.796009, 49.253502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242475, -0.321314, -0.915403,
		-0.343726, -0.910808, 0.228654,
		-0.907226, 0.259205, -0.331292,
		32.010498, 31.873768, 49.154114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362980, 31.072500, 49.137394>,  <32.645557, 31.692331, 49.386017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362980, 31.072500, 49.137394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166718, 31.371853, 48.958878>,  <32.048962, 31.551464, 48.851768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166718, 31.371853, 48.958878>,  <32.362980, 31.072500, 49.137394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166718, 31.371853, 48.958878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317141, -0.323679, -0.891434,
		-0.811591, -0.578924, -0.078529,
		-0.490655, 0.748384, -0.446295,
		32.019520, 31.596369, 48.824989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046844, 30.728167, 48.749382>,  <32.362980, 31.072500, 49.137394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046844, 30.728167, 48.749382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.052643, 31.094534, 48.588943>,  <32.056122, 31.314354, 48.492680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.052643, 31.094534, 48.588943>,  <32.046844, 30.728167, 48.749382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052643, 31.094534, 48.588943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521082, -0.349283, -0.778765,
		-0.853383, -0.197719, -0.482331,
		0.014493, 0.915919, -0.401100,
		32.056992, 31.369310, 48.468613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999777, 30.613070, 47.983212>,  <32.046844, 30.728167, 48.749382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999777, 30.613070, 47.983212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108917, 30.997887, 47.985260>,  <32.174400, 31.228777, 47.986488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108917, 30.997887, 47.985260>,  <31.999777, 30.613070, 47.983212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108917, 30.997887, 47.985260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452770, -0.123717, -0.883003,
		-0.848853, 0.243246, -0.469340,
		0.272852, 0.962042, 0.005117,
		32.190773, 31.286499, 47.986794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753157, 30.927120, 47.394226>,  <31.999777, 30.613070, 47.983212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753157, 30.927120, 47.394226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067097, 31.149454, 47.503811>,  <32.255463, 31.282854, 47.569561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067097, 31.149454, 47.503811>,  <31.753157, 30.927120, 47.394226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067097, 31.149454, 47.503811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466031, -0.238033, -0.852148,
		-0.408440, 0.796486, -0.445856,
		0.784852, 0.555834, 0.273965,
		32.302551, 31.316204, 47.585999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894598, 31.280830, 46.796070>,  <31.753157, 30.927120, 47.394226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894598, 31.280830, 46.796070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227348, 31.316624, 47.015152>,  <32.426998, 31.338100, 47.146599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227348, 31.316624, 47.015152>,  <31.894598, 31.280830, 46.796070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227348, 31.316624, 47.015152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548426, -0.283583, -0.786645,
		0.084926, 0.954763, -0.284981,
		0.831875, 0.089485, 0.547701,
		32.476910, 31.343470, 47.179462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274239, 31.828424, 46.460327>,  <31.894598, 31.280830, 46.796070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274239, 31.828424, 46.460327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498386, 31.583546, 46.683468>,  <32.632874, 31.436619, 46.817352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498386, 31.583546, 46.683468>,  <32.274239, 31.828424, 46.460327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498386, 31.583546, 46.683468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594655, -0.171454, -0.785487,
		0.576521, 0.771891, 0.267970,
		0.560366, -0.612199, 0.557855,
		32.666496, 31.399885, 46.850826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809599, 32.259319, 46.080086>,  <32.274239, 31.828424, 46.460327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809599, 32.259319, 46.080086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810593, 32.401936, 45.706375>,  <31.811188, 32.487503, 45.482147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810593, 32.401936, 45.706375>,  <31.809599, 32.259319, 46.080086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810593, 32.401936, 45.706375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738537, 0.630556, 0.238670,
		0.674209, 0.689405, 0.264882,
		0.002483, 0.356538, -0.934277,
		31.811338, 32.508896, 45.426090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800444, 32.956341, 46.080620>,  <31.809599, 32.259319, 46.080086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800444, 32.956341, 46.080620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661722, 32.869125, 45.715721>,  <31.578489, 32.816795, 45.496784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661722, 32.869125, 45.715721>,  <31.800444, 32.956341, 46.080620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661722, 32.869125, 45.715721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701325, 0.706094, 0.097853,
		0.622793, 0.673714, -0.397791,
		-0.346803, -0.218039, -0.912243,
		31.557682, 32.803715, 45.442047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593262, 33.612812, 45.732811>,  <31.800444, 32.956341, 46.080620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593262, 33.612812, 45.732811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400404, 33.344463, 45.507431>,  <31.284689, 33.183456, 45.372204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400404, 33.344463, 45.507431>,  <31.593262, 33.612812, 45.732811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400404, 33.344463, 45.507431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692345, 0.685859, -0.224177,
		0.536839, 0.282014, -0.795156,
		-0.482144, -0.670869, -0.563447,
		31.255760, 33.143204, 45.338398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463924, 33.892597, 45.054668>,  <31.593262, 33.612812, 45.732811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463924, 33.892597, 45.054668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.185741, 33.606380, 45.081039>,  <31.018831, 33.434650, 45.096863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.185741, 33.606380, 45.081039>,  <31.463924, 33.892597, 45.054668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185741, 33.606380, 45.081039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710330, 0.670727, -0.213440,
		0.108507, -0.195266, -0.974729,
		-0.695455, -0.715539, 0.065925,
		30.977104, 33.391720, 45.100815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979286, 33.964550, 44.476990>,  <31.463924, 33.892597, 45.054668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979286, 33.964550, 44.476990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.789686, 33.781429, 44.777855>,  <30.675926, 33.671558, 44.958374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.789686, 33.781429, 44.777855>,  <30.979286, 33.964550, 44.476990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789686, 33.781429, 44.777855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668955, 0.742679, 0.030460,
		-0.572558, -0.488723, -0.658276,
		-0.474001, -0.457797, 0.752160,
		30.647486, 33.644089, 45.003502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220730, 34.010822, 44.366318>,  <30.979286, 33.964550, 44.476990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220730, 34.010822, 44.366318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259956, 33.944557, 44.758835>,  <30.283493, 33.904797, 44.994347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259956, 33.944557, 44.758835>,  <30.220730, 34.010822, 44.366318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259956, 33.944557, 44.758835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646174, 0.739318, 0.189390,
		-0.756863, -0.652660, -0.034546,
		0.098066, -0.165665, 0.981294,
		30.289377, 33.894859, 45.053223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481380, 34.071293, 44.638443>,  <30.220730, 34.010822, 44.366318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481380, 34.071293, 44.638443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.710312, 34.095715, 44.965542>,  <29.847670, 34.110367, 45.161800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.710312, 34.095715, 44.965542>,  <29.481380, 34.071293, 44.638443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710312, 34.095715, 44.965542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692551, 0.569982, 0.442147,
		-0.439106, -0.819386, 0.368501,
		0.572327, 0.061056, 0.817749,
		29.882010, 34.114033, 45.210865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029528, 34.042137, 45.253399>,  <29.481380, 34.071293, 44.638443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029528, 34.042137, 45.253399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.356714, 34.219254, 45.400299>,  <29.553026, 34.325523, 45.488438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.356714, 34.219254, 45.400299>,  <29.029528, 34.042137, 45.253399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356714, 34.219254, 45.400299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574927, 0.651146, 0.495448,
		-0.019754, -0.616400, 0.787185,
		0.817966, 0.442787, 0.367248,
		29.602104, 34.352089, 45.510475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822371, 34.327831, 45.919548>,  <29.029528, 34.042137, 45.253399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822371, 34.327831, 45.919548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.182823, 34.488201, 45.853554>,  <29.399096, 34.584423, 45.813957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.182823, 34.488201, 45.853554>,  <28.822371, 34.327831, 45.919548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182823, 34.488201, 45.853554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283358, 0.832670, 0.475782,
		0.328131, -0.381993, 0.863951,
		0.901132, 0.400926, -0.164984,
		29.453163, 34.608479, 45.804058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161406, 34.422478, 46.553745>,  <28.822371, 34.327831, 45.919548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161406, 34.422478, 46.553745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.348173, 34.667927, 46.299046>,  <29.460234, 34.815197, 46.146225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.348173, 34.667927, 46.299046>,  <29.161406, 34.422478, 46.553745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348173, 34.667927, 46.299046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103598, 0.753059, 0.649745,
		0.878212, -0.237410, 0.415186,
		0.466916, 0.613627, -0.636751,
		29.488249, 34.852016, 46.108021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648878, 34.756779, 46.923218>,  <29.161406, 34.422478, 46.553745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648878, 34.756779, 46.923218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622265, 35.014130, 46.618156>,  <29.606297, 35.168541, 46.435120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622265, 35.014130, 46.618156>,  <29.648878, 34.756779, 46.923218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622265, 35.014130, 46.618156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157256, 0.748029, 0.644767,
		0.985314, 0.162831, 0.051405,
		-0.066535, 0.643381, -0.762649,
		29.602304, 35.207146, 46.389362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071239, 35.294006, 47.194717>,  <29.648878, 34.756779, 46.923218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071239, 35.294006, 47.194717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834913, 35.432121, 46.903046>,  <29.693117, 35.514992, 46.728043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834913, 35.432121, 46.903046>,  <30.071239, 35.294006, 47.194717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834913, 35.432121, 46.903046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110877, 0.860467, 0.497296,
		0.799150, 0.374660, -0.470094,
		-0.590817, 0.345292, -0.729184,
		29.657669, 35.535709, 46.684292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327274, 35.927025, 47.019176>,  <30.071239, 35.294006, 47.194717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327274, 35.927025, 47.019176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.942356, 35.932720, 46.910522>,  <29.711405, 35.936138, 46.845329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.942356, 35.932720, 46.910522>,  <30.327274, 35.927025, 47.019176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942356, 35.932720, 46.910522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102688, 0.905715, 0.411261,
		0.251878, 0.423648, -0.870103,
		-0.962296, 0.014239, -0.271633,
		29.653667, 35.936993, 46.829033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270422, 36.631207, 46.797203>,  <30.327274, 35.927025, 47.019176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270422, 36.631207, 46.797203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.903505, 36.493332, 46.876972>,  <29.683355, 36.410606, 46.924831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.903505, 36.493332, 46.876972>,  <30.270422, 36.631207, 46.797203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903505, 36.493332, 46.876972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206960, 0.840478, 0.500764,
		-0.340216, 0.418074, -0.842299,
		-0.917290, -0.344690, 0.199420,
		29.628319, 36.389923, 46.936798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711628, 37.225662, 46.520184>,  <30.270422, 36.631207, 46.797203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711628, 37.225662, 46.520184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532288, 37.004078, 46.800785>,  <29.424683, 36.871128, 46.969147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532288, 37.004078, 46.800785>,  <29.711628, 37.225662, 46.520184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532288, 37.004078, 46.800785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126504, 0.816227, 0.563711,
		-0.884860, 0.163999, -0.436036,
		-0.448352, -0.553965, 0.701500,
		29.397781, 36.837887, 47.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773718, 38.000156, 46.275368>,  <29.711628, 37.225662, 46.520184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773718, 38.000156, 46.275368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.906847, 38.373852, 46.224102>,  <29.986725, 38.598068, 46.193344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.906847, 38.373852, 46.224102>,  <29.773718, 38.000156, 46.275368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906847, 38.373852, 46.224102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813080, -0.353147, -0.462804,
		-0.477629, 0.049828, -0.877147,
		0.332823, 0.934240, -0.128160,
		30.006693, 38.654125, 46.185654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746075, 38.183586, 45.558872>,  <29.773718, 38.000156, 46.275368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746075, 38.183586, 45.558872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012234, 38.417595, 45.744343>,  <30.171928, 38.558002, 45.855625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012234, 38.417595, 45.744343>,  <29.746075, 38.183586, 45.558872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012234, 38.417595, 45.744343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739404, -0.431129, -0.517116,
		-0.102621, 0.686931, -0.719440,
		0.665395, 0.585024, 0.463676,
		30.211853, 38.593102, 45.883446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102928, 38.647552, 44.988052>,  <29.746075, 38.183586, 45.558872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102928, 38.647552, 44.988052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.317966, 38.607491, 45.322945>,  <30.446989, 38.583454, 45.523880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.317966, 38.607491, 45.322945>,  <30.102928, 38.647552, 44.988052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317966, 38.607491, 45.322945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791816, -0.281360, -0.542092,
		0.289860, 0.954361, -0.071951,
		0.537596, -0.100159, 0.837233,
		30.479244, 38.577442, 45.574116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796917, 38.966324, 44.929558>,  <30.102928, 38.647552, 44.988052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796917, 38.966324, 44.929558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861055, 38.699947, 45.220985>,  <30.899538, 38.540123, 45.395844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861055, 38.699947, 45.220985>,  <30.796917, 38.966324, 44.929558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861055, 38.699947, 45.220985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875173, -0.245428, -0.416938,
		0.456467, 0.704479, 0.543459,
		0.160344, -0.665939, 0.728570,
		30.909159, 38.500164, 45.439556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464033, 38.981773, 44.977787>,  <30.796917, 38.966324, 44.929558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464033, 38.981773, 44.977787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.430275, 38.666801, 45.222027>,  <31.410021, 38.477818, 45.368572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.430275, 38.666801, 45.222027>,  <31.464033, 38.981773, 44.977787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430275, 38.666801, 45.222027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887677, -0.337795, -0.312928,
		0.452666, 0.515605, 0.727492,
		-0.084396, -0.787430, 0.610599,
		31.404957, 38.430573, 45.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104263, 38.961445, 45.360439>,  <31.464033, 38.981773, 44.977787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104263, 38.961445, 45.360439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.953211, 38.594906, 45.413662>,  <31.862579, 38.374981, 45.445595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.953211, 38.594906, 45.413662>,  <32.104263, 38.961445, 45.360439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953211, 38.594906, 45.413662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892871, -0.398426, -0.209853,
		0.245313, 0.039560, 0.968636,
		-0.377628, -0.916347, 0.133061,
		31.839922, 38.320004, 45.453579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568111, 38.560863, 45.758404>,  <32.104263, 38.961445, 45.360439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568111, 38.560863, 45.758404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356396, 38.284004, 45.562122>,  <32.229366, 38.117889, 45.444355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356396, 38.284004, 45.562122>,  <32.568111, 38.560863, 45.758404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356396, 38.284004, 45.562122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839849, -0.509524, -0.187188,
		-0.120461, -0.511189, 0.850985,
		-0.529286, -0.692150, -0.490699,
		32.197609, 38.076359, 45.414913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818695, 37.924782, 46.014740>,  <32.568111, 38.560863, 45.758404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818695, 37.924782, 46.014740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643322, 37.823582, 45.669773>,  <32.538097, 37.762863, 45.462791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643322, 37.823582, 45.669773>,  <32.818695, 37.924782, 46.014740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643322, 37.823582, 45.669773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740393, -0.645641, -0.186992,
		-0.509506, -0.720514, 0.470386,
		-0.438431, -0.252997, -0.862422,
		32.511791, 37.747684, 45.411045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793327, 37.154552, 45.903381>,  <32.818695, 37.924782, 46.014740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793327, 37.154552, 45.903381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752468, 37.301250, 45.533504>,  <32.727951, 37.389271, 45.311577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752468, 37.301250, 45.533504>,  <32.793327, 37.154552, 45.903381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752468, 37.301250, 45.533504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645590, -0.682769, -0.342111,
		-0.756822, -0.631921, -0.167023,
		-0.102149, 0.366745, -0.924696,
		32.721825, 37.411274, 45.256096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617905, 36.544651, 45.487282>,  <32.793327, 37.154552, 45.903381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617905, 36.544651, 45.487282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757027, 36.819466, 45.232090>,  <32.840500, 36.984352, 45.078976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757027, 36.819466, 45.232090>,  <32.617905, 36.544651, 45.487282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757027, 36.819466, 45.232090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665856, -0.660052, -0.347802,
		-0.660052, -0.303837, -0.687033,
		0.347802, 0.687033, -0.637981,
		32.861366, 37.025574, 45.040695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786133, 36.194607, 44.880329>,  <32.617905, 36.544651, 45.487282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786133, 36.194607, 44.880329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985394, 36.530334, 44.793251>,  <33.104950, 36.731773, 44.741005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985394, 36.530334, 44.793251>,  <32.786133, 36.194607, 44.880329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985394, 36.530334, 44.793251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731407, -0.541582, -0.414406,
		-0.465718, 0.047214, -0.883673,
		0.498147, 0.839321, -0.217692,
		33.134838, 36.782131, 44.727943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987152, 36.165031, 44.163868>,  <32.786133, 36.194607, 44.880329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987152, 36.165031, 44.163868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232323, 36.426777, 44.341015>,  <33.379425, 36.583824, 44.447304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232323, 36.426777, 44.341015>,  <32.987152, 36.165031, 44.163868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232323, 36.426777, 44.341015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789732, -0.525391, -0.316683,
		0.025451, 0.543846, -0.838799,
		0.612924, 0.654366, 0.442864,
		33.416199, 36.623085, 44.473873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.168499, 41.737633, 50.389050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.795015, 41.724895, 50.246407>,  <27.570925, 41.717255, 50.160820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.795015, 41.724895, 50.246407>,  <28.168499, 41.737633, 50.389050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795015, 41.724895, 50.246407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358024, -0.088413, -0.929517,
		-0.001931, -0.995575, 0.093953,
		-0.933710, -0.031843, -0.356610,
		27.514902, 41.715343, 50.139423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060190, 40.973721, 50.090466>,  <28.168499, 41.737633, 50.389050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060190, 40.973721, 50.090466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802383, 41.211662, 49.898319>,  <27.647699, 41.354427, 49.783031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802383, 41.211662, 49.898319>,  <28.060190, 40.973721, 50.090466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802383, 41.211662, 49.898319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284405, -0.396662, -0.872796,
		-0.709728, -0.699149, 0.086476,
		-0.644516, 0.594853, -0.480364,
		27.609028, 41.390118, 49.754211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786222, 40.533451, 49.623680>,  <28.060190, 40.973721, 50.090466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786222, 40.533451, 49.623680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682501, 40.887154, 49.468323>,  <27.620268, 41.099377, 49.375111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682501, 40.887154, 49.468323>,  <27.786222, 40.533451, 49.623680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682501, 40.887154, 49.468323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053288, -0.388435, -0.919934,
		-0.964325, -0.259237, 0.053602,
		-0.259302, 0.884259, -0.388392,
		27.604710, 41.152431, 49.351807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287380, 40.373833, 49.181988>,  <27.786222, 40.533451, 49.623680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287380, 40.373833, 49.181988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.410877, 40.735615, 49.064251>,  <27.484976, 40.952686, 48.993610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.410877, 40.735615, 49.064251>,  <27.287380, 40.373833, 49.181988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410877, 40.735615, 49.064251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246673, -0.375009, -0.893600,
		-0.918602, 0.203287, -0.338887,
		0.308743, 0.904457, -0.294339,
		27.503500, 41.006950, 48.975948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925051, 40.455921, 48.553699>,  <27.287380, 40.373833, 49.181988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925051, 40.455921, 48.553699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245745, 40.694668, 48.566154>,  <27.438160, 40.837917, 48.573627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245745, 40.694668, 48.566154>,  <26.925051, 40.455921, 48.553699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245745, 40.694668, 48.566154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376633, -0.464082, -0.801733,
		-0.464082, 0.654502, -0.596871,
		0.801733, 0.596871, 0.031135,
		27.486265, 40.873730, 48.575497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044563, 40.543941, 47.857533>,  <26.925051, 40.455921, 48.553699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044563, 40.543941, 47.857533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372034, 40.651344, 48.060577>,  <27.568516, 40.715786, 48.182404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372034, 40.651344, 48.060577>,  <27.044563, 40.543941, 47.857533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372034, 40.651344, 48.060577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573167, -0.327616, -0.751098,
		-0.035373, 0.905854, -0.422111,
		0.818675, 0.268509, 0.507617,
		27.617636, 40.731895, 48.212864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426800, 40.838177, 47.364655>,  <27.044563, 40.543941, 47.857533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426800, 40.838177, 47.364655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691217, 40.744686, 47.649860>,  <27.849867, 40.688591, 47.820984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691217, 40.744686, 47.649860>,  <27.426800, 40.838177, 47.364655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691217, 40.744686, 47.649860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680773, -0.212803, -0.700902,
		0.315550, 0.948730, 0.018441,
		0.661042, -0.233723, 0.713019,
		27.889530, 40.674568, 47.863766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067823, 41.045658, 47.113712>,  <27.426800, 40.838177, 47.364655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067823, 41.045658, 47.113712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115477, 40.756935, 47.386417>,  <28.144068, 40.583702, 47.550041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115477, 40.756935, 47.386417>,  <28.067823, 41.045658, 47.113712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115477, 40.756935, 47.386417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550672, -0.523328, -0.650298,
		0.826176, 0.452898, 0.335136,
		0.119133, -0.721811, 0.681759,
		28.151217, 40.540390, 47.590946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755966, 40.961731, 47.054382>,  <28.067823, 41.045658, 47.113712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755966, 40.961731, 47.054382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.607555, 40.636333, 47.233524>,  <28.518509, 40.441097, 47.341007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.607555, 40.636333, 47.233524>,  <28.755966, 40.961731, 47.054382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607555, 40.636333, 47.233524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694079, -0.563330, -0.448234,
		0.616923, 0.144538, 0.773637,
		-0.371026, -0.813492, 0.447852,
		28.496248, 40.392284, 47.367878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364130, 40.622387, 47.232712>,  <28.755966, 40.961731, 47.054382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364130, 40.622387, 47.232712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069405, 40.352142, 47.242970>,  <28.892569, 40.189995, 47.249123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069405, 40.352142, 47.242970>,  <29.364130, 40.622387, 47.232712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069405, 40.352142, 47.242970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621837, -0.692080, -0.366530,
		0.265379, -0.254118, 0.930053,
		-0.736813, -0.675610, 0.025644,
		28.848360, 40.149460, 47.250664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705122, 40.098164, 47.518642>,  <29.364130, 40.622387, 47.232712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705122, 40.098164, 47.518642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381704, 39.941673, 47.342827>,  <29.187654, 39.847778, 47.237335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381704, 39.941673, 47.342827>,  <29.705122, 40.098164, 47.518642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381704, 39.941673, 47.342827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579565, -0.658687, -0.479828,
		-0.101797, -0.642705, 0.759320,
		-0.808543, -0.391230, -0.439542,
		29.139141, 39.824303, 47.210964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770607, 39.373451, 47.608864>,  <29.705122, 40.098164, 47.518642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770607, 39.373451, 47.608864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541353, 39.425900, 47.285301>,  <29.403801, 39.457367, 47.091164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541353, 39.425900, 47.285301>,  <29.770607, 39.373451, 47.608864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541353, 39.425900, 47.285301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505182, -0.720690, -0.474760,
		-0.645221, -0.680744, 0.346811,
		-0.573133, 0.131122, -0.808904,
		29.369413, 39.465237, 47.042629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517097, 38.730988, 47.375427>,  <29.770607, 39.373451, 47.608864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517097, 38.730988, 47.375427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517958, 38.986660, 47.067806>,  <29.518475, 39.140064, 46.883232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517958, 38.986660, 47.067806>,  <29.517097, 38.730988, 47.375427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517958, 38.986660, 47.067806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467563, -0.680458, -0.564235,
		-0.883957, -0.358369, -0.300319,
		0.002150, 0.639177, -0.769056,
		29.518602, 39.178413, 46.837090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499142, 38.181763, 46.896996>,  <29.517097, 38.730988, 47.375427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499142, 38.181763, 46.896996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607117, 38.522377, 46.717213>,  <29.671902, 38.726746, 46.609341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607117, 38.522377, 46.717213>,  <29.499142, 38.181763, 46.896996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607117, 38.522377, 46.717213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752084, -0.477939, -0.453811,
		-0.601252, -0.215531, -0.769443,
		0.269937, 0.851540, -0.449459,
		29.688097, 38.777840, 46.582375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998800, 37.686588, 46.767441>,  <29.499142, 38.181763, 46.896996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998800, 37.686588, 46.767441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058731, 37.401764, 47.041821>,  <29.094690, 37.230869, 47.206448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058731, 37.401764, 47.041821>,  <28.998800, 37.686588, 46.767441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058731, 37.401764, 47.041821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376824, 0.600291, 0.705446,
		-0.914087, -0.364177, -0.178381,
		0.149827, -0.712057, 0.685949,
		29.103680, 37.188148, 47.247604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368374, 37.586548, 47.137295>,  <28.998800, 37.686588, 46.767441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368374, 37.586548, 47.137295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655409, 37.456711, 47.383778>,  <28.827629, 37.378811, 47.531666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655409, 37.456711, 47.383778>,  <28.368374, 37.586548, 47.137295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655409, 37.456711, 47.383778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397474, 0.535668, 0.745033,
		-0.571913, -0.779551, 0.255372,
		0.717586, -0.324590, 0.616207,
		28.870686, 37.359333, 47.568638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049723, 37.482506, 47.678680>,  <28.368374, 37.586548, 47.137295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049723, 37.482506, 47.678680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417435, 37.493336, 47.835747>,  <28.638062, 37.499832, 47.929989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417435, 37.493336, 47.835747>,  <28.049723, 37.482506, 47.678680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417435, 37.493336, 47.835747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347970, 0.522161, 0.778630,
		-0.183955, -0.852417, 0.489434,
		0.919281, 0.027076, 0.392670,
		28.693218, 37.501457, 47.953548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982016, 37.286728, 48.330238>,  <28.049723, 37.482506, 47.678680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982016, 37.286728, 48.330238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353054, 37.427128, 48.381405>,  <28.575678, 37.511368, 48.412106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353054, 37.427128, 48.381405>,  <27.982016, 37.286728, 48.330238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353054, 37.427128, 48.381405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244100, 0.310244, 0.918784,
		0.282807, -0.883486, 0.373460,
		0.927597, 0.351000, 0.127919,
		28.631332, 37.532429, 48.419781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269001, 37.019562, 49.046772>,  <27.982016, 37.286728, 48.330238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269001, 37.019562, 49.046772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491236, 37.334530, 48.939972>,  <28.624577, 37.523510, 48.875893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491236, 37.334530, 48.939972>,  <28.269001, 37.019562, 49.046772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491236, 37.334530, 48.939972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173532, 0.423867, 0.888945,
		0.813150, -0.447551, 0.372137,
		0.555585, 0.787423, -0.267003,
		28.657911, 37.570755, 48.859871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762192, 37.096134, 49.544899>,  <28.269001, 37.019562, 49.046772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762192, 37.096134, 49.544899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667305, 37.444160, 49.372059>,  <28.610373, 37.652977, 49.268356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667305, 37.444160, 49.372059>,  <28.762192, 37.096134, 49.544899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667305, 37.444160, 49.372059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152966, 0.405791, 0.901074,
		0.959339, 0.279845, 0.036831,
		-0.237215, 0.870069, -0.432098,
		28.596140, 37.705181, 49.242428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937799, 37.534805, 50.039120>,  <28.762192, 37.096134, 49.544899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937799, 37.534805, 50.039120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705132, 37.758881, 49.803204>,  <28.565531, 37.893326, 49.661655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705132, 37.758881, 49.803204>,  <28.937799, 37.534805, 50.039120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705132, 37.758881, 49.803204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357571, 0.475165, 0.803966,
		0.730619, 0.678533, -0.076081,
		-0.581669, 0.560188, -0.589788,
		28.530630, 37.926937, 49.626266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928110, 38.174103, 50.395542>,  <28.937799, 37.534805, 50.039120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928110, 38.174103, 50.395542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612450, 38.142265, 50.151932>,  <28.423054, 38.123161, 50.005768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612450, 38.142265, 50.151932>,  <28.928110, 38.174103, 50.395542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612450, 38.142265, 50.151932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556578, 0.511993, 0.654281,
		0.259737, 0.855294, -0.448340,
		-0.789150, -0.079595, -0.609021,
		28.375704, 38.118385, 49.969227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571026, 38.767193, 50.476692>,  <28.928110, 38.174103, 50.395542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571026, 38.767193, 50.476692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288149, 38.560749, 50.283401>,  <28.118423, 38.436882, 50.167427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288149, 38.560749, 50.283401>,  <28.571026, 38.767193, 50.476692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288149, 38.560749, 50.283401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699878, 0.414098, 0.581974,
		-0.100257, 0.749770, -0.654060,
		-0.707191, -0.516109, -0.483231,
		28.075993, 38.405918, 50.138432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987989, 39.139214, 50.250629>,  <28.571026, 38.767193, 50.476692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987989, 39.139214, 50.250629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829996, 38.772808, 50.278652>,  <27.735201, 38.552963, 50.295464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829996, 38.772808, 50.278652>,  <27.987989, 39.139214, 50.250629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829996, 38.772808, 50.278652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532235, 0.290319, 0.795261,
		-0.748808, 0.276830, -0.602206,
		-0.394984, -0.916013, 0.070055,
		27.711500, 38.498005, 50.299667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247629, 39.193394, 50.520271>,  <27.987989, 39.139214, 50.250629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247629, 39.193394, 50.520271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336294, 38.810822, 50.596272>,  <27.389494, 38.581276, 50.641872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336294, 38.810822, 50.596272>,  <27.247629, 39.193394, 50.520271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336294, 38.810822, 50.596272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613482, 0.014672, 0.789573,
		-0.757962, -0.291580, -0.583503,
		0.221663, -0.956434, 0.189999,
		27.402794, 38.523891, 50.653271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688721, 38.913689, 50.713638>,  <27.247629, 39.193394, 50.520271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688721, 38.913689, 50.713638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911169, 38.598736, 50.820038>,  <27.044638, 38.409763, 50.883877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911169, 38.598736, 50.820038>,  <26.688721, 38.913689, 50.713638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911169, 38.598736, 50.820038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517003, -0.077159, 0.852499,
		-0.650721, -0.611614, -0.449990,
		0.556121, -0.787385, 0.265997,
		27.078005, 38.362522, 50.899837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279852, 38.431274, 50.881172>,  <26.688721, 38.913689, 50.713638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279852, 38.431274, 50.881172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594423, 38.347511, 51.113613>,  <26.783167, 38.297253, 51.253078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594423, 38.347511, 51.113613>,  <26.279852, 38.431274, 50.881172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594423, 38.347511, 51.113613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558289, 0.161528, 0.813771,
		-0.264275, -0.964394, 0.010120,
		0.786431, -0.209409, 0.581098,
		26.830353, 38.284687, 51.287941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042389, 38.005089, 51.393700>,  <26.279852, 38.431274, 50.881172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042389, 38.005089, 51.393700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393061, 38.144737, 51.526089>,  <26.603464, 38.228527, 51.605522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393061, 38.144737, 51.526089>,  <26.042389, 38.005089, 51.393700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393061, 38.144737, 51.526089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431362, 0.265903, 0.862103,
		0.212975, -0.898558, 0.383712,
		0.876680, 0.349125, 0.330973,
		26.656065, 38.249474, 51.625381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.960171, 39.182266, 55.629452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824423, 39.215061, 55.254623>,  <31.742973, 39.234737, 55.029724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824423, 39.215061, 55.254623>,  <31.960171, 39.182266, 55.629452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824423, 39.215061, 55.254623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589961, -0.757357, -0.279921,
		-0.732649, -0.647834, 0.208656,
		-0.339370, 0.081985, -0.937073,
		31.722612, 39.239658, 54.973503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822472, 38.469685, 55.459389>,  <31.960171, 39.182266, 55.629452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822472, 38.469685, 55.459389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874123, 38.684345, 55.125843>,  <31.905113, 38.813141, 54.925716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874123, 38.684345, 55.125843>,  <31.822472, 38.469685, 55.459389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874123, 38.684345, 55.125843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619771, -0.700106, -0.354592,
		-0.774087, -0.471018, -0.423004,
		0.129128, 0.536650, -0.833866,
		31.912861, 38.845341, 54.875683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863720, 38.002903, 54.969082>,  <31.822472, 38.469685, 55.459389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863720, 38.002903, 54.969082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.017872, 38.324940, 54.788719>,  <32.110363, 38.518162, 54.680504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.017872, 38.324940, 54.788719>,  <31.863720, 38.002903, 54.969082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017872, 38.324940, 54.788719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585728, -0.591012, -0.554642,
		-0.713026, -0.050361, -0.699326,
		0.385378, 0.805089, -0.450905,
		32.133484, 38.566467, 54.653446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841125, 37.890018, 54.241402>,  <31.863720, 38.002903, 54.969082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841125, 37.890018, 54.241402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141636, 38.149769, 54.288567>,  <32.321941, 38.305618, 54.316864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141636, 38.149769, 54.288567>,  <31.841125, 37.890018, 54.241402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141636, 38.149769, 54.288567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592176, -0.584355, -0.554849,
		-0.291402, 0.486667, -0.823553,
		0.751274, 0.649372, 0.117910,
		32.367020, 38.344582, 54.323940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076271, 38.019070, 53.605358>,  <31.841125, 37.890018, 54.241402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076271, 38.019070, 53.605358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374645, 38.183792, 53.814739>,  <32.553669, 38.282627, 53.940369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374645, 38.183792, 53.814739>,  <32.076271, 38.019070, 53.605358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374645, 38.183792, 53.814739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665280, -0.497737, -0.556471,
		0.031382, 0.763331, -0.645245,
		0.745934, 0.411806, 0.523449,
		32.598427, 38.307335, 53.971775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497513, 38.355831, 53.123760>,  <32.076271, 38.019070, 53.605358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497513, 38.355831, 53.123760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727852, 38.276844, 53.441101>,  <32.866055, 38.229450, 53.631504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727852, 38.276844, 53.441101>,  <32.497513, 38.355831, 53.123760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727852, 38.276844, 53.441101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681738, -0.419636, -0.599282,
		0.451258, 0.885953, -0.107025,
		0.575847, -0.197468, 0.793351,
		32.900604, 38.217606, 53.679108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130833, 38.648659, 52.928951>,  <32.497513, 38.355831, 53.123760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130833, 38.648659, 52.928951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208805, 38.411602, 53.241562>,  <33.255589, 38.269367, 53.429127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208805, 38.411602, 53.241562>,  <33.130833, 38.648659, 52.928951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208805, 38.411602, 53.241562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768535, -0.402774, -0.497119,
		0.609390, 0.697532, 0.376952,
		0.194930, -0.592640, 0.781524,
		33.267284, 38.233810, 53.476021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936630, 38.745010, 53.066689>,  <33.130833, 38.648659, 52.928951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936630, 38.745010, 53.066689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801495, 38.398617, 53.214169>,  <33.720413, 38.190781, 53.302658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801495, 38.398617, 53.214169>,  <33.936630, 38.745010, 53.066689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801495, 38.398617, 53.214169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746927, -0.485028, -0.454804,
		0.572682, 0.121742, 0.810687,
		-0.337837, -0.865983, 0.368699,
		33.700142, 38.138821, 53.324780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548992, 38.406250, 53.293392>,  <33.936630, 38.745010, 53.066689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548992, 38.406250, 53.293392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283943, 38.109165, 53.254810>,  <34.124912, 37.930912, 53.231663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283943, 38.109165, 53.254810>,  <34.548992, 38.406250, 53.293392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283943, 38.109165, 53.254810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715939, -0.590325, -0.372757,
		0.219914, -0.316051, 0.922903,
		-0.662623, -0.742716, -0.096452,
		34.085155, 37.886349, 53.225876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026295, 37.910168, 53.438507>,  <34.548992, 38.406250, 53.293392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026295, 37.910168, 53.438507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693729, 37.735600, 53.300934>,  <34.494190, 37.630859, 53.218391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693729, 37.735600, 53.300934>,  <35.026295, 37.910168, 53.438507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693729, 37.735600, 53.300934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547178, -0.750742, -0.370111,
		-0.096682, -0.495908, 0.862976,
		-0.831414, -0.436419, -0.343933,
		34.444305, 37.604675, 53.197754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973778, 37.115406, 53.638962>,  <35.026295, 37.910168, 53.438507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973778, 37.115406, 53.638962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729626, 37.138000, 53.322926>,  <34.583134, 37.151558, 53.133305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729626, 37.138000, 53.322926>,  <34.973778, 37.115406, 53.638962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729626, 37.138000, 53.322926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302556, -0.905198, -0.298455,
		-0.732046, -0.421219, 0.535429,
		-0.610384, 0.056486, -0.790089,
		34.546509, 37.154945, 53.085899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533630, 36.523304, 53.563416>,  <34.973778, 37.115406, 53.638962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533630, 36.523304, 53.563416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566269, 36.664501, 53.190590>,  <34.585854, 36.749218, 52.966896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566269, 36.664501, 53.190590>,  <34.533630, 36.523304, 53.563416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566269, 36.664501, 53.190590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245937, -0.913392, -0.324391,
		-0.965845, -0.202758, -0.161346,
		0.081599, 0.352993, -0.932061,
		34.590748, 36.770397, 52.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490555, 35.916180, 53.200554>,  <34.533630, 36.523304, 53.563416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490555, 35.916180, 53.200554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590393, 36.159218, 52.898952>,  <34.650295, 36.305042, 52.717991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590393, 36.159218, 52.898952>,  <34.490555, 35.916180, 53.200554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590393, 36.159218, 52.898952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449317, -0.762423, -0.465644,
		-0.857796, -0.222564, -0.463304,
		0.249598, 0.607598, -0.754006,
		34.665272, 36.341496, 52.672752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382866, 35.589561, 52.613251>,  <34.490555, 35.916180, 53.200554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382866, 35.589561, 52.613251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672276, 35.847103, 52.513672>,  <34.845921, 36.001625, 52.453926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672276, 35.847103, 52.513672>,  <34.382866, 35.589561, 52.613251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672276, 35.847103, 52.513672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462551, -0.719883, -0.517509,
		-0.512408, 0.259281, -0.818665,
		0.723523, 0.643849, -0.248943,
		34.889332, 36.040257, 52.438988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992939, 35.289043, 51.948956>,  <34.382866, 35.589561, 52.613251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992939, 35.289043, 51.948956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943310, 34.926834, 52.111256>,  <33.913532, 34.709507, 52.208633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943310, 34.926834, 52.111256>,  <33.992939, 35.289043, 51.948956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943310, 34.926834, 52.111256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563336, 0.400901, 0.722448,
		-0.816859, -0.138934, -0.559856,
		-0.124075, -0.905525, 0.405746,
		33.906086, 34.655178, 52.232979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363434, 35.190475, 52.093616>,  <33.992939, 35.289043, 51.948956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363434, 35.190475, 52.093616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492569, 34.904900, 52.342152>,  <33.570049, 34.733555, 52.491272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492569, 34.904900, 52.342152>,  <33.363434, 35.190475, 52.093616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492569, 34.904900, 52.342152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466696, 0.451042, 0.760760,
		-0.823389, -0.535579, -0.187580,
		0.322841, -0.713944, 0.621335,
		33.589420, 34.690716, 52.528553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816635, 34.838608, 52.380131>,  <33.363434, 35.190475, 52.093616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816635, 34.838608, 52.380131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111984, 34.752110, 52.635643>,  <33.289192, 34.700211, 52.788952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111984, 34.752110, 52.635643>,  <32.816635, 34.838608, 52.380131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111984, 34.752110, 52.635643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570922, 0.303725, 0.762758,
		-0.358960, -0.927894, 0.100801,
		0.738374, -0.216250, 0.638780,
		33.333496, 34.687233, 52.827278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497524, 34.406467, 52.816048>,  <32.816635, 34.838608, 52.380131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497524, 34.406467, 52.816048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814453, 34.535316, 53.023304>,  <33.004612, 34.612625, 53.147655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814453, 34.535316, 53.023304>,  <32.497524, 34.406467, 52.816048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814453, 34.535316, 53.023304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595858, 0.226096, 0.770606,
		0.131077, -0.919305, 0.371077,
		0.792321, 0.322118, 0.518139,
		33.052151, 34.631950, 53.178745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415691, 34.173599, 53.398479>,  <32.497524, 34.406467, 52.816048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415691, 34.173599, 53.398479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689476, 34.446819, 53.500423>,  <32.853745, 34.610752, 53.561592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689476, 34.446819, 53.500423>,  <32.415691, 34.173599, 53.398479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689476, 34.446819, 53.500423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565874, 0.277326, 0.776452,
		0.459678, -0.675668, 0.576340,
		0.684458, 0.683054, 0.254862,
		32.894814, 34.651733, 53.576881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446289, 34.155037, 54.203350>,  <32.415691, 34.173599, 53.398479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446289, 34.155037, 54.203350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581234, 34.503197, 54.059917>,  <32.662201, 34.712093, 53.973858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581234, 34.503197, 54.059917>,  <32.446289, 34.155037, 54.203350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581234, 34.503197, 54.059917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617984, 0.492118, 0.613120,
		0.710127, 0.014755, 0.703918,
		0.337365, 0.870403, -0.358585,
		32.682442, 34.764317, 53.952343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418251, 34.603935, 54.803188>,  <32.446289, 34.155037, 54.203350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418251, 34.603935, 54.803188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458740, 34.861176, 54.499561>,  <32.483036, 35.015518, 54.317387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458740, 34.861176, 54.499561>,  <32.418251, 34.603935, 54.803188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458740, 34.861176, 54.499561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666508, 0.610283, 0.428161,
		0.738594, 0.462582, 0.490405,
		0.101226, 0.643096, -0.759066,
		32.489109, 35.054104, 54.271843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656555, 35.228394, 55.086178>,  <32.418251, 34.603935, 54.803188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656555, 35.228394, 55.086178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452507, 35.295395, 54.748722>,  <32.330078, 35.335598, 54.546249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452507, 35.295395, 54.748722>,  <32.656555, 35.228394, 55.086178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452507, 35.295395, 54.748722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657057, 0.557055, 0.507903,
		0.555029, 0.813407, -0.174101,
		-0.510116, 0.167507, -0.843637,
		32.299473, 35.345646, 54.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495136, 35.792061, 55.195435>,  <32.656555, 35.228394, 55.086178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495136, 35.792061, 55.195435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241062, 35.729584, 54.892872>,  <32.088619, 35.692097, 54.711334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241062, 35.729584, 54.892872>,  <32.495136, 35.792061, 55.195435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241062, 35.729584, 54.892872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691496, 0.551263, 0.466843,
		0.344059, 0.819580, -0.458161,
		-0.635182, -0.156195, -0.756404,
		32.050507, 35.682724, 54.665951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275307, 36.566040, 54.989677>,  <32.495136, 35.792061, 55.195435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275307, 36.566040, 54.989677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011471, 36.286747, 54.878380>,  <31.853170, 36.119171, 54.811604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011471, 36.286747, 54.878380>,  <32.275307, 36.566040, 54.989677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011471, 36.286747, 54.878380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751625, 0.613910, 0.241195,
		0.002406, 0.368222, -0.929734,
		-0.659587, -0.698231, -0.278242,
		31.813595, 36.077278, 54.794907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762133, 36.819744, 54.448994>,  <32.275307, 36.566040, 54.989677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762133, 36.819744, 54.448994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621042, 36.504333, 54.650517>,  <31.536388, 36.315086, 54.771431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621042, 36.504333, 54.650517>,  <31.762133, 36.819744, 54.448994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621042, 36.504333, 54.650517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818634, 0.520829, 0.242025,
		-0.453237, -0.327062, -0.829220,
		-0.352725, -0.788523, 0.503803,
		31.515224, 36.267776, 54.801659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017807, 36.677437, 54.246784>,  <31.762133, 36.819744, 54.448994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017807, 36.677437, 54.246784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.066446, 36.528137, 54.614674>,  <31.095631, 36.438557, 54.835407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.066446, 36.528137, 54.614674>,  <31.017807, 36.677437, 54.246784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066446, 36.528137, 54.614674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811051, 0.496799, 0.308847,
		-0.572197, -0.783501, -0.242316,
		0.121599, -0.373252, 0.919727,
		31.102926, 36.416161, 54.890591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342697, 36.466656, 54.454857>,  <31.017807, 36.677437, 54.246784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342697, 36.466656, 54.454857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550037, 36.512203, 54.793877>,  <30.674440, 36.539532, 54.997288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550037, 36.512203, 54.793877>,  <30.342697, 36.466656, 54.454857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550037, 36.512203, 54.793877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760468, 0.514707, 0.395935,
		-0.391155, -0.849770, 0.353395,
		0.518349, 0.113873, 0.847554,
		30.705542, 36.546364, 55.048141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915516, 36.473698, 54.951778>,  <30.342697, 36.466656, 54.454857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915516, 36.473698, 54.951778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218695, 36.666668, 55.127403>,  <30.400602, 36.782452, 55.232780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218695, 36.666668, 55.127403>,  <29.915516, 36.473698, 54.951778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218695, 36.666668, 55.127403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647884, 0.635064, 0.420643,
		-0.075903, -0.603288, 0.793903,
		0.757948, 0.482429, 0.439064,
		30.446079, 36.811398, 55.259121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416428, 36.066139, 55.309296>,  <29.915516, 36.473698, 54.951778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416428, 36.066139, 55.309296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.091169, 36.038849, 55.078075>,  <28.896015, 36.022476, 54.939342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.091169, 36.038849, 55.078075>,  <29.416428, 36.066139, 55.309296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091169, 36.038849, 55.078075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506798, -0.571418, -0.645475,
		-0.286271, -0.817818, 0.499221,
		-0.813145, -0.068224, -0.578048,
		28.847225, 36.018383, 54.904659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334328, 35.344471, 55.221226>,  <29.416428, 36.066139, 55.309296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334328, 35.344471, 55.221226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.124569, 35.496822, 54.916611>,  <28.998714, 35.588234, 54.733841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.124569, 35.496822, 54.916611>,  <29.334328, 35.344471, 55.221226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124569, 35.496822, 54.916611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266630, -0.775939, -0.571688,
		-0.808652, -0.502839, 0.305344,
		-0.524395, 0.380883, -0.761537,
		28.967249, 35.611088, 54.688148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887352, 34.851494, 54.971447>,  <29.334328, 35.344471, 55.221226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887352, 34.851494, 54.971447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.931423, 35.083721, 54.648758>,  <28.957867, 35.223057, 54.455143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.931423, 35.083721, 54.648758>,  <28.887352, 34.851494, 54.971447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931423, 35.083721, 54.648758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360520, -0.779732, -0.511902,
		-0.926222, -0.234440, -0.295215,
		0.110178, 0.580565, -0.806725,
		28.964478, 35.257889, 54.406742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537560, 34.546326, 54.483627>,  <28.887352, 34.851494, 54.971447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537560, 34.546326, 54.483627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.821268, 34.760502, 54.300220>,  <28.991493, 34.889008, 54.190178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.821268, 34.760502, 54.300220>,  <28.537560, 34.546326, 54.483627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821268, 34.760502, 54.300220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267483, -0.806213, -0.527706,
		-0.652215, 0.251643, -0.715047,
		0.709274, 0.535440, -0.458514,
		29.034050, 34.921135, 54.162666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564375, 34.191486, 53.812508>,  <28.537560, 34.546326, 54.483627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564375, 34.191486, 53.812508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.876743, 34.439167, 53.845364>,  <29.064165, 34.587776, 53.865078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.876743, 34.439167, 53.845364>,  <28.564375, 34.191486, 53.812508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876743, 34.439167, 53.845364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525276, -0.579846, -0.622787,
		-0.338005, 0.529493, -0.778068,
		0.780921, 0.619205, 0.082139,
		29.111019, 34.624928, 53.870007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782845, 34.334240, 53.075039>,  <28.564375, 34.191486, 53.812508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782845, 34.334240, 53.075039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.093788, 34.428436, 53.308365>,  <29.280354, 34.484955, 53.448360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.093788, 34.428436, 53.308365>,  <28.782845, 34.334240, 53.075039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093788, 34.428436, 53.308365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595216, -0.575399, -0.560922,
		0.203549, 0.783237, -0.587458,
		0.777358, 0.235490, 0.583317,
		29.326996, 34.499084, 53.483360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361910, 34.526218, 52.606567>,  <28.782845, 34.334240, 53.075039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361910, 34.526218, 52.606567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.511942, 34.424801, 52.963226>,  <29.601961, 34.363953, 53.177219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.511942, 34.424801, 52.963226>,  <29.361910, 34.526218, 52.606567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511942, 34.424801, 52.963226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721292, -0.524366, -0.452524,
		0.582282, 0.812869, -0.013801,
		0.375080, -0.253542, 0.891645,
		29.624466, 34.348740, 53.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045019, 34.564972, 52.467293>,  <29.361910, 34.526218, 52.606567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045019, 34.564972, 52.467293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.989616, 34.319344, 52.778091>,  <29.956375, 34.171967, 52.964573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.989616, 34.319344, 52.778091>,  <30.045019, 34.564972, 52.467293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989616, 34.319344, 52.778091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686311, -0.625141, -0.371719,
		0.713998, 0.481778, 0.508033,
		-0.138506, -0.614075, 0.776999,
		29.948065, 34.135120, 53.011192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674240, 34.377361, 52.827293>,  <30.045019, 34.564972, 52.467293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674240, 34.377361, 52.827293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.437044, 34.075050, 52.938404>,  <30.294725, 33.893661, 53.005070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.437044, 34.075050, 52.938404>,  <30.674240, 34.377361, 52.827293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437044, 34.075050, 52.938404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599986, -0.644800, -0.473551,
		0.537008, -0.114151, 0.835818,
		-0.592992, -0.755780, 0.277774,
		30.259146, 33.848316, 53.021736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112711, 33.918385, 52.859615>,  <30.674240, 34.377361, 52.827293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112711, 33.918385, 52.859615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783115, 33.693565, 52.888290>,  <30.585358, 33.558674, 52.905495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783115, 33.693565, 52.888290>,  <31.112711, 33.918385, 52.859615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783115, 33.693565, 52.888290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380722, -0.642925, -0.664604,
		0.419634, -0.520332, 0.743749,
		-0.823989, -0.562052, 0.071692,
		30.535919, 33.524948, 52.909798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410547, 33.183418, 53.001583>,  <31.112711, 33.918385, 52.859615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410547, 33.183418, 53.001583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034515, 33.187225, 52.865257>,  <30.808895, 33.189510, 52.783463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034515, 33.187225, 52.865257>,  <31.410547, 33.183418, 53.001583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034515, 33.187225, 52.865257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267197, -0.600349, -0.753781,
		-0.211785, -0.799681, 0.561834,
		-0.940082, 0.009519, -0.340818,
		30.752491, 33.190083, 52.763012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349846, 32.514683, 52.835369>,  <31.410547, 33.183418, 53.001583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349846, 32.514683, 52.835369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065996, 32.718582, 52.640804>,  <30.895687, 32.840923, 52.524067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065996, 32.718582, 52.640804>,  <31.349846, 32.514683, 52.835369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065996, 32.718582, 52.640804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199117, -0.517123, -0.832428,
		-0.675861, -0.687562, 0.265462,
		-0.709622, 0.509747, -0.486409,
		30.853109, 32.871506, 52.494881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022556, 32.031830, 52.482956>,  <31.349846, 32.514683, 52.835369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022556, 32.031830, 52.482956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932692, 32.366882, 52.283794>,  <30.878773, 32.567913, 52.164299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932692, 32.366882, 52.283794>,  <31.022556, 32.031830, 52.482956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932692, 32.366882, 52.283794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225411, -0.452430, -0.862843,
		-0.948007, -0.306078, -0.087168,
		-0.224660, 0.837629, -0.497901,
		30.865294, 32.618172, 52.134426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541607, 31.909452, 51.860676>,  <31.022556, 32.031830, 52.482956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541607, 31.909452, 51.860676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711197, 32.253387, 51.746887>,  <30.812950, 32.459747, 51.678616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711197, 32.253387, 51.746887>,  <30.541607, 31.909452, 51.860676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711197, 32.253387, 51.746887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141065, -0.372959, -0.917062,
		-0.894621, 0.348683, -0.279418,
		0.423975, 0.859838, -0.284470,
		30.838388, 32.511337, 51.661545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.353991, 37.712040, 52.532406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.617996, 38.009659, 52.490883>,  <26.776400, 38.188229, 52.465969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.617996, 38.009659, 52.490883>,  <26.353991, 37.712040, 52.532406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617996, 38.009659, 52.490883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411727, 0.473834, 0.778436,
		0.628380, -0.471038, 0.619081,
		0.660015, 0.744046, -0.103809,
		26.816002, 38.232872, 52.459740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683739, 37.838097, 53.141228>,  <26.353991, 37.712040, 52.532406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683739, 37.838097, 53.141228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724098, 38.181110, 52.939453>,  <26.748314, 38.386917, 52.818390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724098, 38.181110, 52.939453>,  <26.683739, 37.838097, 53.141228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724098, 38.181110, 52.939453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332517, 0.506930, 0.795270,
		0.937685, 0.087492, 0.336293,
		0.100897, 0.857536, -0.504433,
		26.754368, 38.438370, 52.788124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026670, 38.314053, 53.597488>,  <26.683739, 37.838097, 53.141228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026670, 38.314053, 53.597488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.810568, 38.518635, 53.330193>,  <26.680906, 38.641384, 53.169815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.810568, 38.518635, 53.330193>,  <27.026670, 38.314053, 53.597488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810568, 38.518635, 53.330193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389215, 0.552180, 0.737299,
		0.746080, 0.658417, -0.099253,
		-0.540256, 0.511453, -0.668236,
		26.648491, 38.672070, 53.129723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101776, 39.025158, 53.768559>,  <27.026670, 38.314053, 53.597488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101776, 39.025158, 53.768559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.769167, 39.012894, 53.546700>,  <26.569601, 39.005535, 53.413586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.769167, 39.012894, 53.546700>,  <27.101776, 39.025158, 53.768559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769167, 39.012894, 53.546700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476575, 0.552349, 0.683949,
		0.285390, 0.833049, -0.473901,
		-0.831522, -0.030657, -0.554645,
		26.519711, 39.003696, 53.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965778, 39.742504, 53.632755>,  <27.101776, 39.025158, 53.768559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965778, 39.742504, 53.632755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.628008, 39.534798, 53.580132>,  <26.425346, 39.410172, 53.548557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.628008, 39.534798, 53.580132>,  <26.965778, 39.742504, 53.632755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628008, 39.534798, 53.580132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479445, 0.623108, 0.617955,
		-0.238912, 0.584890, -0.775129,
		-0.844425, -0.519269, -0.131555,
		26.374680, 39.379017, 53.540665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496662, 40.271797, 53.757519>,  <26.965778, 39.742504, 53.632755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496662, 40.271797, 53.757519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.282831, 39.934212, 53.775173>,  <26.154533, 39.731659, 53.785767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.282831, 39.934212, 53.775173>,  <26.496662, 40.271797, 53.757519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282831, 39.934212, 53.775173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649731, 0.443817, 0.617151,
		-0.540442, 0.301241, -0.785606,
		-0.534576, -0.843967, 0.044132,
		26.122458, 39.681023, 53.788414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826851, 40.486977, 53.625725>,  <26.496662, 40.271797, 53.757519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826851, 40.486977, 53.625725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.798826, 40.137486, 53.818260>,  <25.782011, 39.927792, 53.933781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.798826, 40.137486, 53.818260>,  <25.826851, 40.486977, 53.625725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798826, 40.137486, 53.818260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765572, 0.356443, 0.535582,
		-0.639524, -0.330975, -0.693877,
		-0.070063, -0.873730, 0.481339,
		25.777807, 39.875366, 53.962662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072870, 40.449013, 53.708515>,  <25.826851, 40.486977, 53.625725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072870, 40.449013, 53.708515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.234394, 40.185936, 53.962879>,  <25.331308, 40.028091, 54.115498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.234394, 40.185936, 53.962879>,  <25.072870, 40.449013, 53.708515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234394, 40.185936, 53.962879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597501, 0.336767, 0.727723,
		-0.692770, -0.673817, -0.256982,
		0.403809, -0.657692, 0.635909,
		25.355537, 39.988628, 54.153652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567251, 40.213070, 54.017910>,  <25.072870, 40.449013, 53.708515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567251, 40.213070, 54.017910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.865709, 40.124138, 54.268936>,  <25.044785, 40.070778, 54.419552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.865709, 40.124138, 54.268936>,  <24.567251, 40.213070, 54.017910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865709, 40.124138, 54.268936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515500, 0.403596, 0.755890,
		-0.421339, -0.887513, 0.186530,
		0.746146, -0.222330, 0.627564,
		25.089554, 40.057438, 54.457207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256500, 39.864677, 54.506298>,  <24.567251, 40.213070, 54.017910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256500, 39.864677, 54.506298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.592268, 40.055443, 54.610554>,  <24.793728, 40.169903, 54.673107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.592268, 40.055443, 54.610554>,  <24.256500, 39.864677, 54.506298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.592268, 40.055443, 54.610554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476278, 0.414498, 0.775468,
		0.261795, -0.775078, 0.575080,
		0.839418, 0.476911, 0.260640,
		24.844093, 40.198517, 54.688744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271358, 39.821632, 55.245201>,  <24.256500, 39.864677, 54.506298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271358, 39.821632, 55.245201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.512011, 40.126442, 55.149399>,  <24.656401, 40.309326, 55.091919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.512011, 40.126442, 55.149399>,  <24.271358, 39.821632, 55.245201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.512011, 40.126442, 55.149399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359555, 0.526098, 0.770676,
		0.713276, -0.377546, 0.590506,
		0.601629, 0.762024, -0.239504,
		24.692499, 40.355049, 55.077549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592035, 40.010048, 55.833420>,  <24.271358, 39.821632, 55.245201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592035, 40.010048, 55.833420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.651527, 40.326302, 55.595840>,  <24.687223, 40.516052, 55.453293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.651527, 40.326302, 55.595840>,  <24.592035, 40.010048, 55.833420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651527, 40.326302, 55.595840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093654, 0.609193, 0.787472,
		0.984433, -0.061496, 0.164652,
		0.148731, 0.790634, -0.593951,
		24.696146, 40.563492, 55.417656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876526, 40.426647, 56.290245>,  <24.592035, 40.010048, 55.833420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876526, 40.426647, 56.290245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.737885, 40.661320, 55.997486>,  <24.654699, 40.802124, 55.821831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.737885, 40.661320, 55.997486>,  <24.876526, 40.426647, 56.290245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737885, 40.661320, 55.997486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151000, 0.735192, 0.660827,
		0.925778, 0.339562, -0.166231,
		-0.346603, 0.586678, -0.731898,
		24.633904, 40.837322, 55.777916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710230, 39.943649, 56.791573>,  <24.876526, 40.426647, 56.290245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710230, 39.943649, 56.791573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.967447, 39.839371, 57.079609>,  <25.121777, 39.776806, 57.252430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.967447, 39.839371, 57.079609>,  <24.710230, 39.943649, 56.791573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967447, 39.839371, 57.079609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283916, -0.792125, -0.540305,
		0.711259, 0.551885, -0.435354,
		0.643041, -0.260693, 0.720095,
		25.160360, 39.761162, 57.295639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274593, 39.708546, 56.468922>,  <24.710230, 39.943649, 56.791573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274593, 39.708546, 56.468922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.301888, 39.534904, 56.828232>,  <25.318264, 39.430721, 57.043819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.301888, 39.534904, 56.828232>,  <25.274593, 39.708546, 56.468922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301888, 39.534904, 56.828232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385137, -0.819119, -0.425104,
		0.920333, 0.374966, 0.111296,
		0.068235, -0.434102, 0.898276,
		25.322357, 39.404675, 57.097713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971531, 39.436573, 56.579247>,  <25.274593, 39.708546, 56.468922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971531, 39.436573, 56.579247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.739202, 39.212070, 56.815090>,  <25.599806, 39.077370, 56.956596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.739202, 39.212070, 56.815090>,  <25.971531, 39.436573, 56.579247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739202, 39.212070, 56.815090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428564, -0.826631, -0.364710,
		0.692083, 0.040853, 0.720660,
		-0.580821, -0.561259, 0.589606,
		25.564957, 39.043694, 56.991970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332649, 38.887138, 56.794590>,  <25.971531, 39.436573, 56.579247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332649, 38.887138, 56.794590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.974037, 38.723789, 56.863247>,  <25.758869, 38.625778, 56.904442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.974037, 38.723789, 56.863247>,  <26.332649, 38.887138, 56.794590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974037, 38.723789, 56.863247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385695, -0.910192, -0.150960,
		0.217876, -0.069139, 0.973524,
		-0.896532, -0.408374, 0.171642,
		25.705078, 38.601276, 56.914742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553278, 38.346275, 57.096413>,  <26.332649, 38.887138, 56.794590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553278, 38.346275, 57.096413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.175306, 38.275379, 56.986362>,  <25.948524, 38.232841, 56.920330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.175306, 38.275379, 56.986362>,  <26.553278, 38.346275, 57.096413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175306, 38.275379, 56.986362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252624, -0.929461, -0.268856,
		-0.208069, -0.323553, 0.923050,
		-0.944928, -0.177244, -0.275129,
		25.891829, 38.222206, 56.903824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473494, 37.726025, 57.410469>,  <26.553278, 38.346275, 57.096413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473494, 37.726025, 57.410469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.213747, 37.773438, 57.109997>,  <26.057899, 37.801884, 56.929714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.213747, 37.773438, 57.109997>,  <26.473494, 37.726025, 57.410469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213747, 37.773438, 57.109997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302612, -0.865931, -0.398232,
		-0.697673, -0.485916, 0.526440,
		-0.649368, 0.118529, -0.751181,
		26.018936, 37.808994, 56.884644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051519, 37.111034, 57.367680>,  <26.473494, 37.726025, 57.410469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051519, 37.111034, 57.367680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.054640, 37.291073, 57.010502>,  <26.056511, 37.399094, 56.796196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.054640, 37.291073, 57.010502>,  <26.051519, 37.111034, 57.367680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054640, 37.291073, 57.010502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466026, -0.791707, -0.394992,
		-0.884736, -0.413056, -0.215931,
		0.007800, 0.450093, -0.892948,
		26.056980, 37.426102, 56.742619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048998, 36.541458, 56.795734>,  <26.051519, 37.111034, 57.367680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048998, 36.541458, 56.795734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.163876, 36.864845, 56.590248>,  <26.232803, 37.058876, 56.466957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.163876, 36.864845, 56.590248>,  <26.048998, 36.541458, 56.795734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163876, 36.864845, 56.590248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697303, -0.544157, -0.466541,
		-0.656724, -0.224227, -0.720024,
		0.287195, 0.808465, -0.513716,
		26.250034, 37.107384, 56.436134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073664, 36.346634, 56.064651>,  <26.048998, 36.541458, 56.795734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073664, 36.346634, 56.064651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.299198, 36.673988, 56.109077>,  <26.434519, 36.870399, 56.135735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.299198, 36.673988, 56.109077>,  <26.073664, 36.346634, 56.064651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299198, 36.673988, 56.109077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613553, -0.325044, -0.719652,
		-0.552850, 0.473911, -0.685394,
		0.563834, 0.818385, 0.111069,
		26.468348, 36.919502, 56.142399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259554, 36.444939, 55.430363>,  <26.073664, 36.346634, 56.064651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259554, 36.444939, 55.430363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.530102, 36.645679, 55.646015>,  <26.692430, 36.766125, 55.775406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.530102, 36.645679, 55.646015>,  <26.259554, 36.444939, 55.430363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530102, 36.645679, 55.646015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717434, -0.283148, -0.636487,
		-0.166769, 0.817294, -0.551561,
		0.676370, 0.501855, 0.539134,
		26.733013, 36.796234, 55.807755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661413, 36.765354, 54.997578>,  <26.259554, 36.444939, 55.430363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661413, 36.765354, 54.997578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.873991, 36.796680, 55.334965>,  <27.001537, 36.815475, 55.537395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.873991, 36.796680, 55.334965>,  <26.661413, 36.765354, 54.997578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873991, 36.796680, 55.334965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826185, -0.267784, -0.495692,
		0.187048, 0.960291, -0.207012,
		0.531443, 0.078312, 0.843467,
		27.033424, 36.820175, 55.588005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286715, 37.127884, 54.800690>,  <26.661413, 36.765354, 54.997578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286715, 37.127884, 54.800690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.410997, 36.981049, 55.151394>,  <27.485567, 36.892948, 55.361816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.410997, 36.981049, 55.151394>,  <27.286715, 37.127884, 54.800690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410997, 36.981049, 55.151394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877440, -0.243889, -0.413059,
		0.365461, 0.897645, 0.246318,
		0.310706, -0.367086, 0.876761,
		27.504210, 36.870922, 55.414421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830736, 37.470692, 55.000637>,  <27.286715, 37.127884, 54.800690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830736, 37.470692, 55.000637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.862583, 37.122890, 55.195625>,  <27.881691, 36.914211, 55.312618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.862583, 37.122890, 55.195625>,  <27.830736, 37.470692, 55.000637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862583, 37.122890, 55.195625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878607, -0.169785, -0.446344,
		0.470862, 0.463834, 0.750431,
		0.079618, -0.869501, 0.487473,
		27.886469, 36.862041, 55.341866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624825, 37.370369, 55.152912>,  <27.830736, 37.470692, 55.000637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624825, 37.370369, 55.152912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.443228, 37.015606, 55.187065>,  <28.334270, 36.802750, 55.207558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.443228, 37.015606, 55.187065>,  <28.624825, 37.370369, 55.152912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443228, 37.015606, 55.187065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765653, -0.437337, -0.471710,
		0.455704, -0.148778, 0.877610,
		-0.453992, -0.886905, 0.085384,
		28.307030, 36.749535, 55.212681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131392, 36.909149, 55.321209>,  <28.624825, 37.370369, 55.152912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131392, 36.909149, 55.321209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.843899, 36.671440, 55.176838>,  <28.671404, 36.528816, 55.090218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.843899, 36.671440, 55.176838>,  <29.131392, 36.909149, 55.321209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843899, 36.671440, 55.176838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688286, -0.534634, -0.490336,
		0.098432, -0.600838, 0.793288,
		-0.718731, -0.594273, -0.360923,
		28.628279, 36.493156, 55.068562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686615, 36.715050, 55.611645>,  <29.131392, 36.909149, 55.321209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686615, 36.715050, 55.611645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.015882, 36.937824, 55.567429>,  <30.213442, 37.071487, 55.540901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.015882, 36.937824, 55.567429>,  <29.686615, 36.715050, 55.611645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015882, 36.937824, 55.567429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431794, 0.740436, 0.515081,
		0.368713, -0.376268, 0.849984,
		0.823167, 0.556935, -0.110538,
		30.262833, 37.104904, 55.534267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890755, 36.958515, 56.236385>,  <29.686615, 36.715050, 55.611645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890755, 36.958515, 56.236385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.080578, 37.223259, 56.004269>,  <30.194471, 37.382103, 55.864998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.080578, 37.223259, 56.004269>,  <29.890755, 36.958515, 56.236385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080578, 37.223259, 56.004269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563019, 0.734998, 0.377871,
		0.676612, 0.147395, 0.721437,
		0.474559, 0.661855, -0.580295,
		30.222946, 37.421814, 55.830181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849886, 37.491955, 56.650234>,  <29.890755, 36.958515, 56.236385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849886, 37.491955, 56.650234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.930096, 37.645950, 56.289886>,  <29.978222, 37.738346, 56.073677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.930096, 37.645950, 56.289886>,  <29.849886, 37.491955, 56.650234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930096, 37.645950, 56.289886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468528, 0.845262, 0.256933,
		0.860391, 0.370563, 0.349873,
		0.200525, 0.384988, -0.900874,
		29.990253, 37.761448, 56.019623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355629, 38.091118, 56.705257>,  <29.849886, 37.491955, 56.650234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355629, 38.091118, 56.705257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123072, 38.139153, 56.383373>,  <29.983538, 38.167973, 56.190243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123072, 38.139153, 56.383373>,  <30.355629, 38.091118, 56.705257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123072, 38.139153, 56.383373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403213, 0.816525, 0.413166,
		0.706685, 0.564682, -0.426299,
		-0.581391, 0.120089, -0.804713,
		29.948654, 38.175179, 56.141960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201174, 38.841404, 56.767879>,  <30.355629, 38.091118, 56.705257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201174, 38.841404, 56.767879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946917, 38.695679, 56.495636>,  <29.794363, 38.608242, 56.332291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946917, 38.695679, 56.495636>,  <30.201174, 38.841404, 56.767879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946917, 38.695679, 56.495636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655976, 0.719714, 0.227392,
		0.407005, 0.591006, -0.696462,
		-0.635643, -0.364313, -0.680613,
		29.756224, 38.586384, 56.291451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985216, 39.351902, 56.408691>,  <30.201174, 38.841404, 56.767879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985216, 39.351902, 56.408691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683392, 39.095837, 56.350960>,  <29.502296, 38.942200, 56.316322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683392, 39.095837, 56.350960>,  <29.985216, 39.351902, 56.408691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683392, 39.095837, 56.350960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646346, 0.686971, 0.332124,
		-0.113463, 0.343895, -0.932128,
		-0.754561, -0.640161, -0.144329,
		29.457024, 38.903790, 56.307663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509718, 39.797062, 56.138683>,  <29.985216, 39.351902, 56.408691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509718, 39.797062, 56.138683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.311401, 39.469364, 56.253944>,  <29.192411, 39.272747, 56.323101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.311401, 39.469364, 56.253944>,  <29.509718, 39.797062, 56.138683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311401, 39.469364, 56.253944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677193, 0.572436, 0.462306,
		-0.543691, 0.034070, -0.838594,
		-0.495792, -0.819241, 0.288157,
		29.162664, 39.223591, 56.340393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182308, 40.013893, 55.436974>,  <29.509718, 39.797062, 56.138683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182308, 40.013893, 55.436974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.378256, 40.362095, 55.418003>,  <29.495825, 40.571014, 55.406620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.378256, 40.362095, 55.418003>,  <29.182308, 40.013893, 55.436974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378256, 40.362095, 55.418003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783628, -0.463513, -0.413621,
		-0.382040, 0.165459, -0.909213,
		0.489870, 0.870505, -0.047422,
		29.525217, 40.623245, 55.403778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379591, 40.171196, 54.679756>,  <29.182308, 40.013893, 55.436974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379591, 40.171196, 54.679756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.619783, 40.340729, 54.950985>,  <29.763899, 40.442448, 55.113724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.619783, 40.340729, 54.950985>,  <29.379591, 40.171196, 54.679756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619783, 40.340729, 54.950985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778692, -0.502750, -0.375342,
		0.181821, 0.753399, -0.631926,
		0.600483, 0.423830, 0.678076,
		29.799929, 40.467876, 55.154408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953133, 40.630341, 54.340271>,  <29.379591, 40.171196, 54.679756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953133, 40.630341, 54.340271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.082144, 40.490234, 54.692020>,  <30.159550, 40.406170, 54.903069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.082144, 40.490234, 54.692020>,  <29.953133, 40.630341, 54.340271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082144, 40.490234, 54.692020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814222, -0.371112, -0.446451,
		0.482720, 0.859996, 0.165497,
		0.322528, -0.350262, 0.879370,
		30.178902, 40.385155, 54.955833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561476, 40.798363, 54.312622>,  <29.953133, 40.630341, 54.340271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561476, 40.798363, 54.312622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554516, 40.560375, 54.634045>,  <30.550339, 40.417583, 54.826900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554516, 40.560375, 54.634045>,  <30.561476, 40.798363, 54.312622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554516, 40.560375, 54.634045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958270, -0.239277, -0.156413,
		0.285334, 0.767306, 0.574305,
		-0.017401, -0.594969, 0.803560,
		30.549295, 40.381886, 54.875114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256046, 40.776096, 54.615215>,  <30.561476, 40.798363, 54.312622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256046, 40.776096, 54.615215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.086832, 40.461163, 54.794609>,  <30.985304, 40.272202, 54.902245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.086832, 40.461163, 54.794609>,  <31.256046, 40.776096, 54.615215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086832, 40.461163, 54.794609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885406, -0.464393, 0.019895,
		0.192610, 0.405510, 0.893568,
		-0.423034, -0.787338, 0.448487,
		30.959921, 40.224960, 54.929153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814278, 40.527699, 54.907520>,  <31.256046, 40.776096, 54.615215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814278, 40.527699, 54.907520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.532007, 40.244843, 54.925320>,  <31.362646, 40.075130, 54.936001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.532007, 40.244843, 54.925320>,  <31.814278, 40.527699, 54.907520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532007, 40.244843, 54.925320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702374, -0.689889, 0.175284,
		-0.093252, 0.154947, 0.983512,
		-0.705674, -0.707138, 0.044497,
		31.320305, 40.032700, 54.938667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001160, 39.961353, 55.386024>,  <31.814278, 40.527699, 54.907520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001160, 39.961353, 55.386024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753199, 39.773495, 55.134579>,  <31.604422, 39.660782, 54.983711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753199, 39.773495, 55.134579>,  <32.001160, 39.961353, 55.386024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753199, 39.773495, 55.134579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601444, -0.798906, 0.003763,
		-0.503972, -0.375744, 0.777707,
		-0.619901, -0.469644, -0.628615,
		31.567228, 39.632603, 54.945995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<25.680132, 43.293533, 54.397636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471157, 42.953991, 54.365395>,  <25.345772, 42.750263, 54.346050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471157, 42.953991, 54.365395>,  <25.680132, 43.293533, 54.397636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471157, 42.953991, 54.365395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643092, -0.330191, -0.690947,
		0.559902, -0.412811, 0.718399,
		-0.522439, -0.848859, -0.080600,
		25.314425, 42.699333, 54.341213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231440, 42.799698, 54.368530>,  <25.680132, 43.293533, 54.397636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231440, 42.799698, 54.368530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917397, 42.591782, 54.233814>,  <25.728970, 42.467033, 54.152985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917397, 42.591782, 54.233814>,  <26.231440, 42.799698, 54.368530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917397, 42.591782, 54.233814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559008, -0.360567, -0.746660,
		0.266670, -0.774477, 0.573649,
		-0.785110, -0.519786, -0.336786,
		25.681864, 42.435844, 54.132778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462427, 42.118465, 54.105026>,  <26.231440, 42.799698, 54.368530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462427, 42.118465, 54.105026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110971, 42.148254, 53.916367>,  <25.900099, 42.166126, 53.803173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110971, 42.148254, 53.916367>,  <26.462427, 42.118465, 54.105026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110971, 42.148254, 53.916367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455153, -0.167947, -0.874431,
		-0.144330, -0.982979, 0.113669,
		-0.878638, 0.074470, -0.471646,
		25.847380, 42.170597, 53.774872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430326, 41.537109, 53.677475>,  <26.462427, 42.118465, 54.105026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430326, 41.537109, 53.677475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163004, 41.792061, 53.524052>,  <26.002611, 41.945030, 53.431999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163004, 41.792061, 53.524052>,  <26.430326, 41.537109, 53.677475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163004, 41.792061, 53.524052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308598, -0.231603, -0.922565,
		-0.676857, -0.734920, -0.041913,
		-0.668305, 0.637379, -0.383557,
		25.962513, 41.983276, 53.408985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233953, 41.122726, 53.080360>,  <26.430326, 41.537109, 53.677475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233953, 41.122726, 53.080360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180498, 41.515469, 53.026531>,  <26.148426, 41.751114, 52.994232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180498, 41.515469, 53.026531>,  <26.233953, 41.122726, 53.080360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180498, 41.515469, 53.026531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043812, -0.129805, -0.990571,
		-0.990061, -0.138273, -0.025670,
		-0.133637, 0.981851, -0.134573,
		26.140408, 41.810024, 52.986160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754251, 41.225895, 52.532669>,  <26.233953, 41.122726, 53.080360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754251, 41.225895, 52.532669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927666, 41.586319, 52.537327>,  <26.031715, 41.802574, 52.540123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927666, 41.586319, 52.537327>,  <25.754251, 41.225895, 52.532669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927666, 41.586319, 52.537327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120320, -0.045074, -0.991711,
		-0.893067, 0.431344, -0.127957,
		0.433537, 0.901061, 0.011645,
		26.057726, 41.856636, 52.540821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457331, 41.528793, 51.946415>,  <25.754251, 41.225895, 52.532669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457331, 41.528793, 51.946415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799316, 41.721809, 52.022511>,  <26.004507, 41.837620, 52.068169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799316, 41.721809, 52.022511>,  <25.457331, 41.528793, 51.946415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799316, 41.721809, 52.022511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213891, 0.006148, -0.976838,
		-0.472534, 0.875852, -0.097954,
		0.854964, 0.482540, 0.190242,
		26.055805, 41.866573, 52.079582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508984, 41.996349, 51.368595>,  <25.457331, 41.528793, 51.946415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508984, 41.996349, 51.368595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872034, 41.981392, 51.535843>,  <26.089865, 41.972416, 51.636192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872034, 41.981392, 51.535843>,  <25.508984, 41.996349, 51.368595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872034, 41.981392, 51.535843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416007, -0.053180, -0.907805,
		0.056186, 0.997884, -0.032709,
		0.907624, -0.037398, 0.418115,
		26.144321, 41.970173, 51.661278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925781, 42.466431, 51.045319>,  <25.508984, 41.996349, 51.368595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925781, 42.466431, 51.045319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198917, 42.237732, 51.227234>,  <26.362799, 42.100513, 51.336384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198917, 42.237732, 51.227234>,  <25.925781, 42.466431, 51.045319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198917, 42.237732, 51.227234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548832, -0.009422, -0.835880,
		0.482197, 0.820375, 0.307360,
		0.682839, -0.571748, 0.454791,
		26.403769, 42.066208, 51.363670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577644, 42.832291, 50.911900>,  <25.925781, 42.466431, 51.045319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577644, 42.832291, 50.911900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636185, 42.441750, 50.975544>,  <26.671309, 42.207424, 51.013729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636185, 42.441750, 50.975544>,  <26.577644, 42.832291, 50.911900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636185, 42.441750, 50.975544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664676, -0.022067, -0.746806,
		0.732657, 0.215052, 0.645729,
		0.146353, -0.976353, 0.159108,
		26.680090, 42.148842, 51.023277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317261, 42.685043, 50.840652>,  <26.577644, 42.832291, 50.911900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317261, 42.685043, 50.840652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160774, 42.317352, 50.822914>,  <27.066883, 42.096737, 50.812271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160774, 42.317352, 50.822914>,  <27.317261, 42.685043, 50.840652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160774, 42.317352, 50.822914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593859, -0.215340, -0.775216,
		0.703052, -0.329614, 0.630137,
		-0.391216, -0.919230, -0.044349,
		27.043409, 42.041584, 50.809608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895191, 42.284035, 50.769943>,  <27.317261, 42.685043, 50.840652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895191, 42.284035, 50.769943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584497, 42.068909, 50.638828>,  <27.398081, 41.939835, 50.560162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584497, 42.068909, 50.638828>,  <27.895191, 42.284035, 50.769943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584497, 42.068909, 50.638828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498217, -0.206273, -0.842159,
		0.385313, -0.817439, 0.428167,
		-0.776733, -0.537814, -0.327783,
		27.351477, 41.907566, 50.540493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647505, 42.359657, 51.075184>,  <27.895191, 42.284035, 50.769943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647505, 42.359657, 51.075184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994202, 42.432961, 51.260731>,  <29.202219, 42.476944, 51.372059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994202, 42.432961, 51.260731>,  <28.647505, 42.359657, 51.075184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994202, 42.432961, 51.260731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498293, 0.277930, 0.821255,
		0.021581, -0.942958, 0.332211,
		0.866740, 0.183261, 0.463871,
		29.254223, 42.487938, 51.399891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642033, 42.041187, 51.691826>,  <28.647505, 42.359657, 51.075184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642033, 42.041187, 51.691826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900854, 42.340748, 51.749050>,  <29.056147, 42.520485, 51.783386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900854, 42.340748, 51.749050>,  <28.642033, 42.041187, 51.691826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900854, 42.340748, 51.749050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499300, 0.274406, 0.821828,
		0.576214, -0.603195, 0.551483,
		0.647052, 0.748904, 0.143059,
		29.094971, 42.565418, 51.791969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808384, 42.045609, 52.370052>,  <28.642033, 42.041187, 51.691826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808384, 42.045609, 52.370052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920380, 42.407143, 52.240627>,  <28.987577, 42.624062, 52.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920380, 42.407143, 52.240627>,  <28.808384, 42.045609, 52.370052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920380, 42.407143, 52.240627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429613, 0.419378, 0.799722,
		0.858510, -0.084907, 0.505719,
		0.279989, 0.903832, -0.323563,
		29.004377, 42.678291, 52.143559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168905, 42.442463, 53.000755>,  <28.808384, 42.045609, 52.370052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168905, 42.442463, 53.000755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030430, 42.701565, 52.729294>,  <28.947344, 42.857025, 52.566418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030430, 42.701565, 52.729294>,  <29.168905, 42.442463, 53.000755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030430, 42.701565, 52.729294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525523, 0.465346, 0.712235,
		0.777161, 0.603215, 0.179312,
		-0.346189, 0.647754, -0.678652,
		28.926573, 42.895889, 52.525700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352837, 43.108128, 53.229637>,  <29.168905, 42.442463, 53.000755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352837, 43.108128, 53.229637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047188, 43.157177, 52.976315>,  <28.863798, 43.186607, 52.824322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047188, 43.157177, 52.976315>,  <29.352837, 43.108128, 53.229637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047188, 43.157177, 52.976315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466137, 0.573690, 0.673495,
		0.445908, 0.809842, -0.381211,
		-0.764122, 0.122620, -0.633310,
		28.817951, 43.193962, 52.786320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201244, 43.777843, 53.353962>,  <29.352837, 43.108128, 53.229637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201244, 43.777843, 53.353962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874941, 43.662716, 53.153286>,  <28.679159, 43.593639, 53.032879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874941, 43.662716, 53.153286>,  <29.201244, 43.777843, 53.353962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874941, 43.662716, 53.153286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573948, 0.510126, 0.640590,
		0.071552, 0.810513, -0.581334,
		-0.815759, -0.287820, -0.501693,
		28.630213, 43.576370, 53.002777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865438, 44.490124, 53.082588>,  <29.201244, 43.777843, 53.353962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865438, 44.490124, 53.082588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568398, 44.225563, 53.124718>,  <28.390173, 44.066826, 53.149998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568398, 44.225563, 53.124718>,  <28.865438, 44.490124, 53.082588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568398, 44.225563, 53.124718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478925, 0.634360, 0.606811,
		-0.468158, 0.400176, -0.787837,
		-0.742603, -0.661398, 0.105326,
		28.345617, 44.027145, 53.156315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169676, 44.907490, 53.023026>,  <28.865438, 44.490124, 53.082588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169676, 44.907490, 53.023026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111443, 44.568607, 53.227394>,  <28.076502, 44.365276, 53.350018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111443, 44.568607, 53.227394>,  <28.169676, 44.907490, 53.023026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111443, 44.568607, 53.227394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641293, 0.474055, 0.603337,
		-0.753358, -0.239816, -0.612324,
		-0.145586, -0.847208, 0.510925,
		28.067766, 44.314445, 53.380672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525999, 44.860821, 53.074802>,  <28.169676, 44.907490, 53.023026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525999, 44.860821, 53.074802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653336, 44.621387, 53.368839>,  <27.729738, 44.477730, 53.545261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653336, 44.621387, 53.368839>,  <27.525999, 44.860821, 53.074802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653336, 44.621387, 53.368839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682127, 0.393843, 0.616109,
		-0.658302, -0.697558, -0.282932,
		0.318341, -0.598581, 0.735091,
		27.748838, 44.441814, 53.589367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932049, 44.627129, 53.389698>,  <27.525999, 44.860821, 53.074802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932049, 44.627129, 53.389698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198465, 44.518738, 53.667679>,  <27.358315, 44.453705, 53.834469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198465, 44.518738, 53.667679>,  <26.932049, 44.627129, 53.389698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198465, 44.518738, 53.667679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598678, 0.361557, 0.714746,
		-0.444946, -0.892103, 0.078584,
		0.666040, -0.270977, 0.694955,
		27.398277, 44.437447, 53.876167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643402, 44.172634, 53.788368>,  <26.932049, 44.627129, 53.389698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643402, 44.172634, 53.788368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922432, 44.329552, 54.028198>,  <27.089849, 44.423702, 54.172096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922432, 44.329552, 54.028198>,  <26.643402, 44.172634, 53.788368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922432, 44.329552, 54.028198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705869, 0.232567, 0.669075,
		0.123031, -0.889955, 0.439140,
		0.697576, 0.392292, 0.599579,
		27.131704, 44.447239, 54.208073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479681, 43.859814, 54.448879>,  <26.643402, 44.172634, 53.788368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479681, 43.859814, 54.448879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709608, 44.168571, 54.557510>,  <26.847565, 44.353828, 54.622688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709608, 44.168571, 54.557510>,  <26.479681, 43.859814, 54.448879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709608, 44.168571, 54.557510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517639, 0.085974, 0.851268,
		0.633744, -0.629905, 0.448985,
		0.574820, 0.771899, 0.271578,
		26.882053, 44.400143, 54.638985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685120, 43.711689, 55.181026>,  <26.479681, 43.859814, 54.448879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685120, 43.711689, 55.181026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722397, 44.105007, 55.118500>,  <26.744762, 44.341000, 55.080982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722397, 44.105007, 55.118500>,  <26.685120, 43.711689, 55.181026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722397, 44.105007, 55.118500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326335, 0.178498, 0.928248,
		0.940649, -0.035494, 0.337519,
		0.093193, 0.983300, -0.156321,
		26.750355, 44.399998, 55.071602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206598, 43.116699, 55.228069>,  <26.685120, 43.711689, 55.181026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206598, 43.116699, 55.228069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318056, 43.190563, 55.605061>,  <27.384932, 43.234882, 55.831253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318056, 43.190563, 55.605061>,  <27.206598, 43.116699, 55.228069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318056, 43.190563, 55.605061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804710, -0.580537, -0.124171,
		0.524212, 0.793018, -0.310361,
		0.278646, 0.184658, 0.942474,
		27.401649, 43.245960, 55.887802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932564, 43.360275, 55.307152>,  <27.206598, 43.116699, 55.228069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932564, 43.360275, 55.307152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817217, 43.148994, 55.626614>,  <27.748009, 43.022228, 55.818291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817217, 43.148994, 55.626614>,  <27.932564, 43.360275, 55.307152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817217, 43.148994, 55.626614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771071, -0.622625, -0.133374,
		0.567710, 0.577359, 0.586823,
		-0.288366, -0.528200, 0.798655,
		27.730707, 42.990536, 55.866211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527325, 43.307457, 55.739983>,  <27.932564, 43.360275, 55.307152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527325, 43.307457, 55.739983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300392, 42.992855, 55.837593>,  <28.164232, 42.804092, 55.896160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300392, 42.992855, 55.837593>,  <28.527325, 43.307457, 55.739983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300392, 42.992855, 55.837593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790894, -0.602948, -0.104599,
		0.229400, 0.133653, 0.964112,
		-0.567330, -0.786505, 0.244022,
		28.130194, 42.756905, 55.910801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010283, 42.976376, 56.042461>,  <28.527325, 43.307457, 55.739983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010283, 42.976376, 56.042461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717314, 42.708645, 55.992580>,  <28.541533, 42.548004, 55.962650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717314, 42.708645, 55.992580>,  <29.010283, 42.976376, 56.042461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717314, 42.708645, 55.992580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678706, -0.703245, -0.211671,
		0.053979, -0.239672, 0.969352,
		-0.732424, -0.669331, -0.124706,
		28.497587, 42.507847, 55.955170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258593, 42.405266, 56.332546>,  <29.010283, 42.976376, 56.042461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258593, 42.405266, 56.332546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973169, 42.256996, 56.094746>,  <28.801916, 42.168034, 55.952065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973169, 42.256996, 56.094746>,  <29.258593, 42.405266, 56.332546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973169, 42.256996, 56.094746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568442, -0.802336, -0.182016,
		-0.409524, -0.467821, 0.783220,
		-0.713557, -0.370675, -0.594505,
		28.759102, 42.145794, 55.916393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065937, 41.791164, 56.673565>,  <29.258593, 42.405266, 56.332546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065937, 41.791164, 56.673565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961426, 41.776428, 56.287743>,  <28.898720, 41.767586, 56.056248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961426, 41.776428, 56.287743>,  <29.065937, 41.791164, 56.673565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961426, 41.776428, 56.287743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536431, -0.836295, -0.113367,
		-0.802481, -0.547041, 0.238268,
		-0.261279, -0.036840, -0.964560,
		28.883041, 41.765377, 55.998375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908335, 41.078068, 56.569134>,  <29.065937, 41.791164, 56.673565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908335, 41.078068, 56.569134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994673, 41.223351, 56.206589>,  <29.046474, 41.310520, 55.989063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994673, 41.223351, 56.206589>,  <28.908335, 41.078068, 56.569134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994673, 41.223351, 56.206589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593451, -0.785923, -0.173616,
		-0.775389, -0.500407, -0.385181,
		0.215843, 0.363205, -0.906363,
		29.059425, 41.332314, 55.934681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872564, 40.491386, 56.138931>,  <28.908335, 41.078068, 56.569134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872564, 40.491386, 56.138931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075127, 40.748192, 55.908672>,  <29.196665, 40.902275, 55.770515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075127, 40.748192, 55.908672>,  <28.872564, 40.491386, 56.138931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075127, 40.748192, 55.908672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567959, -0.750655, -0.337549,
		-0.648825, -0.156008, -0.744774,
		0.506408, 0.642011, -0.575650,
		29.227049, 40.940796, 55.735977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533386, 39.862801, 55.975044>,  <28.872564, 40.491386, 56.138931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533386, 39.862801, 55.975044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558414, 39.560646, 56.235958>,  <28.573431, 39.379353, 56.392506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558414, 39.560646, 56.235958>,  <28.533386, 39.862801, 55.975044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558414, 39.560646, 56.235958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870840, 0.277960, 0.405432,
		-0.487567, -0.593399, -0.640433,
		0.062569, -0.755391, 0.652280,
		28.577185, 39.334030, 56.431641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860550, 39.706867, 56.058331>,  <28.533386, 39.862801, 55.975044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860550, 39.706867, 56.058331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038364, 39.541679, 56.376286>,  <28.145054, 39.442566, 56.567059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038364, 39.541679, 56.376286>,  <27.860550, 39.706867, 56.058331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038364, 39.541679, 56.376286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790519, 0.236463, 0.564946,
		-0.421268, -0.879510, -0.221347,
		0.444536, -0.412973, 0.794885,
		28.171724, 39.417789, 56.614750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225681, 39.455910, 56.438145>,  <27.860550, 39.706867, 56.058331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225681, 39.455910, 56.438145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543802, 39.492805, 56.677807>,  <27.734674, 39.514942, 56.821602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543802, 39.492805, 56.677807>,  <27.225681, 39.455910, 56.438145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543802, 39.492805, 56.677807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597321, 0.287880, 0.748554,
		-0.103435, -0.953214, 0.284050,
		0.795305, 0.092242, 0.599151,
		27.782394, 39.520477, 56.857552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978113, 39.275433, 57.067680>,  <27.225681, 39.455910, 56.438145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978113, 39.275433, 57.067680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320457, 39.464939, 57.150677>,  <27.525864, 39.578644, 57.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320457, 39.464939, 57.150677>,  <26.978113, 39.275433, 57.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320457, 39.464939, 57.150677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375669, 0.293685, 0.878989,
		0.355503, -0.830235, 0.429333,
		0.855857, 0.473771, 0.207487,
		27.577215, 39.607067, 57.212925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267118, 38.926708, 57.678356>,  <26.978113, 39.275433, 57.067680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267118, 38.926708, 57.678356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423374, 39.294044, 57.652912>,  <27.517128, 39.514446, 57.637646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423374, 39.294044, 57.652912>,  <27.267118, 38.926708, 57.678356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423374, 39.294044, 57.652912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494555, 0.267648, 0.826910,
		0.776413, -0.291564, 0.558725,
		0.390639, 0.918344, -0.063611,
		27.540565, 39.569546, 57.633827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611425, 39.099453, 58.336525>,  <27.267118, 38.926708, 57.678356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611425, 39.099453, 58.336525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545908, 39.456020, 58.167503>,  <27.506598, 39.669960, 58.066090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545908, 39.456020, 58.167503>,  <27.611425, 39.099453, 58.336525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545908, 39.456020, 58.167503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308119, 0.360678, 0.880327,
		0.937142, 0.274388, 0.215585,
		-0.163794, 0.891416, -0.422550,
		27.496769, 39.723446, 58.040737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934246, 39.642311, 58.740749>,  <27.611425, 39.099453, 58.336525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934246, 39.642311, 58.740749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657795, 39.857521, 58.547722>,  <27.491924, 39.986645, 58.431904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657795, 39.857521, 58.547722>,  <27.934246, 39.642311, 58.740749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657795, 39.857521, 58.547722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394530, 0.278584, 0.875635,
		0.605547, 0.795565, 0.019728,
		-0.691128, 0.538022, -0.482570,
		27.450457, 40.018929, 58.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832602, 40.164665, 59.079170>,  <27.934246, 39.642311, 58.740749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832602, 40.164665, 59.079170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497463, 40.211891, 58.865974>,  <27.296381, 40.240227, 58.738056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497463, 40.211891, 58.865974>,  <27.832602, 40.164665, 59.079170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497463, 40.211891, 58.865974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463305, 0.362604, 0.808620,
		0.288732, 0.924435, -0.249106,
		-0.837844, 0.118062, -0.532990,
		27.246111, 40.247311, 58.706078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608582, 40.876595, 59.215744>,  <27.832602, 40.164665, 59.079170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608582, 40.876595, 59.215744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285421, 40.681118, 59.084000>,  <27.091526, 40.563831, 59.004951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285421, 40.681118, 59.084000>,  <27.608582, 40.876595, 59.215744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285421, 40.681118, 59.084000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452644, 0.156685, 0.877817,
		-0.377376, 0.858271, -0.347789,
		-0.807899, -0.488692, -0.329362,
		27.043051, 40.534512, 58.985191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.696281, 34.026260, 45.657574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705364, 34.424046, 45.616543>,  <36.710815, 34.662716, 45.591923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705364, 34.424046, 45.616543>,  <36.696281, 34.026260, 45.657574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705364, 34.424046, 45.616543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739958, 0.085715, 0.667170,
		0.672270, 0.060749, 0.737809,
		0.022711, 0.994466, -0.102576,
		36.712177, 34.722385, 45.585770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756222, 34.303574, 46.292656>,  <36.696281, 34.026260, 45.657574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756222, 34.303574, 46.292656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578709, 34.593067, 46.081272>,  <36.472202, 34.766762, 45.954441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578709, 34.593067, 46.081272>,  <36.756222, 34.303574, 46.292656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578709, 34.593067, 46.081272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782080, -0.024891, 0.622681,
		0.437502, 0.689629, 0.577065,
		-0.443783, 0.723735, -0.528455,
		36.445576, 34.810188, 45.922737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621246, 34.763897, 46.877922>,  <36.756222, 34.303574, 46.292656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621246, 34.763897, 46.877922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402725, 34.875137, 46.561893>,  <36.271610, 34.941879, 46.372276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402725, 34.875137, 46.561893>,  <36.621246, 34.763897, 46.877922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402725, 34.875137, 46.561893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835777, -0.119048, 0.536007,
		0.055006, 0.953147, 0.297465,
		-0.546306, 0.278098, -0.790070,
		36.238834, 34.958569, 46.324871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259621, 35.356731, 47.023685>,  <36.621246, 34.763897, 46.877922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259621, 35.356731, 47.023685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040367, 35.181480, 46.738701>,  <35.908817, 35.076332, 46.567711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040367, 35.181480, 46.738701>,  <36.259621, 35.356731, 47.023685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040367, 35.181480, 46.738701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787381, -0.017013, 0.616231,
		-0.282107, 0.898753, -0.335645,
		-0.548130, -0.438124, -0.712461,
		35.875927, 35.050045, 46.524963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682930, 35.782021, 46.890118>,  <36.259621, 35.356731, 47.023685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682930, 35.782021, 46.890118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588001, 35.429314, 46.727066>,  <35.531044, 35.217690, 46.629234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588001, 35.429314, 46.727066>,  <35.682930, 35.782021, 46.890118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588001, 35.429314, 46.727066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866664, 0.002625, 0.498886,
		-0.438832, 0.471675, -0.764820,
		-0.237320, -0.881769, -0.407632,
		35.516804, 35.164783, 46.604778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040409, 35.840897, 46.585854>,  <35.682930, 35.782021, 46.890118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040409, 35.840897, 46.585854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049591, 35.441658, 46.608742>,  <35.055099, 35.202114, 46.622475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049591, 35.441658, 46.608742>,  <35.040409, 35.840897, 46.585854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049591, 35.441658, 46.608742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950821, -0.004113, 0.309715,
		-0.308890, -0.061513, -0.949106,
		0.022956, -0.998098, 0.057217,
		35.056477, 35.142227, 46.625908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327820, 35.652382, 46.375671>,  <35.040409, 35.840897, 46.585854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327820, 35.652382, 46.375671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448132, 35.298634, 46.518456>,  <34.520317, 35.086384, 46.604126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448132, 35.298634, 46.518456>,  <34.327820, 35.652382, 46.375671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448132, 35.298634, 46.518456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952559, -0.260331, 0.157667,
		-0.046509, -0.387448, -0.920718,
		0.300779, -0.884371, 0.356960,
		34.538364, 35.033321, 46.625542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839657, 35.032562, 46.094421>,  <34.327820, 35.652382, 46.375671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839657, 35.032562, 46.094421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027920, 34.908218, 46.424717>,  <34.140877, 34.833614, 46.622894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027920, 34.908218, 46.424717>,  <33.839657, 35.032562, 46.094421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027920, 34.908218, 46.424717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874929, -0.285278, 0.391300,
		0.113927, -0.906633, -0.406247,
		0.470659, -0.310858, 0.825741,
		34.169117, 34.814960, 46.672440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657341, 34.382339, 46.218014>,  <33.839657, 35.032562, 46.094421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657341, 34.382339, 46.218014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749565, 34.558483, 46.565098>,  <33.804897, 34.664169, 46.773350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749565, 34.558483, 46.565098>,  <33.657341, 34.382339, 46.218014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749565, 34.558483, 46.565098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962768, -0.026107, 0.269064,
		0.141138, -0.897443, 0.417942,
		0.230559, 0.440357, 0.867715,
		33.818733, 34.690590, 46.825413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376858, 33.898758, 46.688641>,  <33.657341, 34.382339, 46.218014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376858, 33.898758, 46.688641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420338, 34.233536, 46.903198>,  <33.446426, 34.434402, 47.031933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420338, 34.233536, 46.903198>,  <33.376858, 33.898758, 46.688641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420338, 34.233536, 46.903198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912651, -0.129857, 0.387564,
		0.394023, -0.531665, 0.749719,
		0.108698, 0.836941, 0.536391,
		33.452946, 34.484619, 47.064114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043007, 33.757153, 47.371738>,  <33.376858, 33.898758, 46.688641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043007, 33.757153, 47.371738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053711, 34.156731, 47.356861>,  <33.060135, 34.396477, 47.347935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053711, 34.156731, 47.356861>,  <33.043007, 33.757153, 47.371738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053711, 34.156731, 47.356861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905812, 0.039972, 0.421790,
		0.422833, 0.022399, 0.905931,
		0.026764, 0.998950, -0.037191,
		33.061741, 34.456417, 47.345703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885567, 34.007298, 48.017727>,  <33.043007, 33.757153, 47.371738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885567, 34.007298, 48.017727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808151, 34.323917, 47.785866>,  <32.761703, 34.513889, 47.646751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808151, 34.323917, 47.785866>,  <32.885567, 34.007298, 48.017727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808151, 34.323917, 47.785866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830296, 0.182591, 0.526563,
		0.522639, 0.583192, 0.621881,
		-0.193538, 0.791548, -0.579651,
		32.750092, 34.561382, 47.611969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559700, 34.309299, 48.491192>,  <32.885567, 34.007298, 48.017727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559700, 34.309299, 48.491192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.516987, 34.545139, 48.170948>,  <32.491360, 34.686642, 47.978802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.516987, 34.545139, 48.170948>,  <32.559700, 34.309299, 48.491192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516987, 34.545139, 48.170948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828294, 0.392684, 0.399661,
		0.550025, 0.705816, 0.446427,
		-0.106782, 0.589596, -0.800609,
		32.484951, 34.722019, 47.930767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436592, 34.977859, 48.740643>,  <32.559700, 34.309299, 48.491192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436592, 34.977859, 48.740643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.267883, 34.909206, 48.384518>,  <32.166656, 34.868015, 48.170845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.267883, 34.909206, 48.384518>,  <32.436592, 34.977859, 48.740643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267883, 34.909206, 48.384518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894285, 0.240688, 0.377258,
		0.149537, 0.955307, -0.255003,
		-0.421773, -0.171632, -0.890309,
		32.141350, 34.857716, 48.117424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990623, 35.561440, 48.629242>,  <32.436592, 34.977859, 48.740643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990623, 35.561440, 48.629242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.857353, 35.252697, 48.412640>,  <31.777391, 35.067451, 48.282677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.857353, 35.252697, 48.412640>,  <31.990623, 35.561440, 48.629242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857353, 35.252697, 48.412640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871767, 0.033388, 0.488782,
		-0.359190, 0.634917, -0.684004,
		-0.333174, -0.771858, -0.541507,
		31.757401, 35.021141, 48.250187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324867, 35.704147, 48.449623>,  <31.990623, 35.561440, 48.629242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324867, 35.704147, 48.449623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.312859, 35.304840, 48.429398>,  <31.305653, 35.065254, 48.417263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.312859, 35.304840, 48.429398>,  <31.324867, 35.704147, 48.449623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312859, 35.304840, 48.429398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885454, 0.003091, 0.464716,
		-0.463755, 0.058724, -0.884015,
		-0.030023, -0.998269, -0.050564,
		31.303852, 35.005360, 48.414230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674477, 35.555424, 48.096016>,  <31.324867, 35.704147, 48.449623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674477, 35.555424, 48.096016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.772310, 35.206314, 48.264988>,  <30.831011, 34.996849, 48.366371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.772310, 35.206314, 48.264988>,  <30.674477, 35.555424, 48.096016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772310, 35.206314, 48.264988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923518, -0.076934, 0.375760,
		-0.295453, -0.482031, -0.824835,
		0.244586, -0.872770, 0.422434,
		30.845686, 34.944485, 48.391720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131346, 35.035213, 47.847401>,  <30.674477, 35.555424, 48.096016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131346, 35.035213, 47.847401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.291552, 34.934498, 48.199806>,  <30.387674, 34.874069, 48.411251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.291552, 34.934498, 48.199806>,  <30.131346, 35.035213, 47.847401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291552, 34.934498, 48.199806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916258, -0.118175, 0.382760,
		0.007739, -0.960540, -0.278035,
		0.400513, -0.251790, 0.881017,
		30.411705, 34.858959, 48.464111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710613, 34.485157, 48.130947>,  <30.131346, 35.035213, 47.847401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710613, 34.485157, 48.130947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.903973, 34.634777, 48.447533>,  <30.019989, 34.724548, 48.637482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.903973, 34.634777, 48.447533>,  <29.710613, 34.485157, 48.130947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903973, 34.634777, 48.447533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835045, -0.074316, 0.545139,
		0.262729, -0.924425, 0.276427,
		0.483398, 0.374053, 0.791462,
		30.048992, 34.746994, 48.684971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372734, 34.208099, 48.653172>,  <29.710613, 34.485157, 48.130947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372734, 34.208099, 48.653172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.593397, 34.467480, 48.863003>,  <29.725796, 34.623108, 48.988903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.593397, 34.467480, 48.863003>,  <29.372734, 34.208099, 48.653172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593397, 34.467480, 48.863003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683897, -0.008360, 0.729531,
		0.477450, -0.761211, 0.438862,
		0.551658, 0.648450, 0.524582,
		29.758894, 34.662014, 49.020378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364700, 33.923050, 49.343952>,  <29.372734, 34.208099, 48.653172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364700, 33.923050, 49.343952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.433750, 34.316517, 49.364368>,  <29.475180, 34.552597, 49.376617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.433750, 34.316517, 49.364368>,  <29.364700, 33.923050, 49.343952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433750, 34.316517, 49.364368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728156, 0.092544, 0.679136,
		0.663318, -0.154402, 0.732236,
		0.172624, 0.983664, 0.051043,
		29.485537, 34.611618, 49.379681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340446, 34.095135, 50.085560>,  <29.364700, 33.923050, 49.343952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340446, 34.095135, 50.085560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.267067, 34.442917, 49.902084>,  <29.223040, 34.651585, 49.792000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.267067, 34.442917, 49.902084>,  <29.340446, 34.095135, 50.085560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267067, 34.442917, 49.902084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709661, 0.205753, 0.673830,
		0.680241, 0.449127, 0.579273,
		-0.183448, 0.869454, -0.458689,
		29.212032, 34.703754, 49.764477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359369, 34.641163, 50.630028>,  <29.340446, 34.095135, 50.085560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359369, 34.641163, 50.630028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.103498, 34.716553, 50.331955>,  <28.949976, 34.761787, 50.153111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.103498, 34.716553, 50.331955>,  <29.359369, 34.641163, 50.630028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103498, 34.716553, 50.331955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679933, 0.313387, 0.662933,
		0.358473, 0.930735, -0.072318,
		-0.639678, 0.188472, -0.745178,
		28.911594, 34.773094, 50.108402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904331, 35.069832, 50.996548>,  <29.359369, 34.641163, 50.630028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904331, 35.069832, 50.996548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.719225, 35.054005, 50.642307>,  <28.608162, 35.044510, 50.429764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.719225, 35.054005, 50.642307>,  <28.904331, 35.069832, 50.996548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719225, 35.054005, 50.642307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788589, 0.474710, 0.390867,
		0.404937, 0.879253, -0.250880,
		-0.462766, -0.039564, -0.885597,
		28.580395, 35.042137, 50.376629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628971, 35.709213, 50.946220>,  <28.904331, 35.069832, 50.996548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628971, 35.709213, 50.946220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.417120, 35.469303, 50.706303>,  <28.290009, 35.325356, 50.562351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.417120, 35.469303, 50.706303>,  <28.628971, 35.709213, 50.946220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417120, 35.469303, 50.706303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837724, 0.480807, 0.258927,
		0.133088, 0.639601, -0.757099,
		-0.529628, -0.599780, -0.599798,
		28.258232, 35.289368, 50.526363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054371, 35.938412, 50.872963>,  <28.628971, 35.709213, 50.946220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054371, 35.938412, 50.872963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.913626, 35.596573, 50.720200>,  <27.829180, 35.391468, 50.628540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.913626, 35.596573, 50.720200>,  <28.054371, 35.938412, 50.872963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913626, 35.596573, 50.720200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928396, 0.266539, 0.258915,
		-0.119474, 0.445669, -0.887190,
		-0.351861, -0.854597, -0.381913,
		27.808067, 35.340195, 50.605625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290628, 36.112122, 50.728634>,  <28.054371, 35.938412, 50.872963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290628, 36.112122, 50.728634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.317690, 35.714752, 50.691700>,  <27.333927, 35.476330, 50.669540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.317690, 35.714752, 50.691700>,  <27.290628, 36.112122, 50.728634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317690, 35.714752, 50.691700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978491, -0.084144, 0.188349,
		-0.194881, 0.077608, -0.977752,
		0.067655, -0.993427, -0.092337,
		27.337986, 35.416725, 50.663998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675007, 35.928871, 50.313797>,  <27.290628, 36.112122, 50.728634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675007, 35.928871, 50.313797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.818083, 35.607094, 50.503506>,  <26.903929, 35.414028, 50.617329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.818083, 35.607094, 50.503506>,  <26.675007, 35.928871, 50.313797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818083, 35.607094, 50.503506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916625, -0.205381, 0.342953,
		-0.178478, -0.557401, -0.810833,
		0.357691, -0.804440, 0.474272,
		26.925390, 35.365761, 50.645786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214886, 35.455776, 50.274651>,  <26.675007, 35.928871, 50.313797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214886, 35.455776, 50.274651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.418339, 35.274773, 50.567646>,  <26.540411, 35.166172, 50.743443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.418339, 35.274773, 50.567646>,  <26.214886, 35.455776, 50.274651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418339, 35.274773, 50.567646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857644, -0.341155, 0.384786,
		0.075773, -0.823925, -0.561610,
		0.508631, -0.452504, 0.732485,
		26.570929, 35.139023, 50.787392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942202, 34.775784, 50.409855>,  <26.214886, 35.455776, 50.274651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942202, 34.775784, 50.409855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.122122, 34.910278, 50.740822>,  <26.230074, 34.990974, 50.939404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.122122, 34.910278, 50.740822>,  <25.942202, 34.775784, 50.409855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122122, 34.910278, 50.740822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823369, -0.202830, 0.530022,
		0.346039, -0.919676, 0.185615,
		0.449800, 0.336238, 0.827420,
		26.257061, 35.011150, 50.989048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675562, 34.292519, 50.999264>,  <25.942202, 34.775784, 50.409855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675562, 34.292519, 50.999264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.817963, 34.613728, 51.190437>,  <25.903402, 34.806454, 51.305141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.817963, 34.613728, 51.190437>,  <25.675562, 34.292519, 50.999264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817963, 34.613728, 51.190437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744524, -0.065358, 0.664388,
		0.564753, -0.592360, 0.574599,
		0.356002, 0.803019, 0.477937,
		25.924763, 34.854633, 51.333820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812126, 33.994377, 51.705635>,  <25.675562, 34.292519, 50.999264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812126, 33.994377, 51.705635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.811352, 34.394234, 51.716381>,  <25.810888, 34.634148, 51.722828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.811352, 34.394234, 51.716381>,  <25.812126, 33.994377, 51.705635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811352, 34.394234, 51.716381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722068, -0.019983, 0.691533,
		0.691819, -0.018060, 0.721845,
		-0.001935, 0.999637, 0.026865,
		25.810772, 34.694126, 51.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920055, 34.231213, 52.382263>,  <25.812126, 33.994377, 51.705635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920055, 34.231213, 52.382263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.738539, 34.549019, 52.220860>,  <25.629629, 34.739704, 52.124020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.738539, 34.549019, 52.220860>,  <25.920055, 34.231213, 52.382263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738539, 34.549019, 52.220860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756903, -0.104692, 0.645087,
		0.470288, 0.598150, 0.648880,
		-0.453791, 0.794516, -0.403507,
		25.602402, 34.787373, 52.099808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628935, 34.399971, 52.930637>,  <25.920055, 34.231213, 52.382263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628935, 34.399971, 52.930637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.442997, 34.627365, 52.659126>,  <25.331434, 34.763802, 52.496220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.442997, 34.627365, 52.659126>,  <25.628935, 34.399971, 52.930637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442997, 34.627365, 52.659126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846173, -0.059603, 0.529565,
		0.260595, 0.820529, 0.508746,
		-0.464846, 0.568490, -0.678777,
		25.303543, 34.797913, 52.455494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330618, 34.898193, 53.263798>,  <25.628935, 34.399971, 52.930637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330618, 34.898193, 53.263798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.121067, 34.863621, 52.924839>,  <24.995337, 34.842876, 52.721462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.121067, 34.863621, 52.924839>,  <25.330618, 34.898193, 53.263798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121067, 34.863621, 52.924839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827461, -0.184447, 0.530366,
		-0.202139, 0.979035, 0.025111,
		-0.523879, -0.086429, -0.847397,
		24.963903, 34.837692, 52.670620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.730412, 32.106911, 48.226200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352482, 31.977039, 48.208828>,  <35.125725, 31.899117, 48.198402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352482, 31.977039, 48.208828>,  <35.730412, 32.106911, 48.226200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352482, 31.977039, 48.208828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253599, 0.641085, 0.724360,
		-0.207340, 0.695409, -0.688052,
		-0.944827, -0.324678, -0.043433,
		35.069035, 31.879637, 48.195797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311371, 32.687729, 48.232582>,  <35.730412, 32.106911, 48.226200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311371, 32.687729, 48.232582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139080, 32.367645, 48.399506>,  <35.035706, 32.175594, 48.499660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139080, 32.367645, 48.399506>,  <35.311371, 32.687729, 48.232582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139080, 32.367645, 48.399506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292653, 0.561256, 0.774174,
		-0.853717, 0.211327, -0.475929,
		-0.430722, -0.800207, 0.417308,
		35.009865, 32.127583, 48.524696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578289, 32.865051, 48.379494>,  <35.311371, 32.687729, 48.232582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578289, 32.865051, 48.379494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691376, 32.572292, 48.627491>,  <34.759228, 32.396637, 48.776291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691376, 32.572292, 48.627491>,  <34.578289, 32.865051, 48.379494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691376, 32.572292, 48.627491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409822, 0.492232, 0.767954,
		-0.867247, -0.471202, -0.160786,
		0.282718, -0.731899, 0.619995,
		34.776192, 32.352722, 48.813488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983669, 32.714497, 48.762215>,  <34.578289, 32.865051, 48.379494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983669, 32.714497, 48.762215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270885, 32.562469, 48.995441>,  <34.443214, 32.471252, 49.135380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270885, 32.562469, 48.995441>,  <33.983669, 32.714497, 48.762215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270885, 32.562469, 48.995441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436404, 0.406756, 0.802559,
		-0.542192, -0.830723, 0.126205,
		0.718038, -0.380065, 0.583071,
		34.486298, 32.448452, 49.170364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621513, 32.567089, 49.439182>,  <33.983669, 32.714497, 48.762215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621513, 32.567089, 49.439182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009312, 32.556061, 49.536602>,  <34.241989, 32.549446, 49.595055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009312, 32.556061, 49.536602>,  <33.621513, 32.567089, 49.439182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009312, 32.556061, 49.536602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218507, 0.353001, 0.909750,
		-0.111056, -0.935217, 0.336209,
		0.969495, -0.027570, 0.243554,
		34.300159, 32.547791, 49.609669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662098, 32.177242, 50.117737>,  <33.621513, 32.567089, 49.439182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662098, 32.177242, 50.117737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974266, 32.424446, 50.079792>,  <34.161568, 32.572769, 50.057026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974266, 32.424446, 50.079792>,  <33.662098, 32.177242, 50.117737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974266, 32.424446, 50.079792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134737, 0.314377, 0.939688,
		0.610561, -0.720574, 0.328617,
		0.780424, 0.618013, -0.094858,
		34.208393, 32.609848, 50.051334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839554, 32.274963, 50.813732>,  <33.662098, 32.177242, 50.117737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839554, 32.274963, 50.813732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053535, 32.568512, 50.646278>,  <34.181923, 32.744640, 50.545807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053535, 32.568512, 50.646278>,  <33.839554, 32.274963, 50.813732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053535, 32.568512, 50.646278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093263, 0.543759, 0.834043,
		0.839720, -0.407129, 0.359328,
		0.534950, 0.733875, -0.418636,
		34.214020, 32.788673, 50.520687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389793, 32.592255, 51.323994>,  <33.839554, 32.274963, 50.813732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389793, 32.592255, 51.323994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360409, 32.890343, 51.058891>,  <34.342777, 33.069195, 50.899830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360409, 32.890343, 51.058891>,  <34.389793, 32.592255, 51.323994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360409, 32.890343, 51.058891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031955, 0.665967, 0.745296,
		0.996786, 0.033576, -0.072739,
		-0.073466, 0.745225, -0.662754,
		34.338367, 33.113911, 50.860065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989712, 32.974640, 51.505779>,  <34.389793, 32.592255, 51.323994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989712, 32.974640, 51.505779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730026, 33.205505, 51.307629>,  <34.574215, 33.344025, 51.188736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730026, 33.205505, 51.307629>,  <34.989712, 32.974640, 51.505779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730026, 33.205505, 51.307629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065684, 0.691407, 0.719474,
		0.757762, 0.434556, -0.486783,
		-0.649217, 0.577164, -0.495379,
		34.535263, 33.378654, 51.159016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178959, 33.694462, 51.500538>,  <34.989712, 32.974640, 51.505779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178959, 33.694462, 51.500538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785439, 33.710224, 51.430595>,  <34.549324, 33.719681, 51.388630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785439, 33.710224, 51.430595>,  <35.178959, 33.694462, 51.500538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785439, 33.710224, 51.430595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111346, 0.630105, 0.768486,
		0.140464, 0.775510, -0.615512,
		-0.983805, 0.039409, -0.174857,
		34.490295, 33.722046, 51.378139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104153, 34.413101, 51.737362>,  <35.178959, 33.694462, 51.500538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104153, 34.413101, 51.737362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746979, 34.235817, 51.705784>,  <34.532673, 34.129448, 51.686836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746979, 34.235817, 51.705784>,  <35.104153, 34.413101, 51.737362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746979, 34.235817, 51.705784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340387, 0.549930, 0.762702,
		-0.294625, 0.707914, -0.641914,
		-0.892935, -0.443210, -0.078942,
		34.479099, 34.102856, 51.682102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611435, 34.975182, 51.615650>,  <35.104153, 34.413101, 51.737362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611435, 34.975182, 51.615650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429817, 34.650890, 51.763466>,  <34.320847, 34.456314, 51.852154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429817, 34.650890, 51.763466>,  <34.611435, 34.975182, 51.615650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429817, 34.650890, 51.763466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542656, 0.580585, 0.606997,
		-0.706660, 0.075071, -0.703559,
		-0.454044, -0.810731, 0.369539,
		34.293606, 34.407673, 51.874329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616570, 35.751328, 51.321384>,  <34.611435, 34.975182, 51.615650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616570, 35.751328, 51.321384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908352, 35.917107, 51.539051>,  <35.083424, 36.016575, 51.669651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908352, 35.917107, 51.539051>,  <34.616570, 35.751328, 51.321384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908352, 35.917107, 51.539051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665907, -0.612151, -0.426425,
		0.156380, 0.673425, -0.722526,
		0.729460, 0.414451, 0.544167,
		35.127190, 36.041443, 51.702301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189266, 36.109009, 50.889671>,  <34.616570, 35.751328, 51.321384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189266, 36.109009, 50.889671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358448, 36.019924, 51.241013>,  <35.459957, 35.966473, 51.451817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358448, 36.019924, 51.241013>,  <35.189266, 36.109009, 50.889671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358448, 36.019924, 51.241013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744743, -0.466753, -0.476970,
		0.516203, 0.855885, -0.031551,
		0.422958, -0.222716, 0.878353,
		35.485336, 35.953110, 51.504520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848824, 36.270424, 50.751755>,  <35.189266, 36.109009, 50.889671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848824, 36.270424, 50.751755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860619, 36.023907, 51.066540>,  <35.867695, 35.875996, 51.255409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860619, 36.023907, 51.066540>,  <35.848824, 36.270424, 50.751755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860619, 36.023907, 51.066540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801098, -0.456292, -0.387351,
		0.597807, 0.641856, 0.480258,
		0.029486, -0.616294, 0.786964,
		35.869465, 35.839020, 51.302628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544102, 36.312038, 50.922146>,  <35.848824, 36.270424, 50.751755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544102, 36.312038, 50.922146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439522, 35.970989, 51.103115>,  <36.376774, 35.766361, 51.211697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439522, 35.970989, 51.103115>,  <36.544102, 36.312038, 50.922146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439522, 35.970989, 51.103115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751712, -0.473881, -0.458657,
		0.605454, 0.220177, 0.764818,
		-0.261448, -0.852619, 0.452423,
		36.361088, 35.715202, 51.238842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152733, 35.979431, 51.213322>,  <36.544102, 36.312038, 50.922146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152733, 35.979431, 51.213322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875854, 35.697311, 51.152115>,  <36.709728, 35.528038, 51.115391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875854, 35.697311, 51.152115>,  <37.152733, 35.979431, 51.213322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875854, 35.697311, 51.152115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692559, -0.589492, -0.415765,
		0.203037, -0.393765, 0.896507,
		-0.692198, -0.705300, -0.153017,
		36.668194, 35.485722, 51.106209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442337, 35.287815, 51.364792>,  <37.152733, 35.979431, 51.213322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442337, 35.287815, 51.364792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.141994, 35.174595, 51.126095>,  <36.961788, 35.106663, 50.982876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.141994, 35.174595, 51.126095>,  <37.442337, 35.287815, 51.364792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141994, 35.174595, 51.126095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640481, -0.532624, -0.553259,
		-0.161236, -0.797618, 0.581213,
		-0.750857, -0.283050, -0.596738,
		36.916737, 35.089680, 50.947075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681591, 34.710476, 51.080158>,  <37.442337, 35.287815, 51.364792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681591, 34.710476, 51.080158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369362, 34.769894, 50.837296>,  <37.182026, 34.805546, 50.691578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369362, 34.769894, 50.837296>,  <37.681591, 34.710476, 51.080158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369362, 34.769894, 50.837296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485924, -0.466784, -0.738912,
		-0.393175, -0.871807, 0.292176,
		-0.780571, 0.148547, -0.607159,
		37.135189, 34.814457, 50.655148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367962, 34.065094, 50.810253>,  <37.681591, 34.710476, 51.080158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367962, 34.065094, 50.810253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299599, 34.365086, 50.554653>,  <37.258579, 34.545082, 50.401295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299599, 34.365086, 50.554653>,  <37.367962, 34.065094, 50.810253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299599, 34.365086, 50.554653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666386, -0.389723, -0.635646,
		-0.725754, -0.534460, -0.433167,
		-0.170912, 0.749979, -0.638999,
		37.248325, 34.590080, 50.362953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776901, 33.889717, 50.196732>,  <37.367962, 34.065094, 50.810253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776901, 33.889717, 50.196732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642921, 34.242268, 50.063477>,  <37.562534, 34.453796, 49.983524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642921, 34.242268, 50.063477>,  <37.776901, 33.889717, 50.196732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642921, 34.242268, 50.063477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715083, 0.007552, -0.698999,
		-0.613566, -0.472354, -0.632787,
		-0.334954, 0.881377, -0.333139,
		37.542435, 34.506680, 49.963535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789703, 33.802692, 49.533157>,  <37.776901, 33.889717, 50.196732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789703, 33.802692, 49.533157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754875, 34.199673, 49.567707>,  <37.733978, 34.437862, 49.588436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754875, 34.199673, 49.567707>,  <37.789703, 33.802692, 49.533157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754875, 34.199673, 49.567707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666014, 0.122474, -0.735817,
		-0.740840, -0.006540, -0.671649,
		-0.087072, 0.992450, 0.086378,
		37.728752, 34.497406, 49.593620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585537, 34.064594, 48.807518>,  <37.789703, 33.802692, 49.533157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585537, 34.064594, 48.807518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763206, 34.357197, 49.014442>,  <37.869808, 34.532757, 49.138599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763206, 34.357197, 49.014442>,  <37.585537, 34.064594, 48.807518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763206, 34.357197, 49.014442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603719, 0.182256, -0.776083,
		-0.661990, 0.657030, -0.360668,
		0.444176, 0.731502, 0.517313,
		37.896458, 34.576649, 49.169636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614979, 34.620483, 48.296940>,  <37.585537, 34.064594, 48.807518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614979, 34.620483, 48.296940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860935, 34.756439, 48.581581>,  <38.008511, 34.838013, 48.752365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860935, 34.756439, 48.581581>,  <37.614979, 34.620483, 48.296940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860935, 34.756439, 48.581581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573696, 0.426337, -0.699364,
		-0.541091, 0.838278, 0.067157,
		0.614893, 0.339892, 0.711604,
		38.045403, 34.858406, 48.795063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702423, 35.321522, 48.126518>,  <37.614979, 34.620483, 48.296940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702423, 35.321522, 48.126518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007877, 35.168549, 48.334599>,  <38.191151, 35.076767, 48.459450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007877, 35.168549, 48.334599>,  <37.702423, 35.321522, 48.126518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007877, 35.168549, 48.334599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639648, 0.338489, -0.690127,
		0.087841, 0.859752, 0.503101,
		0.763633, -0.382428, 0.520205,
		38.236969, 35.053822, 48.490662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158901, 35.884457, 48.205406>,  <37.702423, 35.321522, 48.126518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158901, 35.884457, 48.205406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378178, 35.555779, 48.267757>,  <38.509743, 35.358570, 48.305168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378178, 35.555779, 48.267757>,  <38.158901, 35.884457, 48.205406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378178, 35.555779, 48.267757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706470, 0.355191, -0.612161,
		0.447641, 0.445710, 0.775216,
		0.548195, -0.821695, 0.155882,
		38.542637, 35.309269, 48.314522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805695, 36.381752, 47.992222>,  <38.158901, 35.884457, 48.205406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805695, 36.381752, 47.992222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803986, 36.688072, 47.734997>,  <37.802959, 36.871864, 47.580662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803986, 36.688072, 47.734997>,  <37.805695, 36.381752, 47.992222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803986, 36.688072, 47.734997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278089, -0.618609, -0.734840,
		-0.960546, 0.175691, 0.215603,
		-0.004269, 0.765804, -0.643060,
		37.802704, 36.917812, 47.542080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091888, 36.614388, 47.629864>,  <37.805695, 36.381752, 47.992222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091888, 36.614388, 47.629864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409073, 36.682476, 47.395859>,  <37.599384, 36.723328, 47.255455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409073, 36.682476, 47.395859>,  <37.091888, 36.614388, 47.629864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409073, 36.682476, 47.395859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383495, -0.606669, -0.696336,
		-0.473438, 0.776516, -0.415786,
		0.792961, 0.170220, -0.585011,
		37.646961, 36.733543, 47.220356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804138, 36.539085, 46.952068>,  <37.091888, 36.614388, 47.629864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804138, 36.539085, 46.952068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194244, 36.497540, 46.874027>,  <37.428307, 36.472610, 46.827202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194244, 36.497540, 46.874027>,  <36.804138, 36.539085, 46.952068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194244, 36.497540, 46.874027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205512, -0.751036, -0.627463,
		-0.081359, 0.652040, -0.753806,
		0.975267, -0.103866, -0.195106,
		37.486824, 36.466381, 46.815495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379772, 37.149899, 46.542488>,  <36.804138, 36.539085, 46.952068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379772, 37.149899, 46.542488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000736, 37.069805, 46.442902>,  <35.773315, 37.021751, 46.383148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000736, 37.069805, 46.442902>,  <36.379772, 37.149899, 46.542488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000736, 37.069805, 46.442902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287635, 0.873862, 0.391959,
		0.139084, 0.443028, -0.885654,
		-0.947587, -0.200230, -0.248970,
		35.716461, 37.009735, 46.368210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092381, 37.782364, 46.510010>,  <36.379772, 37.149899, 46.542488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092381, 37.782364, 46.510010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751350, 37.575089, 46.482883>,  <35.546734, 37.450726, 46.466610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751350, 37.575089, 46.482883>,  <36.092381, 37.782364, 46.510010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751350, 37.575089, 46.482883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499163, 0.769024, 0.399299,
		-0.154761, 0.374282, -0.914310,
		-0.852576, -0.518185, -0.067813,
		35.495579, 37.419632, 46.462540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703365, 38.195980, 46.261810>,  <36.092381, 37.782364, 46.510010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703365, 38.195980, 46.261810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453785, 37.933743, 46.431927>,  <35.304035, 37.776398, 46.533997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453785, 37.933743, 46.431927>,  <35.703365, 38.195980, 46.261810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453785, 37.933743, 46.431927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536950, 0.755084, 0.376209,
		-0.567773, 0.006377, -0.823161,
		-0.623954, -0.655598, 0.425292,
		35.266598, 37.737064, 46.559513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998455, 38.455654, 46.154831>,  <35.703365, 38.195980, 46.261810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998455, 38.455654, 46.154831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977062, 38.200062, 46.461777>,  <34.964226, 38.046707, 46.645943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977062, 38.200062, 46.461777>,  <34.998455, 38.455654, 46.154831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977062, 38.200062, 46.461777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464219, 0.696282, 0.547442,
		-0.884105, -0.326947, -0.333864,
		-0.053479, -0.638982, 0.767361,
		34.961018, 38.008366, 46.691986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331917, 38.591591, 46.467857>,  <34.998455, 38.455654, 46.154831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331917, 38.591591, 46.467857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550377, 38.409172, 46.748924>,  <34.681454, 38.299721, 46.917564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550377, 38.409172, 46.748924>,  <34.331917, 38.591591, 46.467857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550377, 38.409172, 46.748924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489279, 0.507199, 0.709475,
		-0.679947, -0.731280, 0.053872,
		0.546149, -0.456046, 0.702669,
		34.714222, 38.272358, 46.959724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818943, 38.335476, 46.879147>,  <34.331917, 38.591591, 46.467857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818943, 38.335476, 46.879147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157948, 38.365452, 47.089329>,  <34.361351, 38.383438, 47.215439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157948, 38.365452, 47.089329>,  <33.818943, 38.335476, 46.879147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157948, 38.365452, 47.089329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510167, 0.388171, 0.767498,
		-0.146448, -0.918535, 0.367214,
		0.847516, 0.074942, 0.525453,
		34.412201, 38.387936, 47.246964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558998, 38.260464, 47.431862>,  <33.818943, 38.335476, 46.879147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558998, 38.260464, 47.431862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926178, 38.375942, 47.540688>,  <34.146488, 38.445229, 47.605984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926178, 38.375942, 47.540688>,  <33.558998, 38.260464, 47.431862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926178, 38.375942, 47.540688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375146, 0.408824, 0.831942,
		0.128956, -0.865746, 0.483585,
		0.917952, 0.288699, 0.272061,
		34.201565, 38.462551, 47.622307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765484, 38.058865, 48.216934>,  <33.558998, 38.260464, 47.431862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765484, 38.058865, 48.216934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973289, 38.379192, 48.097744>,  <34.097973, 38.571388, 48.026230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973289, 38.379192, 48.097744>,  <33.765484, 38.058865, 48.216934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973289, 38.379192, 48.097744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379605, 0.528735, 0.759170,
		0.765512, -0.281284, 0.578680,
		0.519511, 0.800823, -0.297977,
		34.129143, 38.619438, 48.008350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790226, 38.524113, 48.852337>,  <33.765484, 38.058865, 48.216934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790226, 38.524113, 48.852337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925690, 38.772251, 48.569359>,  <34.006966, 38.921135, 48.399570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925690, 38.772251, 48.569359>,  <33.790226, 38.524113, 48.852337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925690, 38.772251, 48.569359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291061, 0.784065, 0.548202,
		0.894760, 0.020259, 0.446087,
		0.338655, 0.620348, -0.707447,
		34.027287, 38.958355, 48.357124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164108, 39.052345, 49.206284>,  <33.790226, 38.524113, 48.852337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164108, 39.052345, 49.206284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057693, 39.225296, 48.861664>,  <33.993847, 39.329067, 48.654892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057693, 39.225296, 48.861664>,  <34.164108, 39.052345, 49.206284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057693, 39.225296, 48.861664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235812, 0.837414, 0.493083,
		0.934675, 0.334342, -0.120821,
		-0.266035, 0.432381, -0.861552,
		33.977882, 39.355011, 48.603199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430801, 39.700169, 49.233757>,  <34.164108, 39.052345, 49.206284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430801, 39.700169, 49.233757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123604, 39.707188, 48.977673>,  <33.939285, 39.711399, 48.824020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123604, 39.707188, 48.977673>,  <34.430801, 39.700169, 49.233757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123604, 39.707188, 48.977673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340113, 0.835852, 0.430900,
		0.542685, 0.548675, -0.635963,
		-0.767995, 0.017543, -0.640216,
		33.893204, 39.712452, 48.785606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339058, 40.374935, 48.988895>,  <34.430801, 39.700169, 49.233757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339058, 40.374935, 48.988895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986027, 40.196400, 48.929790>,  <33.774208, 40.089279, 48.894325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986027, 40.196400, 48.929790>,  <34.339058, 40.374935, 48.988895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986027, 40.196400, 48.929790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467000, 0.795840, 0.385421,
		-0.054431, 0.409171, -0.910833,
		-0.882581, -0.446338, -0.147765,
		33.721252, 40.062500, 48.885460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937820, 40.914154, 48.723469>,  <34.339058, 40.374935, 48.988895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937820, 40.914154, 48.723469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663727, 40.646847, 48.839310>,  <33.499271, 40.486462, 48.908813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663727, 40.646847, 48.839310>,  <33.937820, 40.914154, 48.723469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663727, 40.646847, 48.839310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630279, 0.743351, 0.224004,
		-0.364971, -0.029034, -0.930566,
		-0.685234, -0.668271, 0.289601,
		33.458157, 40.446365, 48.926189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182087, 41.181839, 48.539505>,  <33.937820, 40.914154, 48.723469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182087, 41.181839, 48.539505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112625, 40.884312, 48.797680>,  <33.070950, 40.705795, 48.952583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112625, 40.884312, 48.797680>,  <33.182087, 41.181839, 48.539505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112625, 40.884312, 48.797680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825239, 0.467563, 0.316806,
		-0.537426, -0.477624, -0.695017,
		-0.173650, -0.743815, 0.645434,
		33.060532, 40.661167, 48.991310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392796, 41.181736, 48.562828>,  <33.182087, 41.181839, 48.539505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392796, 41.181736, 48.562828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.525932, 40.962955, 48.870090>,  <32.605812, 40.831688, 49.054447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.525932, 40.962955, 48.870090>,  <32.392796, 41.181736, 48.562828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525932, 40.962955, 48.870090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803963, 0.261121, 0.534284,
		-0.492809, -0.795398, -0.352819,
		0.332840, -0.546953, 0.768153,
		32.625786, 40.798870, 49.100536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900934, 40.671898, 48.745834>,  <32.392796, 41.181736, 48.562828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900934, 40.671898, 48.745834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113922, 40.744686, 49.076496>,  <32.241714, 40.788361, 49.274895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113922, 40.744686, 49.076496>,  <31.900934, 40.671898, 48.745834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113922, 40.744686, 49.076496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793399, 0.447599, 0.412520,
		-0.294945, -0.875524, 0.382707,
		0.532471, 0.181969, 0.826657,
		32.273663, 40.799278, 49.324493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547842, 40.444111, 49.290077>,  <31.900934, 40.671898, 48.745834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547842, 40.444111, 49.290077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806904, 40.695992, 49.461666>,  <31.962341, 40.847118, 49.564621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806904, 40.695992, 49.461666>,  <31.547842, 40.444111, 49.290077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806904, 40.695992, 49.461666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741015, 0.389536, 0.546954,
		0.177315, -0.672116, 0.718902,
		0.647655, 0.629700, 0.428977,
		32.001202, 40.884903, 49.590359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324194, 40.502728, 49.987404>,  <31.547842, 40.444111, 49.290077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324194, 40.502728, 49.987404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573503, 40.813992, 49.956432>,  <31.723089, 41.000751, 49.937851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573503, 40.813992, 49.956432>,  <31.324194, 40.502728, 49.987404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573503, 40.813992, 49.956432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677532, 0.586793, 0.443424,
		0.390489, -0.223915, 0.892962,
		0.623273, 0.778162, -0.077426,
		31.760485, 41.047440, 49.933205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505093, 40.771725, 50.687298>,  <31.324194, 40.502728, 49.987404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505093, 40.771725, 50.687298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.549627, 41.069553, 50.424023>,  <31.576349, 41.248249, 50.266056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.549627, 41.069553, 50.424023>,  <31.505093, 40.771725, 50.687298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549627, 41.069553, 50.424023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320201, 0.653866, 0.685515,
		0.940784, 0.134429, 0.311213,
		0.111338, 0.744573, -0.658191,
		31.583029, 41.292927, 50.226566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521248, 41.353760, 51.182636>,  <31.505093, 40.771725, 50.687298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521248, 41.353760, 51.182636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500031, 41.509109, 50.814648>,  <31.487301, 41.602318, 50.593853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500031, 41.509109, 50.814648>,  <31.521248, 41.353760, 51.182636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500031, 41.509109, 50.814648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502935, 0.785506, 0.360606,
		0.862695, 0.481814, 0.153662,
		-0.053042, 0.388375, -0.919974,
		31.484118, 41.625622, 50.538654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593489, 42.077244, 51.269939>,  <31.521248, 41.353760, 51.182636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593489, 42.077244, 51.269939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405848, 42.053337, 50.917492>,  <31.293262, 42.038994, 50.706024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405848, 42.053337, 50.917492>,  <31.593489, 42.077244, 51.269939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405848, 42.053337, 50.917492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705719, 0.625190, 0.333314,
		0.530946, 0.778181, -0.335457,
		-0.469103, -0.059767, -0.881119,
		31.265118, 42.035408, 50.653156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539686, 42.767742, 50.948029>,  <31.593489, 42.077244, 51.269939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539686, 42.767742, 50.948029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249140, 42.530521, 50.809074>,  <31.074812, 42.388187, 50.725700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249140, 42.530521, 50.809074>,  <31.539686, 42.767742, 50.948029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249140, 42.530521, 50.809074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667138, 0.729914, 0.148838,
		0.165295, 0.339867, -0.925834,
		-0.726364, -0.593056, -0.347390,
		31.031231, 42.352604, 50.704857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021833, 43.218380, 50.730034>,  <31.539686, 42.767742, 50.948029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021833, 43.218380, 50.730034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.820276, 42.872883, 50.727386>,  <30.699343, 42.665585, 50.725796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.820276, 42.872883, 50.727386>,  <31.021833, 43.218380, 50.730034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820276, 42.872883, 50.727386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855634, 0.498082, 0.140733,
		-0.118259, 0.076581, -0.990025,
		-0.503891, -0.863742, -0.006622,
		30.669109, 42.613762, 50.725399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418154, 43.316338, 50.326221>,  <31.021833, 43.218380, 50.730034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418154, 43.316338, 50.326221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342161, 43.016243, 50.579536>,  <30.296566, 42.836185, 50.731525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342161, 43.016243, 50.579536>,  <30.418154, 43.316338, 50.326221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342161, 43.016243, 50.579536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882200, 0.413518, 0.225226,
		-0.430849, -0.515900, -0.740417,
		-0.189981, -0.750234, 0.633290,
		30.285168, 42.791172, 50.769524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696924, 43.204369, 50.280018>,  <30.418154, 43.316338, 50.326221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696924, 43.204369, 50.280018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798246, 43.036648, 50.628735>,  <29.859039, 42.936016, 50.837963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798246, 43.036648, 50.628735>,  <29.696924, 43.204369, 50.280018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798246, 43.036648, 50.628735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917075, 0.182758, 0.354363,
		-0.307913, -0.889260, -0.338240,
		0.253305, -0.419305, 0.871791,
		29.874237, 42.910858, 50.890270>
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
