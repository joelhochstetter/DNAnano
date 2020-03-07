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
	<3.951335, 2.771558, 3.163098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.921128, 2.602009, 2.802071>,  <3.903004, 2.500279, 2.585454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.921128, 2.602009, 2.802071>,  <3.951335, 2.771558, 3.163098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.921128, 2.602009, 2.802071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819814, 0.488869, -0.298181,
		0.567628, -0.762455, 0.310580,
		-0.075517, -0.423874, -0.902568,
		3.898473, 2.474847, 2.531300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.529245, 2.399929, 2.952915>,  <3.951335, 2.771558, 3.163098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.529245, 2.399929, 2.952915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.337264, 2.582260, 2.653084>,  <4.222075, 2.691659, 2.473185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.337264, 2.582260, 2.653084>,  <4.529245, 2.399929, 2.952915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.337264, 2.582260, 2.653084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803227, 0.571928, -0.166508,
		0.352805, -0.681997, -0.640632,
		-0.479953, 0.455828, -0.749577,
		4.193278, 2.719008, 2.428210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.819275, 2.333874, 2.246195>,  <4.529245, 2.399929, 2.952915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.819275, 2.333874, 2.246195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.626203, 2.678101, 2.181152>,  <4.510359, 2.884637, 2.142127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.626203, 2.678101, 2.181152>,  <4.819275, 2.333874, 2.246195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.626203, 2.678101, 2.181152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822638, 0.381803, -0.421298,
		-0.300472, -0.337120, -0.892225,
		-0.482682, 0.860567, -0.162607,
		4.481398, 2.936271, 2.132370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.047019, 2.493761, 1.572650>,  <4.819275, 2.333874, 2.246195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.047019, 2.493761, 1.572650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.917982, 2.810665, 1.779823>,  <4.840559, 3.000808, 1.904127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.917982, 2.810665, 1.779823>,  <5.047019, 2.493761, 1.572650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.917982, 2.810665, 1.779823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786180, 0.528994, -0.319509,
		-0.527118, 0.304118, -0.793510,
		-0.322594, 0.792261, 0.517934,
		4.821204, 3.048344, 1.935203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.838528, 2.984844, 1.090827>,  <5.047019, 2.493761, 1.572650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.838528, 2.984844, 1.090827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.927805, 3.191982, 1.421165>,  <4.981371, 3.316265, 1.619369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.927805, 3.191982, 1.421165>,  <4.838528, 2.984844, 1.090827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.927805, 3.191982, 1.421165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770211, 0.425592, -0.475023,
		-0.597462, 0.742097, -0.303860,
		0.223193, 0.517844, 0.825846,
		4.994763, 3.347336, 1.668919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.944624, 3.597529, 0.876423>,  <4.838528, 2.984844, 1.090827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.944624, 3.597529, 0.876423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.141053, 3.583858, 1.224602>,  <5.258911, 3.575656, 1.433509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.141053, 3.583858, 1.224602>,  <4.944624, 3.597529, 0.876423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.141053, 3.583858, 1.224602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758049, 0.509082, -0.407674,
		-0.429196, 0.860039, 0.275904,
		0.491073, -0.034176, 0.870448,
		5.288375, 3.573606, 1.485736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.201640, 4.315592, 1.055109>,  <4.944624, 3.597529, 0.876423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.201640, 4.315592, 1.055109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.425240, 4.045422, 1.247490>,  <5.559401, 3.883319, 1.362919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.425240, 4.045422, 1.247490>,  <5.201640, 4.315592, 1.055109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.425240, 4.045422, 1.247490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813679, 0.335263, -0.474895,
		0.159511, 0.656808, 0.736994,
		0.559001, -0.675427, 0.480953,
		5.592940, 3.842793, 1.391776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.834525, 4.667421, 1.425862>,  <5.201640, 4.315592, 1.055109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.834525, 4.667421, 1.425862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929348, 4.280746, 1.387245>,  <5.986243, 4.048742, 1.364075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929348, 4.280746, 1.387245>,  <5.834525, 4.667421, 1.425862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.929348, 4.280746, 1.387245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876223, 0.255670, -0.408492,
		0.419567, 0.012245, 0.907642,
		0.237059, -0.966687, -0.096541,
		6.000466, 3.990741, 1.358283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.400132, 4.147823, 0.348035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.724707, 3.959698, 0.486816>,  <1.919451, 3.846823, 0.570085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.724707, 3.959698, 0.486816>,  <1.400132, 4.147823, 0.348035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.724707, 3.959698, 0.486816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561254, -0.461515, 0.687021,
		-0.162991, -0.752203, -0.638455,
		0.811436, -0.470313, 0.346954,
		1.968138, 3.818604, 0.590903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.345513, 3.399180, 0.383276>,  <1.400132, 4.147823, 0.348035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.345513, 3.399180, 0.383276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.561657, 3.564793, 0.676285>,  <1.691343, 3.664160, 0.852090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.561657, 3.564793, 0.676285>,  <1.345513, 3.399180, 0.383276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.561657, 3.564793, 0.676285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640515, -0.362160, 0.677186,
		0.545667, -0.835115, 0.069497,
		0.540359, 0.414032, 0.732522,
		1.723765, 3.689002, 0.896042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.394377, 2.935690, 0.852522>,  <1.345513, 3.399180, 0.383276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.394377, 2.935690, 0.852522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.440659, 3.292557, 1.027176>,  <1.468428, 3.506677, 1.131968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.440659, 3.292557, 1.027176>,  <1.394377, 2.935690, 0.852522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.440659, 3.292557, 1.027176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687512, -0.245335, 0.683475,
		0.716896, -0.379273, 0.584989,
		0.115705, 0.892168, 0.436634,
		1.475370, 3.560207, 1.158166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.447722, 2.818765, 1.561723>,  <1.394377, 2.935690, 0.852522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.447722, 2.818765, 1.561723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301027, 3.186954, 1.507713>,  <1.213010, 3.407868, 1.475308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301027, 3.186954, 1.507713>,  <1.447722, 2.818765, 1.561723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.301027, 3.186954, 1.507713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724680, -0.191634, 0.661903,
		0.583389, 0.340594, 0.737328,
		-0.366737, 0.920474, -0.135024,
		1.191006, 3.463097, 1.467206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.298666, 3.039438, 2.182127>,  <1.447722, 2.818765, 1.561723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.298666, 3.039438, 2.182127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077702, 3.250919, 1.924347>,  <0.945123, 3.377808, 1.769679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077702, 3.250919, 1.924347>,  <1.298666, 3.039438, 2.182127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.077702, 3.250919, 1.924347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805927, -0.141298, 0.574907,
		0.212896, 0.836963, 0.504151,
		-0.552411, 0.528703, -0.644449,
		0.911978, 3.409530, 1.731012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.942831, 3.572639, 2.637630>,  <1.298666, 3.039438, 2.182127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.942831, 3.572639, 2.637630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.735212, 3.564426, 2.295830>,  <0.610641, 3.559499, 2.090750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.735212, 3.564426, 2.295830>,  <0.942831, 3.572639, 2.637630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.735212, 3.564426, 2.295830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854746, 0.013749, 0.518865,
		0.001096, 0.999694, -0.024684,
		-0.519046, -0.020530, -0.854500,
		0.579499, 3.558267, 2.039480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.278040, 3.737077, 2.843356>,  <0.942831, 3.572639, 2.637630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.278040, 3.737077, 2.843356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.175842, 3.655087, 2.465424>,  <0.114524, 3.605892, 2.238664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.175842, 3.655087, 2.465424>,  <0.278040, 3.737077, 2.843356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.175842, 3.655087, 2.465424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921508, -0.244016, 0.302125,
		-0.292482, 0.947862, -0.126541,
		-0.255495, -0.204975, -0.944832,
		0.099194, 3.593594, 2.181974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.382092, 4.009449, 2.750462>,  <0.278040, 3.737077, 2.843356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.382092, 4.009449, 2.750462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.325485, 3.731831, 2.468109>,  <-0.291521, 3.565259, 2.298697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.325485, 3.731831, 2.468109>,  <-0.382092, 4.009449, 2.750462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.325485, 3.731831, 2.468109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869406, -0.428131, 0.246651,
		-0.473398, 0.578795, -0.663996,
		0.141517, -0.694047, -0.705884,
		-0.283030, 3.523616, 2.256344>
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
