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
	<0.424160, 2.836600, 2.639662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.324577, 2.783005, 2.255981>,  <0.264828, 2.750848, 2.025773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.324577, 2.783005, 2.255981>,  <0.424160, 2.836600, 2.639662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.324577, 2.783005, 2.255981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883114, -0.438040, -0.168020,
		-0.397656, -0.888914, 0.227379,
		-0.248956, -0.133987, -0.959202,
		0.249891, 2.742809, 1.968221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.768133, 2.205690, 2.485709>,  <0.424160, 2.836600, 2.639662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.768133, 2.205690, 2.485709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.694527, 2.387146, 2.136917>,  <0.650363, 2.496020, 1.927642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.694527, 2.387146, 2.136917>,  <0.768133, 2.205690, 2.485709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.694527, 2.387146, 2.136917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896249, -0.286808, -0.338347,
		-0.403579, -0.843772, -0.353798,
		-0.184015, 0.453640, -0.871980,
		0.639322, 2.523238, 1.875323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.706811, 1.726600, 1.957403>,  <0.768133, 2.205690, 2.485709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.706811, 1.726600, 1.957403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.831688, 2.082504, 1.824219>,  <0.906614, 2.296047, 1.744308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.831688, 2.082504, 1.824219>,  <0.706811, 1.726600, 1.957403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.831688, 2.082504, 1.824219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908878, -0.381750, -0.167955,
		-0.276547, -0.250186, -0.927862,
		0.312191, 0.889761, -0.332960,
		0.925345, 2.349432, 1.724331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.027086, 1.651039, 1.182894>,  <0.706811, 1.726600, 1.957403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.027086, 1.651039, 1.182894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.198608, 1.941132, 1.398361>,  <1.301522, 2.115187, 1.527642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.198608, 1.941132, 1.398361>,  <1.027086, 1.651039, 1.182894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.198608, 1.941132, 1.398361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899742, -0.396425, -0.182514,
		0.081176, 0.562926, -0.822511,
		0.428806, 0.725232, 0.538669,
		1.327250, 2.158701, 1.559962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.620280, 2.045302, 0.782449>,  <1.027086, 1.651039, 1.182894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.620280, 2.045302, 0.782449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.651199, 2.031769, 1.181023>,  <1.669751, 2.023649, 1.420167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.651199, 2.031769, 1.181023>,  <1.620280, 2.045302, 0.782449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.651199, 2.031769, 1.181023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836006, -0.542366, -0.083269,
		0.543249, 0.839461, -0.013641,
		0.077299, -0.033832, 0.996434,
		1.674389, 2.021619, 1.479953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.279839, 2.398896, 0.989178>,  <1.620280, 2.045302, 0.782449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.279839, 2.398896, 0.989178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.208107, 2.116318, 1.263046>,  <2.165068, 1.946770, 1.427367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.208107, 2.116318, 1.263046>,  <2.279839, 2.398896, 0.989178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.208107, 2.116318, 1.263046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925393, -0.357336, -0.126323,
		0.333898, 0.610937, 0.717822,
		-0.179329, -0.706447, 0.684671,
		2.154308, 1.904384, 1.468447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.940244, 2.334976, 1.330932>,  <2.279839, 2.398896, 0.989178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.940244, 2.334976, 1.330932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.737411, 2.007370, 1.438324>,  <2.615712, 1.810806, 1.502759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.737411, 2.007370, 1.438324>,  <2.940244, 2.334976, 1.330932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.737411, 2.007370, 1.438324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836878, -0.542375, -0.073926,
		0.206163, 0.187198, 0.960445,
		-0.507082, -0.819015, 0.268479,
		2.585287, 1.761665, 1.518868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.243015, 2.035741, 1.989451>,  <2.940244, 2.334976, 1.330932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.243015, 2.035741, 1.989451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.054863, 1.744385, 1.790176>,  <2.941972, 1.569571, 1.670611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.054863, 1.744385, 1.790176>,  <3.243015, 2.035741, 1.989451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.054863, 1.744385, 1.790176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755203, -0.624314, 0.199750,
		-0.456522, -0.282274, 0.843747,
		-0.470379, -0.728390, -0.498187,
		2.913749, 1.525868, 1.640720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.296430, 0.695861, 1.397797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.086048, 0.363327, 1.325958>,  <3.959819, 0.163807, 1.282855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.086048, 0.363327, 1.325958>,  <4.296430, 0.695861, 1.397797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.086048, 0.363327, 1.325958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796337, 0.555507, -0.239289,
		0.298696, 0.017163, -0.954194,
		-0.525955, -0.831335, -0.179596,
		3.928262, 0.113927, 1.272079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.858718, 0.916497, 0.836718>,  <4.296430, 0.695861, 1.397797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.858718, 0.916497, 0.836718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675240, 0.613510, 1.022552>,  <3.565153, 0.431718, 1.134053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675240, 0.613510, 1.022552>,  <3.858718, 0.916497, 0.836718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.675240, 0.613510, 1.022552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798096, 0.581064, 0.159399,
		-0.390693, -0.297668, -0.871064,
		-0.458696, -0.757468, 0.464586,
		3.537631, 0.386270, 1.161928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.232972, 0.923423, 0.545851>,  <3.858718, 0.916497, 0.836718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.232972, 0.923423, 0.545851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.191498, 0.736343, 0.896965>,  <3.166613, 0.624095, 1.107633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.191498, 0.736343, 0.896965>,  <3.232972, 0.923423, 0.545851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.191498, 0.736343, 0.896965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749907, 0.616509, 0.239907,
		-0.653367, -0.633382, -0.414654,
		-0.103685, -0.467700, 0.877785,
		3.160392, 0.596034, 1.160300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.548460, 0.650443, 0.732401>,  <3.232972, 0.923423, 0.545851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.548460, 0.650443, 0.732401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.745266, 0.763336, 1.061829>,  <2.863350, 0.831072, 1.259485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.745266, 0.763336, 1.061829>,  <2.548460, 0.650443, 0.732401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.745266, 0.763336, 1.061829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753526, 0.611850, 0.240494,
		-0.436025, -0.738908, 0.513709,
		0.492016, 0.282232, 0.823569,
		2.892871, 0.848006, 1.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.228419, 0.524591, 1.451916>,  <2.548460, 0.650443, 0.732401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.228419, 0.524591, 1.451916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.451687, 0.856018, 1.469452>,  <2.585648, 1.054874, 1.479974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.451687, 0.856018, 1.469452>,  <2.228419, 0.524591, 1.451916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.451687, 0.856018, 1.469452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768940, 0.496705, 0.402510,
		0.311731, -0.258380, 0.914365,
		0.558171, 0.828567, 0.043841,
		2.619138, 1.104588, 1.482604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.860820, 0.767089, 1.908334>,  <2.228419, 0.524591, 1.451916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.860820, 0.767089, 1.908334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.072140, 1.088058, 1.797325>,  <2.198931, 1.280640, 1.730720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.072140, 1.088058, 1.797325>,  <1.860820, 0.767089, 1.908334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.072140, 1.088058, 1.797325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703046, 0.596684, 0.386903,
		0.476053, -0.009288, 0.879367,
		0.528298, 0.802422, -0.277523,
		2.230629, 1.328785, 1.714068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.886165, 1.195645, 2.499850>,  <1.860820, 0.767089, 1.908334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.886165, 1.195645, 2.499850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970951, 1.427063, 2.184799>,  <2.021823, 1.565914, 1.995769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970951, 1.427063, 2.184799>,  <1.886165, 1.195645, 2.499850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.970951, 1.427063, 2.184799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784349, 0.581483, 0.216040,
		0.582986, 0.571996, 0.577016,
		0.211951, 0.578531, -0.787641,
		2.034541, 1.600627, 1.948511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.734456, 1.865910, 2.756891>,  <1.886165, 1.195645, 2.499850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.734456, 1.865910, 2.756891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.702625, 1.909439, 2.360542>,  <1.683527, 1.935556, 2.122733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.702625, 1.909439, 2.360542>,  <1.734456, 1.865910, 2.756891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.702625, 1.909439, 2.360542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851539, 0.509338, 0.124325,
		0.518217, 0.853659, 0.052135,
		-0.079577, 0.108822, -0.990871,
		1.678752, 1.942086, 2.063281>
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
