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
	<0.049834, 1.954458, 2.974375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.174099, 1.962112, 3.354506>,  <0.248658, 1.966705, 3.582585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.174099, 1.962112, 3.354506>,  <0.049834, 1.954458, 2.974375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.174099, 1.962112, 3.354506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577734, -0.797724, -0.172798,
		0.754793, 0.602719, -0.258877,
		0.310661, 0.019135, 0.950328,
		0.267297, 1.967853, 3.639605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.812283, 2.145759, 3.188036>,  <0.049834, 1.954458, 2.974375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.812283, 2.145759, 3.188036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.630215, 1.852631, 3.390341>,  <0.520974, 1.676754, 3.511724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.630215, 1.852631, 3.390341>,  <0.812283, 2.145759, 3.188036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.630215, 1.852631, 3.390341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704971, -0.643572, -0.298046,
		0.543908, 0.220886, 0.809551,
		-0.455170, -0.732820, 0.505762,
		0.493664, 1.632785, 3.542069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.380331, 1.876145, 3.574553>,  <0.812283, 2.145759, 3.188036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.380331, 1.876145, 3.574553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.068497, 1.628975, 3.533731>,  <0.881396, 1.480673, 3.509237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.068497, 1.628975, 3.533731>,  <1.380331, 1.876145, 3.574553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.068497, 1.628975, 3.533731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613668, -0.721099, -0.321601,
		0.125134, -0.313343, 0.941360,
		-0.779585, -0.617926, -0.102055,
		0.834621, 1.443597, 3.503114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.371464, 1.243472, 4.034651>,  <1.380331, 1.876145, 3.574553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.371464, 1.243472, 4.034651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.179058, 1.175575, 3.690601>,  <1.063615, 1.134837, 3.484171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.179058, 1.175575, 3.690601>,  <1.371464, 1.243472, 4.034651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.179058, 1.175575, 3.690601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606574, -0.772791, -0.186713,
		-0.633003, -0.611541, 0.474684,
		-0.481014, -0.169741, -0.860124,
		1.034754, 1.124653, 3.432564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.095280, 0.571169, 3.988713>,  <1.371464, 1.243472, 4.034651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.095280, 0.571169, 3.988713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.141171, 0.674553, 3.605039>,  <1.168705, 0.736583, 3.374834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.141171, 0.674553, 3.605039>,  <1.095280, 0.571169, 3.988713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.141171, 0.674553, 3.605039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388158, -0.900463, -0.196210,
		-0.914424, -0.349806, -0.203629,
		0.114725, 0.258460, -0.959185,
		1.175588, 0.752091, 3.317283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.831041, -0.047900, 3.587078>,  <1.095280, 0.571169, 3.988713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.831041, -0.047900, 3.587078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.062603, 0.169823, 3.344228>,  <1.201540, 0.300456, 3.198518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.062603, 0.169823, 3.344228>,  <0.831041, -0.047900, 3.587078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.062603, 0.169823, 3.344228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456154, -0.833350, -0.312171,
		-0.675864, -0.096225, -0.730718,
		0.578905, 0.544306, -0.607125,
		1.236274, 0.333114, 3.162090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.762321, -0.431276, 2.833231>,  <0.831041, -0.047900, 3.587078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.762321, -0.431276, 2.833231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093884, -0.208282, 2.851670>,  <1.292821, -0.074486, 2.862734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093884, -0.208282, 2.851670>,  <0.762321, -0.431276, 2.833231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.093884, -0.208282, 2.851670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529881, -0.756104, -0.384099,
		-0.179274, 0.342808, -0.922141,
		0.828907, 0.557484, 0.046098,
		1.342556, -0.041037, 2.865499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.089631, -0.537142, 2.191651>,  <0.762321, -0.431276, 2.833231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.089631, -0.537142, 2.191651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.367477, -0.401833, 2.445605>,  <1.534185, -0.320647, 2.597978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.367477, -0.401833, 2.445605>,  <1.089631, -0.537142, 2.191651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.367477, -0.401833, 2.445605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635934, -0.701316, -0.322094,
		0.336298, 0.627476, -0.702266,
		0.694616, 0.338274, 0.634885,
		1.575862, -0.300350, 2.636071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.997887, -1.315964, 2.547515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.331367, -1.176247, 2.718599>,  <2.531456, -1.092417, 2.821250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.331367, -1.176247, 2.718599>,  <1.997887, -1.315964, 2.547515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.331367, -1.176247, 2.718599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483067, 0.836586, 0.258399,
		-0.267561, -0.422041, 0.866194,
		0.833701, 0.349292, 0.427711,
		2.581478, -1.071459, 2.846913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.002818, -1.183746, 3.366337>,  <1.997887, -1.315964, 2.547515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.002818, -1.183746, 3.366337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.231262, -0.944366, 3.141591>,  <2.368329, -0.800739, 3.006743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.231262, -0.944366, 3.141591>,  <2.002818, -1.183746, 3.366337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.231262, -0.944366, 3.141591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558887, 0.784804, 0.267821,
		0.601231, 0.161064, 0.782674,
		0.571109, 0.598449, -0.561865,
		2.402595, -0.764832, 2.973032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.269952, -0.541820, 3.690360>,  <2.002818, -1.183746, 3.366337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.269952, -0.541820, 3.690360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.257385, -0.467377, 3.297549>,  <2.249845, -0.422711, 3.061863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.257385, -0.467377, 3.297549>,  <2.269952, -0.541820, 3.690360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.257385, -0.467377, 3.297549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588979, 0.790360, 0.168628,
		0.807538, 0.583691, 0.084783,
		-0.031417, 0.186109, -0.982027,
		2.247960, -0.411544, 3.002941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.480145, 0.147327, 3.439109>,  <2.269952, -0.541820, 3.690360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.480145, 0.147327, 3.439109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.226875, 0.025894, 3.154314>,  <2.074913, -0.046965, 2.983437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.226875, 0.025894, 3.154314>,  <2.480145, 0.147327, 3.439109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.226875, 0.025894, 3.154314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576019, 0.799250, 0.171468,
		0.517002, 0.518688, -0.680934,
		-0.633175, -0.303582, -0.711988,
		2.036923, -0.065180, 2.940717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.410101, 0.749549, 2.947642>,  <2.480145, 0.147327, 3.439109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.410101, 0.749549, 2.947642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.093895, 0.507385, 2.910625>,  <1.904171, 0.362087, 2.888414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.093895, 0.507385, 2.910625>,  <2.410101, 0.749549, 2.947642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.093895, 0.507385, 2.910625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611563, 0.788411, 0.066326,
		0.032808, 0.109027, -0.993497,
		-0.790515, -0.605410, -0.092543,
		1.856740, 0.325762, 2.882862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.002757, 0.944795, 2.314471>,  <2.410101, 0.749549, 2.947642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.002757, 0.944795, 2.314471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.766541, 0.777687, 2.590654>,  <1.624811, 0.677423, 2.756364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.766541, 0.777687, 2.590654>,  <2.002757, 0.944795, 2.314471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.766541, 0.777687, 2.590654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581083, 0.813831, -0.004577,
		-0.560003, -0.403916, -0.723359,
		-0.590540, -0.417769, 0.690457,
		1.589378, 0.652357, 2.797791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.305888, 1.228699, 2.103753>,  <2.002757, 0.944795, 2.314471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.305888, 1.228699, 2.103753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.285011, 1.076416, 2.473041>,  <1.272485, 0.985046, 2.694614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.285011, 1.076416, 2.473041>,  <1.305888, 1.228699, 2.103753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.285011, 1.076416, 2.473041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659288, 0.707514, 0.254487,
		-0.750077, -0.595386, -0.287923,
		-0.052191, -0.380709, 0.923221,
		1.269354, 0.962203, 2.750007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.601863, 1.066718, 2.199993>,  <1.305888, 1.228699, 2.103753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.601863, 1.066718, 2.199993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.771324, 1.127647, 2.557163>,  <0.873001, 1.164205, 2.771465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.771324, 1.127647, 2.557163>,  <0.601863, 1.066718, 2.199993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.771324, 1.127647, 2.557163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666703, 0.719758, 0.193537,
		-0.613210, -0.677308, 0.406482,
		0.423652, 0.152324, 0.892926,
		0.898420, 1.173345, 2.825040>
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
