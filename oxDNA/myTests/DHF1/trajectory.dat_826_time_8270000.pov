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
	<1.228882, 3.697566, 6.530308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.223034, 3.338554, 6.354023>,  <1.219525, 3.123147, 6.248252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.223034, 3.338554, 6.354023>,  <1.228882, 3.697566, 6.530308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.223034, 3.338554, 6.354023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056498, 0.439315, -0.896555,
		0.998296, -0.038007, 0.044286,
		-0.014619, -0.897529, -0.440713,
		1.218648, 3.069296, 6.221809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.799081, 3.608835, 6.071374>,  <1.228882, 3.697566, 6.530308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.799081, 3.608835, 6.071374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.509197, 3.379425, 5.918606>,  <1.335267, 3.241779, 5.826945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.509197, 3.379425, 5.918606>,  <1.799081, 3.608835, 6.071374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.509197, 3.379425, 5.918606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082079, 0.478469, -0.874260,
		0.684149, -0.664932, -0.299677,
		-0.724709, -0.573527, -0.381921,
		1.291784, 3.207367, 5.804029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.894190, 3.449553, 5.396188>,  <1.799081, 3.608835, 6.071374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.894190, 3.449553, 5.396188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.496761, 3.423721, 5.433380>,  <1.258304, 3.408222, 5.455695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.496761, 3.423721, 5.433380>,  <1.894190, 3.449553, 5.396188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.496761, 3.423721, 5.433380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113048, 0.522497, -0.845114,
		0.005996, -0.850192, -0.526438,
		-0.993571, -0.064580, 0.092979,
		1.198690, 3.404347, 5.461274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.581909, 3.091961, 4.794703>,  <1.894190, 3.449553, 5.396188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.581909, 3.091961, 4.794703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.327744, 3.355202, 4.956272>,  <1.175244, 3.513146, 5.053214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.327744, 3.355202, 4.956272>,  <1.581909, 3.091961, 4.794703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.327744, 3.355202, 4.956272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181824, 0.380871, -0.906574,
		-0.750460, -0.649492, -0.122352,
		-0.635413, 0.658101, 0.403922,
		1.137120, 3.552632, 5.077449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.955241, 2.994896, 4.418934>,  <1.581909, 3.091961, 4.794703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.955241, 2.994896, 4.418934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.936008, 3.364113, 4.571607>,  <0.924469, 3.585643, 4.663210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.936008, 3.364113, 4.571607>,  <0.955241, 2.994896, 4.418934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.936008, 3.364113, 4.571607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339505, 0.344270, -0.875337,
		-0.939375, -0.171669, 0.296825,
		-0.048080, 0.923043, 0.381681,
		0.921584, 3.641026, 4.686111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.476901, 3.208349, 4.062798>,  <0.955241, 2.994896, 4.418934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.476901, 3.208349, 4.062798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.616051, 3.545906, 4.226176>,  <0.699541, 3.748441, 4.324203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.616051, 3.545906, 4.226176>,  <0.476901, 3.208349, 4.062798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.616051, 3.545906, 4.226176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406433, 0.528334, -0.745436,
		-0.844864, 0.093313, 0.526780,
		0.347875, 0.843893, 0.408445,
		0.720413, 3.799074, 4.348710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.073716, 3.617256, 4.107787>,  <0.476901, 3.208349, 4.062798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.073716, 3.617256, 4.107787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.244026, 3.859703, 4.123898>,  <0.434671, 4.005171, 4.133564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.244026, 3.859703, 4.123898>,  <-0.073716, 3.617256, 4.107787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.244026, 3.859703, 4.123898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508723, 0.700017, -0.501176,
		-0.331966, 0.377622, 0.864408,
		0.794355, 0.606117, 0.040276,
		0.482333, 4.041538, 4.135981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.378022, 4.278834, 4.215025>,  <-0.073716, 3.617256, 4.107787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.378022, 4.278834, 4.215025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.007030, 4.365952, 4.093470>,  <0.215565, 4.418222, 4.020536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.007030, 4.365952, 4.093470>,  <-0.378022, 4.278834, 4.215025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.007030, 4.365952, 4.093470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346892, 0.804476, -0.482167,
		0.139458, 0.552616, 0.821685,
		0.927479, 0.217794, -0.303889,
		0.271213, 4.431290, 4.002303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.165331, 4.217538, 2.806072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.077492, 4.531525, 2.756581>,  <0.223185, 4.719917, 2.726887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.077492, 4.531525, 2.756581>,  <-0.165331, 4.217538, 2.806072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.077492, 4.531525, 2.756581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392195, -0.160538, 0.905765,
		0.691133, -0.598376, -0.405316,
		0.607057, 0.784967, -0.123727,
		0.259609, 4.767015, 2.719463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.605155, 3.997367, 2.808250>,  <-0.165331, 4.217538, 2.806072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.605155, 3.997367, 2.808250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.544289, 4.365860, 2.951458>,  <0.507769, 4.586956, 3.037382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.544289, 4.365860, 2.951458>,  <0.605155, 3.997367, 2.808250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.544289, 4.365860, 2.951458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301164, -0.301794, 0.904556,
		0.941353, 0.245465, -0.231519,
		-0.152166, 0.921232, 0.358020,
		0.498639, 4.642230, 3.058863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.170112, 4.343074, 3.035706>,  <0.605155, 3.997367, 2.808250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.170112, 4.343074, 3.035706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.893791, 4.518417, 3.265709>,  <0.727999, 4.623623, 3.403712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.893791, 4.518417, 3.265709>,  <1.170112, 4.343074, 3.035706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.893791, 4.518417, 3.265709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451578, -0.359518, 0.816593,
		0.564687, 0.823765, 0.050402,
		-0.690801, 0.438359, 0.575009,
		0.686551, 4.649925, 3.438212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.537590, 4.542642, 3.550007>,  <1.170112, 4.343074, 3.035706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.537590, 4.542642, 3.550007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159348, 4.511162, 3.676267>,  <0.932402, 4.492274, 3.752023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159348, 4.511162, 3.676267>,  <1.537590, 4.542642, 3.550007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.159348, 4.511162, 3.676267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318353, -0.423485, 0.848122,
		0.066925, 0.902478, 0.425504,
		-0.945607, -0.078700, 0.315649,
		0.875666, 4.487552, 3.770961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.623211, 4.771625, 4.161144>,  <1.537590, 4.542642, 3.550007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.623211, 4.771625, 4.161144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.275864, 4.573257, 4.161827>,  <1.067455, 4.454237, 4.162237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.275864, 4.573257, 4.161827>,  <1.623211, 4.771625, 4.161144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.275864, 4.573257, 4.161827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203214, -0.352691, 0.913408,
		-0.452374, 0.793520, 0.407043,
		-0.868368, -0.495918, 0.001707,
		1.015353, 4.424482, 4.162339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.288321, 4.882639, 4.815408>,  <1.623211, 4.771625, 4.161144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.288321, 4.882639, 4.815408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.102119, 4.562584, 4.664101>,  <0.990398, 4.370551, 4.573317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.102119, 4.562584, 4.664101>,  <1.288321, 4.882639, 4.815408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.102119, 4.562584, 4.664101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037033, -0.409414, 0.911597,
		-0.884270, 0.438361, 0.160952,
		-0.465505, -0.800138, -0.378266,
		0.962468, 4.322543, 4.550621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.726068, 4.811376, 5.183009>,  <1.288321, 4.882639, 4.815408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.726068, 4.811376, 5.183009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.799194, 4.443130, 5.044995>,  <0.843070, 4.222183, 4.962187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.799194, 4.443130, 5.044995>,  <0.726068, 4.811376, 5.183009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.799194, 4.443130, 5.044995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142684, -0.372077, 0.917170,
		-0.972738, -0.118442, -0.199379,
		0.182816, -0.920614, -0.345034,
		0.854039, 4.166946, 4.941485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.210041, 4.363320, 5.444692>,  <0.726068, 4.811376, 5.183009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.210041, 4.363320, 5.444692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.501663, 4.108505, 5.344562>,  <0.676636, 3.955616, 5.284484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.501663, 4.108505, 5.344562>,  <0.210041, 4.363320, 5.444692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.501663, 4.108505, 5.344562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192488, -0.541794, 0.818174,
		-0.656832, -0.548308, -0.517619,
		0.729054, -0.637038, -0.250325,
		0.720380, 3.917394, 5.269465>
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
