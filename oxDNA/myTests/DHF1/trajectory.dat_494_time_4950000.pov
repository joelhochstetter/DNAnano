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
	<2.822083, 2.915041, 4.198283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442991, 3.039961, 4.224442>,  <2.215536, 3.114913, 4.240137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442991, 3.039961, 4.224442>,  <2.822083, 2.915041, 4.198283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.442991, 3.039961, 4.224442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277998, -0.908792, 0.311149,
		0.156603, 0.276705, 0.948108,
		-0.947730, 0.312299, 0.065396,
		2.158672, 3.133651, 4.244061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.493585, 2.638154, 4.873294>,  <2.822083, 2.915041, 4.198283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.493585, 2.638154, 4.873294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.202368, 2.725750, 4.613449>,  <2.027637, 2.778308, 4.457542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.202368, 2.725750, 4.613449>,  <2.493585, 2.638154, 4.873294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.202368, 2.725750, 4.613449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546138, -0.758035, 0.356534,
		-0.414352, 0.614350, 0.671481,
		-0.728043, 0.218991, -0.649613,
		1.983955, 2.791447, 4.418565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.856663, 2.521747, 5.255348>,  <2.493585, 2.638154, 4.873294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.856663, 2.521747, 5.255348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.758934, 2.521591, 4.867470>,  <1.700298, 2.521497, 4.634743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.758934, 2.521591, 4.867470>,  <1.856663, 2.521747, 5.255348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.758934, 2.521591, 4.867470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683094, -0.709692, 0.172395,
		-0.688252, 0.704511, 0.173126,
		-0.244320, -0.000390, -0.969694,
		1.685638, 2.521474, 4.576561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.107512, 2.706231, 5.184629>,  <1.856663, 2.521747, 5.255348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.107512, 2.706231, 5.184629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.235539, 2.519415, 4.854919>,  <1.312355, 2.407326, 4.657093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.235539, 2.519415, 4.854919>,  <1.107512, 2.706231, 5.184629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.235539, 2.519415, 4.854919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796158, -0.604179, 0.033181,
		-0.513507, 0.645633, -0.565216,
		0.320069, -0.467040, -0.824275,
		1.331560, 2.379303, 4.607637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.503225, 2.711025, 4.671138>,  <1.107512, 2.706231, 5.184629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.503225, 2.711025, 4.671138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.739213, 2.407106, 4.561852>,  <0.880805, 2.224756, 4.496280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.739213, 2.407106, 4.561852>,  <0.503225, 2.711025, 4.671138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.739213, 2.407106, 4.561852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807139, -0.563977, -0.174517,
		-0.021490, 0.323482, -0.945990,
		0.589970, -0.759795, -0.273215,
		0.916203, 2.179168, 4.479887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.301400, 2.530250, 3.986833>,  <0.503225, 2.711025, 4.671138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.301400, 2.530250, 3.986833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487728, 2.216238, 4.150169>,  <0.599524, 2.027831, 4.248171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487728, 2.216238, 4.150169>,  <0.301400, 2.530250, 3.986833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.487728, 2.216238, 4.150169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806958, -0.566213, -0.167990,
		0.363084, -0.251260, -0.897239,
		0.465820, -0.785029, 0.408340,
		0.627474, 1.980729, 4.272671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.069889, 1.941294, 3.608000>,  <0.301400, 2.530250, 3.986833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.069889, 1.941294, 3.608000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.196000, 1.758057, 3.940445>,  <0.271667, 1.648114, 4.139912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.196000, 1.758057, 3.940445>,  <0.069889, 1.941294, 3.608000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.196000, 1.758057, 3.940445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655922, -0.738105, -0.158010,
		0.685833, -0.495329, -0.533182,
		0.315278, -0.458094, 0.831114,
		0.290583, 1.620628, 4.189779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.062097, 1.161034, 3.446643>,  <0.069889, 1.941294, 3.608000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.062097, 1.161034, 3.446643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.054216, 1.210714, 3.843468>,  <0.049488, 1.240522, 4.081563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.054216, 1.210714, 3.843468>,  <0.062097, 1.161034, 3.446643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.054216, 1.210714, 3.843468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749538, -0.658505, 0.067555,
		0.661668, -0.742257, 0.106067,
		-0.019702, 0.124200, 0.992062,
		0.048306, 1.247974, 4.141086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.219806, 1.037167, 4.072442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.103607, 0.839233, 4.400040>,  <-1.033888, 0.720473, 4.596598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.103607, 0.839233, 4.400040>,  <-1.219806, 1.037167, 4.072442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.103607, 0.839233, 4.400040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792885, 0.603627, 0.083474,
		-0.535672, 0.625119, 0.567698,
		0.290497, -0.494834, 0.818994,
		-1.016458, 0.690783, 4.645738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.172728, 1.474600, 4.671647>,  <-1.219806, 1.037167, 4.072442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.172728, 1.474600, 4.671647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.915482, 1.168602, 4.685417>,  <-0.761134, 0.985003, 4.693679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.915482, 1.168602, 4.685417>,  <-1.172728, 1.474600, 4.671647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.915482, 1.168602, 4.685417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756747, 0.641777, 0.124321,
		-0.117199, -0.053901, 0.991645,
		0.643116, -0.764994, 0.034426,
		-0.722547, 0.939104, 4.695745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.631119, 1.532913, 5.252659>,  <-1.172728, 1.474600, 4.671647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.631119, 1.532913, 5.252659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.467186, 1.314552, 4.960350>,  <-0.368826, 1.183536, 4.784965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.467186, 1.314552, 4.960350>,  <-0.631119, 1.532913, 5.252659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.467186, 1.314552, 4.960350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826481, 0.561222, 0.044265,
		0.385961, -0.622110, 0.681185,
		0.409834, -0.545902, -0.730772,
		-0.344236, 1.150782, 4.741118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.028943, 1.236332, 5.438611>,  <-0.631119, 1.532913, 5.252659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.028943, 1.236332, 5.438611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.038639, 1.263584, 5.039658>,  <0.044457, 1.279935, 4.800286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.038639, 1.263584, 5.039658>,  <0.028943, 1.236332, 5.438611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.038639, 1.263584, 5.039658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879018, 0.473752, 0.053725,
		0.476172, -0.878019, -0.048404,
		0.024240, 0.068131, -0.997382,
		0.045911, 1.284023, 4.740443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.736114, 1.217630, 5.304638>,  <0.028943, 1.236332, 5.438611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.736114, 1.217630, 5.304638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.600197, 1.340206, 4.948967>,  <0.518647, 1.413752, 4.735564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.600197, 1.340206, 4.948967>,  <0.736114, 1.217630, 5.304638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.600197, 1.340206, 4.948967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891648, 0.405706, -0.200916,
		0.299175, -0.861102, -0.411092,
		-0.339792, 0.306440, -0.889177,
		0.498259, 1.432138, 4.682214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.241416, 0.974918, 4.733630>,  <0.736114, 1.217630, 5.304638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.241416, 0.974918, 4.733630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.044746, 1.296082, 4.598816>,  <0.926744, 1.488780, 4.517927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.044746, 1.296082, 4.598816>,  <1.241416, 0.974918, 4.733630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.044746, 1.296082, 4.598816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869795, 0.471237, -0.146263,
		0.041388, -0.365066, -0.930061,
		-0.491675, 0.802909, -0.337036,
		0.897244, 1.536954, 4.497705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.695736, 1.201122, 4.187142>,  <1.241416, 0.974918, 4.733630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.695736, 1.201122, 4.187142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.440014, 1.500443, 4.257950>,  <1.286581, 1.680035, 4.300435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.440014, 1.500443, 4.257950>,  <1.695736, 1.201122, 4.187142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.440014, 1.500443, 4.257950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714263, 0.663152, -0.223735,
		-0.284812, -0.016597, -0.958440,
		-0.639305, 0.748300, 0.177019,
		1.248222, 1.724933, 4.311056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.502400, 1.717937, 3.586199>,  <1.695736, 1.201122, 4.187142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.502400, 1.717937, 3.586199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.517544, 1.891621, 3.946205>,  <1.526630, 1.995831, 4.162209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.517544, 1.891621, 3.946205>,  <1.502400, 1.717937, 3.586199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.517544, 1.891621, 3.946205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731741, 0.601321, -0.320887,
		-0.680531, 0.670727, -0.294962,
		0.037860, 0.434209, 0.900016,
		1.528902, 2.021883, 4.216210>
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
