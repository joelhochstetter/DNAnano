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
	<5.815089, 1.880555, 3.436468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695946, 1.647467, 3.738916>,  <5.624460, 1.507614, 3.920385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695946, 1.647467, 3.738916>,  <5.815089, 1.880555, 3.436468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.695946, 1.647467, 3.738916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587241, -0.512620, -0.626394,
		0.752615, -0.630601, -0.189509,
		-0.297858, -0.582721, 0.756120,
		5.606588, 1.472651, 3.965752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.854252, 1.322137, 3.074566>,  <5.815089, 1.880555, 3.436468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.854252, 1.322137, 3.074566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.564949, 1.289337, 3.348843>,  <5.391367, 1.269657, 3.513409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.564949, 1.289337, 3.348843>,  <5.854252, 1.322137, 3.074566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.564949, 1.289337, 3.348843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625414, -0.343276, -0.700728,
		0.292840, -0.935648, 0.196994,
		-0.723258, -0.081999, 0.685693,
		5.347972, 1.264737, 3.554550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.514161, 0.669756, 2.997209>,  <5.854252, 1.322137, 3.074566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.514161, 0.669756, 2.997209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.251671, 0.909429, 3.180664>,  <5.094177, 1.053233, 3.290737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.251671, 0.909429, 3.180664>,  <5.514161, 0.669756, 2.997209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.251671, 0.909429, 3.180664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718415, -0.310251, -0.622594,
		-0.230754, -0.738055, 0.634056,
		-0.656226, 0.599182, 0.458638,
		5.054803, 1.089184, 3.318255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.858468, 0.216879, 3.021207>,  <5.514161, 0.669756, 2.997209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.858468, 0.216879, 3.021207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.813873, 0.614373, 3.018103>,  <4.787117, 0.852869, 3.016240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.813873, 0.614373, 3.018103>,  <4.858468, 0.216879, 3.021207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.813873, 0.614373, 3.018103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845680, -0.098973, -0.524434,
		-0.521917, -0.051904, 0.851416,
		-0.111487, 0.993736, -0.007761,
		4.780427, 0.912493, 3.015774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.147142, 0.388955, 3.238781>,  <4.858468, 0.216879, 3.021207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.147142, 0.388955, 3.238781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293045, 0.711564, 3.052675>,  <4.380587, 0.905130, 2.941012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293045, 0.711564, 3.052675>,  <4.147142, 0.388955, 3.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293045, 0.711564, 3.052675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855318, 0.092772, -0.509730,
		-0.367946, 0.583877, 0.723674,
		0.364756, 0.806524, -0.465265,
		4.402472, 0.953522, 2.913096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.598621, 0.828425, 3.203539>,  <4.147142, 0.388955, 3.238781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.598621, 0.828425, 3.203539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.821396, 0.986184, 2.911163>,  <3.955060, 1.080839, 2.735738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.821396, 0.986184, 2.911163>,  <3.598621, 0.828425, 3.203539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.821396, 0.986184, 2.911163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812505, 0.076240, -0.577947,
		-0.172213, 0.915772, 0.362910,
		0.556936, 0.394397, -0.730940,
		3.988477, 1.104503, 2.691881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.259882, 1.394877, 2.876703>,  <3.598621, 0.828425, 3.203539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.259882, 1.394877, 2.876703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.529228, 1.291497, 2.599638>,  <3.690836, 1.229468, 2.433399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.529228, 1.291497, 2.599638>,  <3.259882, 1.394877, 2.876703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.529228, 1.291497, 2.599638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719948, -0.016225, -0.693838,
		0.168084, 0.965888, -0.196997,
		0.673366, -0.258451, -0.692662,
		3.731238, 1.213961, 2.391839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.016101, 1.716618, 2.352672>,  <3.259882, 1.394877, 2.876703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.016101, 1.716618, 2.352672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.268173, 1.466680, 2.168306>,  <3.419416, 1.316717, 2.057687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.268173, 1.466680, 2.168306>,  <3.016101, 1.716618, 2.352672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.268173, 1.466680, 2.168306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657755, -0.114173, -0.744528,
		0.412592, 0.772355, -0.482945,
		0.630179, -0.624846, -0.460913,
		3.457227, 1.279226, 2.030032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.543331, 0.763313, 1.349541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880447, 0.617281, 1.191341>,  <3.082717, 0.529662, 1.096421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880447, 0.617281, 1.191341>,  <2.543331, 0.763313, 1.349541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.880447, 0.617281, 1.191341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534199, 0.477475, 0.697603,
		-0.065839, -0.799209, 0.597436,
		0.842791, -0.365079, -0.395500,
		3.133285, 0.507757, 1.072691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.969415, 0.183415, 1.786855>,  <2.543331, 0.763313, 1.349541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.969415, 0.183415, 1.786855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.136269, 0.468023, 1.560673>,  <3.236381, 0.638788, 1.424964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.136269, 0.468023, 1.560673>,  <2.969415, 0.183415, 1.786855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.136269, 0.468023, 1.560673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534631, 0.311029, 0.785768,
		0.734962, -0.630079, -0.250660,
		0.417134, 0.711520, -0.565454,
		3.261409, 0.681479, 1.391037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.637445, 0.156153, 1.868132>,  <2.969415, 0.183415, 1.786855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.637445, 0.156153, 1.868132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.569977, 0.529001, 1.739944>,  <3.529496, 0.752710, 1.663032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.569977, 0.529001, 1.739944>,  <3.637445, 0.156153, 1.868132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.569977, 0.529001, 1.739944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678660, 0.345611, 0.648054,
		0.714823, -0.108183, -0.690887,
		-0.168670, 0.932121, -0.320470,
		3.519376, 0.808638, 1.643803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.330398, 0.411159, 1.659009>,  <3.637445, 0.156153, 1.868132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.330398, 0.411159, 1.659009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.065216, 0.694613, 1.755615>,  <3.906107, 0.864685, 1.813579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.065216, 0.694613, 1.755615>,  <4.330398, 0.411159, 1.659009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.065216, 0.694613, 1.755615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674781, 0.425850, 0.602763,
		0.324288, 0.562575, -0.760491,
		-0.662954, 0.708633, 0.241517,
		3.866330, 0.907203, 1.828070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.666356, 0.946269, 1.586984>,  <4.330398, 0.411159, 1.659009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.666356, 0.946269, 1.586984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366768, 1.059908, 1.826427>,  <4.187015, 1.128091, 1.970094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366768, 1.059908, 1.826427>,  <4.666356, 0.946269, 1.586984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366768, 1.059908, 1.826427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658908, 0.414622, 0.627637,
		-0.069886, 0.864510, -0.497734,
		-0.748970, 0.284098, 0.598609,
		4.142077, 1.145137, 2.006010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.853333, 1.577897, 1.895306>,  <4.666356, 0.946269, 1.586984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.853333, 1.577897, 1.895306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.568329, 1.431335, 2.134665>,  <4.397326, 1.343399, 2.278280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.568329, 1.431335, 2.134665>,  <4.853333, 1.577897, 1.895306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.568329, 1.431335, 2.134665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582921, 0.165591, 0.795476,
		-0.390554, 0.915603, 0.095599,
		-0.712510, -0.366403, 0.598396,
		4.354576, 1.321414, 2.314183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.872293, 2.043458, 2.398165>,  <4.853333, 1.577897, 1.895306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.872293, 2.043458, 2.398165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.729988, 1.695372, 2.534494>,  <4.644606, 1.486520, 2.616292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.729988, 1.695372, 2.534494>,  <4.872293, 2.043458, 2.398165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.729988, 1.695372, 2.534494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588062, 0.075001, 0.805331,
		-0.726373, 0.486931, 0.485057,
		-0.355761, -0.870214, 0.340824,
		4.623260, 1.434307, 2.636742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.552404, 2.192953, 3.010443>,  <4.872293, 2.043458, 2.398165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.552404, 2.192953, 3.010443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.677834, 1.813782, 2.988167>,  <4.753091, 1.586279, 2.974801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.677834, 1.813782, 2.988167>,  <4.552404, 2.192953, 3.010443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.677834, 1.813782, 2.988167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570031, 0.141012, 0.809433,
		-0.759432, -0.285563, 0.584566,
		0.313574, -0.947929, -0.055691,
		4.771906, 1.529403, 2.971460>
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
