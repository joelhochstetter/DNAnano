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
	<-0.148441, 1.006005, 2.699051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.435989, 1.067230, 2.427818>,  <-0.608518, 1.103965, 2.265078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.435989, 1.067230, 2.427818>,  <-0.148441, 1.006005, 2.699051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.435989, 1.067230, 2.427818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678082, 0.369192, -0.635533,
		0.153066, -0.916662, -0.369191,
		-0.718871, 0.153063, -0.678083,
		-0.651651, 1.113149, 2.224393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.058468, 0.680514, 2.011549>,  <-0.148441, 1.006005, 2.699051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.058468, 0.680514, 2.011549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.180614, 0.999191, 1.975708>,  <-0.324064, 1.190398, 1.954204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.180614, 0.999191, 1.975708>,  <0.058468, 0.680514, 2.011549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.180614, 0.999191, 1.975708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574453, 0.347629, -0.741052,
		-0.559243, -0.494402, -0.665443,
		-0.597705, 0.796693, -0.089602,
		-0.359926, 1.238199, 1.948828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.137639, 0.574603, 1.312966>,  <0.058468, 0.680514, 2.011549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.137639, 0.574603, 1.312966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.162468, 0.951004, 1.446030>,  <-0.177365, 1.176845, 1.525868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.162468, 0.951004, 1.446030>,  <-0.137639, 0.574603, 1.312966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.162468, 0.951004, 1.446030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532939, 0.313057, -0.786112,
		-0.843874, 0.128492, -0.520928,
		-0.062071, 0.941002, 0.332659,
		-0.181089, 1.233305, 1.545827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.402768, 1.036549, 0.808598>,  <-0.137639, 0.574603, 1.312966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.402768, 1.036549, 0.808598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.162262, 1.205383, 1.079987>,  <-0.017958, 1.306684, 1.242820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.162262, 1.205383, 1.079987>,  <-0.402768, 1.036549, 0.808598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.162262, 1.205383, 1.079987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687296, 0.159898, -0.708560,
		-0.407559, 0.892343, -0.193957,
		0.601265, 0.422086, 0.678472,
		0.018117, 1.332009, 1.283528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.304409, 1.671322, 0.540672>,  <-0.402768, 1.036549, 0.808598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.304409, 1.671322, 0.540672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.008316, 1.556007, 0.761818>,  <0.195951, 1.486819, 0.894505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.008316, 1.556007, 0.761818>,  <-0.304409, 1.671322, 0.540672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.008316, 1.556007, 0.761818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612823, 0.191797, -0.766591,
		0.114960, 0.938139, 0.326618,
		0.781814, -0.288286, 0.552864,
		0.242860, 1.469522, 0.927677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.172571, 2.256713, 0.592335>,  <-0.304409, 1.671322, 0.540672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.172571, 2.256713, 0.592335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.390259, 1.927727, 0.658516>,  <0.520871, 1.730335, 0.698225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.390259, 1.927727, 0.658516>,  <0.172571, 2.256713, 0.592335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.390259, 1.927727, 0.658516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644089, 0.283244, -0.710578,
		0.537563, 0.493277, 0.683889,
		0.544219, -0.822466, 0.165453,
		0.553524, 1.680987, 0.708152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.909452, 2.533627, 0.750704>,  <0.172571, 2.256713, 0.592335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.909452, 2.533627, 0.750704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.912163, 2.150879, 0.634529>,  <0.913789, 1.921230, 0.564824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.912163, 2.150879, 0.634529>,  <0.909452, 2.533627, 0.750704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.912163, 2.150879, 0.634529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789378, 0.183417, -0.585867,
		0.613870, -0.225294, 0.756576,
		0.006776, -0.956870, -0.290436,
		0.914196, 1.863818, 0.547398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.647266, 2.405880, 0.725374>,  <0.909452, 2.533627, 0.750704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.647266, 2.405880, 0.725374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444923, 2.145950, 0.498451>,  <1.323518, 1.989993, 0.362297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444923, 2.145950, 0.498451>,  <1.647266, 2.405880, 0.725374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.444923, 2.145950, 0.498451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719876, 0.044337, -0.692685,
		0.475276, -0.758791, 0.445365,
		-0.505857, -0.649824, -0.567308,
		1.293166, 1.951003, 0.328259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.364478, 2.496382, 3.643498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.159231, 2.731102, 3.894058>,  <2.036083, 2.871934, 4.044394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.159231, 2.731102, 3.894058>,  <2.364478, 2.496382, 3.643498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.159231, 2.731102, 3.894058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173535, -0.643803, 0.745254,
		0.840593, 0.491105, 0.228516,
		-0.513117, 0.586800, 0.626400,
		2.005296, 2.907142, 4.081978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.085653, 2.194424, 4.164294>,  <2.364478, 2.496382, 3.643498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.085653, 2.194424, 4.164294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.131556, 1.830032, 4.322762>,  <2.159097, 1.611398, 4.417842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.131556, 1.830032, 4.322762>,  <2.085653, 2.194424, 4.164294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.131556, 1.830032, 4.322762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888120, 0.084586, 0.451762,
		-0.445056, -0.403687, -0.799351,
		0.114756, -0.910978, 0.396168,
		2.165982, 1.556739, 4.441612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.433537, 1.827988, 4.073264>,  <2.085653, 2.194424, 4.164294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.433537, 1.827988, 4.073264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.629236, 1.669197, 4.383888>,  <1.746656, 1.573922, 4.570263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.629236, 1.669197, 4.383888>,  <1.433537, 1.827988, 4.073264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.629236, 1.669197, 4.383888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821424, 0.089482, 0.563255,
		-0.293088, -0.913456, -0.282309,
		0.489247, -0.396978, 0.776560,
		1.776010, 1.550104, 4.616856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.114368, 1.317569, 4.201822>,  <1.433537, 1.827988, 4.073264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.114368, 1.317569, 4.201822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.285578, 1.440498, 4.541786>,  <1.388304, 1.514256, 4.745765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.285578, 1.440498, 4.541786>,  <1.114368, 1.317569, 4.201822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.285578, 1.440498, 4.541786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880488, -0.070266, 0.468832,
		0.203802, -0.949008, 0.240519,
		0.428025, 0.307323, 0.849910,
		1.413985, 1.532695, 4.796759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.032638, 0.887736, 4.685064>,  <1.114368, 1.317569, 4.201822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.032638, 0.887736, 4.685064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.097200, 1.220398, 4.897591>,  <1.135938, 1.419995, 5.025107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.097200, 1.220398, 4.897591>,  <1.032638, 0.887736, 4.685064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.097200, 1.220398, 4.897591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670036, -0.302925, 0.677708,
		0.724569, -0.465388, 0.508345,
		0.161406, 0.831655, 0.531317,
		1.145622, 1.469895, 5.056986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.176558, 0.661152, 5.311081>,  <1.032638, 0.887736, 4.685064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.176558, 0.661152, 5.311081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.090916, 1.046066, 5.378212>,  <1.039530, 1.277015, 5.418490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.090916, 1.046066, 5.378212>,  <1.176558, 0.661152, 5.311081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.090916, 1.046066, 5.378212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497219, -0.255252, 0.829228,
		0.840792, 0.094097, 0.533118,
		-0.214107, 0.962285, 0.167827,
		1.026684, 1.334752, 5.428560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.258745, 0.665275, 5.948656>,  <1.176558, 0.661152, 5.311081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.258745, 0.665275, 5.948656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.030909, 0.988419, 5.888084>,  <0.894207, 1.182305, 5.851742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.030909, 0.988419, 5.888084>,  <1.258745, 0.665275, 5.948656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.030909, 0.988419, 5.888084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517763, -0.209579, 0.829456,
		0.638347, 0.550856, 0.537654,
		-0.569592, 0.807858, -0.151428,
		0.860031, 1.230776, 5.842656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.276975, 1.059698, 6.540232>,  <1.258745, 0.665275, 5.948656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.276975, 1.059698, 6.540232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.948824, 1.179108, 6.345146>,  <0.751933, 1.250753, 6.228095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.948824, 1.179108, 6.345146>,  <1.276975, 1.059698, 6.540232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.948824, 1.179108, 6.345146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528694, -0.071025, 0.845836,
		0.217863, 0.951756, 0.216095,
		-0.820377, 0.298524, -0.487714,
		0.702711, 1.268665, 6.198832>
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
