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
	<2.173390, 1.330338, 3.649205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305984, 1.609090, 3.394811>,  <2.385541, 1.776341, 3.242175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305984, 1.609090, 3.394811>,  <2.173390, 1.330338, 3.649205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305984, 1.609090, 3.394811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778331, 0.582974, 0.233113,
		0.533214, 0.417732, 0.735651,
		0.331487, 0.696879, -0.635984,
		2.405431, 1.818154, 3.204016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.938789, 2.001211, 3.923885>,  <2.173390, 1.330338, 3.649205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.938789, 2.001211, 3.923885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.014088, 2.051066, 3.534213>,  <2.059267, 2.080980, 3.300409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.014088, 2.051066, 3.534213>,  <1.938789, 2.001211, 3.923885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.014088, 2.051066, 3.534213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727946, 0.683567, -0.053209,
		0.659286, 0.719167, 0.219409,
		0.188247, 0.124638, -0.974181,
		2.070562, 2.088458, 3.241958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.841909, 2.714055, 3.894920>,  <1.938789, 2.001211, 3.923885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.841909, 2.714055, 3.894920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.811283, 2.571132, 3.522583>,  <1.792907, 2.485378, 3.299181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.811283, 2.571132, 3.522583>,  <1.841909, 2.714055, 3.894920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.811283, 2.571132, 3.522583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762684, 0.622323, -0.176148,
		0.642224, 0.696452, -0.320161,
		-0.076565, -0.357308, -0.930843,
		1.788314, 2.463939, 3.243330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.046866, 3.221037, 3.399817>,  <1.841909, 2.714055, 3.894920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.046866, 3.221037, 3.399817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.780022, 2.952726, 3.270188>,  <1.619915, 2.791740, 3.192411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.780022, 2.952726, 3.270188>,  <2.046866, 3.221037, 3.399817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.780022, 2.952726, 3.270188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693030, 0.718381, -0.060316,
		0.273265, 0.184354, -0.944108,
		-0.667110, -0.670777, -0.324071,
		1.579889, 2.751493, 3.172967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.689810, 3.582389, 2.918771>,  <2.046866, 3.221037, 3.399817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.689810, 3.582389, 2.918771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.451817, 3.274355, 3.010828>,  <1.309021, 3.089535, 3.066062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.451817, 3.274355, 3.010828>,  <1.689810, 3.582389, 2.918771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.451817, 3.274355, 3.010828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802404, 0.585618, -0.114888,
		-0.046302, -0.253024, -0.966352,
		-0.594982, -0.770085, 0.230142,
		1.273322, 3.043329, 3.079870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.056610, 3.639704, 2.407584>,  <1.689810, 3.582389, 2.918771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.056610, 3.639704, 2.407584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.951916, 3.406164, 2.714990>,  <0.889099, 3.266040, 2.899433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.951916, 3.406164, 2.714990>,  <1.056610, 3.639704, 2.407584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.951916, 3.406164, 2.714990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899914, 0.435390, 0.024282,
		-0.348780, -0.685241, -0.639372,
		-0.261737, -0.583850, 0.768514,
		0.873395, 3.231009, 2.945544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.360460, 3.584324, 2.259654>,  <1.056610, 3.639704, 2.407584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.360460, 3.584324, 2.259654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.439568, 3.508317, 2.644316>,  <0.487032, 3.462713, 2.875113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.439568, 3.508317, 2.644316>,  <0.360460, 3.584324, 2.259654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.439568, 3.508317, 2.644316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812261, 0.517416, 0.269283,
		-0.548744, -0.834371, -0.052015,
		0.197768, -0.190017, 0.961655,
		0.498898, 3.451312, 2.932813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.310011, 3.524863, 2.651918>,  <0.360460, 3.584324, 2.259654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.310011, 3.524863, 2.651918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.010799, 3.629657, 2.895825>,  <0.168727, 3.692533, 3.042170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.010799, 3.629657, 2.895825>,  <-0.310011, 3.524863, 2.651918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.010799, 3.629657, 2.895825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577622, 0.709446, 0.403780,
		-0.326813, -0.654255, 0.682015,
		0.748028, 0.261986, 0.609769,
		0.213609, 3.708252, 3.078756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.520535, 4.546212, 2.725537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.496414, 4.533621, 3.124611>,  <-0.481942, 4.526066, 3.364055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.496414, 4.533621, 3.124611>,  <-0.520535, 4.546212, 2.725537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.496414, 4.533621, 3.124611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513694, -0.856007, -0.058057,
		0.855851, 0.516005, -0.035450,
		0.060303, -0.031477, 0.997684,
		-0.478323, 4.524178, 3.423916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.173722, 4.482088, 2.983502>,  <-0.520535, 4.546212, 2.725537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.173722, 4.482088, 2.983502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.051277, 4.333593, 3.279010>,  <-0.186277, 4.244497, 3.456314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.051277, 4.333593, 3.279010>,  <0.173722, 4.482088, 2.983502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.051277, 4.333593, 3.279010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586570, -0.808903, 0.040136,
		0.582692, 0.455916, 0.672763,
		-0.562499, -0.371236, 0.738769,
		-0.220027, 4.222222, 3.500640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.604776, 4.370997, 3.550352>,  <0.173722, 4.482088, 2.983502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.604776, 4.370997, 3.550352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.302948, 4.109272, 3.570332>,  <0.121851, 3.952236, 3.582319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.302948, 4.109272, 3.570332>,  <0.604776, 4.370997, 3.550352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.302948, 4.109272, 3.570332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649776, -0.755635, -0.082501,
		0.091725, -0.029797, 0.995338,
		-0.754571, -0.654315, 0.049950,
		0.076577, 3.912977, 3.585316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.807309, 3.839222, 3.994187>,  <0.604776, 4.370997, 3.550352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.807309, 3.839222, 3.994187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.534027, 3.716200, 3.729267>,  <0.370058, 3.642387, 3.570315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.534027, 3.716200, 3.729267>,  <0.807309, 3.839222, 3.994187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.534027, 3.716200, 3.729267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584427, -0.774077, -0.243414,
		-0.437808, -0.553368, 0.708596,
		-0.683205, -0.307554, -0.662300,
		0.329065, 3.623934, 3.530577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.681588, 3.160549, 4.170988>,  <0.807309, 3.839222, 3.994187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.681588, 3.160549, 4.170988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596977, 3.211375, 3.783357>,  <0.546211, 3.241871, 3.550778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596977, 3.211375, 3.783357>,  <0.681588, 3.160549, 4.170988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.596977, 3.211375, 3.783357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648996, -0.723107, -0.236475,
		-0.730795, -0.678948, 0.070490,
		-0.211526, 0.127067, -0.969077,
		0.533519, 3.249495, 3.492634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.514648, 2.504101, 3.949546>,  <0.681588, 3.160549, 4.170988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.514648, 2.504101, 3.949546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.636307, 2.729914, 3.642613>,  <0.709302, 2.865402, 3.458454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.636307, 2.729914, 3.642613>,  <0.514648, 2.504101, 3.949546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.636307, 2.729914, 3.642613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627245, -0.724917, -0.284710,
		-0.716979, -0.394710, -0.574582,
		0.304146, 0.564534, -0.767331,
		0.727551, 2.899274, 3.412414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.524204, 2.042238, 3.393108>,  <0.514648, 2.504101, 3.949546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.524204, 2.042238, 3.393108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.763680, 2.351387, 3.308976>,  <0.907365, 2.536876, 3.258497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.763680, 2.351387, 3.308976>,  <0.524204, 2.042238, 3.393108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.763680, 2.351387, 3.308976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714815, -0.634016, -0.295066,
		-0.361401, 0.026306, -0.932039,
		0.598690, 0.772872, -0.210330,
		0.943286, 2.583249, 3.245877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.831939, 1.775816, 2.788281>,  <0.524204, 2.042238, 3.393108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.831939, 1.775816, 2.788281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.065292, 2.077925, 2.907764>,  <1.205304, 2.259190, 2.979455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.065292, 2.077925, 2.907764>,  <0.831939, 1.775816, 2.788281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.065292, 2.077925, 2.907764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807982, -0.502261, -0.308055,
		-0.082635, 0.421066, -0.903258,
		0.583383, 0.755273, 0.298709,
		1.240307, 2.304507, 2.997377>
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
