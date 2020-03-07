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
	<3.975875, -0.914907, 1.657085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.629704, -0.769711, 1.795227>,  <3.422000, -0.682593, 1.878112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.629704, -0.769711, 1.795227>,  <3.975875, -0.914907, 1.657085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.629704, -0.769711, 1.795227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157099, 0.457933, -0.874996,
		-0.475765, -0.811502, -0.339283,
		-0.865429, 0.362992, 0.345354,
		3.370075, -0.660813, 1.898833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.404855, -1.147512, 1.148148>,  <3.975875, -0.914907, 1.657085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.404855, -1.147512, 1.148148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.349858, -0.785683, 1.309563>,  <3.316859, -0.568585, 1.406412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.349858, -0.785683, 1.309563>,  <3.404855, -1.147512, 1.148148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.349858, -0.785683, 1.309563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042521, 0.401641, -0.914809,
		-0.989590, -0.142938, -0.016759,
		-0.137492, 0.904573, 0.403538,
		3.308610, -0.514311, 1.430624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.991020, -0.927619, 0.660573>,  <3.404855, -1.147512, 1.148148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.991020, -0.927619, 0.660573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.151646, -0.621674, 0.862061>,  <3.248021, -0.438107, 0.982953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.151646, -0.621674, 0.862061>,  <2.991020, -0.927619, 0.660573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.151646, -0.621674, 0.862061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024910, 0.540687, -0.840855,
		-0.915492, 0.350205, 0.198068,
		0.401565, 0.764862, 0.503718,
		3.272115, -0.392215, 1.013176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.538225, -0.301462, 0.696040>,  <2.991020, -0.927619, 0.660573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.538225, -0.301462, 0.696040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.926038, -0.209766, 0.661507>,  <3.158726, -0.154749, 0.640787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.926038, -0.209766, 0.661507>,  <2.538225, -0.301462, 0.696040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.926038, -0.209766, 0.661507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177611, 0.415159, -0.892243,
		-0.168694, 0.880394, 0.443226,
		0.969534, 0.229238, -0.086333,
		3.216898, -0.140995, 0.635607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.653314, 0.419763, 0.491292>,  <2.538225, -0.301462, 0.696040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.653314, 0.419763, 0.491292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.991645, 0.249477, 0.362701>,  <3.194643, 0.147306, 0.285547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.991645, 0.249477, 0.362701>,  <2.653314, 0.419763, 0.491292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.991645, 0.249477, 0.362701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111856, 0.447696, -0.887162,
		0.521600, 0.786344, 0.331055,
		0.845826, -0.425713, -0.321475,
		3.245393, 0.121764, 0.266259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.057764, 0.951411, 0.202352>,  <2.653314, 0.419763, 0.491292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.057764, 0.951411, 0.202352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.181898, 0.604183, 0.047356>,  <3.256378, 0.395847, -0.045642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.181898, 0.604183, 0.047356>,  <3.057764, 0.951411, 0.202352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.181898, 0.604183, 0.047356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088051, 0.379617, -0.920944,
		0.946541, 0.319919, 0.041373,
		0.310333, -0.868069, -0.387492,
		3.274997, 0.343763, -0.068892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.401676, 1.202967, -0.421331>,  <3.057764, 0.951411, 0.202352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.401676, 1.202967, -0.421331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353481, 0.810734, -0.483223>,  <3.324564, 0.575394, -0.520358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353481, 0.810734, -0.483223>,  <3.401676, 1.202967, -0.421331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.353481, 0.810734, -0.483223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027110, 0.159058, -0.986897,
		0.992344, -0.114714, -0.045748,
		-0.120488, -0.980582, -0.154730,
		3.317334, 0.516559, -0.529642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.908800, 0.998901, -0.912159>,  <3.401676, 1.202967, -0.421331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.908800, 0.998901, -0.912159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.619543, 0.722660, -0.916794>,  <3.445989, 0.556916, -0.919575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.619543, 0.722660, -0.916794>,  <3.908800, 0.998901, -0.912159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.619543, 0.722660, -0.916794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184026, 0.208812, -0.960485,
		0.665732, -0.692436, -0.278089,
		-0.723142, -0.690601, -0.011586,
		3.402600, 0.515480, -0.920270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.437197, 1.102458, 3.166801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.556377, 0.723053, 3.123810>,  <2.627885, 0.495410, 3.098015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.556377, 0.723053, 3.123810>,  <2.437197, 1.102458, 3.166801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.556377, 0.723053, 3.123810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248696, -0.031573, 0.968067,
		-0.921616, -0.315165, 0.226484,
		0.297950, -0.948512, -0.107478,
		2.645762, 0.438499, 3.091566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301963, 0.843039, 3.771518>,  <2.437197, 1.102458, 3.166801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301963, 0.843039, 3.771518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.547363, 0.576508, 3.601990>,  <2.694603, 0.416589, 3.500273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.547363, 0.576508, 3.601990>,  <2.301963, 0.843039, 3.771518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.547363, 0.576508, 3.601990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421275, -0.177791, 0.889335,
		-0.667942, -0.724152, 0.171633,
		0.613499, -0.666329, -0.423821,
		2.731413, 0.376609, 3.474843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.247546, 0.156586, 3.981555>,  <2.301963, 0.843039, 3.771518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.247546, 0.156586, 3.981555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626854, 0.183075, 3.857361>,  <2.854438, 0.198968, 3.782844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626854, 0.183075, 3.857361>,  <2.247546, 0.156586, 3.981555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.626854, 0.183075, 3.857361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317469, -0.199304, 0.927087,
		-0.000486, -0.977697, -0.210018,
		0.948269, 0.066223, -0.310486,
		2.911335, 0.202942, 3.764215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.564289, -0.472968, 4.214705>,  <2.247546, 0.156586, 3.981555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.564289, -0.472968, 4.214705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.833136, -0.186714, 4.138680>,  <2.994444, -0.014962, 4.093064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.833136, -0.186714, 4.138680>,  <2.564289, -0.472968, 4.214705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.833136, -0.186714, 4.138680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505946, -0.256454, 0.823559,
		0.540627, -0.649690, -0.534440,
		0.672117, 0.715636, -0.190062,
		3.034771, 0.027977, 4.081661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.260775, -0.773373, 4.242834>,  <2.564289, -0.472968, 4.214705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.260775, -0.773373, 4.242834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.289309, -0.378494, 4.299904>,  <3.306429, -0.141567, 4.334146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.289309, -0.378494, 4.299904>,  <3.260775, -0.773373, 4.242834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.289309, -0.378494, 4.299904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506886, -0.159069, 0.847209,
		0.859056, 0.011885, -0.511743,
		0.071333, 0.987196, 0.142674,
		3.310709, -0.082336, 4.342706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.840767, -0.756725, 4.550734>,  <3.260775, -0.773373, 4.242834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.840767, -0.756725, 4.550734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.664999, -0.414810, 4.661186>,  <3.559538, -0.209661, 4.727458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.664999, -0.414810, 4.661186>,  <3.840767, -0.756725, 4.550734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.664999, -0.414810, 4.661186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307624, -0.145615, 0.940300,
		0.843965, 0.498131, -0.198967,
		-0.439420, 0.854787, 0.276131,
		3.533173, -0.158374, 4.744026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.376544, -0.413575, 4.899834>,  <3.840767, -0.756725, 4.550734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.376544, -0.413575, 4.899834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.034830, -0.243675, 5.019691>,  <3.829802, -0.141736, 5.091606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.034830, -0.243675, 5.019691>,  <4.376544, -0.413575, 4.899834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.034830, -0.243675, 5.019691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368111, 0.087346, 0.925670,
		0.367004, 0.901088, -0.230973,
		-0.854285, 0.424748, 0.299644,
		3.778545, -0.116251, 5.109585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.483332, -0.049985, 5.440349>,  <4.376544, -0.413575, 4.899834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.483332, -0.049985, 5.440349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.087212, -0.042465, 5.495415>,  <3.849540, -0.037954, 5.528454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.087212, -0.042465, 5.495415>,  <4.483332, -0.049985, 5.440349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.087212, -0.042465, 5.495415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138099, 0.024142, 0.990124,
		0.015289, 0.999532, -0.026504,
		-0.990300, 0.018798, 0.137665,
		3.790122, -0.036826, 5.536715>
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
