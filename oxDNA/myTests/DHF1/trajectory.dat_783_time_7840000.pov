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
	<0.321821, 1.716060, 4.729865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.229351, 1.392406, 4.513768>,  <0.173869, 1.198215, 4.384110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.229351, 1.392406, 4.513768>,  <0.321821, 1.716060, 4.729865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.229351, 1.392406, 4.513768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779484, -0.486326, 0.394831,
		-0.582204, -0.329835, 0.743133,
		-0.231176, -0.809133, -0.540242,
		0.159998, 1.149667, 4.351696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.045235, 1.091080, 5.095838>,  <0.321821, 1.716060, 4.729865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.045235, 1.091080, 5.095838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.262197, 0.987293, 4.776220>,  <0.392375, 0.925021, 4.584450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.262197, 0.987293, 4.776220>,  <0.045235, 1.091080, 5.095838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.262197, 0.987293, 4.776220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408831, -0.749375, 0.520860,
		-0.733928, -0.609193, -0.300390,
		0.542409, -0.259465, -0.799044,
		0.424919, 0.909453, 4.536507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.042970, 0.323454, 4.977403>,  <0.045235, 1.091080, 5.095838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.042970, 0.323454, 4.977403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.280663, 0.445774, 4.776654>,  <0.474842, 0.519166, 4.656205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.280663, 0.445774, 4.776654>,  <-0.042970, 0.323454, 4.977403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.280663, 0.445774, 4.776654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581528, -0.539982, 0.608478,
		-0.084928, -0.784160, -0.614720,
		0.809081, 0.305800, -0.501870,
		0.523387, 0.537514, 4.626093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.409874, -0.218873, 4.654647>,  <-0.042970, 0.323454, 4.977403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.409874, -0.218873, 4.654647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.639204, 0.101665, 4.722934>,  <0.776802, 0.293988, 4.763906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.639204, 0.101665, 4.722934>,  <0.409874, -0.218873, 4.654647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.639204, 0.101665, 4.722934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649211, -0.571423, 0.501997,
		0.499824, -0.176977, -0.847853,
		0.573325, 0.801346, 0.170716,
		0.811201, 0.342069, 4.774148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.173316, -0.404759, 4.541772>,  <0.409874, -0.218873, 4.654647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.173316, -0.404759, 4.541772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.197306, -0.104214, 4.804636>,  <1.211699, 0.076113, 4.962354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.197306, -0.104214, 4.804636>,  <1.173316, -0.404759, 4.541772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.197306, -0.104214, 4.804636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807899, -0.423195, 0.410128,
		0.586261, 0.506321, -0.632406,
		0.059974, 0.751362, 0.657159,
		1.215298, 0.121195, 5.001784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.914471, -0.293321, 4.733977>,  <1.173316, -0.404759, 4.541772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.914471, -0.293321, 4.733977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.701391, -0.100380, 5.012133>,  <1.573544, 0.015385, 5.179026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.701391, -0.100380, 5.012133>,  <1.914471, -0.293321, 4.733977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.701391, -0.100380, 5.012133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641376, -0.305988, 0.703568,
		0.552149, 0.820796, -0.146371,
		-0.532699, 0.482353, 0.695390,
		1.541582, 0.044326, 5.220750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.398222, -0.088657, 5.107634>,  <1.914471, -0.293321, 4.733977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.398222, -0.088657, 5.107634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.072954, -0.046818, 5.336655>,  <1.877794, -0.021714, 5.474067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.072954, -0.046818, 5.336655>,  <2.398222, -0.088657, 5.107634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.072954, -0.046818, 5.336655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514588, -0.330427, 0.791212,
		0.271946, 0.938018, 0.214868,
		-0.813169, 0.104599, 0.572551,
		1.829003, -0.015438, 5.508420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.469804, 0.434050, 5.658777>,  <2.398222, -0.088657, 5.107634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.469804, 0.434050, 5.658777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.244913, 0.111725, 5.733145>,  <2.109979, -0.081670, 5.777765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.244913, 0.111725, 5.733145>,  <2.469804, 0.434050, 5.658777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.244913, 0.111725, 5.733145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659923, -0.301674, 0.688110,
		-0.498401, 0.509566, 0.701384,
		-0.562227, -0.805813, 0.185920,
		2.076245, -0.130019, 5.788920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.047757, 4.368270, 1.773087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.698780, 4.314095, 1.960916>,  <2.489394, 4.281589, 2.073613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.698780, 4.314095, 1.960916>,  <3.047757, 4.368270, 1.773087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.698780, 4.314095, 1.960916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469077, 0.501707, -0.726813,
		-0.137148, -0.854369, -0.501243,
		-0.872443, -0.135440, 0.469573,
		2.437047, 4.273463, 2.101788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.500693, 4.159261, 1.332761>,  <3.047757, 4.368270, 1.773087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.500693, 4.159261, 1.332761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.315353, 4.336662, 1.639646>,  <2.204149, 4.443103, 1.823776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.315353, 4.336662, 1.639646>,  <2.500693, 4.159261, 1.332761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.315353, 4.336662, 1.639646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507632, 0.576799, -0.640010,
		-0.726373, -0.686009, -0.042123,
		-0.463349, 0.443503, 0.767211,
		2.176349, 4.469713, 1.869809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.843898, 3.880477, 1.237966>,  <2.500693, 4.159261, 1.332761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.843898, 3.880477, 1.237966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.893024, 4.239944, 1.406400>,  <1.922500, 4.455625, 1.507460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.893024, 4.239944, 1.406400>,  <1.843898, 3.880477, 1.237966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.893024, 4.239944, 1.406400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599420, 0.405331, -0.690220,
		-0.790957, -0.167636, 0.588460,
		0.122815, 0.898669, 0.421084,
		1.929869, 4.509545, 1.532725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.133984, 4.267778, 1.358822>,  <1.843898, 3.880477, 1.237966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.133984, 4.267778, 1.358822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.412712, 4.544571, 1.283346>,  <1.579949, 4.710647, 1.238060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.412712, 4.544571, 1.283346>,  <1.133984, 4.267778, 1.358822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.412712, 4.544571, 1.283346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594501, 0.410048, -0.691686,
		-0.401262, 0.594156, 0.697113,
		0.696820, 0.691982, -0.188689,
		1.621758, 4.752165, 1.226739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.847411, 5.012388, 1.396760>,  <1.133984, 4.267778, 1.358822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.847411, 5.012388, 1.396760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.162067, 5.000076, 1.150103>,  <1.350861, 4.992689, 1.002108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.162067, 5.000076, 1.150103>,  <0.847411, 5.012388, 1.396760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.162067, 5.000076, 1.150103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517044, 0.513011, -0.685190,
		0.337434, 0.857830, 0.387641,
		0.786641, -0.030779, -0.616644,
		1.398060, 4.990843, 0.965110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918669, 5.703479, 1.162957>,  <0.847411, 5.012388, 1.396760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918669, 5.703479, 1.162957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115440, 5.493706, 0.884971>,  <1.233503, 5.367842, 0.718179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115440, 5.493706, 0.884971>,  <0.918669, 5.703479, 1.162957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.115440, 5.493706, 0.884971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523689, 0.459448, -0.717397,
		0.695526, 0.716853, -0.048625,
		0.491928, -0.524433, -0.694966,
		1.263019, 5.336376, 0.676481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216363, 6.216607, 0.662872>,  <0.918669, 5.703479, 1.162957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216363, 6.216607, 0.662872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200958, 5.875896, 0.453876>,  <1.191715, 5.671470, 0.328479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200958, 5.875896, 0.453876>,  <1.216363, 6.216607, 0.662872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.200958, 5.875896, 0.453876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449801, 0.481686, -0.752102,
		0.892298, 0.206051, -0.401681,
		-0.038513, -0.851776, -0.522489,
		1.189404, 5.620364, 0.297130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.477931, 6.418886, 0.073230>,  <1.216363, 6.216607, 0.662872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.477931, 6.418886, 0.073230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.279514, 6.083042, -0.015315>,  <1.160465, 5.881536, -0.068441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.279514, 6.083042, -0.015315>,  <1.477931, 6.418886, 0.073230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.279514, 6.083042, -0.015315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524313, 0.492843, -0.694407,
		0.692127, -0.228392, -0.684688,
		-0.496040, -0.839609, -0.221361,
		1.130702, 5.831160, -0.081723>
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
