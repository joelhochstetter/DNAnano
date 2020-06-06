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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.232780, 35.427959, 35.365181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226398, 35.185276, 35.047276>,  <24.222569, 35.039665, 34.856533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226398, 35.185276, 35.047276>,  <24.232780, 35.427959, 35.365181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226398, 35.185276, 35.047276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373619, 0.733673, -0.567567,
		0.927445, -0.305996, 0.214970,
		-0.015956, -0.606704, -0.794767,
		24.221611, 35.003265, 34.808846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959909, 35.294834, 35.181255>,  <24.232780, 35.427959, 35.365181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959909, 35.294834, 35.181255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712532, 35.273514, 34.867649>,  <24.564106, 35.260719, 34.679485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712532, 35.273514, 34.867649>,  <24.959909, 35.294834, 35.181255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712532, 35.273514, 34.867649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574910, 0.649477, -0.497653,
		0.535729, -0.758511, -0.371019,
		-0.618443, -0.053304, -0.784019,
		24.526999, 35.257523, 34.632442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315937, 35.114986, 34.566120>,  <24.959909, 35.294834, 35.181255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315937, 35.114986, 34.566120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989176, 35.337414, 34.504848>,  <24.793119, 35.470871, 34.468086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989176, 35.337414, 34.504848>,  <25.315937, 35.114986, 34.566120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989176, 35.337414, 34.504848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565550, 0.720096, -0.402015,
		-0.113243, -0.415036, -0.902730,
		-0.816903, 0.556064, -0.153178,
		24.744104, 35.504234, 34.458897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221344, 35.367584, 33.933819>,  <25.315937, 35.114986, 34.566120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221344, 35.367584, 33.933819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009096, 35.629498, 34.149117>,  <24.881748, 35.786644, 34.278294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009096, 35.629498, 34.149117>,  <25.221344, 35.367584, 33.933819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009096, 35.629498, 34.149117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493219, 0.754955, -0.432178,
		-0.689331, 0.036150, -0.723544,
		-0.530620, 0.654779, 0.538244,
		24.849911, 35.825932, 34.310589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.865412, 35.843224, 33.531197>,  <25.221344, 35.367584, 33.933819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.865412, 35.843224, 33.531197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978416, 35.990173, 33.885647>,  <25.046219, 36.078342, 34.098316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978416, 35.990173, 33.885647>,  <24.865412, 35.843224, 33.531197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.978416, 35.990173, 33.885647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476164, 0.748208, -0.462009,
		-0.832739, 0.552465, 0.036447,
		0.282514, 0.367378, 0.886126,
		25.063171, 36.100388, 34.151485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635983, 36.482330, 33.479309>,  <24.865412, 35.843224, 33.531197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635983, 36.482330, 33.479309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933413, 36.479095, 33.746750>,  <25.111870, 36.477154, 33.907215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933413, 36.479095, 33.746750>,  <24.635983, 36.482330, 33.479309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933413, 36.479095, 33.746750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415480, 0.789050, -0.452522,
		-0.523901, 0.614276, 0.590079,
		0.743575, -0.008089, 0.668604,
		25.156485, 36.476669, 33.947330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617287, 37.176838, 33.677631>,  <24.635983, 36.482330, 33.479309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617287, 37.176838, 33.677631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967110, 36.991657, 33.735363>,  <25.177004, 36.880550, 33.770000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967110, 36.991657, 33.735363>,  <24.617287, 37.176838, 33.677631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967110, 36.991657, 33.735363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460958, 0.701248, -0.543847,
		0.150564, 0.542153, 0.826680,
		0.874556, -0.462949, 0.144328,
		25.229477, 36.852772, 33.778660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138819, 37.704758, 33.638538>,  <24.617287, 37.176838, 33.677631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.138819, 37.704758, 33.638538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377497, 37.384457, 33.617558>,  <25.520704, 37.192276, 33.604969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377497, 37.384457, 33.617558>,  <25.138819, 37.704758, 33.638538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377497, 37.384457, 33.617558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665478, 0.530299, -0.525283,
		0.448436, 0.278529, 0.849310,
		0.596695, -0.800752, -0.052451,
		25.556505, 37.144230, 33.601822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726725, 37.973381, 33.824356>,  <25.138819, 37.704758, 33.638538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726725, 37.973381, 33.824356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783213, 37.635372, 33.618061>,  <25.817104, 37.432564, 33.494286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783213, 37.635372, 33.618061>,  <25.726725, 37.973381, 33.824356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783213, 37.635372, 33.618061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547058, 0.500804, -0.670762,
		0.825097, -0.187415, 0.533002,
		0.141219, -0.845027, -0.515739,
		25.825579, 37.381863, 33.463341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372641, 38.050293, 33.470875>,  <25.726725, 37.973381, 33.824356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372641, 38.050293, 33.470875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236143, 37.719444, 33.292244>,  <26.154245, 37.520935, 33.185066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236143, 37.719444, 33.292244>,  <26.372641, 38.050293, 33.470875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236143, 37.719444, 33.292244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455979, 0.269786, -0.848114,
		0.821971, -0.493040, 0.285087,
		-0.341242, -0.827120, -0.446572,
		26.133770, 37.471310, 33.158272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925684, 37.694031, 33.148983>,  <26.372641, 38.050293, 33.470875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925684, 37.694031, 33.148983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586388, 37.596272, 32.961044>,  <26.382811, 37.537617, 32.848282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586388, 37.596272, 32.961044>,  <26.925684, 37.694031, 33.148983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586388, 37.596272, 32.961044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385554, 0.323258, -0.864206,
		0.363099, -0.914205, -0.179968,
		-0.848238, -0.244405, -0.469851,
		26.331915, 37.522953, 32.820091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005568, 37.217682, 32.500866>,  <26.925684, 37.694031, 33.148983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005568, 37.217682, 32.500866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657793, 37.402802, 32.431705>,  <26.449127, 37.513874, 32.390209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657793, 37.402802, 32.431705>,  <27.005568, 37.217682, 32.500866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657793, 37.402802, 32.431705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287988, 0.190397, -0.938516,
		-0.401423, -0.865775, -0.298818,
		-0.869438, 0.462798, -0.172903,
		26.396961, 37.541641, 32.379833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700687, 36.948582, 31.970095>,  <27.005568, 37.217682, 32.500866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700687, 36.948582, 31.970095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512297, 37.299583, 31.933947>,  <26.399261, 37.510185, 31.912258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512297, 37.299583, 31.933947>,  <26.700687, 36.948582, 31.970095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512297, 37.299583, 31.933947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197386, 0.004986, -0.980313,
		-0.859778, -0.479543, -0.175555,
		-0.470977, 0.877504, -0.090368,
		26.371004, 37.562836, 31.906836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246243, 36.820328, 31.407976>,  <26.700687, 36.948582, 31.970095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246243, 36.820328, 31.407976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262577, 37.217934, 31.448511>,  <26.272379, 37.456497, 31.472832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262577, 37.217934, 31.448511>,  <26.246243, 36.820328, 31.407976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262577, 37.217934, 31.448511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178950, 0.092505, -0.979500,
		-0.983010, 0.058136, -0.174101,
		0.040839, 0.994014, 0.101337,
		26.274828, 37.516136, 31.478912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780380, 37.108654, 30.903137>,  <26.246243, 36.820328, 31.407976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780380, 37.108654, 30.903137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018997, 37.415916, 30.996153>,  <26.162167, 37.600273, 31.051962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018997, 37.415916, 30.996153>,  <25.780380, 37.108654, 30.903137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018997, 37.415916, 30.996153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038350, 0.262123, -0.964272,
		-0.801665, 0.584147, 0.126908,
		0.596542, 0.768157, 0.232537,
		26.197960, 37.646362, 31.065914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529947, 37.631691, 30.469627>,  <25.780380, 37.108654, 30.903137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529947, 37.631691, 30.469627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883196, 37.771236, 30.595097>,  <26.095144, 37.854965, 30.670378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883196, 37.771236, 30.595097>,  <25.529947, 37.631691, 30.469627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883196, 37.771236, 30.595097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225867, 0.269856, -0.936035,
		-0.411194, 0.897481, 0.159519,
		0.883121, 0.348862, 0.313675,
		26.148132, 37.875896, 30.689199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578066, 38.339752, 30.271582>,  <25.529947, 37.631691, 30.469627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578066, 38.339752, 30.271582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954895, 38.226540, 30.343575>,  <26.180992, 38.158611, 30.386770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954895, 38.226540, 30.343575>,  <25.578066, 38.339752, 30.271582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954895, 38.226540, 30.343575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303483, 0.490808, -0.816704,
		0.142814, 0.824016, 0.548271,
		0.942073, -0.283028, 0.179980,
		26.237516, 38.141632, 30.397568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888744, 38.983734, 30.082972>,  <25.578066, 38.339752, 30.271582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888744, 38.983734, 30.082972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166800, 38.696247, 30.076923>,  <26.333633, 38.523754, 30.073294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166800, 38.696247, 30.076923>,  <25.888744, 38.983734, 30.082972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166800, 38.696247, 30.076923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367445, 0.373314, -0.851834,
		0.617872, 0.586586, 0.523594,
		0.695139, -0.718716, -0.015122,
		26.375341, 38.480633, 30.072386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502064, 39.360771, 29.798464>,  <25.888744, 38.983734, 30.082972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502064, 39.360771, 29.798464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535061, 38.965412, 29.747438>,  <26.554859, 38.728199, 29.716824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535061, 38.965412, 29.747438>,  <26.502064, 39.360771, 29.798464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535061, 38.965412, 29.747438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298437, 0.146626, -0.943099,
		0.950858, 0.039728, 0.307069,
		0.082492, -0.988394, -0.127564,
		26.559809, 38.668896, 29.709169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125702, 39.348003, 29.426411>,  <26.502064, 39.360771, 29.798464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125702, 39.348003, 29.426411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934340, 39.001701, 29.367622>,  <26.819521, 38.793922, 29.332350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934340, 39.001701, 29.367622>,  <27.125702, 39.348003, 29.426411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934340, 39.001701, 29.367622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321383, -0.016864, -0.946799,
		0.817214, -0.500190, 0.286306,
		-0.478408, -0.865751, -0.146972,
		26.790817, 38.741978, 29.323530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488073, 39.052917, 28.822678>,  <27.125702, 39.348003, 29.426411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488073, 39.052917, 28.822678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185699, 38.792587, 28.850918>,  <27.004274, 38.636391, 28.867861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185699, 38.792587, 28.850918>,  <27.488073, 39.052917, 28.822678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185699, 38.792587, 28.850918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140651, -0.266792, -0.953435,
		0.639357, -0.710807, 0.293217,
		-0.755937, -0.650827, 0.070600,
		26.958918, 38.597340, 28.872097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732746, 38.330414, 28.592688>,  <27.488073, 39.052917, 28.822678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732746, 38.330414, 28.592688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339855, 38.394882, 28.554216>,  <27.104120, 38.433563, 28.531134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339855, 38.394882, 28.554216>,  <27.732746, 38.330414, 28.592688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339855, 38.394882, 28.554216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059062, -0.220992, -0.973486,
		-0.178146, -0.961867, 0.207546,
		-0.982230, 0.161164, -0.096178,
		27.045187, 38.443233, 28.525362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557390, 37.916542, 28.147528>,  <27.732746, 38.330414, 28.592688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557390, 37.916542, 28.147528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243740, 38.163364, 28.121037>,  <27.055550, 38.311459, 28.105141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243740, 38.163364, 28.121037>,  <27.557390, 37.916542, 28.147528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243740, 38.163364, 28.121037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046800, -0.165206, -0.985148,
		-0.618836, -0.769379, 0.158421,
		-0.784125, 0.617059, -0.066229,
		27.008503, 38.348480, 28.101168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140306, 37.560047, 27.805702>,  <27.557390, 37.916542, 28.147528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140306, 37.560047, 27.805702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988157, 37.928402, 27.771547>,  <26.896868, 38.149414, 27.751055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988157, 37.928402, 27.771547>,  <27.140306, 37.560047, 27.805702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988157, 37.928402, 27.771547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204758, -0.173892, -0.963242,
		-0.901882, -0.348906, 0.254702,
		-0.380371, 0.920883, -0.085389,
		26.874046, 38.204666, 27.745930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509811, 37.415600, 27.439526>,  <27.140306, 37.560047, 27.805702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509811, 37.415600, 27.439526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598297, 37.801189, 27.380430>,  <26.651388, 38.032543, 27.344973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598297, 37.801189, 27.380430>,  <26.509811, 37.415600, 27.439526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598297, 37.801189, 27.380430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244314, -0.091881, -0.965333,
		-0.944127, 0.249640, 0.215186,
		0.221214, 0.963970, -0.147737,
		26.664661, 38.090382, 27.336109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951571, 37.670101, 27.099789>,  <26.509811, 37.415600, 27.439526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951571, 37.670101, 27.099789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242300, 37.919567, 26.984711>,  <26.416737, 38.069248, 26.915663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242300, 37.919567, 26.984711>,  <25.951571, 37.670101, 27.099789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242300, 37.919567, 26.984711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264883, -0.131943, -0.955211,
		-0.633693, 0.770474, 0.069300,
		0.726821, 0.623667, -0.287697,
		26.460346, 38.106667, 26.898401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714767, 38.196339, 26.792791>,  <25.951571, 37.670101, 27.099789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714767, 38.196339, 26.792791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080765, 38.129456, 26.645914>,  <26.300364, 38.089325, 26.557787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080765, 38.129456, 26.645914>,  <25.714767, 38.196339, 26.792791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080765, 38.129456, 26.645914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380568, -0.055393, -0.923093,
		0.134005, 0.984365, -0.114316,
		0.914993, -0.167204, -0.367195,
		26.355263, 38.079296, 26.535755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509903, 38.443279, 26.114983>,  <25.714767, 38.196339, 26.792791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509903, 38.443279, 26.114983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817736, 38.190575, 26.077848>,  <26.002436, 38.038952, 26.055567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817736, 38.190575, 26.077848>,  <25.509903, 38.443279, 26.114983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817736, 38.190575, 26.077848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213784, -0.117918, -0.969738,
		0.601697, 0.766140, -0.225809,
		0.769582, -0.631763, -0.092837,
		26.048611, 38.001045, 26.049997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789448, 38.438984, 25.347712>,  <25.509903, 38.443279, 26.114983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789448, 38.438984, 25.347712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932692, 38.110870, 25.526098>,  <26.018639, 37.914001, 25.633129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932692, 38.110870, 25.526098>,  <25.789448, 38.438984, 25.347712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932692, 38.110870, 25.526098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135890, -0.518347, -0.844305,
		0.923737, 0.241753, -0.297095,
		0.358111, -0.820287, 0.445965,
		26.040125, 37.864784, 25.659887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285397, 38.229507, 24.935675>,  <25.789448, 38.438984, 25.347712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285397, 38.229507, 24.935675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151413, 37.923519, 25.155722>,  <26.071024, 37.739925, 25.287750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151413, 37.923519, 25.155722>,  <26.285397, 38.229507, 24.935675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151413, 37.923519, 25.155722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167190, -0.526325, -0.833684,
		0.927281, -0.371223, 0.048401,
		-0.334958, -0.764968, 0.550116,
		26.050926, 37.694027, 25.320757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607185, 37.487095, 25.096291>,  <26.285397, 38.229507, 24.935675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607185, 37.487095, 25.096291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207640, 37.474720, 25.081820>,  <25.967913, 37.467297, 25.073137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207640, 37.474720, 25.081820>,  <26.607185, 37.487095, 25.096291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207640, 37.474720, 25.081820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046581, -0.478792, -0.876692,
		0.009801, -0.877383, 0.479691,
		-0.998866, -0.030937, -0.036177,
		25.907980, 37.465439, 25.070967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391895, 36.800842, 24.872780>,  <26.607185, 37.487095, 25.096291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391895, 36.800842, 24.872780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105755, 37.070469, 24.799129>,  <25.934071, 37.232246, 24.754940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105755, 37.070469, 24.799129>,  <26.391895, 36.800842, 24.872780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105755, 37.070469, 24.799129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174810, -0.427757, -0.886829,
		-0.676545, -0.602208, 0.423831,
		-0.715352, 0.674069, -0.184125,
		25.891150, 37.272690, 24.743893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730982, 36.454582, 25.013836>,  <26.391895, 36.800842, 24.872780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730982, 36.454582, 25.013836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563347, 36.103161, 24.922182>,  <25.462767, 35.892307, 24.867189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563347, 36.103161, 24.922182>,  <25.730982, 36.454582, 25.013836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563347, 36.103161, 24.922182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374552, -0.397180, 0.837830,
		-0.827089, 0.265301, 0.495518,
		-0.419087, -0.878558, -0.229134,
		25.437620, 35.839592, 24.853441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224798, 36.300003, 25.447090>,  <25.730982, 36.454582, 25.013836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224798, 36.300003, 25.447090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399532, 35.975948, 25.290701>,  <25.504374, 35.781517, 25.196867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399532, 35.975948, 25.290701>,  <25.224798, 36.300003, 25.447090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399532, 35.975948, 25.290701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286467, -0.286717, 0.914183,
		-0.852708, -0.511349, 0.106828,
		0.436837, -0.810133, -0.390971,
		25.530582, 35.732910, 25.173410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133282, 35.584663, 25.910522>,  <25.224798, 36.300003, 25.447090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133282, 35.584663, 25.910522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509651, 35.643787, 25.788658>,  <25.735472, 35.679264, 25.715540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509651, 35.643787, 25.788658>,  <25.133282, 35.584663, 25.910522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509651, 35.643787, 25.788658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338075, -0.461299, 0.820310,
		-0.019287, -0.874845, -0.484019,
		0.940922, 0.147813, -0.304660,
		25.791927, 35.688129, 25.697260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332296, 34.960289, 26.061764>,  <25.133282, 35.584663, 25.910522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332296, 34.960289, 26.061764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641701, 35.211872, 26.030519>,  <25.827343, 35.362820, 26.011774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641701, 35.211872, 26.030519>,  <25.332296, 34.960289, 26.061764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641701, 35.211872, 26.030519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449861, -0.458041, 0.766697,
		0.446440, -0.628185, -0.637240,
		0.773509, 0.628954, -0.078108,
		25.873755, 35.400558, 26.007088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962999, 34.551682, 26.206047>,  <25.332296, 34.960289, 26.061764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962999, 34.551682, 26.206047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059292, 34.932964, 26.279188>,  <26.117067, 35.161736, 26.323072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059292, 34.932964, 26.279188>,  <25.962999, 34.551682, 26.206047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059292, 34.932964, 26.279188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465710, -0.278731, 0.839895,
		0.851564, -0.117033, -0.511020,
		0.240732, 0.953212, 0.182854,
		26.131512, 35.218929, 26.334044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657091, 34.378002, 26.548573>,  <25.962999, 34.551682, 26.206047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657091, 34.378002, 26.548573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562353, 34.755154, 26.642277>,  <26.505510, 34.981445, 26.698500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562353, 34.755154, 26.642277>,  <26.657091, 34.378002, 26.548573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562353, 34.755154, 26.642277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590507, -0.051765, 0.805371,
		0.771496, 0.329081, -0.544518,
		-0.236846, 0.942882, 0.234261,
		26.491299, 35.038017, 26.712555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301088, 34.713333, 26.790443>,  <26.657091, 34.378002, 26.548573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301088, 34.713333, 26.790443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969954, 34.895241, 26.921822>,  <26.771273, 35.004383, 27.000648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969954, 34.895241, 26.921822>,  <27.301088, 34.713333, 26.790443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969954, 34.895241, 26.921822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412258, 0.096124, 0.905982,
		0.380437, 0.885409, -0.267055,
		-0.827835, 0.454765, 0.328448,
		26.721603, 35.031670, 27.020355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562756, 35.172028, 27.265921>,  <27.301088, 34.713333, 26.790443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562756, 35.172028, 27.265921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177710, 35.215740, 27.365061>,  <26.946682, 35.241966, 27.424545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177710, 35.215740, 27.365061>,  <27.562756, 35.172028, 27.265921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177710, 35.215740, 27.365061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269970, 0.312362, 0.910794,
		0.022112, 0.943657, -0.330186,
		-0.962615, 0.109280, 0.247852,
		26.888926, 35.248524, 27.439417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499252, 35.773682, 27.685947>,  <27.562756, 35.172028, 27.265921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499252, 35.773682, 27.685947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172564, 35.555279, 27.760611>,  <26.976551, 35.424236, 27.805408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172564, 35.555279, 27.760611>,  <27.499252, 35.773682, 27.685947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172564, 35.555279, 27.760611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179982, 0.066290, 0.981434,
		-0.548247, 0.835151, 0.044132,
		-0.816720, -0.546011, 0.186656,
		26.927547, 35.391476, 27.816607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283165, 36.019291, 28.394722>,  <27.499252, 35.773682, 27.685947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283165, 36.019291, 28.394722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071932, 35.682137, 28.353409>,  <26.945192, 35.479843, 28.328621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071932, 35.682137, 28.353409>,  <27.283165, 36.019291, 28.394722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071932, 35.682137, 28.353409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043023, -0.094915, 0.994555,
		-0.848103, 0.529650, 0.013859,
		-0.528082, -0.842889, -0.103285,
		26.913507, 35.429268, 28.322424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654423, 36.108059, 28.790876>,  <27.283165, 36.019291, 28.394722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654423, 36.108059, 28.790876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740242, 35.718395, 28.762648>,  <26.791733, 35.484596, 28.745710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740242, 35.718395, 28.762648>,  <26.654423, 36.108059, 28.790876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740242, 35.718395, 28.762648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170712, -0.108541, 0.979324,
		-0.961679, -0.198063, -0.189588,
		0.214546, -0.974161, -0.070570,
		26.804605, 35.426147, 28.741476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087271, 35.671421, 28.995132>,  <26.654423, 36.108059, 28.790876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087271, 35.671421, 28.995132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397383, 35.419853, 29.018446>,  <26.583450, 35.268913, 29.032434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397383, 35.419853, 29.018446>,  <26.087271, 35.671421, 28.995132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397383, 35.419853, 29.018446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190132, -0.144384, 0.971084,
		-0.602322, -0.763942, -0.231516,
		0.775279, -0.628924, 0.058284,
		26.629967, 35.231174, 29.035931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925976, 35.377888, 29.562979>,  <26.087271, 35.671421, 28.995132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925976, 35.377888, 29.562979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302309, 35.247288, 29.526688>,  <26.528109, 35.168926, 29.504913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302309, 35.247288, 29.526688>,  <25.925976, 35.377888, 29.562979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302309, 35.247288, 29.526688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004271, -0.256288, 0.966591,
		-0.338852, -0.909785, -0.239729,
		0.940830, -0.326507, -0.090730,
		26.584558, 35.149338, 29.499470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960539, 34.697735, 29.830301>,  <25.925976, 35.377888, 29.562979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960539, 34.697735, 29.830301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335766, 34.836288, 29.833118>,  <26.560902, 34.919422, 29.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335766, 34.836288, 29.833118>,  <25.960539, 34.697735, 29.830301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335766, 34.836288, 29.833118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100322, -0.291034, 0.951438,
		0.331617, -0.891804, -0.307759,
		0.938065, 0.346388, 0.007044,
		26.617186, 34.940205, 29.835232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281788, 34.152714, 30.090603>,  <25.960539, 34.697735, 29.830301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281788, 34.152714, 30.090603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522364, 34.462280, 30.169924>,  <26.666708, 34.648022, 30.217516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522364, 34.462280, 30.169924>,  <26.281788, 34.152714, 30.090603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522364, 34.462280, 30.169924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106110, -0.323396, 0.940296,
		0.791842, -0.544488, -0.276623,
		0.601438, 0.773918, 0.198303,
		26.702795, 34.694454, 30.229414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942364, 33.942387, 30.387548>,  <26.281788, 34.152714, 30.090603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942364, 33.942387, 30.387548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876125, 34.318871, 30.505333>,  <26.836382, 34.544762, 30.576004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876125, 34.318871, 30.505333>,  <26.942364, 33.942387, 30.387548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876125, 34.318871, 30.505333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289339, -0.239078, 0.926890,
		0.942794, 0.238689, -0.232737,
		-0.165596, 0.941206, 0.294463,
		26.826447, 34.601231, 30.593672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534672, 34.115028, 30.827059>,  <26.942364, 33.942387, 30.387548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534672, 34.115028, 30.827059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244949, 34.376202, 30.915651>,  <27.071115, 34.532906, 30.968807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244949, 34.376202, 30.915651>,  <27.534672, 34.115028, 30.827059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244949, 34.376202, 30.915651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229073, -0.075094, 0.970508,
		0.650311, 0.753682, -0.095179,
		-0.724307, 0.652935, 0.221482,
		27.027657, 34.572083, 30.982096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841770, 34.522633, 31.346317>,  <27.534672, 34.115028, 30.827059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841770, 34.522633, 31.346317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453087, 34.612228, 31.376293>,  <27.219877, 34.665985, 31.394279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453087, 34.612228, 31.376293>,  <27.841770, 34.522633, 31.346317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453087, 34.612228, 31.376293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083650, 0.029634, 0.996054,
		0.220882, 0.974142, -0.047532,
		-0.971707, 0.223986, 0.074942,
		27.161575, 34.679424, 31.398775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684332, 35.064297, 31.865128>,  <27.841770, 34.522633, 31.346317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684332, 35.064297, 31.865128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324638, 34.890404, 31.845581>,  <27.108822, 34.786068, 31.833853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324638, 34.890404, 31.845581>,  <27.684332, 35.064297, 31.865128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324638, 34.890404, 31.845581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069867, 0.032450, 0.997028,
		-0.431852, 0.899976, -0.059553,
		-0.899234, -0.434730, -0.048865,
		27.054869, 34.759983, 31.830921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341820, 35.450104, 32.372150>,  <27.684332, 35.064297, 31.865128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341820, 35.450104, 32.372150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126932, 35.119770, 32.303570>,  <26.997999, 34.921570, 32.262421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126932, 35.119770, 32.303570>,  <27.341820, 35.450104, 32.372150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126932, 35.119770, 32.303570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155978, -0.102493, 0.982429,
		-0.828896, 0.554520, -0.073751,
		-0.537217, -0.825835, -0.171449,
		26.965767, 34.872021, 32.252136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697824, 35.462486, 32.649845>,  <27.341820, 35.450104, 32.372150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697824, 35.462486, 32.649845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769173, 35.069824, 32.622887>,  <26.811981, 34.834229, 32.606712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769173, 35.069824, 32.622887>,  <26.697824, 35.462486, 32.649845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769173, 35.069824, 32.622887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089926, -0.084471, 0.992360,
		-0.979846, -0.170947, -0.103344,
		0.178371, -0.981653, -0.067396,
		26.822683, 34.775330, 32.602669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106678, 35.152836, 33.077015>,  <26.697824, 35.462486, 32.649845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106678, 35.152836, 33.077015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380987, 34.863968, 33.040829>,  <26.545572, 34.690647, 33.019119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380987, 34.863968, 33.040829>,  <26.106678, 35.152836, 33.077015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380987, 34.863968, 33.040829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024507, -0.101312, 0.994553,
		-0.727403, -0.684254, -0.051778,
		0.685773, -0.722172, -0.090464,
		26.586720, 34.647316, 33.013691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823389, 34.735172, 33.581779>,  <26.106678, 35.152836, 33.077015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823389, 34.735172, 33.581779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201830, 34.624870, 33.513836>,  <26.428894, 34.558689, 33.473068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201830, 34.624870, 33.513836>,  <25.823389, 34.735172, 33.581779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201830, 34.624870, 33.513836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161859, -0.051692, 0.985459,
		-0.280530, -0.959836, -0.004271,
		0.946100, -0.275760, -0.169859,
		26.485661, 34.542141, 33.462879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010519, 34.305077, 34.116974>,  <25.823389, 34.735172, 33.581779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010519, 34.305077, 34.116974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371037, 34.429050, 33.995903>,  <26.587347, 34.503433, 33.923260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371037, 34.429050, 33.995903>,  <26.010519, 34.305077, 34.116974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371037, 34.429050, 33.995903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340761, -0.075790, 0.937090,
		0.267494, -0.947733, -0.173922,
		0.901293, 0.309932, -0.302677,
		26.641424, 34.522030, 33.905102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467529, 33.816406, 34.346184>,  <26.010519, 34.305077, 34.116974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467529, 33.816406, 34.346184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637997, 34.172100, 34.279682>,  <26.740276, 34.385517, 34.239780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637997, 34.172100, 34.279682>,  <26.467529, 33.816406, 34.346184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637997, 34.172100, 34.279682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393154, -0.016542, 0.919324,
		0.814746, -0.457149, -0.356657,
		0.426168, 0.889236, -0.166252,
		26.765846, 34.438869, 34.229805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116941, 33.827381, 34.758369>,  <26.467529, 33.816406, 34.346184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116941, 33.827381, 34.758369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096313, 34.219151, 34.680325>,  <27.083937, 34.454212, 34.633495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096313, 34.219151, 34.680325>,  <27.116941, 33.827381, 34.758369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096313, 34.219151, 34.680325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237669, 0.201797, 0.950153,
		0.969976, 0.002627, -0.243185,
		-0.051570, 0.979424, -0.195114,
		27.080843, 34.512978, 34.621792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957094, 33.087284, 35.000809>,  <27.116941, 33.827381, 34.758369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957094, 33.087284, 35.000809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237665, 33.230877, 35.247101>,  <27.406008, 33.317032, 35.394878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237665, 33.230877, 35.247101>,  <26.957094, 33.087284, 35.000809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237665, 33.230877, 35.247101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151355, -0.919218, 0.363496,
		0.696483, -0.161772, -0.699101,
		0.701430, 0.358981, 0.615734,
		27.448093, 33.338570, 35.431820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578341, 32.618793, 34.962242>,  <26.957094, 33.087284, 35.000809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578341, 32.618793, 34.962242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562521, 32.814285, 35.310856>,  <27.553030, 32.931580, 35.520023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562521, 32.814285, 35.310856>,  <27.578341, 32.618793, 34.962242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562521, 32.814285, 35.310856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240842, -0.841843, 0.483007,
		0.969758, 0.229004, -0.084415,
		-0.039547, 0.488731, 0.871538,
		27.550657, 32.960903, 35.572319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238449, 32.562973, 35.289246>,  <27.578341, 32.618793, 34.962242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238449, 32.562973, 35.289246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918770, 32.581650, 35.528946>,  <27.726961, 32.592857, 35.672764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918770, 32.581650, 35.528946>,  <28.238449, 32.562973, 35.289246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918770, 32.581650, 35.528946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360679, -0.760278, 0.540267,
		0.480822, 0.647918, 0.590773,
		-0.799200, 0.046693, 0.599249,
		27.679010, 32.595657, 35.708721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371723, 31.806833, 35.100632>,  <28.238449, 32.562973, 35.289246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371723, 31.806833, 35.100632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082378, 31.546944, 35.194107>,  <27.908772, 31.391010, 35.250191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082378, 31.546944, 35.194107>,  <28.371723, 31.806833, 35.100632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082378, 31.546944, 35.194107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607587, -0.438187, 0.662442,
		-0.328007, 0.621169, 0.711731,
		-0.723360, -0.649724, 0.233686,
		27.865370, 31.352026, 35.264214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367596, 31.664137, 35.889915>,  <28.371723, 31.806833, 35.100632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367596, 31.664137, 35.889915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217766, 31.379841, 35.651741>,  <28.127867, 31.209263, 35.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217766, 31.379841, 35.651741>,  <28.367596, 31.664137, 35.889915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217766, 31.379841, 35.651741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626133, -0.667540, 0.402925,
		-0.683850, -0.221893, 0.695063,
		-0.374576, -0.710742, -0.595432,
		28.105392, 31.166618, 35.473110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167534, 31.013168, 36.286011>,  <28.367596, 31.664137, 35.889915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167534, 31.013168, 36.286011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251345, 30.907183, 35.909523>,  <28.301632, 30.843592, 35.683632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251345, 30.907183, 35.909523>,  <28.167534, 31.013168, 36.286011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251345, 30.907183, 35.909523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537324, -0.773020, 0.337229,
		-0.816934, -0.576398, -0.019597,
		0.209527, -0.264964, -0.941219,
		28.314203, 30.827694, 35.627159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571590, 31.407455, 36.754650>,  <28.167534, 31.013168, 36.286011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571590, 31.407455, 36.754650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735725, 31.322138, 37.109306>,  <28.834206, 31.270947, 37.322098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735725, 31.322138, 37.109306>,  <28.571590, 31.407455, 36.754650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735725, 31.322138, 37.109306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280724, 0.954594, 0.099724,
		-0.867651, 0.207981, 0.451582,
		0.410337, -0.213296, 0.886639,
		28.858826, 31.258148, 37.375298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303957, 31.884289, 37.198170>,  <28.571590, 31.407455, 36.754650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303957, 31.884289, 37.198170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647705, 31.733572, 37.336449>,  <28.853954, 31.643143, 37.419418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647705, 31.733572, 37.336449>,  <28.303957, 31.884289, 37.198170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647705, 31.733572, 37.336449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372621, 0.924419, 0.081262,
		-0.350191, 0.058981, 0.934820,
		0.859372, -0.376791, 0.345701,
		28.905516, 31.620535, 37.440159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418907, 32.163658, 37.857925>,  <28.303957, 31.884289, 37.198170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418907, 32.163658, 37.857925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780218, 32.029438, 37.750977>,  <28.997005, 31.948906, 37.686806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780218, 32.029438, 37.750977>,  <28.418907, 32.163658, 37.857925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780218, 32.029438, 37.750977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404283, 0.874330, 0.268519,
		0.143673, -0.350644, 0.925423,
		0.903279, -0.335554, -0.267377,
		29.051203, 31.928772, 37.670765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998810, 32.334930, 38.410896>,  <28.418907, 32.163658, 37.857925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998810, 32.334930, 38.410896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219139, 32.248699, 38.088375>,  <29.351337, 32.196960, 37.894863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219139, 32.248699, 38.088375>,  <28.998810, 32.334930, 38.410896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219139, 32.248699, 38.088375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576306, 0.797028, 0.180605,
		0.603708, -0.564157, 0.563261,
		0.550825, -0.215578, -0.806299,
		29.384386, 32.184025, 37.846485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634142, 32.378090, 38.655952>,  <28.998810, 32.334930, 38.410896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634142, 32.378090, 38.655952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651983, 32.436497, 38.260643>,  <29.662687, 32.471542, 38.023457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651983, 32.436497, 38.260643>,  <29.634142, 32.378090, 38.655952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651983, 32.436497, 38.260643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634265, 0.760161, 0.140937,
		0.771828, -0.633115, -0.058708,
		0.044602, 0.146016, -0.988276,
		29.665363, 32.480301, 37.964161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433949, 32.571663, 38.492718>,  <29.634142, 32.378090, 38.655952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433949, 32.571663, 38.492718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226757, 32.679592, 38.168030>,  <30.102442, 32.744350, 37.973217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226757, 32.679592, 38.168030>,  <30.433949, 32.571663, 38.492718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226757, 32.679592, 38.168030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233065, 0.957561, 0.169582,
		0.823031, -0.101345, -0.558882,
		-0.517977, 0.269827, -0.811722,
		30.071363, 32.760540, 37.924515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863394, 33.038631, 38.125557>,  <30.433949, 32.571663, 38.492718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863394, 33.038631, 38.125557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502090, 33.104305, 37.966976>,  <30.285309, 33.143711, 37.871830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502090, 33.104305, 37.966976>,  <30.863394, 33.038631, 38.125557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502090, 33.104305, 37.966976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127429, 0.984858, 0.117546,
		0.409744, 0.055655, -0.910501,
		-0.903256, 0.164187, -0.396448,
		30.231113, 33.153561, 37.848042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925674, 33.614975, 37.622269>,  <30.863394, 33.038631, 38.125557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925674, 33.614975, 37.622269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547249, 33.581631, 37.747498>,  <30.320194, 33.561626, 37.822636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547249, 33.581631, 37.747498>,  <30.925674, 33.614975, 37.622269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547249, 33.581631, 37.747498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037585, 0.988048, 0.149495,
		-0.321794, 0.129664, -0.937889,
		-0.946063, -0.083357, 0.313074,
		30.263430, 33.556625, 37.841419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609186, 34.204857, 37.304768>,  <30.925674, 33.614975, 37.622269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609186, 34.204857, 37.304768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365107, 34.092712, 37.601162>,  <30.218658, 34.025425, 37.778999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365107, 34.092712, 37.601162>,  <30.609186, 34.204857, 37.304768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365107, 34.092712, 37.601162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085017, 0.953062, 0.290595,
		-0.787673, 0.114325, -0.605393,
		-0.610199, -0.280363, 0.740982,
		30.182047, 34.008602, 37.823456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040688, 34.642906, 37.249069>,  <30.609186, 34.204857, 37.304768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040688, 34.642906, 37.249069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991472, 34.511086, 37.623505>,  <29.961943, 34.431995, 37.848167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991472, 34.511086, 37.623505>,  <30.040688, 34.642906, 37.249069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991472, 34.511086, 37.623505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239867, 0.925162, 0.294175,
		-0.962978, -0.188342, -0.192877,
		-0.123037, -0.329549, 0.936088,
		29.954561, 34.412220, 37.904331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590927, 35.052521, 37.514454>,  <30.040688, 34.642906, 37.249069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590927, 35.052521, 37.514454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774710, 34.906693, 37.838425>,  <29.884979, 34.819195, 38.032806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774710, 34.906693, 37.838425>,  <29.590927, 35.052521, 37.514454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774710, 34.906693, 37.838425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120404, 0.877894, 0.463470,
		-0.880000, -0.310464, 0.359460,
		0.459459, -0.364573, 0.809929,
		29.912548, 34.797321, 38.081402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189230, 35.242184, 38.142349>,  <29.590927, 35.052521, 37.514454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189230, 35.242184, 38.142349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519184, 35.128994, 38.338100>,  <29.717155, 35.061081, 38.455551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519184, 35.128994, 38.338100>,  <29.189230, 35.242184, 38.142349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519184, 35.128994, 38.338100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091335, 0.787606, 0.609372,
		-0.557876, -0.547358, 0.623838,
		0.824883, -0.282976, 0.489379,
		29.766649, 35.044102, 38.484913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109917, 35.184280, 38.815617>,  <29.189230, 35.242184, 38.142349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109917, 35.184280, 38.815617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502815, 35.251083, 38.781441>,  <29.738554, 35.291164, 38.760937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502815, 35.251083, 38.781441>,  <29.109917, 35.184280, 38.815617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502815, 35.251083, 38.781441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055916, 0.695386, 0.716458,
		0.179068, -0.698961, 0.692379,
		0.982247, 0.167009, -0.085438,
		29.797489, 35.301186, 38.755810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301504, 35.082256, 39.508862>,  <29.109917, 35.184280, 38.815617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301504, 35.082256, 39.508862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565115, 35.295471, 39.296616>,  <29.723282, 35.423401, 39.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565115, 35.295471, 39.296616>,  <29.301504, 35.082256, 39.508862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565115, 35.295471, 39.296616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205458, 0.806251, 0.554750,
		0.723512, -0.256576, 0.640858,
		0.659027, 0.533037, -0.530617,
		29.762823, 35.455383, 39.137432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678244, 35.449017, 39.960514>,  <29.301504, 35.082256, 39.508862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678244, 35.449017, 39.960514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743660, 35.646313, 39.618759>,  <29.782909, 35.764690, 39.413708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743660, 35.646313, 39.618759>,  <29.678244, 35.449017, 39.960514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743660, 35.646313, 39.618759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185775, 0.865948, 0.464351,
		0.968887, 0.082783, 0.233250,
		0.163543, 0.493236, -0.854384,
		29.792723, 35.794285, 39.362442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200428, 36.073318, 40.114498>,  <29.678244, 35.449017, 39.960514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200428, 36.073318, 40.114498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968470, 36.147690, 39.797222>,  <29.829294, 36.192310, 39.606857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968470, 36.147690, 39.797222>,  <30.200428, 36.073318, 40.114498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968470, 36.147690, 39.797222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265100, 0.877559, 0.399514,
		0.770352, 0.441951, -0.459604,
		-0.579896, 0.185925, -0.793191,
		29.794500, 36.203468, 39.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195452, 36.815525, 40.072433>,  <30.200428, 36.073318, 40.114498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195452, 36.815525, 40.072433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907110, 36.751778, 39.802628>,  <29.734106, 36.713531, 39.640743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907110, 36.751778, 39.802628>,  <30.195452, 36.815525, 40.072433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907110, 36.751778, 39.802628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341749, 0.928401, 0.145874,
		0.602977, 0.335670, -0.723702,
		-0.720851, -0.159366, -0.674519,
		29.690855, 36.703968, 39.600273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295956, 37.328091, 39.342915>,  <30.195452, 36.815525, 40.072433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295956, 37.328091, 39.342915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915651, 37.216309, 39.396523>,  <29.687469, 37.149239, 39.428688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915651, 37.216309, 39.396523>,  <30.295956, 37.328091, 39.342915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915651, 37.216309, 39.396523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295016, 0.948545, -0.115009,
		-0.094985, -0.148884, -0.984282,
		-0.950759, -0.279455, 0.134020,
		29.630423, 37.132473, 39.436729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954144, 37.790901, 39.037304>,  <30.295956, 37.328091, 39.342915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954144, 37.790901, 39.037304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649067, 37.629330, 39.239349>,  <29.466021, 37.532387, 39.360577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649067, 37.629330, 39.239349>,  <29.954144, 37.790901, 39.037304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649067, 37.629330, 39.239349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432811, 0.899104, 0.065468,
		-0.480597, -0.168688, -0.860565,
		-0.762694, -0.403926, 0.505116,
		29.420259, 37.508152, 39.390884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418514, 38.219475, 38.834671>,  <29.954144, 37.790901, 39.037304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418514, 38.219475, 38.834671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270351, 38.045162, 39.162788>,  <29.181454, 37.940575, 39.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270351, 38.045162, 39.162788>,  <29.418514, 38.219475, 38.834671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270351, 38.045162, 39.162788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366747, 0.879979, 0.301884,
		-0.853401, -0.189021, -0.485775,
		-0.370409, -0.435784, 0.820298,
		29.159229, 37.914429, 39.408878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654236, 38.396725, 38.940033>,  <29.418514, 38.219475, 38.834671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654236, 38.396725, 38.940033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847361, 38.308376, 39.278999>,  <28.963236, 38.255367, 39.482380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847361, 38.308376, 39.278999>,  <28.654236, 38.396725, 38.940033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847361, 38.308376, 39.278999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294764, 0.870221, 0.394754,
		-0.824626, -0.440378, 0.355047,
		0.482810, -0.220869, 0.847414,
		28.992203, 38.242115, 39.533222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246628, 38.739353, 39.377052>,  <28.654236, 38.396725, 38.940033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246628, 38.739353, 39.377052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578402, 38.673622, 39.590607>,  <28.777466, 38.634182, 39.718739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578402, 38.673622, 39.590607>,  <28.246628, 38.739353, 39.377052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578402, 38.673622, 39.590607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082024, 0.909560, 0.407398,
		-0.552549, -0.381701, 0.740941,
		0.829435, -0.164332, 0.533885,
		28.827232, 38.624321, 39.750771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124985, 39.062588, 40.023369>,  <28.246628, 38.739353, 39.377052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124985, 39.062588, 40.023369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518906, 38.995438, 40.005562>,  <28.755259, 38.955147, 39.994877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518906, 38.995438, 40.005562>,  <28.124985, 39.062588, 40.023369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518906, 38.995438, 40.005562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170478, 0.885396, 0.432448,
		-0.033177, -0.433466, 0.900559,
		0.984803, -0.167873, -0.044522,
		28.814346, 38.945076, 39.992207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341152, 39.169453, 40.663902>,  <28.124985, 39.062588, 40.023369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341152, 39.169453, 40.663902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675066, 39.203320, 40.446289>,  <28.875414, 39.223640, 40.315723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675066, 39.203320, 40.446289>,  <28.341152, 39.169453, 40.663902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675066, 39.203320, 40.446289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291137, 0.770780, 0.566690,
		0.467309, -0.631450, 0.618784,
		0.834783, 0.084668, -0.544031,
		28.925501, 39.228722, 40.283081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945393, 39.295605, 41.186958>,  <28.341152, 39.169453, 40.663902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945393, 39.295605, 41.186958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049006, 39.447117, 40.831558>,  <29.111174, 39.538025, 40.618320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049006, 39.447117, 40.831558>,  <28.945393, 39.295605, 41.186958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049006, 39.447117, 40.831558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401090, 0.794644, 0.455705,
		0.878652, -0.474409, 0.053913,
		0.259032, 0.378783, -0.888496,
		29.126715, 39.560753, 40.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641962, 39.509369, 41.276352>,  <28.945393, 39.295605, 41.186958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641962, 39.509369, 41.276352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507029, 39.703098, 40.953457>,  <29.426067, 39.819336, 40.759720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507029, 39.703098, 40.953457>,  <29.641962, 39.509369, 41.276352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507029, 39.703098, 40.953457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155817, 0.874400, 0.459505,
		0.928400, 0.029226, -0.370432,
		-0.337335, 0.484324, -0.807239,
		29.405828, 39.848396, 40.711285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062216, 40.110569, 41.060658>,  <29.641962, 39.509369, 41.276352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062216, 40.110569, 41.060658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737032, 40.233643, 40.862900>,  <29.541922, 40.307487, 40.744244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737032, 40.233643, 40.862900>,  <30.062216, 40.110569, 41.060658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737032, 40.233643, 40.862900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086060, 0.903170, 0.420569,
		0.575922, 0.299359, -0.760722,
		-0.812962, 0.307683, -0.494393,
		29.493143, 40.325947, 40.714581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191986, 40.724705, 40.940380>,  <30.062216, 40.110569, 41.060658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191986, 40.724705, 40.940380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793772, 40.720081, 40.902916>,  <29.554842, 40.717308, 40.880436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793772, 40.720081, 40.902916>,  <30.191986, 40.724705, 40.940380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793772, 40.720081, 40.902916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060474, 0.840042, 0.539140,
		0.072450, 0.542398, -0.836992,
		-0.995537, -0.011555, -0.093662,
		29.495111, 40.716614, 40.874817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986322, 41.355095, 40.512657>,  <30.191986, 40.724705, 40.940380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986322, 41.355095, 40.512657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675926, 41.247009, 40.740631>,  <29.489689, 41.182159, 40.877415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675926, 41.247009, 40.740631>,  <29.986322, 41.355095, 40.512657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675926, 41.247009, 40.740631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040200, 0.922939, 0.382842,
		-0.629461, 0.274171, -0.727055,
		-0.775992, -0.270211, 0.569932,
		29.443129, 41.165947, 40.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434225, 41.827038, 40.412029>,  <29.986322, 41.355095, 40.512657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434225, 41.827038, 40.412029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346457, 41.666485, 40.767723>,  <29.293795, 41.570152, 40.981140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346457, 41.666485, 40.767723>,  <29.434225, 41.827038, 40.412029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346457, 41.666485, 40.767723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137418, 0.915080, 0.379137,
		-0.965904, -0.039006, -0.255946,
		-0.219422, -0.401382, 0.889239,
		29.280630, 41.546070, 41.034496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906116, 42.163586, 40.580856>,  <29.434225, 41.827038, 40.412029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906116, 42.163586, 40.580856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006048, 41.991600, 40.927895>,  <29.066008, 41.888409, 41.136116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006048, 41.991600, 40.927895>,  <28.906116, 42.163586, 40.580856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006048, 41.991600, 40.927895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347945, 0.796295, 0.494822,
		-0.903615, -0.425496, 0.049335,
		0.249829, -0.429962, 0.867593,
		29.080997, 41.862610, 41.188171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270454, 42.075577, 41.079666>,  <28.906116, 42.163586, 40.580856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270454, 42.075577, 41.079666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610418, 42.114841, 41.286747>,  <28.814398, 42.138401, 41.410995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610418, 42.114841, 41.286747>,  <28.270454, 42.075577, 41.079666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610418, 42.114841, 41.286747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366188, 0.816498, 0.446360,
		-0.378888, -0.568943, 0.729896,
		0.849912, 0.098158, 0.517701,
		28.865393, 42.144287, 41.442059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999647, 42.486950, 41.639992>,  <28.270454, 42.075577, 41.079666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999647, 42.486950, 41.639992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395870, 42.474731, 41.693447>,  <28.633604, 42.467400, 41.725521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395870, 42.474731, 41.693447>,  <27.999647, 42.486950, 41.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395870, 42.474731, 41.693447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042641, 0.857850, 0.512129,
		-0.130287, -0.512992, 0.848448,
		0.990559, -0.030545, 0.133641,
		28.693037, 42.465569, 41.733540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083160, 42.652409, 42.294186>,  <27.999647, 42.486950, 41.639992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083160, 42.652409, 42.294186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454660, 42.686146, 42.149792>,  <28.677561, 42.706387, 42.063156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454660, 42.686146, 42.149792>,  <28.083160, 42.652409, 42.294186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454660, 42.686146, 42.149792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134146, 0.831326, 0.539354,
		0.345588, -0.549349, 0.760779,
		0.928749, 0.084338, -0.360989,
		28.733284, 42.711449, 42.041496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578480, 42.608322, 42.833366>,  <28.083160, 42.652409, 42.294186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578480, 42.608322, 42.833366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755701, 42.833130, 42.553986>,  <28.862034, 42.968014, 42.386356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755701, 42.833130, 42.553986>,  <28.578480, 42.608322, 42.833366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755701, 42.833130, 42.553986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248024, 0.671840, 0.697936,
		0.861504, -0.482455, 0.158264,
		0.443051, 0.562022, -0.698454,
		28.888617, 43.001736, 42.344448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208858, 42.789864, 43.071053>,  <28.578480, 42.608322, 42.833366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208858, 42.789864, 43.071053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144812, 43.064026, 42.786919>,  <29.106384, 43.228523, 42.616436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144812, 43.064026, 42.786919>,  <29.208858, 42.789864, 43.071053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144812, 43.064026, 42.786919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064855, 0.725373, 0.685293,
		0.984965, 0.063658, -0.160596,
		-0.160117, 0.685406, -0.710339,
		29.096777, 43.269650, 42.573818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763285, 43.271931, 43.148788>,  <29.208858, 42.789864, 43.071053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763285, 43.271931, 43.148788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471622, 43.467026, 42.956772>,  <29.296625, 43.584084, 42.841560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471622, 43.467026, 42.956772>,  <29.763285, 43.271931, 43.148788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471622, 43.467026, 42.956772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076384, 0.755081, 0.651167,
		0.680073, 0.438133, -0.587826,
		-0.729154, 0.487742, -0.480044,
		29.252876, 43.613350, 42.812759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001274, 43.874382, 43.151314>,  <29.763285, 43.271931, 43.148788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001274, 43.874382, 43.151314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618568, 43.957153, 43.069553>,  <29.388945, 44.006817, 43.020496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618568, 43.957153, 43.069553>,  <30.001274, 43.874382, 43.151314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618568, 43.957153, 43.069553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048286, 0.806009, 0.589931,
		0.286822, 0.554556, -0.781154,
		-0.956766, 0.206924, -0.204404,
		29.331539, 44.019230, 43.008232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957699, 44.496998, 42.976116>,  <30.001274, 43.874382, 43.151314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957699, 44.496998, 42.976116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577068, 44.424801, 43.075657>,  <29.348690, 44.381481, 43.135384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577068, 44.424801, 43.075657>,  <29.957699, 44.496998, 42.976116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577068, 44.424801, 43.075657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034720, 0.867418, 0.496367,
		-0.305453, 0.463690, -0.831679,
		-0.951574, -0.180493, 0.248856,
		29.291595, 44.370651, 43.150314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658627, 45.156441, 43.040321>,  <29.957699, 44.496998, 42.976116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658627, 45.156441, 43.040321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366747, 44.951290, 43.221207>,  <29.191620, 44.828201, 43.329739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366747, 44.951290, 43.221207>,  <29.658627, 45.156441, 43.040321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366747, 44.951290, 43.221207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006334, 0.656262, 0.754506,
		-0.683739, 0.553427, -0.475625,
		-0.729699, -0.512872, 0.452218,
		29.147837, 44.797428, 43.356873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044247, 45.674194, 43.197487>,  <29.658627, 45.156441, 43.040321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044247, 45.674194, 43.197487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025242, 45.366936, 43.452888>,  <29.013840, 45.182579, 43.606129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025242, 45.366936, 43.452888>,  <29.044247, 45.674194, 43.197487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025242, 45.366936, 43.452888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016363, 0.638546, 0.769410,
		-0.998737, 0.047004, -0.017769,
		-0.047511, -0.768147, 0.638509,
		29.010988, 45.136490, 43.644440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530457, 45.811913, 43.684177>,  <29.044247, 45.674194, 43.197487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530457, 45.811913, 43.684177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803606, 45.566113, 43.842205>,  <28.967495, 45.418633, 43.937023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803606, 45.566113, 43.842205>,  <28.530457, 45.811913, 43.684177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803606, 45.566113, 43.842205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051349, 0.579827, 0.813120,
		-0.728732, -0.534970, 0.427501,
		0.682872, -0.614498, 0.395068,
		29.008467, 45.381763, 43.960724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434944, 45.834286, 44.354366>,  <28.530457, 45.811913, 43.684177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434944, 45.834286, 44.354366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805424, 45.691593, 44.305546>,  <29.027712, 45.605980, 44.276253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805424, 45.691593, 44.305546>,  <28.434944, 45.834286, 44.354366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805424, 45.691593, 44.305546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325108, 0.591711, 0.737688,
		-0.190937, -0.722926, 0.664018,
		0.926201, -0.356730, -0.122049,
		29.083284, 45.584576, 44.268932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567907, 45.494194, 44.964436>,  <28.434944, 45.834286, 44.354366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567907, 45.494194, 44.964436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919094, 45.579208, 44.792854>,  <29.129807, 45.630219, 44.689907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919094, 45.579208, 44.792854>,  <28.567907, 45.494194, 44.964436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919094, 45.579208, 44.792854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349848, 0.326770, 0.877968,
		0.326770, -0.920896, 0.212538,
		-0.877968, -0.212538, 0.428952,
		29.182484, 45.642971, 44.664169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090612, 45.250587, 45.473282>,  <28.567907, 45.494194, 44.964436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090612, 45.250587, 45.473282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159195, 45.581974, 45.260021>,  <29.200344, 45.780807, 45.132065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159195, 45.581974, 45.260021>,  <29.090612, 45.250587, 45.473282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159195, 45.581974, 45.260021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282651, 0.477047, 0.832187,
		0.943776, -0.293376, -0.152375,
		0.171454, 0.828466, -0.533148,
		29.210630, 45.830513, 45.100079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799446, 45.465462, 45.382492>,  <29.090612, 45.250587, 45.473282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799446, 45.465462, 45.382492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532549, 45.763355, 45.387463>,  <29.372410, 45.942093, 45.390446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532549, 45.763355, 45.387463>,  <29.799446, 45.465462, 45.382492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532549, 45.763355, 45.387463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333684, 0.283969, 0.898897,
		0.665913, 0.603930, -0.437983,
		-0.667244, 0.744735, 0.012423,
		29.332376, 45.986774, 45.391190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017792, 45.997074, 44.764172>,  <29.799446, 45.465462, 45.382492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017792, 45.997074, 44.764172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398026, 46.010254, 44.887657>,  <30.626165, 46.018162, 44.961746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398026, 46.010254, 44.887657>,  <30.017792, 45.997074, 44.764172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398026, 46.010254, 44.887657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165811, -0.786778, 0.594547,
		0.262478, -0.616355, -0.742436,
		0.950585, 0.032951, 0.308710,
		30.683201, 46.020138, 44.980270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384232, 45.301716, 44.667274>,  <30.017792, 45.997074, 44.764172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384232, 45.301716, 44.667274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510595, 45.527103, 44.972614>,  <30.586414, 45.662338, 45.155819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510595, 45.527103, 44.972614>,  <30.384232, 45.301716, 44.667274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510595, 45.527103, 44.972614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147398, -0.765634, 0.626162,
		0.937269, -0.310327, -0.158818,
		0.315912, 0.563473, 0.763347,
		30.605370, 45.696144, 45.201618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935978, 44.973846, 45.044895>,  <30.384232, 45.301716, 44.667274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935978, 44.973846, 45.044895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698547, 45.209984, 45.263680>,  <30.556089, 45.351665, 45.394951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698547, 45.209984, 45.263680>,  <30.935978, 44.973846, 45.044895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698547, 45.209984, 45.263680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293718, -0.791673, 0.535709,
		0.749264, 0.157332, 0.643311,
		-0.593576, 0.590340, 0.546961,
		30.520475, 45.387085, 45.427769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019299, 45.007099, 45.835365>,  <30.935978, 44.973846, 45.044895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019299, 45.007099, 45.835365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642891, 45.031536, 45.702248>,  <30.417046, 45.046200, 45.622375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642891, 45.031536, 45.702248>,  <31.019299, 45.007099, 45.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642891, 45.031536, 45.702248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262042, -0.753818, 0.602572,
		-0.214051, 0.654237, 0.725366,
		-0.941019, 0.061095, -0.332793,
		30.360586, 45.049866, 45.602409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397041, 44.616070, 46.173611>,  <31.019299, 45.007099, 45.835365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397041, 44.616070, 46.173611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002039, 44.555038, 46.189377>,  <29.765038, 44.518421, 46.198837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002039, 44.555038, 46.189377>,  <30.397041, 44.616070, 46.173611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002039, 44.555038, 46.189377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100661, -0.803186, -0.587163,
		0.121248, -0.575859, 0.808508,
		-0.987505, -0.152577, 0.039418,
		29.705788, 44.509266, 46.201202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099773, 43.964722, 46.466400>,  <30.397041, 44.616070, 46.173611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099773, 43.964722, 46.466400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875599, 44.125931, 46.176991>,  <29.741095, 44.222656, 46.003345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875599, 44.125931, 46.176991>,  <30.099773, 43.964722, 46.466400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875599, 44.125931, 46.176991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186974, -0.789490, -0.584591,
		-0.806815, -0.462907, 0.367106,
		-0.560438, 0.403017, -0.723523,
		29.707468, 44.246838, 45.959934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594162, 43.435181, 46.200180>,  <30.099773, 43.964722, 46.466400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594162, 43.435181, 46.200180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636305, 43.726768, 45.929623>,  <29.661591, 43.901722, 45.767288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636305, 43.726768, 45.929623>,  <29.594162, 43.435181, 46.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636305, 43.726768, 45.929623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281624, -0.674202, -0.682744,
		-0.953723, -0.118556, -0.276327,
		0.105357, 0.728970, -0.676390,
		29.667912, 43.945457, 45.726707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450396, 43.048237, 45.684620>,  <29.594162, 43.435181, 46.200180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450396, 43.048237, 45.684620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613020, 43.384109, 45.540600>,  <29.710594, 43.585632, 45.454185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613020, 43.384109, 45.540600>,  <29.450396, 43.048237, 45.684620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613020, 43.384109, 45.540600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448725, -0.526809, -0.721885,
		-0.795834, 0.131926, -0.590968,
		0.406563, 0.839683, -0.360054,
		29.734989, 43.636013, 45.432583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327723, 43.007385, 44.996021>,  <29.450396, 43.048237, 45.684620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327723, 43.007385, 44.996021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633677, 43.262787, 45.030106>,  <29.817249, 43.416027, 45.050556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633677, 43.262787, 45.030106>,  <29.327723, 43.007385, 44.996021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633677, 43.262787, 45.030106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513701, -0.524786, -0.678757,
		-0.388672, 0.562944, -0.729402,
		0.764883, 0.638508, 0.085215,
		29.863142, 43.454338, 45.055672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619654, 43.028484, 44.347534>,  <29.327723, 43.007385, 44.996021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619654, 43.028484, 44.347534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912172, 43.198620, 44.560810>,  <30.087683, 43.300701, 44.688774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912172, 43.198620, 44.560810>,  <29.619654, 43.028484, 44.347534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912172, 43.198620, 44.560810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679028, -0.527655, -0.510393,
		0.064249, 0.735299, -0.674690,
		0.731296, 0.425341, 0.533190,
		30.131561, 43.326221, 44.720768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192665, 43.343975, 43.879711>,  <29.619654, 43.028484, 44.347534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192665, 43.343975, 43.879711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341450, 43.254906, 44.240170>,  <30.430719, 43.201462, 44.456444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341450, 43.254906, 44.240170>,  <30.192665, 43.343975, 43.879711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341450, 43.254906, 44.240170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697231, -0.573861, -0.429595,
		0.612793, 0.788098, -0.058196,
		0.371960, -0.222676, 0.901144,
		30.453037, 43.188103, 44.510513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855289, 43.456699, 43.835133>,  <30.192665, 43.343975, 43.879711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855289, 43.456699, 43.835133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851454, 43.216507, 44.154964>,  <30.849152, 43.072392, 44.346863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851454, 43.216507, 44.154964>,  <30.855289, 43.456699, 43.835133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851454, 43.216507, 44.154964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760082, -0.523957, -0.384375,
		0.649757, 0.604061, 0.461440,
		-0.009589, -0.600483, 0.799580,
		30.848577, 43.036362, 44.394840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619001, 43.250652, 43.894218>,  <30.855289, 43.456699, 43.835133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619001, 43.250652, 43.894218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431965, 42.973137, 44.113316>,  <31.319742, 42.806629, 44.244774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431965, 42.973137, 44.113316>,  <31.619001, 43.250652, 43.894218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431965, 42.973137, 44.113316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659436, -0.686434, -0.306516,
		0.588645, 0.217876, 0.778478,
		-0.467591, -0.693785, 0.547741,
		31.291687, 42.764999, 44.277637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120697, 42.885563, 44.229458>,  <31.619001, 43.250652, 43.894218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120697, 42.885563, 44.229458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825710, 42.617992, 44.266708>,  <31.648718, 42.457451, 44.289059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825710, 42.617992, 44.266708>,  <32.120697, 42.885563, 44.229458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825710, 42.617992, 44.266708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640289, -0.736342, -0.218701,
		0.214867, -0.101659, 0.971338,
		-0.737470, -0.668929, 0.093124,
		31.604469, 42.417313, 44.294647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390369, 42.177402, 44.445786>,  <32.120697, 42.885563, 44.229458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390369, 42.177402, 44.445786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038376, 42.044090, 44.310406>,  <31.827179, 41.964104, 44.229179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038376, 42.044090, 44.310406>,  <32.390369, 42.177402, 44.445786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038376, 42.044090, 44.310406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450354, -0.811942, -0.371392,
		-0.151023, -0.479242, 0.864592,
		-0.879985, -0.333284, -0.338451,
		31.774380, 41.944107, 44.208870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279121, 41.495583, 44.604080>,  <32.390369, 42.177402, 44.445786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279121, 41.495583, 44.604080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016994, 41.526928, 44.303570>,  <31.859716, 41.545734, 44.123264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016994, 41.526928, 44.303570>,  <32.279121, 41.495583, 44.604080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016994, 41.526928, 44.303570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370609, -0.833299, -0.410198,
		-0.658181, -0.547240, 0.517035,
		-0.655322, 0.078367, -0.751274,
		31.820398, 41.550438, 44.078186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019852, 40.828899, 44.585258>,  <32.279121, 41.495583, 44.604080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019852, 40.828899, 44.585258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954672, 41.021484, 44.240784>,  <31.915564, 41.137035, 44.034100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954672, 41.021484, 44.240784>,  <32.019852, 40.828899, 44.585258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954672, 41.021484, 44.240784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459777, -0.735227, -0.498043,
		-0.872956, -0.477109, -0.101563,
		-0.162949, 0.481466, -0.861184,
		31.905787, 41.165924, 43.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683304, 40.426964, 44.095081>,  <32.019852, 40.828899, 44.585258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683304, 40.426964, 44.095081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820545, 40.685368, 43.822330>,  <31.902891, 40.840408, 43.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820545, 40.685368, 43.822330>,  <31.683304, 40.426964, 44.095081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820545, 40.685368, 43.822330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211077, -0.760401, -0.614196,
		-0.915273, 0.066806, -0.397255,
		0.343105, 0.646009, -0.681874,
		31.923477, 40.879169, 43.617767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445368, 40.157063, 43.458969>,  <31.683304, 40.426964, 44.095081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445368, 40.157063, 43.458969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720358, 40.424610, 43.345840>,  <31.885351, 40.585140, 43.277962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720358, 40.424610, 43.345840>,  <31.445368, 40.157063, 43.458969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720358, 40.424610, 43.345840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365452, -0.655192, -0.661186,
		-0.627553, 0.351190, -0.694869,
		0.687475, 0.668871, -0.282825,
		31.926600, 40.625271, 43.260994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409216, 40.251186, 42.723278>,  <31.445368, 40.157063, 43.458969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409216, 40.251186, 42.723278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776440, 40.328949, 42.861481>,  <31.996773, 40.375607, 42.944401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776440, 40.328949, 42.861481>,  <31.409216, 40.251186, 42.723278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776440, 40.328949, 42.861481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375731, -0.704702, -0.601848,
		0.126472, 0.682348, -0.720004,
		0.918058, 0.194411, 0.345505,
		32.051857, 40.387272, 42.965134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773340, 40.295700, 42.127930>,  <31.409216, 40.251186, 42.723278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773340, 40.295700, 42.127930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056679, 40.264820, 42.408581>,  <32.226681, 40.246292, 42.576973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056679, 40.264820, 42.408581>,  <31.773340, 40.295700, 42.127930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056679, 40.264820, 42.408581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514814, -0.623546, -0.588350,
		0.482917, 0.777966, -0.401946,
		0.708349, -0.077197, 0.701629,
		32.269184, 40.241661, 42.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307049, 40.396770, 41.830307>,  <31.773340, 40.295700, 42.127930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307049, 40.396770, 41.830307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442509, 40.190186, 42.144909>,  <32.523785, 40.066235, 42.333668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442509, 40.190186, 42.144909>,  <32.307049, 40.396770, 41.830307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442509, 40.190186, 42.144909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453216, -0.642999, -0.617372,
		0.824569, 0.565526, 0.016319,
		0.338647, -0.516462, 0.786502,
		32.544102, 40.035248, 42.380859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878216, 40.158302, 41.666538>,  <32.307049, 40.396770, 41.830307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878216, 40.158302, 41.666538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816639, 39.929569, 41.988857>,  <32.779694, 39.792332, 42.182247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816639, 39.929569, 41.988857>,  <32.878216, 40.158302, 41.666538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816639, 39.929569, 41.988857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486295, -0.753760, -0.441999,
		0.860128, 0.323813, 0.394113,
		-0.153942, -0.571831, 0.805799,
		32.770458, 39.758018, 42.230598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515736, 39.809032, 41.832859>,  <32.878216, 40.158302, 41.666538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515736, 39.809032, 41.832859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206951, 39.587730, 41.958065>,  <33.021679, 39.454948, 42.033188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206951, 39.587730, 41.958065>,  <33.515736, 39.809032, 41.832859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206951, 39.587730, 41.958065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252918, -0.719095, -0.647252,
		0.583185, -0.420488, 0.695044,
		-0.771964, -0.553256, 0.313016,
		32.975361, 39.421753, 42.051971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805042, 39.249123, 42.029743>,  <33.515736, 39.809032, 41.832859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805042, 39.249123, 42.029743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416271, 39.183506, 41.962288>,  <33.183006, 39.144135, 41.921814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416271, 39.183506, 41.962288>,  <33.805042, 39.249123, 42.029743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416271, 39.183506, 41.962288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228946, -0.824490, -0.517494,
		-0.054145, -0.541577, 0.838905,
		-0.971932, -0.164044, -0.168634,
		33.124691, 39.134293, 41.911697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719547, 38.528458, 42.033588>,  <33.805042, 39.249123, 42.029743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719547, 38.528458, 42.033588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360691, 38.601177, 41.872543>,  <33.145378, 38.644810, 41.775917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360691, 38.601177, 41.872543>,  <33.719547, 38.528458, 42.033588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360691, 38.601177, 41.872543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019735, -0.893986, -0.447660,
		-0.441311, -0.409558, 0.798440,
		-0.897137, 0.181801, -0.402608,
		33.091549, 38.655716, 41.751762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289894, 37.941742, 42.088421>,  <33.719547, 38.528458, 42.033588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289894, 37.941742, 42.088421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157948, 38.153706, 41.775913>,  <33.078777, 38.280884, 41.588409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157948, 38.153706, 41.775913>,  <33.289894, 37.941742, 42.088421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157948, 38.153706, 41.775913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191265, -0.847942, -0.494380,
		-0.924448, -0.013651, 0.381064,
		-0.329869, 0.529913, -0.781267,
		33.058987, 38.312679, 41.541534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666245, 37.605640, 41.856800>,  <33.289894, 37.941742, 42.088421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666245, 37.605640, 41.856800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735218, 37.851494, 41.548904>,  <32.776600, 37.999004, 41.364166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735218, 37.851494, 41.548904>,  <32.666245, 37.605640, 41.856800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735218, 37.851494, 41.548904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033182, -0.777374, -0.628163,
		-0.984463, 0.133855, -0.113648,
		0.172430, 0.614632, -0.769737,
		32.786945, 38.035885, 41.317982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134636, 37.529301, 41.308376>,  <32.666245, 37.605640, 41.856800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134636, 37.529301, 41.308376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464020, 37.679039, 41.137833>,  <32.661648, 37.768883, 41.035507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464020, 37.679039, 41.137833>,  <32.134636, 37.529301, 41.308376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464020, 37.679039, 41.137833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021934, -0.771899, -0.635366,
		-0.566955, 0.513845, -0.643836,
		0.823456, 0.374347, -0.426361,
		32.711056, 37.791344, 41.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009651, 37.297729, 40.586739>,  <32.134636, 37.529301, 41.308376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009651, 37.297729, 40.586739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396065, 37.379051, 40.650547>,  <32.627911, 37.427845, 40.688831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396065, 37.379051, 40.650547>,  <32.009651, 37.297729, 40.586739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396065, 37.379051, 40.650547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258004, -0.793857, -0.550659,
		0.014685, 0.573112, -0.819346,
		0.966032, 0.203308, 0.159523,
		32.685875, 37.440044, 40.698402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310333, 37.341167, 39.896370>,  <32.009651, 37.297729, 40.586739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310333, 37.341167, 39.896370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609581, 37.264236, 40.150402>,  <32.789131, 37.218079, 40.302822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609581, 37.264236, 40.150402>,  <32.310333, 37.341167, 39.896370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609581, 37.264236, 40.150402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239789, -0.814044, -0.528994,
		0.618722, 0.548036, -0.562885,
		0.748120, -0.192327, 0.635080,
		32.834019, 37.206539, 40.340927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968426, 37.112648, 39.546104>,  <32.310333, 37.341167, 39.896370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968426, 37.112648, 39.546104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963177, 36.959568, 39.915615>,  <32.960030, 36.867718, 40.137321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963177, 36.959568, 39.915615>,  <32.968426, 37.112648, 39.546104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963177, 36.959568, 39.915615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172387, -0.910891, -0.374915,
		0.984942, 0.154329, 0.077922,
		-0.013118, -0.382702, 0.923779,
		32.959240, 36.844757, 40.192749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629280, 36.757168, 39.539276>,  <32.968426, 37.112648, 39.546104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629280, 36.757168, 39.539276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404217, 36.627396, 39.843422>,  <33.269180, 36.549530, 40.025909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404217, 36.627396, 39.843422>,  <33.629280, 36.757168, 39.539276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404217, 36.627396, 39.843422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242878, -0.944057, -0.223083,
		0.790205, 0.059157, 0.609980,
		-0.562659, -0.324433, 0.760367,
		33.235420, 36.530067, 40.071533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911900, 36.124115, 39.624172>,  <33.629280, 36.757168, 39.539276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911900, 36.124115, 39.624172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599998, 36.098812, 39.873329>,  <33.412857, 36.083630, 40.022823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599998, 36.098812, 39.873329>,  <33.911900, 36.124115, 39.624172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599998, 36.098812, 39.873329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100943, -0.994569, 0.025360,
		0.617901, 0.082651, 0.781900,
		-0.779750, -0.063257, 0.622888,
		33.366074, 36.079834, 40.060196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084095, 35.643917, 40.122166>,  <33.911900, 36.124115, 39.624172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084095, 35.643917, 40.122166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684341, 35.636070, 40.110542>,  <33.444489, 35.631363, 40.103569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684341, 35.636070, 40.110542>,  <34.084095, 35.643917, 40.122166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684341, 35.636070, 40.110542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022835, -0.993118, -0.114873,
		-0.026607, -0.115466, 0.992955,
		-0.999385, -0.019618, -0.029061,
		33.384525, 35.630184, 40.101826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921833, 35.174591, 40.558521>,  <34.084095, 35.643917, 40.122166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921833, 35.174591, 40.558521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574993, 35.223198, 40.365284>,  <33.366890, 35.252361, 40.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574993, 35.223198, 40.365284>,  <33.921833, 35.174591, 40.558521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574993, 35.223198, 40.365284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160094, -0.986321, 0.039242,
		-0.471716, 0.111367, 0.874689,
		-0.867095, 0.121521, -0.483093,
		33.314865, 35.259655, 40.220356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472900, 34.698055, 40.891491>,  <33.921833, 35.174591, 40.558521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472900, 34.698055, 40.891491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262802, 34.746746, 40.554611>,  <33.136742, 34.775959, 40.352482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262802, 34.746746, 40.554611>,  <33.472900, 34.698055, 40.891491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262802, 34.746746, 40.554611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080156, -0.992393, -0.093441,
		-0.847166, 0.018427, 0.531008,
		-0.525247, 0.121724, -0.842199,
		33.105228, 34.783264, 40.301952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907837, 34.275383, 41.085751>,  <33.472900, 34.698055, 40.891491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907837, 34.275383, 41.085751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949696, 34.353565, 40.695705>,  <32.974812, 34.400475, 40.461678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949696, 34.353565, 40.695705>,  <32.907837, 34.275383, 41.085751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949696, 34.353565, 40.695705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005759, -0.980601, -0.195934,
		-0.994493, 0.014889, -0.103745,
		0.104650, 0.195452, -0.975114,
		32.981091, 34.412201, 40.403172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415524, 33.801949, 40.789104>,  <32.907837, 34.275383, 41.085751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415524, 33.801949, 40.789104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665077, 33.935234, 40.506332>,  <32.814808, 34.015205, 40.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665077, 33.935234, 40.506332>,  <32.415524, 33.801949, 40.789104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665077, 33.935234, 40.506332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079012, -0.926810, -0.367124,
		-0.777516, 0.173186, -0.604546,
		0.623880, 0.333211, -0.706926,
		32.852242, 34.035198, 40.294254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127075, 33.612751, 40.164154>,  <32.415524, 33.801949, 40.789104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127075, 33.612751, 40.164154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519871, 33.648102, 40.097351>,  <32.755547, 33.669312, 40.057270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519871, 33.648102, 40.097351>,  <32.127075, 33.612751, 40.164154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519871, 33.648102, 40.097351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056854, -0.981110, -0.184908,
		-0.180197, 0.172082, -0.968461,
		0.981986, 0.088381, -0.167009,
		32.814468, 33.674618, 40.047249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310368, 33.299351, 39.442039>,  <32.127075, 33.612751, 40.164154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310368, 33.299351, 39.442039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660721, 33.350945, 39.628021>,  <32.870934, 33.381901, 39.739613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660721, 33.350945, 39.628021>,  <32.310368, 33.299351, 39.442039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660721, 33.350945, 39.628021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281475, -0.919250, -0.275228,
		0.391913, 0.371943, -0.841465,
		0.875886, 0.128986, 0.464959,
		32.923485, 33.389641, 39.767509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892578, 33.149517, 38.910301>,  <32.310368, 33.299351, 39.442039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892578, 33.149517, 38.910301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026630, 33.071243, 39.278954>,  <33.107063, 33.024281, 39.500145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026630, 33.071243, 39.278954>,  <32.892578, 33.149517, 38.910301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026630, 33.071243, 39.278954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380720, -0.866648, -0.322448,
		0.861823, 0.458944, -0.215941,
		0.335130, -0.195681, 0.921627,
		33.127171, 33.012539, 39.555443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503998, 32.723076, 38.765953>,  <32.892578, 33.149517, 38.910301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503998, 32.723076, 38.765953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404148, 32.673256, 39.150074>,  <33.344238, 32.643364, 39.380547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404148, 32.673256, 39.150074>,  <33.503998, 32.723076, 38.765953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404148, 32.673256, 39.150074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255962, -0.964908, -0.058614,
		0.933900, 0.231168, 0.272748,
		-0.249627, -0.124553, 0.960298,
		33.329262, 32.635891, 39.438164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928089, 32.257648, 38.934719>,  <33.503998, 32.723076, 38.765953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928089, 32.257648, 38.934719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663139, 32.226902, 39.232807>,  <33.504169, 32.208454, 39.411659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663139, 32.226902, 39.232807>,  <33.928089, 32.257648, 38.934719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663139, 32.226902, 39.232807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163970, -0.985479, 0.044091,
		0.731008, 0.151398, 0.665361,
		-0.662375, -0.076869, 0.745218,
		33.464428, 32.203842, 39.456371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248775, 31.954088, 39.443844>,  <33.928089, 32.257648, 38.934719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248775, 31.954088, 39.443844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852749, 31.900320, 39.460350>,  <33.615135, 31.868059, 39.470253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852749, 31.900320, 39.460350>,  <34.248775, 31.954088, 39.443844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852749, 31.900320, 39.460350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128579, -0.984256, -0.121277,
		0.056916, -0.114766, 0.991761,
		-0.990065, -0.134422, 0.041264,
		33.555729, 31.859993, 39.472729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725773, 32.588455, 39.698437>,  <34.248775, 31.954088, 39.443844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725773, 32.588455, 39.698437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079525, 32.464024, 39.559242>,  <35.291779, 32.389362, 39.475723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079525, 32.464024, 39.559242>,  <34.725773, 32.588455, 39.698437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079525, 32.464024, 39.559242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466716, 0.578591, 0.668886,
		-0.006734, -0.753963, 0.656882,
		0.884382, -0.311081, -0.347990,
		35.344841, 32.370701, 39.454845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149841, 32.400982, 40.242840>,  <34.725773, 32.588455, 39.698437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149841, 32.400982, 40.242840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408798, 32.504883, 39.956230>,  <35.564171, 32.567223, 39.784264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408798, 32.504883, 39.956230>,  <35.149841, 32.400982, 40.242840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408798, 32.504883, 39.956230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449198, 0.629450, 0.634046,
		0.615709, -0.732341, 0.290826,
		0.647398, 0.259750, -0.716524,
		35.603016, 32.582809, 39.741272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811783, 32.442059, 40.521679>,  <35.149841, 32.400982, 40.242840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811783, 32.442059, 40.521679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852623, 32.640770, 40.176941>,  <35.877129, 32.759998, 39.970097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852623, 32.640770, 40.176941>,  <35.811783, 32.442059, 40.521679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852623, 32.640770, 40.176941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530308, 0.705821, 0.469669,
		0.841634, -0.505001, -0.191380,
		0.102103, 0.496780, -0.861849,
		35.883255, 32.789803, 39.918385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465382, 32.794456, 40.555920>,  <35.811783, 32.442059, 40.521679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465382, 32.794456, 40.555920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260540, 33.003937, 40.283600>,  <36.137634, 33.129627, 40.120209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260540, 33.003937, 40.283600>,  <36.465382, 32.794456, 40.555920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260540, 33.003937, 40.283600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388140, 0.848170, 0.360492,
		0.766223, -0.079636, -0.637621,
		-0.512103, 0.523703, -0.680798,
		36.106911, 33.161049, 40.079361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890877, 33.359699, 40.414604>,  <36.465382, 32.794456, 40.555920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890877, 33.359699, 40.414604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528759, 33.474449, 40.289288>,  <36.311489, 33.543301, 40.214100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528759, 33.474449, 40.289288>,  <36.890877, 33.359699, 40.414604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528759, 33.474449, 40.289288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203963, 0.940485, 0.271822,
		0.372623, 0.182178, -0.909925,
		-0.905291, 0.286878, -0.313289,
		36.257172, 33.560513, 40.195301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996704, 34.049957, 40.047943>,  <36.890877, 33.359699, 40.414604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996704, 34.049957, 40.047943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607468, 34.045494, 40.140003>,  <36.373924, 34.042816, 40.195240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607468, 34.045494, 40.140003>,  <36.996704, 34.049957, 40.047943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607468, 34.045494, 40.140003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067139, 0.941762, 0.329509,
		-0.220426, 0.336095, -0.915671,
		-0.973090, -0.011155, 0.230154,
		36.315540, 34.042149, 40.209049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719406, 34.712757, 39.845177>,  <36.996704, 34.049957, 40.047943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719406, 34.712757, 39.845177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429626, 34.555370, 40.071579>,  <36.255760, 34.460938, 40.207420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429626, 34.555370, 40.071579>,  <36.719406, 34.712757, 39.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429626, 34.555370, 40.071579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126360, 0.882979, 0.452085,
		-0.677653, 0.255990, -0.689388,
		-0.724444, -0.393468, 0.566006,
		36.212292, 34.437328, 40.241383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165234, 35.208050, 39.723896>,  <36.719406, 34.712757, 39.845177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165234, 35.208050, 39.723896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144192, 35.019375, 40.075974>,  <36.131565, 34.906170, 40.287220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144192, 35.019375, 40.075974>,  <36.165234, 35.208050, 39.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144192, 35.019375, 40.075974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143206, 0.875870, 0.460807,
		-0.988294, -0.101806, -0.113627,
		-0.052609, -0.471685, 0.880196,
		36.128410, 34.877869, 40.340031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614372, 35.418076, 39.971558>,  <36.165234, 35.208050, 39.723896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614372, 35.418076, 39.971558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836994, 35.291740, 40.278934>,  <35.970566, 35.215939, 40.463360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836994, 35.291740, 40.278934>,  <35.614372, 35.418076, 39.971558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836994, 35.291740, 40.278934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139374, 0.876323, 0.461122,
		-0.819038, -0.363738, 0.443701,
		0.556553, -0.315836, 0.768438,
		36.003960, 35.196991, 40.509464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295555, 35.738609, 40.471775>,  <35.614372, 35.418076, 39.971558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295555, 35.738609, 40.471775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649879, 35.643223, 40.631008>,  <35.862473, 35.585991, 40.726547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649879, 35.643223, 40.631008>,  <35.295555, 35.738609, 40.471775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649879, 35.643223, 40.631008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090969, 0.751981, 0.652878,
		-0.455041, -0.614540, 0.644421,
		0.885812, -0.238464, 0.398086,
		35.915623, 35.571682, 40.750435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205002, 35.952854, 41.127903>,  <35.295555, 35.738609, 40.471775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205002, 35.952854, 41.127903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601330, 35.902275, 41.108795>,  <35.839127, 35.871929, 41.097328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601330, 35.902275, 41.108795>,  <35.205002, 35.952854, 41.127903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601330, 35.902275, 41.108795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134571, 0.889568, 0.436531,
		-0.012702, -0.438953, 0.898420,
		0.990822, -0.126446, -0.047771,
		35.898575, 35.864342, 41.094463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449085, 35.976616, 41.796558>,  <35.205002, 35.952854, 41.127903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449085, 35.976616, 41.796558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764095, 36.077213, 41.571507>,  <35.953102, 36.137573, 41.436474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764095, 36.077213, 41.571507>,  <35.449085, 35.976616, 41.796558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764095, 36.077213, 41.571507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004908, 0.910356, 0.413797,
		0.616264, -0.328637, 0.715693,
		0.787524, 0.251496, -0.562633,
		36.000351, 36.152660, 41.402718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884502, 36.228840, 42.260895>,  <35.449085, 35.976616, 41.796558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884502, 36.228840, 42.260895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018208, 36.364208, 41.909042>,  <36.098431, 36.445427, 41.697933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018208, 36.364208, 41.909042>,  <35.884502, 36.228840, 42.260895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018208, 36.364208, 41.909042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166040, 0.897568, 0.408414,
		0.927740, -0.282570, 0.243831,
		0.334260, 0.338417, -0.879627,
		36.118484, 36.465733, 41.645153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397892, 36.697289, 42.443226>,  <35.884502, 36.228840, 42.260895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397892, 36.697289, 42.443226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326874, 36.786152, 42.059742>,  <36.284264, 36.839470, 41.829651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326874, 36.786152, 42.059742>,  <36.397892, 36.697289, 42.443226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326874, 36.786152, 42.059742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095249, 0.973491, 0.207948,
		0.979492, -0.054396, -0.193999,
		-0.177545, 0.222162, -0.958708,
		36.273609, 36.852802, 41.772129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929363, 37.096912, 42.325012>,  <36.397892, 36.697289, 42.443226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929363, 37.096912, 42.325012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601681, 37.177994, 42.110420>,  <36.405071, 37.226643, 41.981667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601681, 37.177994, 42.110420>,  <36.929363, 37.096912, 42.325012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601681, 37.177994, 42.110420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143529, 0.978150, 0.150409,
		0.555242, 0.046217, -0.830404,
		-0.819211, 0.202701, -0.536476,
		36.355919, 37.238804, 41.949478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133114, 37.738350, 41.957138>,  <36.929363, 37.096912, 42.325012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133114, 37.738350, 41.957138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736908, 37.684666, 41.945309>,  <36.499184, 37.652454, 41.938210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736908, 37.684666, 41.945309>,  <37.133114, 37.738350, 41.957138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736908, 37.684666, 41.945309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136929, 0.945276, 0.296148,
		-0.011789, 0.297387, -0.954684,
		-0.990511, -0.134215, -0.029577,
		36.439754, 37.644402, 41.936436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872093, 38.419960, 41.818661>,  <37.133114, 37.738350, 41.957138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872093, 38.419960, 41.818661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517086, 38.251534, 41.893520>,  <36.304081, 38.150478, 41.938435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517086, 38.251534, 41.893520>,  <36.872093, 38.419960, 41.818661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517086, 38.251534, 41.893520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397736, 0.905118, 0.150226,
		-0.232646, 0.058892, -0.970777,
		-0.887515, -0.421062, 0.187149,
		36.250832, 38.125214, 41.949665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248241, 38.775585, 41.424255>,  <36.872093, 38.419960, 41.818661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248241, 38.775585, 41.424255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104046, 38.583344, 41.744022>,  <36.017529, 38.467999, 41.935883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104046, 38.583344, 41.744022>,  <36.248241, 38.775585, 41.424255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104046, 38.583344, 41.744022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410382, 0.851357, 0.326768,
		-0.837636, -0.210270, -0.504136,
		-0.360490, -0.480601, 0.799418,
		35.995899, 38.439163, 41.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426254, 38.792747, 41.428158>,  <36.248241, 38.775585, 41.424255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426254, 38.792747, 41.428158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551899, 38.745216, 41.804924>,  <35.627285, 38.716698, 42.030983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551899, 38.745216, 41.804924>,  <35.426254, 38.792747, 41.428158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551899, 38.745216, 41.804924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534661, 0.797703, 0.278939,
		-0.784519, -0.591226, 0.187035,
		0.314114, -0.118832, 0.941919,
		35.646133, 38.709568, 42.087502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816776, 38.815823, 41.778355>,  <35.426254, 38.792747, 41.428158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816776, 38.815823, 41.778355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093777, 38.878574, 42.060017>,  <35.259975, 38.916225, 42.229012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093777, 38.878574, 42.060017>,  <34.816776, 38.815823, 41.778355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093777, 38.878574, 42.060017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602899, 0.661873, 0.445463,
		-0.396175, -0.733016, 0.552931,
		0.692501, 0.156880, 0.704152,
		35.301529, 38.925640, 42.271263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451199, 38.909088, 42.346954>,  <34.816776, 38.815823, 41.778355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451199, 38.909088, 42.346954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806812, 39.073143, 42.428349>,  <35.020180, 39.171574, 42.477184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806812, 39.073143, 42.428349>,  <34.451199, 38.909088, 42.346954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806812, 39.073143, 42.428349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456757, 0.763983, 0.455745,
		0.031454, -0.498118, 0.866539,
		0.889035, 0.410133, 0.203489,
		35.073524, 39.196182, 42.489395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405415, 39.230686, 42.995495>,  <34.451199, 38.909088, 42.346954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405415, 39.230686, 42.995495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724861, 39.402618, 42.826992>,  <34.916527, 39.505779, 42.725891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724861, 39.402618, 42.826992>,  <34.405415, 39.230686, 42.995495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724861, 39.402618, 42.826992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321669, 0.896429, 0.304866,
		0.508671, -0.107964, 0.854165,
		0.798613, 0.429835, -0.421258,
		34.964443, 39.531570, 42.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796886, 39.616669, 43.479210>,  <34.405415, 39.230686, 42.995495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796886, 39.616669, 43.479210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906178, 39.789417, 43.135387>,  <34.971752, 39.893066, 42.929096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906178, 39.789417, 43.135387>,  <34.796886, 39.616669, 43.479210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906178, 39.789417, 43.135387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331671, 0.881056, 0.337245,
		0.902962, 0.192944, 0.383969,
		0.273229, 0.431871, -0.859554,
		34.988148, 39.918980, 42.877522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927612, 40.164520, 43.714947>,  <34.796886, 39.616669, 43.479210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927612, 40.164520, 43.714947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920406, 40.239731, 43.322147>,  <34.916080, 40.284859, 43.086468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920406, 40.239731, 43.322147>,  <34.927612, 40.164520, 43.714947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920406, 40.239731, 43.322147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258357, 0.947927, 0.186244,
		0.965881, 0.257062, 0.031497,
		-0.018020, 0.188027, -0.981998,
		34.915001, 40.296139, 43.027550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448441, 40.729141, 43.549667>,  <34.927612, 40.164520, 43.714947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448441, 40.729141, 43.549667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172325, 40.722019, 43.260342>,  <35.006657, 40.717747, 43.086746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172325, 40.722019, 43.260342>,  <35.448441, 40.729141, 43.549667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172325, 40.722019, 43.260342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126894, 0.987182, 0.096794,
		0.712321, 0.158600, -0.683699,
		-0.690288, -0.017809, -0.723316,
		34.965240, 40.716675, 43.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619534, 41.289455, 43.134037>,  <35.448441, 40.729141, 43.549667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619534, 41.289455, 43.134037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231766, 41.220509, 43.064159>,  <34.999104, 41.179138, 43.022232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231766, 41.220509, 43.064159>,  <35.619534, 41.289455, 43.134037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231766, 41.220509, 43.064159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191862, 0.976157, 0.101517,
		0.153027, 0.131929, -0.979376,
		-0.969418, -0.172370, -0.174690,
		34.940941, 41.168797, 43.011753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436424, 41.738708, 42.600697>,  <35.619534, 41.289455, 43.134037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436424, 41.738708, 42.600697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110062, 41.657188, 42.817127>,  <34.914246, 41.608276, 42.946987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110062, 41.657188, 42.817127>,  <35.436424, 41.738708, 42.600697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110062, 41.657188, 42.817127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145156, 0.978047, 0.149511,
		-0.559671, 0.043446, -0.827575,
		-0.815903, -0.203804, 0.541079,
		34.865292, 41.596046, 42.979450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930473, 42.117661, 42.295082>,  <35.436424, 41.738708, 42.600697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930473, 42.117661, 42.295082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763191, 42.030327, 42.647770>,  <34.662823, 41.977928, 42.859383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763191, 42.030327, 42.647770>,  <34.930473, 42.117661, 42.295082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763191, 42.030327, 42.647770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259664, 0.958912, 0.114288,
		-0.870448, -0.181156, -0.457714,
		-0.418204, -0.218334, 0.881723,
		34.637730, 41.964825, 42.912289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292877, 42.534988, 42.291325>,  <34.930473, 42.117661, 42.295082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292877, 42.534988, 42.291325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368122, 42.426464, 42.668896>,  <34.413269, 42.361347, 42.895439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368122, 42.426464, 42.668896>,  <34.292877, 42.534988, 42.291325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368122, 42.426464, 42.668896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371190, 0.870164, 0.324086,
		-0.909302, -0.411343, 0.062982,
		0.188116, -0.271314, 0.943929,
		34.424557, 42.345070, 42.952076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775833, 42.749077, 42.604420>,  <34.292877, 42.534988, 42.291325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775833, 42.749077, 42.604420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033295, 42.691010, 42.904987>,  <34.187771, 42.656170, 43.085327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033295, 42.691010, 42.904987>,  <33.775833, 42.749077, 42.604420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033295, 42.691010, 42.904987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239618, 0.894254, 0.378013,
		-0.726834, -0.423365, 0.540809,
		0.643658, -0.145164, 0.751420,
		34.226391, 42.647461, 43.130413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406551, 42.984989, 43.224712>,  <33.775833, 42.749077, 42.604420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406551, 42.984989, 43.224712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799221, 43.002888, 43.298798>,  <34.034824, 43.013626, 43.343250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799221, 43.002888, 43.298798>,  <33.406551, 42.984989, 43.224712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799221, 43.002888, 43.298798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135595, 0.846973, 0.514053,
		-0.133870, -0.529749, 0.837523,
		0.981679, 0.044748, 0.185216,
		34.093723, 43.016312, 43.354362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539692, 43.220215, 43.950962>,  <33.406551, 42.984989, 43.224712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539692, 43.220215, 43.950962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889591, 43.308407, 43.778355>,  <34.099529, 43.361324, 43.674789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889591, 43.308407, 43.778355>,  <33.539692, 43.220215, 43.950962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889591, 43.308407, 43.778355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071119, 0.822436, 0.564394,
		0.479335, -0.524390, 0.703742,
		0.874745, 0.220484, -0.431517,
		34.152016, 43.374554, 43.648899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976570, 43.548740, 44.431290>,  <33.539692, 43.220215, 43.950962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976570, 43.548740, 44.431290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152023, 43.651443, 44.086807>,  <34.257294, 43.713066, 43.880119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152023, 43.651443, 44.086807>,  <33.976570, 43.548740, 44.431290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152023, 43.651443, 44.086807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040854, 0.951628, 0.304524,
		0.897738, -0.168757, 0.406923,
		0.438631, 0.256758, -0.861208,
		34.283611, 43.728470, 43.828445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362129, 44.164253, 44.625134>,  <33.976570, 43.548740, 44.431290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362129, 44.164253, 44.625134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324764, 44.193756, 44.227978>,  <34.302345, 44.211460, 43.989685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324764, 44.193756, 44.227978>,  <34.362129, 44.164253, 44.625134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324764, 44.193756, 44.227978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017576, 0.997219, 0.072430,
		0.995472, -0.010685, -0.094447,
		-0.093410, 0.073762, -0.992892,
		34.296741, 44.215885, 43.930111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899117, 44.706993, 44.470215>,  <34.362129, 44.164253, 44.625134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899117, 44.706993, 44.470215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612862, 44.667767, 44.193592>,  <34.441109, 44.644230, 44.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612862, 44.667767, 44.193592>,  <34.899117, 44.706993, 44.470215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612862, 44.667767, 44.193592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154624, 0.987772, 0.019941,
		0.681140, 0.121201, -0.722051,
		-0.715639, -0.098064, -0.691552,
		34.398170, 44.638348, 43.986126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970791, 45.362019, 44.148396>,  <34.899117, 44.706993, 44.470215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970791, 45.362019, 44.148396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619041, 45.224827, 44.016293>,  <34.407993, 45.142509, 43.937031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619041, 45.224827, 44.016293>,  <34.970791, 45.362019, 44.148396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619041, 45.224827, 44.016293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328495, 0.939129, -0.100635,
		0.344670, 0.019993, -0.938511,
		-0.879371, -0.342982, -0.330257,
		34.355228, 45.121933, 43.917213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886574, 45.647816, 43.515160>,  <34.970791, 45.362019, 44.148396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886574, 45.647816, 43.515160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524918, 45.555000, 43.658653>,  <34.307926, 45.499310, 43.744751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524918, 45.555000, 43.658653>,  <34.886574, 45.647816, 43.515160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524918, 45.555000, 43.658653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276288, 0.958012, -0.076671,
		-0.325885, -0.168436, -0.930284,
		-0.904137, -0.232040, 0.358738,
		34.253677, 45.485390, 43.766273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429367, 46.020298, 43.123287>,  <34.886574, 45.647816, 43.515160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429367, 46.020298, 43.123287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284870, 45.990196, 43.495060>,  <34.198174, 45.972134, 43.718124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284870, 45.990196, 43.495060>,  <34.429367, 46.020298, 43.123287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284870, 45.990196, 43.495060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278002, 0.960102, -0.030310,
		-0.890069, -0.269333, -0.367746,
		-0.361238, -0.075256, 0.929432,
		34.176498, 45.967621, 43.773891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508804, 46.117699, 42.365116>,  <34.429367, 46.020298, 43.123287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508804, 46.117699, 42.365116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764793, 46.243191, 42.084545>,  <34.918388, 46.318485, 41.916203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764793, 46.243191, 42.084545>,  <34.508804, 46.117699, 42.365116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764793, 46.243191, 42.084545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108241, -0.940556, -0.321929,
		-0.760734, 0.130103, -0.635891,
		0.639975, 0.313732, -0.701430,
		34.956787, 46.337311, 41.874115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315212, 45.748032, 41.770164>,  <34.508804, 46.117699, 42.365116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315212, 45.748032, 41.770164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664463, 45.902489, 41.651142>,  <34.874016, 45.995163, 41.579731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664463, 45.902489, 41.651142>,  <34.315212, 45.748032, 41.770164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664463, 45.902489, 41.651142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155514, -0.799119, -0.580710,
		-0.462017, 0.460762, -0.757785,
		0.873130, 0.386144, -0.297552,
		34.926403, 46.018333, 41.561878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246162, 45.705990, 41.101803>,  <34.315212, 45.748032, 41.770164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246162, 45.705990, 41.101803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643681, 45.730221, 41.139130>,  <34.882191, 45.744759, 41.161526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643681, 45.730221, 41.139130>,  <34.246162, 45.705990, 41.101803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643681, 45.730221, 41.139130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095933, -0.891351, -0.443047,
		0.056340, 0.449248, -0.891629,
		0.993792, 0.060576, 0.093316,
		34.941818, 45.748394, 41.167126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584885, 45.304611, 40.523647>,  <34.246162, 45.705990, 41.101803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584885, 45.304611, 40.523647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878666, 45.324429, 40.794388>,  <35.054935, 45.336319, 40.956833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878666, 45.324429, 40.794388>,  <34.584885, 45.304611, 40.523647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878666, 45.324429, 40.794388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330878, -0.896908, -0.293388,
		0.592535, 0.439434, -0.675130,
		0.734453, 0.049544, 0.676848,
		35.099003, 45.339291, 40.997444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224846, 45.125954, 40.188068>,  <34.584885, 45.304611, 40.523647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224846, 45.125954, 40.188068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268810, 45.043652, 40.577034>,  <35.295189, 44.994270, 40.810413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268810, 45.043652, 40.577034>,  <35.224846, 45.125954, 40.188068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268810, 45.043652, 40.577034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293138, -0.928113, -0.229514,
		0.949731, 0.310277, -0.041694,
		0.109910, -0.205754, 0.972412,
		35.301785, 44.981926, 40.868759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842392, 44.721390, 40.206730>,  <35.224846, 45.125954, 40.188068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842392, 44.721390, 40.206730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656910, 44.661774, 40.556076>,  <35.545620, 44.626003, 40.765682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656910, 44.661774, 40.556076>,  <35.842392, 44.721390, 40.206730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656910, 44.661774, 40.556076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264468, -0.964093, -0.024103,
		0.845598, 0.219800, 0.486468,
		-0.463703, -0.149037, 0.873366,
		35.517799, 44.617062, 40.818085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248173, 44.342915, 40.550446>,  <35.842392, 44.721390, 40.206730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248173, 44.342915, 40.550446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916744, 44.267311, 40.761250>,  <35.717888, 44.221951, 40.887733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916744, 44.267311, 40.761250>,  <36.248173, 44.342915, 40.550446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916744, 44.267311, 40.761250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192875, -0.980037, -0.048241,
		0.525612, 0.061677, 0.848486,
		-0.828572, -0.189007, 0.527015,
		35.668171, 44.210609, 40.919353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503262, 43.849857, 41.006165>,  <36.248173, 44.342915, 40.550446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503262, 43.849857, 41.006165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103703, 43.834557, 41.017078>,  <35.863968, 43.825375, 41.023628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103703, 43.834557, 41.017078>,  <36.503262, 43.849857, 41.006165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103703, 43.834557, 41.017078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033715, -0.987987, -0.150817,
		0.032727, -0.149731, 0.988185,
		-0.998896, -0.038252, 0.027286,
		35.804035, 43.823082, 41.025265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272984, 43.235199, 41.491180>,  <36.503262, 43.849857, 41.006165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272984, 43.235199, 41.491180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974762, 43.268517, 41.226692>,  <35.795830, 43.288506, 41.067997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974762, 43.268517, 41.226692>,  <36.272984, 43.235199, 41.491180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974762, 43.268517, 41.226692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067359, -0.977661, -0.199103,
		-0.663036, -0.192980, 0.723286,
		-0.745551, 0.083293, -0.661223,
		35.751095, 43.293503, 41.028324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856991, 42.629017, 41.599400>,  <36.272984, 43.235199, 41.491180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856991, 42.629017, 41.599400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735977, 42.759365, 41.241119>,  <35.663368, 42.837574, 41.026150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735977, 42.759365, 41.241119>,  <35.856991, 42.629017, 41.599400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735977, 42.759365, 41.241119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058340, -0.944308, -0.323849,
		-0.951351, -0.045721, 0.304698,
		-0.302535, 0.325870, -0.895701,
		35.645218, 42.857124, 40.972408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371517, 42.271885, 41.513206>,  <35.856991, 42.629017, 41.599400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371517, 42.271885, 41.513206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497719, 42.376171, 41.148243>,  <35.573441, 42.438744, 40.929264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497719, 42.376171, 41.148243>,  <35.371517, 42.271885, 41.513206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497719, 42.376171, 41.148243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118926, -0.964800, -0.234558,
		-0.941442, -0.034505, -0.335404,
		0.315505, 0.260711, -0.912407,
		35.592369, 42.454384, 40.874519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078388, 41.789360, 41.145264>,  <35.371517, 42.271885, 41.513206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078388, 41.789360, 41.145264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332386, 41.944313, 40.877918>,  <35.484787, 42.037285, 40.717510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332386, 41.944313, 40.877918>,  <35.078388, 41.789360, 41.145264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332386, 41.944313, 40.877918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252508, -0.921741, -0.294335,
		-0.730082, 0.018133, -0.683119,
		0.634996, 0.387382, -0.668368,
		35.522884, 42.060528, 40.677406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927338, 41.620434, 40.398750>,  <35.078388, 41.789360, 41.145264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927338, 41.620434, 40.398750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320637, 41.689270, 40.422783>,  <35.556618, 41.730572, 40.437202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320637, 41.689270, 40.422783>,  <34.927338, 41.620434, 40.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320637, 41.689270, 40.422783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175838, -0.808663, -0.561378,
		-0.048019, 0.562539, -0.825375,
		0.983247, 0.172089, 0.060084,
		35.615612, 41.740898, 40.440807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240387, 41.298882, 39.810230>,  <34.927338, 41.620434, 40.398750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240387, 41.298882, 39.810230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563194, 41.392105, 40.027267>,  <35.756878, 41.448040, 40.157490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563194, 41.392105, 40.027267>,  <35.240387, 41.298882, 39.810230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563194, 41.392105, 40.027267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530459, -0.689869, -0.492640,
		0.259504, 0.685392, -0.680364,
		0.807014, 0.233063, 0.542596,
		35.805298, 41.462025, 40.190048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687920, 41.241512, 39.258213>,  <35.240387, 41.298882, 39.810230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687920, 41.241512, 39.258213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921448, 41.212093, 39.581631>,  <36.061565, 41.194443, 39.775681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921448, 41.212093, 39.581631>,  <35.687920, 41.241512, 39.258213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921448, 41.212093, 39.581631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549971, -0.696765, -0.460490,
		0.597235, 0.713519, -0.366334,
		0.583817, -0.073547, 0.808547,
		36.096592, 41.190029, 39.824196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364689, 41.184666, 39.061401>,  <35.687920, 41.241512, 39.258213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364689, 41.184666, 39.061401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390781, 41.045002, 39.435318>,  <36.406437, 40.961205, 39.659668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390781, 41.045002, 39.435318>,  <36.364689, 41.184666, 39.061401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390781, 41.045002, 39.435318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540983, -0.774799, -0.327146,
		0.838500, 0.527046, 0.138347,
		0.065230, -0.349156, 0.934792,
		36.410351, 40.940254, 39.715755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114143, 40.902748, 39.195053>,  <36.364689, 41.184666, 39.061401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114143, 40.902748, 39.195053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860813, 40.742584, 39.459949>,  <36.708813, 40.646484, 39.618889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860813, 40.742584, 39.459949>,  <37.114143, 40.902748, 39.195053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860813, 40.742584, 39.459949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506901, -0.861253, -0.035973,
		0.584763, 0.312909, 0.748425,
		-0.633327, -0.400413, 0.662243,
		36.670815, 40.622459, 39.658623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557976, 40.466263, 39.579308>,  <37.114143, 40.902748, 39.195053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557976, 40.466263, 39.579308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185493, 40.355049, 39.673595>,  <36.962006, 40.288322, 39.730167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185493, 40.355049, 39.673595>,  <37.557976, 40.466263, 39.579308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185493, 40.355049, 39.673595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312002, -0.942336, 0.121071,
		0.188466, 0.186287, 0.964250,
		-0.931201, -0.278030, 0.235720,
		36.906132, 40.271641, 39.744312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490276, 40.101181, 40.264473>,  <37.557976, 40.466263, 39.579308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490276, 40.101181, 40.264473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209320, 39.988934, 40.002815>,  <37.040749, 39.921585, 39.845821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209320, 39.988934, 40.002815>,  <37.490276, 40.101181, 40.264473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209320, 39.988934, 40.002815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311561, -0.947500, 0.071931,
		-0.639986, -0.153281, 0.752943,
		-0.702388, -0.280623, -0.654143,
		36.998604, 39.904747, 39.806572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282036, 39.481998, 40.503399>,  <37.490276, 40.101181, 40.264473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282036, 39.481998, 40.503399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111183, 39.487408, 40.141762>,  <37.008671, 39.490654, 39.924782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111183, 39.487408, 40.141762>,  <37.282036, 39.481998, 40.503399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111183, 39.487408, 40.141762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141873, -0.986501, -0.081781,
		-0.892991, -0.163197, 0.419444,
		-0.427128, 0.013522, -0.904090,
		36.983044, 39.491463, 39.870533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997368, 38.861061, 40.495747>,  <37.282036, 39.481998, 40.503399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997368, 38.861061, 40.495747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002876, 38.985554, 40.115654>,  <37.006180, 39.060249, 39.887596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002876, 38.985554, 40.115654>,  <36.997368, 38.861061, 40.495747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002876, 38.985554, 40.115654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121301, -0.943826, -0.307375,
		-0.992520, -0.111031, -0.050750,
		0.013771, 0.311232, -0.950234,
		37.007008, 39.078922, 39.830585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431782, 38.715782, 40.133076>,  <36.997368, 38.861061, 40.495747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431782, 38.715782, 40.133076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727695, 38.738617, 39.864910>,  <36.905243, 38.752319, 39.704010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727695, 38.738617, 39.864910>,  <36.431782, 38.715782, 40.133076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727695, 38.738617, 39.864910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106641, -0.973850, -0.200606,
		-0.664334, 0.219900, -0.714356,
		0.739789, 0.057090, -0.670413,
		36.949631, 38.755745, 39.663788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228481, 38.213413, 39.542301>,  <36.431782, 38.715782, 40.133076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228481, 38.213413, 39.542301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617966, 38.296333, 39.504524>,  <36.851654, 38.346085, 39.481857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617966, 38.296333, 39.504524>,  <36.228481, 38.213413, 39.542301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617966, 38.296333, 39.504524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169423, -0.936150, -0.308089,
		-0.152278, 0.283988, -0.946658,
		0.973708, 0.207301, -0.094441,
		36.910080, 38.358524, 39.476192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363724, 37.998970, 38.909515>,  <36.228481, 38.213413, 39.542301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363724, 37.998970, 38.909515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724770, 38.000465, 39.081692>,  <36.941395, 38.001362, 39.184998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724770, 38.000465, 39.081692>,  <36.363724, 37.998970, 38.909515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724770, 38.000465, 39.081692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180964, -0.910598, -0.371570,
		0.390568, 0.413277, -0.822593,
		0.902612, 0.003736, 0.430439,
		36.995552, 38.001587, 39.210823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860138, 37.625683, 38.428234>,  <36.363724, 37.998970, 38.909515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860138, 37.625683, 38.428234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051361, 37.637516, 38.779366>,  <37.166096, 37.644615, 38.990044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051361, 37.637516, 38.779366>,  <36.860138, 37.625683, 38.428234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051361, 37.637516, 38.779366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267824, -0.956745, -0.113617,
		0.836497, 0.289420, -0.465305,
		0.478061, 0.029579, 0.877828,
		37.194778, 37.646389, 39.042713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560532, 37.310394, 38.265598>,  <36.860138, 37.625683, 38.428234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560532, 37.310394, 38.265598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531914, 37.285862, 38.663818>,  <37.514744, 37.271141, 38.902752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531914, 37.285862, 38.663818>,  <37.560532, 37.310394, 38.265598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531914, 37.285862, 38.663818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300396, -0.953092, -0.037127,
		0.951128, 0.296403, 0.086609,
		-0.071542, -0.061329, 0.995550,
		37.510452, 37.267464, 38.962482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190720, 37.035381, 38.498333>,  <37.560532, 37.310394, 38.265598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190720, 37.035381, 38.498333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959343, 36.972309, 38.818470>,  <37.820518, 36.934467, 39.010551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959343, 36.972309, 38.818470>,  <38.190720, 37.035381, 38.498333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959343, 36.972309, 38.818470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475949, -0.862058, 0.174151,
		0.662480, 0.481657, 0.573696,
		-0.578440, -0.157679, 0.800340,
		37.785812, 36.925007, 39.058571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695847, 36.834187, 39.059475>,  <38.190720, 37.035381, 38.498333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695847, 36.834187, 39.059475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323849, 36.691044, 39.093056>,  <38.100651, 36.605160, 39.113205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323849, 36.691044, 39.093056>,  <38.695847, 36.834187, 39.059475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323849, 36.691044, 39.093056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357040, -0.933753, -0.025066,
		0.087358, 0.006662, 0.996155,
		-0.929995, -0.357857, 0.083949,
		38.044849, 36.583687, 39.118240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802525, 36.242531, 39.546764>,  <38.695847, 36.834187, 39.059475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802525, 36.242531, 39.546764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461025, 36.198563, 39.343185>,  <38.256126, 36.172180, 39.221039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461025, 36.198563, 39.343185>,  <38.802525, 36.242531, 39.546764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461025, 36.198563, 39.343185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233578, -0.954444, -0.185684,
		-0.465348, -0.277407, 0.840533,
		-0.853752, -0.109922, -0.508945,
		38.204899, 36.165585, 39.190502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563850, 35.607910, 39.842163>,  <38.802525, 36.242531, 39.546764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563850, 35.607910, 39.842163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367306, 35.628181, 39.494373>,  <38.249378, 35.640343, 39.285698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367306, 35.628181, 39.494373>,  <38.563850, 35.607910, 39.842163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367306, 35.628181, 39.494373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193654, -0.966958, -0.165799,
		-0.849151, -0.249845, 0.465317,
		-0.491366, 0.050678, -0.869477,
		38.219894, 35.643383, 39.233528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227959, 34.992672, 39.797611>,  <38.563850, 35.607910, 39.842163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227959, 34.992672, 39.797611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256863, 35.116638, 39.418407>,  <38.274204, 35.191017, 39.190884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256863, 35.116638, 39.418407>,  <38.227959, 34.992672, 39.797611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256863, 35.116638, 39.418407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293449, -0.915034, -0.276768,
		-0.953240, -0.258194, -0.157066,
		0.072261, 0.309917, -0.948014,
		38.278542, 35.209614, 39.134003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107189, 34.403793, 39.497639>,  <38.227959, 34.992672, 39.797611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107189, 34.403793, 39.497639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242500, 34.624100, 39.192425>,  <38.323689, 34.756283, 39.009296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242500, 34.624100, 39.192425>,  <38.107189, 34.403793, 39.497639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242500, 34.624100, 39.192425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250298, -0.834291, -0.491233,
		-0.907149, -0.024814, -0.420077,
		0.338277, 0.550766, -0.763037,
		38.343983, 34.789330, 38.963512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703262, 34.251472, 38.866116>,  <38.107189, 34.403793, 39.497639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703262, 34.251472, 38.866116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072865, 34.384846, 38.791248>,  <38.294628, 34.464870, 38.746326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072865, 34.384846, 38.791248>,  <37.703262, 34.251472, 38.866116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072865, 34.384846, 38.791248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248443, -0.895617, -0.368979,
		-0.290660, 0.294439, -0.910397,
		0.924009, 0.333429, -0.187169,
		38.350067, 34.484875, 38.735096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806946, 34.067619, 38.225758>,  <37.703262, 34.251472, 38.866116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806946, 34.067619, 38.225758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173943, 34.124985, 38.374157>,  <38.394142, 34.159405, 38.463196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173943, 34.124985, 38.374157>,  <37.806946, 34.067619, 38.225758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173943, 34.124985, 38.374157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333126, -0.786705, -0.519733,
		0.217327, 0.600441, -0.769572,
		0.917494, 0.143413, 0.370994,
		38.449192, 34.168007, 38.485455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206139, 33.771637, 37.706398>,  <37.806946, 34.067619, 38.225758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206139, 33.771637, 37.706398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490009, 33.785740, 37.987858>,  <38.660332, 33.794201, 38.156734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490009, 33.785740, 37.987858>,  <38.206139, 33.771637, 37.706398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490009, 33.785740, 37.987858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355059, -0.880540, -0.313979,
		0.608521, 0.472659, -0.637412,
		0.709672, 0.035256, 0.703649,
		38.702911, 33.796318, 38.198952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940681, 33.682526, 37.382477>,  <38.206139, 33.771637, 37.706398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940681, 33.682526, 37.382477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941833, 33.581894, 37.769611>,  <38.942524, 33.521515, 38.001892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941833, 33.581894, 37.769611>,  <38.940681, 33.682526, 37.382477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941833, 33.581894, 37.769611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428723, -0.874068, -0.228479,
		0.903431, 0.415590, 0.105338,
		0.002881, -0.251576, 0.967833,
		38.942699, 33.506420, 38.059963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506264, 33.358093, 37.421295>,  <38.940681, 33.682526, 37.382477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506264, 33.358093, 37.421295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319416, 33.222767, 37.748058>,  <39.207310, 33.141571, 37.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319416, 33.222767, 37.748058>,  <39.506264, 33.358093, 37.421295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319416, 33.222767, 37.748058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316789, -0.926605, -0.202605,
		0.825499, 0.164149, 0.540006,
		-0.467115, -0.338318, 0.816912,
		39.179283, 33.121273, 37.993134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970421, 32.686432, 37.634331>,  <39.506264, 33.358093, 37.421295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970421, 32.686432, 37.634331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621464, 32.684631, 37.829849>,  <39.412090, 32.683552, 37.947159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621464, 32.684631, 37.829849>,  <39.970421, 32.686432, 37.634331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621464, 32.684631, 37.829849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010230, -0.999907, 0.009051,
		0.488706, 0.012896, 0.872353,
		-0.872388, -0.004501, 0.488793,
		39.359749, 32.683281, 37.976486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074776, 32.220398, 38.260384>,  <39.970421, 32.686432, 37.634331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074776, 32.220398, 38.260384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684780, 32.249733, 38.176472>,  <39.450783, 32.267334, 38.126125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684780, 32.249733, 38.176472>,  <40.074776, 32.220398, 38.260384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684780, 32.249733, 38.176472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047314, -0.990838, -0.126499,
		-0.217138, -0.113410, 0.969531,
		-0.974994, 0.073341, -0.209782,
		39.392281, 32.271736, 38.113537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633820, 32.609322, 38.015839>,  <40.074776, 32.220398, 38.260384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633820, 32.609322, 38.015839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696674, 32.631657, 37.621441>,  <40.734386, 32.645058, 37.384800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696674, 32.631657, 37.621441>,  <40.633820, 32.609322, 38.015839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696674, 32.631657, 37.621441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928360, -0.348874, 0.128193,
		-0.336831, -0.935504, -0.106657,
		0.157135, 0.055837, -0.985997,
		40.743816, 32.648407, 37.325642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861542, 31.977760, 37.906944>,  <40.633820, 32.609322, 38.015839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861542, 31.977760, 37.906944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995174, 32.252113, 37.648346>,  <41.075356, 32.416725, 37.493187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995174, 32.252113, 37.648346>,  <40.861542, 31.977760, 37.906944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995174, 32.252113, 37.648346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933740, -0.334364, 0.127787,
		-0.128517, -0.646349, -0.752141,
		0.334083, 0.685882, -0.646494,
		41.095398, 32.457878, 37.454399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273975, 31.622696, 37.389378>,  <40.861542, 31.977760, 37.906944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273975, 31.622696, 37.389378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384750, 32.006920, 37.399422>,  <41.451214, 32.237453, 37.405449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384750, 32.006920, 37.399422>,  <41.273975, 31.622696, 37.389378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384750, 32.006920, 37.399422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960052, -0.275507, -0.048942,
		-0.040094, 0.037661, -0.998486,
		0.276933, 0.960561, 0.025111,
		41.467831, 32.295090, 37.406956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941479, 31.744677, 37.008816>,  <41.273975, 31.622696, 37.389378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941479, 31.744677, 37.008816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908642, 32.077991, 37.227501>,  <41.888939, 32.277981, 37.358711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908642, 32.077991, 37.227501>,  <41.941479, 31.744677, 37.008816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908642, 32.077991, 37.227501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993066, 0.114713, -0.025726,
		-0.084152, 0.540807, -0.836927,
		-0.082093, 0.833288, 0.546710,
		41.884014, 32.327976, 37.391514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624474, 32.012150, 36.849815>,  <41.941479, 31.744677, 37.008816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624474, 32.012150, 36.849815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434761, 32.183102, 37.157684>,  <42.320934, 32.285671, 37.342407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434761, 32.183102, 37.157684>,  <42.624474, 32.012150, 36.849815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434761, 32.183102, 37.157684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856795, 0.023109, 0.515139,
		0.202374, 0.903777, -0.377137,
		-0.474286, 0.427380, 0.769675,
		42.292477, 32.311317, 37.388588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371460, 32.185768, 36.146175>,  <42.624474, 32.012150, 36.849815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371460, 32.185768, 36.146175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178688, 32.435501, 35.900261>,  <42.063026, 32.585339, 35.752712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178688, 32.435501, 35.900261>,  <42.371460, 32.185768, 36.146175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178688, 32.435501, 35.900261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623903, 0.737153, 0.259522,
		0.615217, -0.258495, -0.744774,
		-0.481927, 0.624329, -0.614785,
		42.034111, 32.622799, 35.715824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898670, 32.680023, 35.837303>,  <42.371460, 32.185768, 36.146175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898670, 32.680023, 35.837303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542870, 32.859257, 35.801506>,  <42.329388, 32.966797, 35.780029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542870, 32.859257, 35.801506>,  <42.898670, 32.680023, 35.837303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542870, 32.859257, 35.801506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450935, 0.892454, -0.013576,
		0.073781, -0.052429, -0.995895,
		-0.889502, 0.448082, -0.089488,
		42.276020, 32.993683, 35.774658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960934, 33.017281, 36.487633>,  <42.898670, 32.680023, 35.837303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960934, 33.017281, 36.487633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357124, 33.031425, 36.434399>,  <43.594837, 33.039913, 36.402458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357124, 33.031425, 36.434399>,  <42.960934, 33.017281, 36.487633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357124, 33.031425, 36.434399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110402, 0.373704, 0.920954,
		0.082299, -0.926874, 0.366240,
		0.990474, 0.035360, -0.133084,
		43.654266, 33.042034, 36.394474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221169, 32.679333, 37.012516>,  <42.960934, 33.017281, 36.487633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221169, 32.679333, 37.012516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468742, 32.960598, 36.872524>,  <43.617287, 33.129356, 36.788528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468742, 32.960598, 36.872524>,  <43.221169, 32.679333, 37.012516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468742, 32.960598, 36.872524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046469, 0.477583, 0.877357,
		0.784065, -0.526766, 0.328269,
		0.618937, 0.703159, -0.349977,
		43.654423, 33.171547, 36.767532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808262, 32.736019, 37.503059>,  <43.221169, 32.679333, 37.012516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808262, 32.736019, 37.503059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795792, 33.080128, 37.299507>,  <43.788307, 33.286594, 37.177376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795792, 33.080128, 37.299507>,  <43.808262, 32.736019, 37.503059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795792, 33.080128, 37.299507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037257, 0.509776, 0.859500,
		0.998819, 0.007838, -0.047945,
		-0.031178, 0.860272, -0.508882,
		43.786438, 33.338211, 37.146843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085609, 33.065342, 37.985703>,  <43.808262, 32.736019, 37.503059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085609, 33.065342, 37.985703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925911, 33.346180, 37.749851>,  <43.830090, 33.514683, 37.608341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925911, 33.346180, 37.749851>,  <44.085609, 33.065342, 37.985703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925911, 33.346180, 37.749851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160091, 0.579842, 0.798846,
		0.902758, 0.413332, -0.119102,
		-0.399248, 0.702097, -0.589627,
		43.806137, 33.556808, 37.572964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386581, 33.623661, 38.194717>,  <44.085609, 33.065342, 37.985703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386581, 33.623661, 38.194717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031567, 33.727219, 38.042271>,  <43.818558, 33.789352, 37.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031567, 33.727219, 38.042271>,  <44.386581, 33.623661, 38.194717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031567, 33.727219, 38.042271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224188, 0.479995, 0.848142,
		0.402512, 0.838201, -0.367973,
		-0.887538, 0.258892, -0.381118,
		43.765305, 33.804886, 37.927937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309193, 34.278339, 38.509209>,  <44.386581, 33.623661, 38.194717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309193, 34.278339, 38.509209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952114, 34.226383, 38.336590>,  <43.737869, 34.195210, 38.233021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952114, 34.226383, 38.336590>,  <44.309193, 34.278339, 38.509209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952114, 34.226383, 38.336590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434034, 0.505546, 0.745679,
		0.121308, 0.852966, -0.507674,
		-0.892692, -0.129891, -0.431543,
		43.684307, 34.187416, 38.207127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949036, 34.966293, 38.451141>,  <44.309193, 34.278339, 38.509209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949036, 34.966293, 38.451141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708740, 34.647869, 38.480522>,  <43.564564, 34.456814, 38.498150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708740, 34.647869, 38.480522>,  <43.949036, 34.966293, 38.451141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708740, 34.647869, 38.480522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501391, 0.446738, 0.740967,
		-0.622674, 0.408296, -0.667512,
		-0.600737, -0.796065, 0.073456,
		43.528519, 34.409050, 38.502560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240917, 35.273071, 38.534821>,  <43.949036, 34.966293, 38.451141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240917, 35.273071, 38.534821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229584, 34.897121, 38.670956>,  <43.222782, 34.671551, 38.752636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229584, 34.897121, 38.670956>,  <43.240917, 35.273071, 38.534821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229584, 34.897121, 38.670956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503086, 0.307618, 0.807636,
		-0.863772, -0.148336, -0.481555,
		-0.028334, -0.939877, 0.340338,
		43.221085, 34.615158, 38.773056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539326, 35.226925, 38.752552>,  <43.240917, 35.273071, 38.534821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539326, 35.226925, 38.752552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768318, 34.984112, 38.973015>,  <42.905712, 34.838425, 39.105293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768318, 34.984112, 38.973015>,  <42.539326, 35.226925, 38.752552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768318, 34.984112, 38.973015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657594, 0.061579, 0.750852,
		-0.489732, -0.792287, -0.363928,
		0.572479, -0.607034, 0.551161,
		42.940063, 34.802002, 39.138363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052212, 34.862411, 39.150642>,  <42.539326, 35.226925, 38.752552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052212, 34.862411, 39.150642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396374, 34.776936, 39.335701>,  <42.602871, 34.725651, 39.446735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396374, 34.776936, 39.335701>,  <42.052212, 34.862411, 39.150642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396374, 34.776936, 39.335701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473565, 0.000089, 0.880759,
		-0.188249, -0.976902, -0.101119,
		0.860406, -0.213689, 0.462643,
		42.654495, 34.712830, 39.474495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988110, 34.236465, 39.596748>,  <42.052212, 34.862411, 39.150642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988110, 34.236465, 39.596748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307568, 34.421967, 39.750164>,  <42.499241, 34.533268, 39.842213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307568, 34.421967, 39.750164>,  <41.988110, 34.236465, 39.596748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307568, 34.421967, 39.750164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426888, -0.012649, 0.904216,
		0.424184, -0.885874, 0.187868,
		0.798645, 0.463753, 0.383535,
		42.547161, 34.561092, 39.865223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970280, 34.110588, 40.316467>,  <41.988110, 34.236465, 39.596748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970280, 34.110588, 40.316467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251373, 34.394917, 40.304459>,  <42.420029, 34.565514, 40.297253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251373, 34.394917, 40.304459>,  <41.970280, 34.110588, 40.316467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251373, 34.394917, 40.304459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268112, 0.303682, 0.914272,
		0.659000, -0.634440, 0.403987,
		0.702735, 0.710818, -0.030025,
		42.462193, 34.608162, 40.295452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332188, 34.053532, 41.035259>,  <41.970280, 34.110588, 40.316467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332188, 34.053532, 41.035259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382290, 34.418079, 40.878437>,  <42.412350, 34.636810, 40.784344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382290, 34.418079, 40.878437>,  <42.332188, 34.053532, 41.035259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382290, 34.418079, 40.878437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163439, 0.408727, 0.897903,
		0.978570, -0.048390, 0.200150,
		0.125257, 0.911373, -0.392059,
		42.419868, 34.691490, 40.760818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718601, 34.414429, 41.517067>,  <42.332188, 34.053532, 41.035259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718601, 34.414429, 41.517067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587345, 34.729229, 41.308086>,  <42.508591, 34.918110, 41.182697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587345, 34.729229, 41.308086>,  <42.718601, 34.414429, 41.517067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587345, 34.729229, 41.308086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238889, 0.465959, 0.851947,
		0.913925, 0.404363, 0.035108,
		-0.328137, 0.787003, -0.522449,
		42.488903, 34.965328, 41.151352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082161, 34.991470, 41.749531>,  <42.718601, 34.414429, 41.517067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082161, 34.991470, 41.749531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763664, 35.168697, 41.584755>,  <42.572567, 35.275032, 41.485889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763664, 35.168697, 41.584755>,  <43.082161, 34.991470, 41.749531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763664, 35.168697, 41.584755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130772, 0.538760, 0.832247,
		0.590678, 0.716538, -0.371042,
		-0.796240, 0.443069, -0.411937,
		42.524792, 35.301617, 41.461174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165180, 35.662205, 41.924824>,  <43.082161, 34.991470, 41.749531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165180, 35.662205, 41.924824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774139, 35.621204, 41.851295>,  <42.539516, 35.596603, 41.807178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774139, 35.621204, 41.851295>,  <43.165180, 35.662205, 41.924824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774139, 35.621204, 41.851295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206378, 0.638248, 0.741652,
		0.041305, 0.762977, -0.645105,
		-0.977600, -0.102502, -0.183824,
		42.480858, 35.590454, 41.796146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955063, 36.345428, 42.010551>,  <43.165180, 35.662205, 41.924824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955063, 36.345428, 42.010551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614365, 36.137447, 42.036407>,  <42.409946, 36.012657, 42.051922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614365, 36.137447, 42.036407>,  <42.955063, 36.345428, 42.010551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614365, 36.137447, 42.036407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369293, 0.683254, 0.629910,
		-0.371688, 0.512653, -0.773974,
		-0.851746, -0.519953, 0.064639,
		42.358841, 35.981461, 42.055798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420040, 36.861465, 41.830425>,  <42.955063, 36.345428, 42.010551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420040, 36.861465, 41.830425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265953, 36.567310, 42.053425>,  <42.173500, 36.390816, 42.187225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265953, 36.567310, 42.053425>,  <42.420040, 36.861465, 41.830425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265953, 36.567310, 42.053425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017186, 0.609735, 0.792419,
		-0.922666, 0.295673, -0.247519,
		-0.385218, -0.735392, 0.557500,
		42.150387, 36.346691, 42.220676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862965, 37.210976, 42.226223>,  <42.420040, 36.861465, 41.830425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862965, 37.210976, 42.226223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918873, 36.871151, 42.429672>,  <41.952419, 36.667255, 42.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918873, 36.871151, 42.429672>,  <41.862965, 37.210976, 42.226223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918873, 36.871151, 42.429672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186165, 0.481962, 0.856186,
		-0.972526, -0.214359, -0.090795,
		0.139772, -0.849566, 0.508627,
		41.960804, 36.616280, 42.582260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323013, 37.184982, 42.667717>,  <41.862965, 37.210976, 42.226223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323013, 37.184982, 42.667717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606094, 36.967598, 42.848297>,  <41.775944, 36.837170, 42.956646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606094, 36.967598, 42.848297>,  <41.323013, 37.184982, 42.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606094, 36.967598, 42.848297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069340, 0.582476, 0.809885,
		-0.703099, -0.604462, 0.374537,
		0.707703, -0.543459, 0.451452,
		41.818405, 36.804562, 42.983734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079632, 36.940098, 43.271843>,  <41.323013, 37.184982, 42.667717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079632, 36.940098, 43.271843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469925, 36.922768, 43.357693>,  <41.704102, 36.912369, 43.409203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469925, 36.922768, 43.357693>,  <41.079632, 36.940098, 43.271843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469925, 36.922768, 43.357693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175958, 0.428222, 0.886378,
		-0.130308, -0.902635, 0.410208,
		0.975735, -0.043323, 0.214626,
		41.762646, 36.909771, 43.422081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986137, 36.683636, 43.914799>,  <41.079632, 36.940098, 43.271843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986137, 36.683636, 43.914799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354385, 36.821098, 43.840660>,  <41.575336, 36.903576, 43.796177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354385, 36.821098, 43.840660>,  <40.986137, 36.683636, 43.914799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354385, 36.821098, 43.840660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020639, 0.431196, 0.902022,
		0.389900, -0.834250, 0.389878,
		0.920626, 0.343652, -0.185342,
		41.630573, 36.924194, 43.785057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436504, 36.410763, 44.353115>,  <40.986137, 36.683636, 43.914799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436504, 36.410763, 44.353115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596828, 36.761135, 44.245712>,  <41.693024, 36.971359, 44.181271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596828, 36.761135, 44.245712>,  <41.436504, 36.410763, 44.353115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596828, 36.761135, 44.245712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188162, 0.208126, 0.959833,
		0.896632, -0.435230, -0.081399,
		0.400807, 0.875933, -0.268506,
		41.717072, 37.023914, 44.165161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979267, 36.234840, 44.809574>,  <41.436504, 36.410763, 44.353115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979267, 36.234840, 44.809574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921383, 36.613106, 44.693100>,  <41.886650, 36.840065, 44.623215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921383, 36.613106, 44.693100>,  <41.979267, 36.234840, 44.809574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921383, 36.613106, 44.693100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399233, 0.325067, 0.857289,
		0.905356, 0.007813, -0.424581,
		-0.144715, 0.945659, -0.291182,
		41.877968, 36.896805, 44.605743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571526, 36.694500, 44.834545>,  <41.979267, 36.234840, 44.809574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571526, 36.694500, 44.834545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239670, 36.908337, 44.898926>,  <42.040558, 37.036640, 44.937553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239670, 36.908337, 44.898926>,  <42.571526, 36.694500, 44.834545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239670, 36.908337, 44.898926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334207, 0.244619, 0.910202,
		0.447217, 0.808931, -0.381611,
		-0.829640, 0.534595, 0.160953,
		41.990776, 37.068714, 44.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997711, 36.603046, 45.521866>,  <42.571526, 36.694500, 44.834545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997711, 36.603046, 45.521866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381935, 36.670624, 45.610218>,  <43.612469, 36.711170, 45.663231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381935, 36.670624, 45.610218>,  <42.997711, 36.603046, 45.521866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381935, 36.670624, 45.610218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071321, -0.618068, 0.782883,
		0.268781, -0.767757, -0.581640,
		0.960557, 0.168941, 0.220882,
		43.670101, 36.721306, 45.676483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415634, 35.933418, 45.457909>,  <42.997711, 36.603046, 45.521866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415634, 35.933418, 45.457909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548573, 36.185402, 45.738678>,  <43.628334, 36.336590, 45.907139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548573, 36.185402, 45.738678>,  <43.415634, 35.933418, 45.457909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548573, 36.185402, 45.738678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117350, -0.710827, 0.693508,
		0.935829, -0.312856, -0.162314,
		0.332345, 0.629957, 0.701926,
		43.648277, 36.374390, 45.949257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880314, 35.650864, 45.889858>,  <43.415634, 35.933418, 45.457909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880314, 35.650864, 45.889858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683205, 35.941875, 46.080803>,  <43.564938, 36.116482, 46.195370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683205, 35.941875, 46.080803>,  <43.880314, 35.650864, 45.889858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683205, 35.941875, 46.080803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215833, -0.633642, 0.742909,
		0.842963, 0.263058, 0.469269,
		-0.492777, 0.727529, 0.477360,
		43.535370, 36.160133, 46.224010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445370, 35.712536, 45.332073>,  <43.880314, 35.650864, 45.889858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445370, 35.712536, 45.332073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351681, 36.043297, 45.536568>,  <44.295467, 36.241753, 45.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351681, 36.043297, 45.536568>,  <44.445370, 35.712536, 45.332073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351681, 36.043297, 45.536568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444676, -0.376505, 0.812716,
		0.864523, 0.417695, -0.279518,
		-0.234227, 0.826907, 0.511236,
		44.281414, 36.291370, 45.689938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850750, 35.198055, 44.930984>,  <44.445370, 35.712536, 45.332073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850750, 35.198055, 44.930984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061470, 35.537937, 44.922222>,  <45.187901, 35.741867, 44.916965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061470, 35.537937, 44.922222>,  <44.850750, 35.198055, 44.930984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061470, 35.537937, 44.922222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048961, -0.004601, 0.998790,
		0.848579, -0.527234, -0.044026,
		0.526798, 0.849708, -0.021909,
		45.219509, 35.792850, 44.915649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321972, 35.040306, 44.399082>,  <44.850750, 35.198055, 44.930984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321972, 35.040306, 44.399082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370842, 34.644772, 44.433212>,  <44.400166, 34.407452, 44.453690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370842, 34.644772, 44.433212>,  <44.321972, 35.040306, 44.399082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370842, 34.644772, 44.433212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387895, -0.031559, -0.921163,
		0.913569, 0.145645, 0.379708,
		0.122180, -0.988833, 0.085327,
		44.407497, 34.348122, 44.458809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996853, 34.803471, 44.081379>,  <44.321972, 35.040306, 44.399082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996853, 34.803471, 44.081379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751034, 34.488052, 44.072258>,  <44.603542, 34.298801, 44.066788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751034, 34.488052, 44.072258>,  <44.996853, 34.803471, 44.081379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751034, 34.488052, 44.072258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342167, -0.240403, -0.908366,
		0.710810, -0.566037, 0.417554,
		-0.614550, -0.788548, -0.022799,
		44.566669, 34.251488, 44.065418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321369, 34.210484, 44.095428>,  <44.996853, 34.803471, 44.081379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321369, 34.210484, 44.095428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981968, 34.141949, 43.895153>,  <44.778328, 34.100830, 43.774986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981968, 34.141949, 43.895153>,  <45.321369, 34.210484, 44.095428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981968, 34.141949, 43.895153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506346, 0.012146, -0.862245,
		0.153813, -0.985138, 0.076448,
		-0.848502, -0.171334, -0.500689,
		44.727417, 34.090549, 43.744946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447105, 33.686497, 43.639824>,  <45.321369, 34.210484, 44.095428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447105, 33.686497, 43.639824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130486, 33.868538, 43.476688>,  <44.940514, 33.977760, 43.378807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130486, 33.868538, 43.476688>,  <45.447105, 33.686497, 43.639824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130486, 33.868538, 43.476688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504993, 0.111284, -0.855920,
		-0.344142, -0.883459, -0.317908,
		-0.791548, 0.455099, -0.407843,
		44.893021, 34.005066, 43.354336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225403, 33.296158, 43.036587>,  <45.447105, 33.686497, 43.639824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225403, 33.296158, 43.036587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084946, 33.668148, 42.993069>,  <45.000671, 33.891342, 42.966957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084946, 33.668148, 42.993069>,  <45.225403, 33.296158, 43.036587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084946, 33.668148, 42.993069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244921, -0.020921, -0.969317,
		-0.903720, -0.367019, -0.220425,
		-0.351147, 0.929978, -0.108797,
		44.979603, 33.947140, 42.960430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708500, 33.233868, 42.603455>,  <45.225403, 33.296158, 43.036587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708500, 33.233868, 42.603455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814381, 33.618832, 42.579140>,  <44.877911, 33.849812, 42.564548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814381, 33.618832, 42.579140>,  <44.708500, 33.233868, 42.603455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814381, 33.618832, 42.579140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134480, -0.099263, -0.985932,
		-0.954907, 0.252805, -0.155701,
		0.264704, 0.962412, -0.060790,
		44.893791, 33.907555, 42.560902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326977, 33.411739, 42.130928>,  <44.708500, 33.233868, 42.603455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326977, 33.411739, 42.130928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602467, 33.701588, 42.121254>,  <44.767761, 33.875496, 42.115448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602467, 33.701588, 42.121254>,  <44.326977, 33.411739, 42.130928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602467, 33.701588, 42.121254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090426, -0.118953, -0.988774,
		-0.719361, 0.678807, -0.147450,
		0.688726, 0.724618, -0.024188,
		44.809086, 33.918972, 42.113998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185295, 33.988873, 41.591415>,  <44.326977, 33.411739, 42.130928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185295, 33.988873, 41.591415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579948, 34.018894, 41.649273>,  <44.816742, 34.036907, 41.683987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579948, 34.018894, 41.649273>,  <44.185295, 33.988873, 41.591415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579948, 34.018894, 41.649273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130172, 0.170964, -0.976640,
		-0.098031, 0.982414, 0.158908,
		0.986633, 0.075056, 0.144643,
		44.875938, 34.041412, 41.692665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282009, 34.511517, 41.227879>,  <44.185295, 33.988873, 41.591415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282009, 34.511517, 41.227879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644222, 34.356537, 41.297035>,  <44.861549, 34.263550, 41.338531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644222, 34.356537, 41.297035>,  <44.282009, 34.511517, 41.227879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644222, 34.356537, 41.297035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278543, 0.235505, -0.931102,
		0.320038, 0.891302, 0.321179,
		0.905533, -0.387450, 0.172896,
		44.915882, 34.240303, 41.348904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763165, 35.055260, 41.022339>,  <44.282009, 34.511517, 41.227879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763165, 35.055260, 41.022339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989620, 34.726135, 41.002464>,  <45.125492, 34.528660, 40.990540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989620, 34.726135, 41.002464>,  <44.763165, 35.055260, 41.022339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989620, 34.726135, 41.002464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091550, 0.122667, -0.988216,
		0.819213, 0.554915, 0.144774,
		0.566135, -0.822813, -0.049687,
		45.159462, 34.479290, 40.987556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429173, 35.265713, 40.819344>,  <44.763165, 35.055260, 41.022339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429173, 35.265713, 40.819344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379128, 34.881470, 40.720085>,  <45.349102, 34.650925, 40.660530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379128, 34.881470, 40.720085>,  <45.429173, 35.265713, 40.819344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379128, 34.881470, 40.720085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442476, 0.169838, -0.880551,
		0.888010, -0.219968, 0.403798,
		-0.125113, -0.960609, -0.248148,
		45.341595, 34.593288, 40.645641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052433, 35.121391, 40.502468>,  <45.429173, 35.265713, 40.819344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052433, 35.121391, 40.502468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833694, 34.808388, 40.383377>,  <45.702454, 34.620586, 40.311920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833694, 34.808388, 40.383377>,  <46.052433, 35.121391, 40.502468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833694, 34.808388, 40.383377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526786, -0.045181, -0.848796,
		0.650738, -0.620998, 0.436921,
		-0.546842, -0.782508, -0.297732,
		45.669643, 34.573635, 40.294056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501286, 34.675022, 40.174465>,  <46.052433, 35.121391, 40.502468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501286, 34.675022, 40.174465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129547, 34.594257, 40.050816>,  <45.906506, 34.545799, 39.976627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129547, 34.594257, 40.050816>,  <46.501286, 34.675022, 40.174465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129547, 34.594257, 40.050816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325423, -0.052423, -0.944114,
		0.174420, -0.978000, 0.114425,
		-0.929342, -0.201909, -0.309120,
		45.850746, 34.533684, 39.958080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520035, 34.110481, 39.675369>,  <46.501286, 34.675022, 40.174465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520035, 34.110481, 39.675369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150646, 34.240196, 39.593361>,  <45.929012, 34.318024, 39.544155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150646, 34.240196, 39.593361>,  <46.520035, 34.110481, 39.675369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150646, 34.240196, 39.593361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171637, -0.128721, -0.976715,
		-0.343126, -0.937160, 0.063211,
		-0.923475, 0.324287, -0.205019,
		45.873604, 34.337482, 39.531857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116261, 33.550602, 39.229774>,  <46.520035, 34.110481, 39.675369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116261, 33.550602, 39.229774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.931934, 33.899036, 39.161831>,  <45.821339, 34.108097, 39.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.931934, 33.899036, 39.161831>,  <46.116261, 33.550602, 39.229774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931934, 33.899036, 39.161831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128592, -0.123836, -0.983935,
		-0.878130, -0.475256, -0.054950,
		-0.460817, 0.871089, -0.169858,
		45.793690, 34.160362, 39.110874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583477, 33.483719, 38.688759>,  <46.116261, 33.550602, 39.229774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583477, 33.483719, 38.688759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664791, 33.875362, 38.690884>,  <45.713581, 34.110348, 38.692158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664791, 33.875362, 38.690884>,  <45.583477, 33.483719, 38.688759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664791, 33.875362, 38.690884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200948, -0.036410, -0.978925,
		-0.958277, 0.200071, -0.204151,
		0.203288, 0.979105, 0.005313,
		45.725777, 34.169094, 38.692478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293446, 33.755672, 38.041538>,  <45.583477, 33.483719, 38.688759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293446, 33.755672, 38.041538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537868, 34.056313, 38.140900>,  <45.684521, 34.236698, 38.200516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537868, 34.056313, 38.140900>,  <45.293446, 33.755672, 38.041538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537868, 34.056313, 38.140900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198210, 0.158531, -0.967254,
		-0.766370, 0.640283, -0.052103,
		0.611056, 0.751602, 0.248404,
		45.721184, 34.281792, 38.215420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099945, 34.367962, 37.678524>,  <45.293446, 33.755672, 38.041538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099945, 34.367962, 37.678524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483780, 34.436352, 37.767933>,  <45.714081, 34.477386, 37.821579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483780, 34.436352, 37.767933>,  <45.099945, 34.367962, 37.678524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483780, 34.436352, 37.767933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189306, 0.195531, -0.962253,
		-0.208227, 0.965679, 0.155262,
		0.959586, 0.170975, 0.223523,
		45.771656, 34.487644, 37.834991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240341, 35.057465, 37.392914>,  <45.099945, 34.367962, 37.678524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240341, 35.057465, 37.392914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591743, 34.875122, 37.450069>,  <45.802586, 34.765717, 37.484364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591743, 34.875122, 37.450069>,  <45.240341, 35.057465, 37.392914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591743, 34.875122, 37.450069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248453, 0.180509, -0.951676,
		0.408037, 0.871556, 0.271838,
		0.878508, -0.455858, 0.142886,
		45.855297, 34.738365, 37.492935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773243, 35.522442, 37.319843>,  <45.240341, 35.057465, 37.392914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773243, 35.522442, 37.319843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926105, 35.158401, 37.255756>,  <46.017822, 34.939976, 37.217304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926105, 35.158401, 37.255756>,  <45.773243, 35.522442, 37.319843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926105, 35.158401, 37.255756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135840, 0.226815, -0.964418,
		0.914060, 0.346793, 0.210307,
		0.382154, -0.910104, -0.160214,
		46.040752, 34.885368, 37.207691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.298904, 35.673103, 36.866253>,  <45.773243, 35.522442, 37.319843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.298904, 35.673103, 36.866253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225399, 35.281651, 36.829353>,  <46.181293, 35.046780, 36.807213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225399, 35.281651, 36.829353>,  <46.298904, 35.673103, 36.866253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225399, 35.281651, 36.829353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363226, 0.019597, -0.931495,
		0.913399, -0.204684, 0.351863,
		-0.183767, -0.978632, -0.092246,
		46.170269, 34.988060, 36.801678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950809, 35.360237, 36.582371>,  <46.298904, 35.673103, 36.866253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950809, 35.360237, 36.582371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620678, 35.150574, 36.498371>,  <46.422600, 35.024776, 36.447971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620678, 35.150574, 36.498371>,  <46.950809, 35.360237, 36.582371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.620678, 35.150574, 36.498371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314502, -0.117833, -0.941915,
		0.468965, -0.843431, 0.262099,
		-0.825324, -0.524156, -0.210002,
		46.373081, 34.993328, 36.435371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126244, 34.687115, 36.376118>,  <46.950809, 35.360237, 36.582371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126244, 34.687115, 36.376118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798199, 34.841595, 36.207233>,  <46.601372, 34.934284, 36.105904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798199, 34.841595, 36.207233>,  <47.126244, 34.687115, 36.376118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798199, 34.841595, 36.207233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462182, 0.012095, -0.886702,
		-0.337339, -0.922335, -0.188415,
		-0.820116, 0.386201, -0.422207,
		46.552162, 34.957455, 36.080570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766289, 34.257458, 35.783089>,  <47.126244, 34.687115, 36.376118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766289, 34.257458, 35.783089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782234, 34.656937, 35.770306>,  <46.791801, 34.896622, 35.762638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782234, 34.656937, 35.770306>,  <46.766289, 34.257458, 35.783089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782234, 34.656937, 35.770306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785149, -0.051087, -0.617196,
		-0.618022, -0.000486, -0.786160,
		0.039862, 0.998694, -0.031955,
		46.794193, 34.956543, 35.760719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763218, 34.499744, 35.062195>,  <46.766289, 34.257458, 35.783089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763218, 34.499744, 35.062195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943642, 34.762737, 35.303612>,  <47.051895, 34.920532, 35.448460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943642, 34.762737, 35.303612>,  <46.763218, 34.499744, 35.062195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943642, 34.762737, 35.303612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869832, -0.172426, -0.462236,
		-0.199846, 0.733474, -0.649674,
		0.451059, 0.657483, 0.603541,
		47.078960, 34.959984, 35.484673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135227, 34.951504, 34.549938>,  <46.763218, 34.499744, 35.062195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135227, 34.951504, 34.549938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277657, 34.873337, 34.915459>,  <47.363113, 34.826439, 35.134769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277657, 34.873337, 34.915459>,  <47.135227, 34.951504, 34.549938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.277657, 34.873337, 34.915459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776604, -0.481981, -0.405685,
		0.519709, 0.854112, -0.019860,
		0.356073, -0.195415, 0.913797,
		47.384480, 34.814713, 35.189598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.840698, 35.296223, 34.779766>,  <47.135227, 34.951504, 34.549938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.840698, 35.296223, 34.779766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785301, 34.951946, 34.975735>,  <47.752064, 34.745380, 35.093315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785301, 34.951946, 34.975735>,  <47.840698, 35.296223, 34.779766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785301, 34.951946, 34.975735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849831, -0.357298, -0.387460,
		0.508533, 0.362689, 0.780930,
		-0.138497, -0.860695, 0.489922,
		47.743752, 34.693737, 35.122711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.266396, 40.165730, 38.173038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.906046, 40.106392, 38.336220>,  <31.689837, 40.070789, 38.434128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.906046, 40.106392, 38.336220>,  <32.266396, 40.165730, 38.173038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906046, 40.106392, 38.336220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180226, -0.982786, 0.040624,
		0.394908, 0.110121, 0.912097,
		-0.900870, -0.148340, 0.407956,
		31.635784, 40.061890, 38.458607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378208, 39.584038, 38.465900>,  <32.266396, 40.165730, 38.173038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378208, 39.584038, 38.465900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.979561, 39.604031, 38.492004>,  <31.740374, 39.616024, 38.507668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.979561, 39.604031, 38.492004>,  <32.378208, 39.584038, 38.465900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979561, 39.604031, 38.492004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046568, -0.997520, 0.052775,
		0.067735, 0.049558, 0.996472,
		-0.996616, 0.049978, 0.065259,
		31.680576, 39.619022, 38.511581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239769, 39.205353, 38.954971>,  <32.378208, 39.584038, 38.465900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239769, 39.205353, 38.954971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912107, 39.200081, 38.725605>,  <31.715509, 39.196918, 38.587986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912107, 39.200081, 38.725605>,  <32.239769, 39.205353, 38.954971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912107, 39.200081, 38.725605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071956, -0.994199, -0.079939,
		-0.569036, -0.106744, 0.815355,
		-0.819158, -0.013182, -0.573416,
		31.666361, 39.196125, 38.553581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874128, 38.600731, 39.189857>,  <32.239769, 39.205353, 38.954971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874128, 38.600731, 39.189857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.705889, 38.698097, 38.840263>,  <31.604946, 38.756519, 38.630508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.705889, 38.698097, 38.840263>,  <31.874128, 38.600731, 39.189857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705889, 38.698097, 38.840263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047619, -0.967929, -0.246669,
		-0.905996, -0.062131, 0.418701,
		-0.420599, 0.243420, -0.873982,
		31.579710, 38.771122, 38.578068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332329, 38.151432, 38.994118>,  <31.874128, 38.600731, 39.189857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332329, 38.151432, 38.994118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.375416, 38.277702, 38.617023>,  <31.401268, 38.353466, 38.390766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.375416, 38.277702, 38.617023>,  <31.332329, 38.151432, 38.994118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375416, 38.277702, 38.617023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209734, -0.919694, -0.331927,
		-0.971807, 0.233477, -0.032859,
		0.107718, 0.315677, -0.942733,
		31.407732, 38.372406, 38.334202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761175, 37.912212, 38.553822>,  <31.332329, 38.151432, 38.994118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761175, 37.912212, 38.553822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.083204, 37.961342, 38.321693>,  <31.276423, 37.990822, 38.182419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.083204, 37.961342, 38.321693>,  <30.761175, 37.912212, 38.553822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083204, 37.961342, 38.321693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137664, -0.912926, -0.384206,
		-0.576978, 0.389204, -0.718064,
		0.805074, 0.122827, -0.580318,
		31.324726, 37.998192, 38.147598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611151, 37.586323, 37.983261>,  <30.761175, 37.912212, 38.553822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611151, 37.586323, 37.983261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.010201, 37.598679, 37.958622>,  <31.249630, 37.606091, 37.943836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.010201, 37.598679, 37.958622>,  <30.611151, 37.586323, 37.983261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010201, 37.598679, 37.958622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003065, -0.873147, -0.487448,
		-0.068841, 0.486478, -0.870976,
		0.997623, 0.030887, -0.061600,
		31.309488, 37.607944, 37.940144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834881, 37.454094, 37.298500>,  <30.611151, 37.586323, 37.983261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834881, 37.454094, 37.298500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145550, 37.352886, 37.529243>,  <31.331951, 37.292164, 37.667690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145550, 37.352886, 37.529243>,  <30.834881, 37.454094, 37.298500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145550, 37.352886, 37.529243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117372, -0.841614, -0.527172,
		0.618874, 0.477146, -0.623960,
		0.776671, -0.253017, 0.576857,
		31.378551, 37.276981, 37.702301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113420, 36.929089, 36.878582>,  <30.834881, 37.454094, 37.298500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113420, 36.929089, 36.878582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.316980, 36.894482, 37.221169>,  <31.439117, 36.873718, 37.426720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.316980, 36.894482, 37.221169>,  <31.113420, 36.929089, 36.878582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316980, 36.894482, 37.221169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181636, -0.961744, -0.205078,
		0.841444, 0.259930, -0.473718,
		0.508901, -0.086517, 0.856466,
		31.469650, 36.868526, 37.478107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863783, 36.838421, 36.719181>,  <31.113420, 36.929089, 36.878582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863783, 36.838421, 36.719181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.786228, 36.676556, 37.076653>,  <31.739695, 36.579437, 37.291134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.786228, 36.676556, 37.076653>,  <31.863783, 36.838421, 36.719181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786228, 36.676556, 37.076653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443193, -0.848834, -0.288203,
		0.875207, 0.340191, 0.343923,
		-0.193889, -0.404662, 0.893676,
		31.728062, 36.555157, 37.344757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526882, 36.615810, 37.009235>,  <31.863783, 36.838421, 36.719181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526882, 36.615810, 37.009235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.246727, 36.408344, 37.205372>,  <32.078632, 36.283863, 37.323055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.246727, 36.408344, 37.205372>,  <32.526882, 36.615810, 37.009235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246727, 36.408344, 37.205372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466051, -0.852647, -0.236200,
		0.540600, 0.063093, 0.838911,
		-0.700392, -0.518665, 0.490346,
		32.036610, 36.252747, 37.352474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935600, 36.150063, 37.439137>,  <32.526882, 36.615810, 37.009235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935600, 36.150063, 37.439137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560387, 36.013153, 37.417473>,  <32.335258, 35.931007, 37.404472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560387, 36.013153, 37.417473>,  <32.935600, 36.150063, 37.439137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560387, 36.013153, 37.417473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344529, -0.904336, -0.251943,
		0.037253, -0.254993, 0.966225,
		-0.938036, -0.342278, -0.054163,
		32.278976, 35.910469, 37.401222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971340, 35.499844, 37.858040>,  <32.935600, 36.150063, 37.439137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971340, 35.499844, 37.858040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657639, 35.506790, 37.609962>,  <32.469418, 35.510960, 37.461117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657639, 35.506790, 37.609962>,  <32.971340, 35.499844, 37.858040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657639, 35.506790, 37.609962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083656, -0.987520, -0.133442,
		-0.614775, -0.156536, 0.773013,
		-0.784254, 0.017369, -0.620197,
		32.422363, 35.512001, 37.423904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620296, 34.850456, 37.969952>,  <32.971340, 35.499844, 37.858040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620296, 34.850456, 37.969952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.483921, 34.982227, 37.617760>,  <32.402096, 35.061291, 37.406445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.483921, 34.982227, 37.617760>,  <32.620296, 34.850456, 37.969952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483921, 34.982227, 37.617760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031091, -0.932129, -0.360790,
		-0.939571, -0.150382, 0.307557,
		-0.340939, 0.329425, -0.880477,
		32.381641, 35.081055, 37.353615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199551, 34.367054, 37.847919>,  <32.620296, 34.850456, 37.969952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199551, 34.367054, 37.847919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298882, 34.543850, 37.503136>,  <32.358482, 34.649925, 37.296265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298882, 34.543850, 37.503136>,  <32.199551, 34.367054, 37.847919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298882, 34.543850, 37.503136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033082, -0.893187, -0.448467,
		-0.968111, 0.082853, -0.236426,
		0.248330, 0.441987, -0.861963,
		32.373379, 34.676445, 37.244545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897366, 33.887451, 37.356777>,  <32.199551, 34.367054, 37.847919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897366, 33.887451, 37.356777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.166855, 34.108677, 37.160728>,  <32.328548, 34.241413, 37.043098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.166855, 34.108677, 37.160728>,  <31.897366, 33.887451, 37.356777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166855, 34.108677, 37.160728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325929, -0.817628, -0.474609,
		-0.663223, 0.160012, -0.731116,
		0.673725, 0.553064, -0.490118,
		32.368973, 34.274597, 37.013695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815889, 33.802940, 36.700352>,  <31.897366, 33.887451, 37.356777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815889, 33.802940, 36.700352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197006, 33.921921, 36.724716>,  <32.425678, 33.993309, 36.739334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197006, 33.921921, 36.724716>,  <31.815889, 33.802940, 36.700352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197006, 33.921921, 36.724716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275393, -0.762157, -0.585898,
		-0.127849, 0.575014, -0.808092,
		0.952792, 0.297449, 0.060914,
		32.482845, 34.011154, 36.742989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987906, 33.878014, 35.993542>,  <31.815889, 33.802940, 36.700352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987906, 33.878014, 35.993542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319691, 33.825096, 36.210609>,  <32.518761, 33.793346, 36.340851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319691, 33.825096, 36.210609>,  <31.987906, 33.878014, 35.993542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319691, 33.825096, 36.210609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362565, -0.611528, -0.703264,
		0.424896, 0.780084, -0.459274,
		0.829464, -0.132297, 0.542667,
		32.568531, 33.785408, 36.373409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530670, 33.896980, 35.598328>,  <31.987906, 33.878014, 35.993542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530670, 33.896980, 35.598328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.733215, 33.720463, 35.894665>,  <32.854744, 33.614552, 36.072468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.733215, 33.720463, 35.894665>,  <32.530670, 33.896980, 35.598328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733215, 33.720463, 35.894665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389395, -0.649533, -0.653053,
		0.769395, 0.619164, -0.157060,
		0.506362, -0.441297, 0.740847,
		32.885124, 33.588074, 36.116920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258999, 33.761612, 35.310173>,  <32.530670, 33.896980, 35.598328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258999, 33.761612, 35.310173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.192783, 33.512852, 35.616333>,  <33.153053, 33.363594, 35.800030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.192783, 33.512852, 35.616333>,  <33.258999, 33.761612, 35.310173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192783, 33.512852, 35.616333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446592, -0.739243, -0.504059,
		0.879290, 0.258377, 0.400113,
		-0.165543, -0.621902, 0.765398,
		33.143120, 33.326283, 35.845951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866306, 33.340145, 35.337795>,  <33.258999, 33.761612, 35.310173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866306, 33.340145, 35.337795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574963, 33.130096, 35.513859>,  <33.400158, 33.004066, 35.619499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574963, 33.130096, 35.513859>,  <33.866306, 33.340145, 35.337795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574963, 33.130096, 35.513859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354202, -0.838451, -0.414175,
		0.586546, -0.145761, 0.796692,
		-0.728357, -0.525123, 0.440161,
		33.356457, 32.972561, 35.645908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093403, 32.600899, 35.541359>,  <33.866306, 33.340145, 35.337795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093403, 32.600899, 35.541359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695213, 32.566124, 35.525986>,  <33.456299, 32.545258, 35.516762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695213, 32.566124, 35.525986>,  <34.093403, 32.600899, 35.541359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695213, 32.566124, 35.525986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092081, -0.781662, -0.616868,
		0.023586, -0.617614, 0.786128,
		-0.995472, -0.086937, -0.038435,
		33.396572, 32.540043, 35.514454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636234, 32.909737, 35.971775>,  <34.093403, 32.600899, 35.541359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636234, 32.909737, 35.971775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574219, 33.298405, 36.043125>,  <34.537010, 33.531605, 36.085934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574219, 33.298405, 36.043125>,  <34.636234, 32.909737, 35.971775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574219, 33.298405, 36.043125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968569, 0.113951, 0.221108,
		0.194518, 0.207049, -0.958798,
		-0.155037, 0.971672, 0.178376,
		34.527706, 33.589905, 36.096638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140640, 33.272568, 36.462673>,  <34.636234, 32.909737, 35.971775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140640, 33.272568, 36.462673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507828, 33.333553, 36.316204>,  <35.728142, 33.370144, 36.228321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507828, 33.333553, 36.316204>,  <35.140640, 33.272568, 36.462673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507828, 33.333553, 36.316204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110651, 0.984958, 0.132718,
		0.380899, -0.081314, 0.921034,
		0.917971, 0.152466, -0.366172,
		35.783218, 33.379292, 36.206352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298813, 33.869072, 36.845741>,  <35.140640, 33.272568, 36.462673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298813, 33.869072, 36.845741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618557, 33.853630, 36.605896>,  <35.810402, 33.844364, 36.461990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618557, 33.853630, 36.605896>,  <35.298813, 33.869072, 36.845741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618557, 33.853630, 36.605896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215236, 0.950108, 0.225763,
		0.560978, -0.309524, 0.767788,
		0.799360, -0.038607, -0.599610,
		35.858364, 33.842049, 36.426014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810970, 34.266251, 37.225658>,  <35.298813, 33.869072, 36.845741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810970, 34.266251, 37.225658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.883438, 34.248795, 36.832664>,  <35.926918, 34.238319, 36.596870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.883438, 34.248795, 36.832664>,  <35.810970, 34.266251, 37.225658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883438, 34.248795, 36.832664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083323, 0.996104, -0.028882,
		0.979915, -0.076630, 0.184103,
		0.181172, -0.043642, -0.982483,
		35.937790, 34.235703, 36.537918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546772, 34.717480, 37.106247>,  <35.810970, 34.266251, 37.225658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546772, 34.717480, 37.106247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355015, 34.705837, 36.755398>,  <36.239960, 34.698853, 36.544888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355015, 34.705837, 36.755398>,  <36.546772, 34.717480, 37.106247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355015, 34.705837, 36.755398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004906, 0.999523, -0.030482,
		0.877588, -0.010310, -0.479303,
		-0.479389, -0.029102, -0.877120,
		36.211197, 34.697105, 36.492260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892643, 35.227051, 36.720356>,  <36.546772, 34.717480, 37.106247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892643, 35.227051, 36.720356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536831, 35.204830, 36.538963>,  <36.323341, 35.191498, 36.430130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536831, 35.204830, 36.538963>,  <36.892643, 35.227051, 36.720356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536831, 35.204830, 36.538963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014734, 0.995552, -0.093052,
		0.456632, -0.076091, -0.886395,
		-0.889534, -0.055551, -0.453480,
		36.269970, 35.188164, 36.402920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913158, 35.671215, 36.182796>,  <36.892643, 35.227051, 36.720356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913158, 35.671215, 36.182796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517979, 35.629776, 36.228802>,  <36.280872, 35.604912, 36.256405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517979, 35.629776, 36.228802>,  <36.913158, 35.671215, 36.182796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517979, 35.629776, 36.228802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121293, 0.979730, -0.159429,
		-0.096162, -0.171457, -0.980487,
		-0.987948, -0.103595, 0.115009,
		36.221596, 35.598698, 36.263306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662575, 36.179615, 35.806744>,  <36.913158, 35.671215, 36.182796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662575, 36.179615, 35.806744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340622, 36.082886, 36.023514>,  <36.147449, 36.024849, 36.153576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340622, 36.082886, 36.023514>,  <36.662575, 36.179615, 35.806744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340622, 36.082886, 36.023514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271311, 0.962130, 0.026372,
		-0.527779, -0.125804, -0.840014,
		-0.804885, -0.241824, 0.541924,
		36.099155, 36.010338, 36.186092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013027, 36.495235, 35.542439>,  <36.662575, 36.179615, 35.806744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013027, 36.495235, 35.542439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942097, 36.442509, 35.932552>,  <35.899540, 36.410873, 36.166622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942097, 36.442509, 35.932552>,  <36.013027, 36.495235, 35.542439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942097, 36.442509, 35.932552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192045, 0.976574, 0.097070,
		-0.965234, -0.170086, -0.198483,
		-0.177323, -0.131812, 0.975286,
		35.888901, 36.402966, 36.225140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289268, 36.724926, 35.764446>,  <36.013027, 36.495235, 35.542439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289268, 36.724926, 35.764446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518520, 36.722717, 36.092224>,  <35.656071, 36.721394, 36.288891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518520, 36.722717, 36.092224>,  <35.289268, 36.724926, 35.764446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518520, 36.722717, 36.092224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312804, 0.922784, 0.224996,
		-0.757416, -0.385278, 0.527146,
		0.573128, -0.005522, 0.819448,
		35.690460, 36.721062, 36.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808434, 36.827190, 36.260227>,  <35.289268, 36.724926, 35.764446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808434, 36.827190, 36.260227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163002, 36.945080, 36.402996>,  <35.375744, 37.015812, 36.488655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163002, 36.945080, 36.402996>,  <34.808434, 36.827190, 36.260227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163002, 36.945080, 36.402996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407851, 0.861946, 0.301176,
		-0.218882, -0.412539, 0.884252,
		0.886425, 0.294721, 0.356919,
		35.428928, 37.033497, 36.510071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689312, 36.998978, 36.940804>,  <34.808434, 36.827190, 36.260227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689312, 36.998978, 36.940804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.041626, 37.167305, 36.853970>,  <35.253014, 37.268299, 36.801868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.041626, 37.167305, 36.853970>,  <34.689312, 36.998978, 36.940804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041626, 37.167305, 36.853970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303602, 0.853710, 0.423091,
		0.363367, -0.306748, 0.879699,
		0.880790, 0.420815, -0.217080,
		35.305862, 37.293549, 36.788845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111347, 37.223637, 37.455582>,  <34.689312, 36.998978, 36.940804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111347, 37.223637, 37.455582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286053, 37.446896, 37.173386>,  <35.390877, 37.580849, 37.004066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286053, 37.446896, 37.173386>,  <35.111347, 37.223637, 37.455582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286053, 37.446896, 37.173386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076166, 0.804373, 0.589222,
		0.896348, -0.203613, 0.393829,
		0.436759, 0.558144, -0.705490,
		35.417080, 37.614338, 36.961739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625103, 37.651512, 37.774780>,  <35.111347, 37.223637, 37.455582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625103, 37.651512, 37.774780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533840, 37.824593, 37.425907>,  <35.479080, 37.928440, 37.216583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533840, 37.824593, 37.425907>,  <35.625103, 37.651512, 37.774780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533840, 37.824593, 37.425907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039571, 0.899197, 0.435752,
		0.972819, 0.064908, -0.222285,
		-0.228162, 0.432704, -0.872187,
		35.465393, 37.954403, 37.164249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939964, 38.262604, 37.761730>,  <35.625103, 37.651512, 37.774780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939964, 38.262604, 37.761730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.668583, 38.321587, 37.473850>,  <35.505756, 38.356976, 37.301125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.668583, 38.321587, 37.473850>,  <35.939964, 38.262604, 37.761730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668583, 38.321587, 37.473850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088994, 0.955939, 0.279750,
		0.729236, 0.253845, -0.635434,
		-0.678450, 0.147454, -0.719696,
		35.465050, 38.365822, 37.257942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046169, 38.940693, 37.438484>,  <35.939964, 38.262604, 37.761730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046169, 38.940693, 37.438484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666409, 38.843430, 37.358982>,  <35.438553, 38.785072, 37.311283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666409, 38.843430, 37.358982>,  <36.046169, 38.940693, 37.438484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666409, 38.843430, 37.358982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263411, 0.961162, 0.082352,
		0.171008, 0.130539, -0.976584,
		-0.949406, -0.243160, -0.198752,
		35.381588, 38.770481, 37.299358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764591, 39.493240, 36.996922>,  <36.046169, 38.940693, 37.438484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764591, 39.493240, 36.996922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448387, 39.303638, 37.152058>,  <35.258663, 39.189877, 37.245140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448387, 39.303638, 37.152058>,  <35.764591, 39.493240, 36.996922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448387, 39.303638, 37.152058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429019, 0.880496, 0.201669,
		-0.437079, -0.006968, -0.899396,
		-0.790509, -0.474003, 0.387836,
		35.211235, 39.161438, 37.268410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063980, 39.777340, 36.739574>,  <35.764591, 39.493240, 36.996922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063980, 39.777340, 36.739574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968616, 39.612957, 37.091545>,  <34.911400, 39.514328, 37.302727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968616, 39.612957, 37.091545>,  <35.063980, 39.777340, 36.739574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968616, 39.612957, 37.091545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327447, 0.887015, 0.325551,
		-0.914298, -0.210516, -0.346037,
		-0.238406, -0.410960, 0.879929,
		34.897095, 39.489670, 37.355522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.222385, 39.768482, 36.791630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365871, 39.750408, 37.164570>,  <34.451962, 39.739563, 37.388336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365871, 39.750408, 37.164570>,  <34.222385, 39.768482, 36.791630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365871, 39.750408, 37.164570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664032, 0.689634, 0.288905,
		-0.656038, -0.722747, 0.217375,
		0.358714, -0.045189, 0.932353,
		34.473488, 39.736851, 37.444275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681690, 40.009819, 37.110180>,  <34.222385, 39.768482, 36.791630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681690, 40.009819, 37.110180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.952034, 40.004200, 37.404942>,  <34.114239, 40.000828, 37.581799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.952034, 40.004200, 37.404942>,  <33.681690, 40.009819, 37.110180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952034, 40.004200, 37.404942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498115, 0.728209, 0.470737,
		-0.543232, -0.685211, 0.485164,
		0.675855, -0.014052, 0.736900,
		34.154789, 39.999985, 37.626011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321125, 40.055058, 37.824669>,  <33.681690, 40.009819, 37.110180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321125, 40.055058, 37.824669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702591, 40.171913, 37.853470>,  <33.931469, 40.242027, 37.870750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702591, 40.171913, 37.853470>,  <33.321125, 40.055058, 37.824669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702591, 40.171913, 37.853470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288332, 0.818928, 0.496207,
		0.086001, -0.493973, 0.865214,
		0.953661, 0.292143, 0.072000,
		33.988689, 40.259556, 37.875069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627342, 40.215637, 38.564133>,  <33.321125, 40.055058, 37.824669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627342, 40.215637, 38.564133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850285, 40.414478, 38.298130>,  <33.984051, 40.533783, 38.138527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850285, 40.414478, 38.298130>,  <33.627342, 40.215637, 38.564133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850285, 40.414478, 38.298130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119128, 0.840546, 0.528479,
		0.821679, -0.215333, 0.527708,
		0.557362, 0.497105, -0.665007,
		34.017490, 40.563610, 38.098629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968990, 40.738029, 39.050755>,  <33.627342, 40.215637, 38.564133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968990, 40.738029, 39.050755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060356, 40.879169, 38.687805>,  <34.115177, 40.963856, 38.470036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060356, 40.879169, 38.687805>,  <33.968990, 40.738029, 39.050755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060356, 40.879169, 38.687805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105333, 0.935495, 0.337275,
		0.967849, 0.018538, 0.250848,
		0.228415, 0.352854, -0.907370,
		34.128880, 40.985027, 38.415596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384670, 41.424007, 39.116215>,  <33.968990, 40.738029, 39.050755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384670, 41.424007, 39.116215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187176, 41.411556, 38.768593>,  <34.068680, 41.404087, 38.560020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187176, 41.411556, 38.768593>,  <34.384670, 41.424007, 39.116215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187176, 41.411556, 38.768593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282658, 0.950839, 0.126533,
		0.822390, 0.308119, -0.478266,
		-0.493741, -0.031127, -0.869052,
		34.039055, 41.402218, 38.507877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584389, 42.028893, 38.786583>,  <34.384670, 41.424007, 39.116215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584389, 42.028893, 38.786583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231365, 41.921204, 38.632389>,  <34.019550, 41.856590, 38.539871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231365, 41.921204, 38.632389>,  <34.584389, 42.028893, 38.786583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231365, 41.921204, 38.632389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325649, 0.941377, 0.088102,
		0.339168, 0.203289, -0.918498,
		-0.882563, -0.269226, -0.385485,
		33.966595, 41.840435, 38.516743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543926, 42.462151, 38.237656>,  <34.584389, 42.028893, 38.786583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543926, 42.462151, 38.237656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164612, 42.355446, 38.306458>,  <33.937023, 42.291424, 38.347736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164612, 42.355446, 38.306458>,  <34.543926, 42.462151, 38.237656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164612, 42.355446, 38.306458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277694, 0.959727, -0.042542,
		-0.153726, -0.088106, -0.984178,
		-0.948290, -0.266760, 0.172002,
		33.880123, 42.275417, 38.358059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120010, 42.822380, 37.928932>,  <34.543926, 42.462151, 38.237656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120010, 42.822380, 37.928932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847782, 42.713837, 38.201164>,  <33.684444, 42.648712, 38.364506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847782, 42.713837, 38.201164>,  <34.120010, 42.822380, 37.928932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847782, 42.713837, 38.201164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401447, 0.915152, -0.036555,
		-0.612918, -0.298097, -0.731758,
		-0.680567, -0.271357, 0.680583,
		33.643612, 42.632431, 38.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414841, 43.064960, 37.675747>,  <34.120010, 42.822380, 37.928932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414841, 43.064960, 37.675747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373005, 43.016209, 38.070553>,  <33.347904, 42.986958, 38.307438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373005, 43.016209, 38.070553>,  <33.414841, 43.064960, 37.675747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373005, 43.016209, 38.070553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322459, 0.943001, 0.082272,
		-0.940787, -0.309669, -0.137928,
		-0.104590, -0.121877, 0.987020,
		33.341629, 42.979645, 38.366657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858681, 43.514111, 37.850918>,  <33.414841, 43.064960, 37.675747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858681, 43.514111, 37.850918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999031, 43.436069, 38.217266>,  <33.083241, 43.389244, 38.437077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999031, 43.436069, 38.217266>,  <32.858681, 43.514111, 37.850918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999031, 43.436069, 38.217266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411790, 0.846266, 0.338029,
		-0.841022, -0.495752, 0.216590,
		0.350872, -0.195100, 0.915874,
		33.104294, 43.377541, 38.492027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329594, 43.826344, 38.353127>,  <32.858681, 43.514111, 37.850918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329594, 43.826344, 38.353127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679119, 43.790882, 38.544373>,  <32.888832, 43.769604, 38.659122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679119, 43.790882, 38.544373>,  <32.329594, 43.826344, 38.353127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679119, 43.790882, 38.544373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202793, 0.827216, 0.524012,
		-0.441963, -0.554846, 0.704851,
		0.873810, -0.088655, 0.478117,
		32.941261, 43.764286, 38.687809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211197, 43.800121, 38.992607>,  <32.329594, 43.826344, 38.353127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211197, 43.800121, 38.992607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595100, 43.911659, 38.979305>,  <32.825443, 43.978584, 38.971325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595100, 43.911659, 38.979305>,  <32.211197, 43.800121, 38.992607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595100, 43.911659, 38.979305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208105, 0.785740, 0.582499,
		0.188559, -0.552138, 0.812151,
		0.959759, 0.278848, -0.033255,
		32.883030, 43.995316, 38.969330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387138, 44.046413, 39.636299>,  <32.211197, 43.800121, 38.992607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387138, 44.046413, 39.636299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695724, 44.195606, 39.430103>,  <32.880875, 44.285122, 39.306385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695724, 44.195606, 39.430103>,  <32.387138, 44.046413, 39.636299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695724, 44.195606, 39.430103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015148, 0.799176, 0.600906,
		0.636093, -0.471386, 0.610885,
		0.771464, 0.372979, -0.515491,
		32.927162, 44.307499, 39.275455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765270, 44.332554, 40.134399>,  <32.387138, 44.046413, 39.636299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765270, 44.332554, 40.134399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867111, 44.526958, 39.799980>,  <32.928215, 44.643600, 39.599331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867111, 44.526958, 39.799980>,  <32.765270, 44.332554, 40.134399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867111, 44.526958, 39.799980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164642, 0.830129, 0.532710,
		0.952926, -0.273280, 0.131339,
		0.254607, 0.486009, -0.836045,
		32.943493, 44.672760, 39.549168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299274, 44.767700, 40.407948>,  <32.765270, 44.332554, 40.134399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299274, 44.767700, 40.407948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222282, 44.951973, 40.061371>,  <33.176086, 45.062534, 39.853424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222282, 44.951973, 40.061371>,  <33.299274, 44.767700, 40.407948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222282, 44.951973, 40.061371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308091, 0.866680, 0.392360,
		0.931682, -0.191423, -0.308748,
		-0.192479, 0.460677, -0.866446,
		33.164539, 45.090176, 39.801437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874058, 45.208748, 40.275917>,  <33.299274, 44.767700, 40.407948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874058, 45.208748, 40.275917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572296, 45.350807, 40.055103>,  <33.391239, 45.436043, 39.922615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572296, 45.350807, 40.055103>,  <33.874058, 45.208748, 40.275917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572296, 45.350807, 40.055103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122006, 0.902203, 0.413697,
		0.644973, 0.244742, -0.723955,
		-0.754403, 0.355150, -0.552037,
		33.345974, 45.457352, 39.889492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114185, 45.820049, 40.087772>,  <33.874058, 45.208748, 40.275917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114185, 45.820049, 40.087772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718758, 45.857449, 40.040466>,  <33.481503, 45.879887, 40.012081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718758, 45.857449, 40.040466>,  <34.114185, 45.820049, 40.087772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718758, 45.857449, 40.040466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043435, 0.927844, 0.370432,
		0.144369, 0.361061, -0.921300,
		-0.988570, 0.093495, -0.118269,
		33.422188, 45.885498, 40.004986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028469, 46.408051, 39.734211>,  <34.114185, 45.820049, 40.087772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028469, 46.408051, 39.734211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692215, 46.338024, 39.939224>,  <33.490463, 46.296009, 40.062233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692215, 46.338024, 39.939224>,  <34.028469, 46.408051, 39.734211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692215, 46.338024, 39.939224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091835, 0.886545, 0.453436,
		-0.533764, 0.428241, -0.729181,
		-0.840632, -0.175064, 0.512533,
		33.440025, 46.285503, 40.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664433, 47.080162, 39.805603>,  <34.028469, 46.408051, 39.734211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664433, 47.080162, 39.805603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.469913, 46.843609, 40.062904>,  <33.353203, 46.701675, 40.217285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.469913, 46.843609, 40.062904>,  <33.664433, 47.080162, 39.805603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469913, 46.843609, 40.062904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112902, 0.772523, 0.624870,
		-0.866467, 0.231250, -0.442447,
		-0.486301, -0.591382, 0.643256,
		33.324024, 46.666195, 40.255882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057297, 47.422810, 40.024799>,  <33.664433, 47.080162, 39.805603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057297, 47.422810, 40.024799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136440, 47.158916, 40.314793>,  <33.183926, 47.000580, 40.488789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136440, 47.158916, 40.314793>,  <33.057297, 47.422810, 40.024799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136440, 47.158916, 40.314793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297157, 0.664431, 0.685733,
		-0.934104, -0.351110, -0.064584,
		0.197856, -0.659737, 0.724983,
		33.195797, 46.960995, 40.532288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527596, 47.553905, 40.514599>,  <33.057297, 47.422810, 40.024799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527596, 47.553905, 40.514599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756458, 47.320644, 40.745277>,  <32.893776, 47.180687, 40.883682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756458, 47.320644, 40.745277>,  <32.527596, 47.553905, 40.514599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756458, 47.320644, 40.745277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140761, 0.622903, 0.769531,
		-0.807976, -0.521466, 0.274312,
		0.572154, -0.583150, 0.576693,
		32.928104, 47.145699, 40.918285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167290, 47.296169, 41.194427>,  <32.527596, 47.553905, 40.514599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167290, 47.296169, 41.194427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563282, 47.352634, 41.193703>,  <32.800877, 47.386513, 41.193268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563282, 47.352634, 41.193703>,  <32.167290, 47.296169, 41.194427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563282, 47.352634, 41.193703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104503, 0.741412, 0.662863,
		0.094918, -0.656035, 0.748738,
		0.989985, 0.141163, -0.001816,
		32.860279, 47.394985, 41.193157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416229, 47.263630, 41.861225>,  <32.167290, 47.296169, 41.194427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416229, 47.263630, 41.861225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667595, 47.516651, 41.680130>,  <32.818413, 47.668465, 41.571472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667595, 47.516651, 41.680130>,  <32.416229, 47.263630, 41.861225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667595, 47.516651, 41.680130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200263, 0.693956, 0.691607,
		0.751659, -0.343948, 0.562768,
		0.628413, 0.632554, -0.452738,
		32.856117, 47.706417, 41.544308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421902, 46.439880, 41.880116>,  <32.416229, 47.263630, 41.861225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421902, 46.439880, 41.880116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091400, 46.632492, 41.997032>,  <31.893101, 46.748058, 42.067184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091400, 46.632492, 41.997032>,  <32.421902, 46.439880, 41.880116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091400, 46.632492, 41.997032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559872, -0.759198, -0.331907,
		0.062085, -0.437885, 0.896885,
		-0.826250, 0.481534, 0.292294,
		31.843525, 46.776951, 42.084721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067764, 45.961838, 42.175682>,  <32.421902, 46.439880, 41.880116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067764, 45.961838, 42.175682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.797815, 46.246296, 42.096870>,  <31.635847, 46.416969, 42.049583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.797815, 46.246296, 42.096870>,  <32.067764, 45.961838, 42.175682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797815, 46.246296, 42.096870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640531, -0.697105, -0.322125,
		-0.366428, -0.091189, 0.925967,
		-0.674870, 0.711147, -0.197030,
		31.595354, 46.459641, 42.037762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432798, 45.619637, 42.441132>,  <32.067764, 45.961838, 42.175682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432798, 45.619637, 42.441132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.296371, 45.909668, 42.201824>,  <31.214516, 46.083687, 42.058239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.296371, 45.909668, 42.201824>,  <31.432798, 45.619637, 42.441132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296371, 45.909668, 42.201824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609971, -0.654961, -0.446051,
		-0.715268, 0.212795, 0.665665,
		-0.341067, 0.725083, -0.598271,
		31.194052, 46.127193, 42.022343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669577, 45.594032, 42.432396>,  <31.432798, 45.619637, 42.441132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669577, 45.594032, 42.432396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785460, 45.794777, 42.106403>,  <30.854990, 45.915226, 41.910809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785460, 45.794777, 42.106403>,  <30.669577, 45.594032, 42.432396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785460, 45.794777, 42.106403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473716, -0.664708, -0.577717,
		-0.831663, 0.553441, 0.045170,
		0.289708, 0.501864, -0.814986,
		30.872372, 45.945335, 41.861908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084368, 45.639359, 41.994400>,  <30.669577, 45.594032, 42.432396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084368, 45.639359, 41.994400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.388346, 45.709755, 41.744118>,  <30.570732, 45.751991, 41.593948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.388346, 45.709755, 41.744118>,  <30.084368, 45.639359, 41.994400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388346, 45.709755, 41.744118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397967, -0.635134, -0.661987,
		-0.513914, 0.752085, -0.412627,
		0.759944, 0.175992, -0.625709,
		30.616329, 45.762554, 41.556404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778801, 45.619385, 41.340260>,  <30.084368, 45.639359, 41.994400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778801, 45.619385, 41.340260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170370, 45.560711, 41.283413>,  <30.405312, 45.525505, 41.249306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170370, 45.560711, 41.283413>,  <29.778801, 45.619385, 41.340260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170370, 45.560711, 41.283413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204194, -0.688281, -0.696113,
		0.004294, 0.710459, -0.703726,
		0.978921, -0.146686, -0.142116,
		30.464046, 45.516705, 41.240780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802237, 45.445667, 40.642651>,  <29.778801, 45.619385, 41.340260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802237, 45.445667, 40.642651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147154, 45.301601, 40.785049>,  <30.354105, 45.215164, 40.870487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147154, 45.301601, 40.785049>,  <29.802237, 45.445667, 40.642651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147154, 45.301601, 40.785049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054676, -0.765090, -0.641598,
		0.503449, 0.533781, -0.679424,
		0.862293, -0.360161, 0.355998,
		30.405842, 45.193554, 40.891850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890911, 44.992722, 40.087467>,  <29.802237, 45.445667, 40.642651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890911, 44.992722, 40.087467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177784, 44.881226, 40.342953>,  <30.349907, 44.814327, 40.496243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177784, 44.881226, 40.342953>,  <29.890911, 44.992722, 40.087467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177784, 44.881226, 40.342953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084587, -0.874933, -0.476799,
		0.691734, 0.395979, -0.603908,
		0.717182, -0.278735, 0.638715,
		30.392939, 44.797604, 40.534569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618074, 44.774399, 39.728382>,  <29.890911, 44.992722, 40.087467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618074, 44.774399, 39.728382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596132, 44.583805, 40.079369>,  <30.582968, 44.469448, 40.289963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596132, 44.583805, 40.079369>,  <30.618074, 44.774399, 39.728382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596132, 44.583805, 40.079369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354184, -0.830932, -0.429076,
		0.933565, 0.287248, 0.214346,
		-0.054856, -0.476488, 0.877468,
		30.579676, 44.440857, 40.342609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248671, 44.441254, 39.677746>,  <30.618074, 44.774399, 39.728382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248671, 44.441254, 39.677746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010193, 44.285603, 39.958641>,  <30.867107, 44.192211, 40.127178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010193, 44.285603, 39.958641>,  <31.248671, 44.441254, 39.677746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010193, 44.285603, 39.958641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330564, -0.916082, -0.226983,
		0.731630, 0.096808, 0.674793,
		-0.596192, -0.389130, 0.702234,
		30.831335, 44.168865, 40.169312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655598, 44.038483, 40.085758>,  <31.248671, 44.441254, 39.677746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655598, 44.038483, 40.085758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.303122, 43.862820, 40.155777>,  <31.091637, 43.757420, 40.197788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.303122, 43.862820, 40.155777>,  <31.655598, 44.038483, 40.085758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303122, 43.862820, 40.155777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418633, -0.896877, -0.142683,
		0.219658, -0.052449, 0.974166,
		-0.881190, -0.439160, 0.175050,
		31.038765, 43.731071, 40.208290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771852, 43.405487, 40.538979>,  <31.655598, 44.038483, 40.085758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771852, 43.405487, 40.538979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426323, 43.343731, 40.347157>,  <31.219006, 43.306675, 40.232063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426323, 43.343731, 40.347157>,  <31.771852, 43.405487, 40.538979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426323, 43.343731, 40.347157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222424, -0.970966, -0.088047,
		-0.452038, -0.182721, 0.873083,
		-0.863822, -0.154394, -0.479556,
		31.167175, 43.297413, 40.203289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625677, 42.794456, 40.725731>,  <31.771852, 43.405487, 40.538979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625677, 42.794456, 40.725731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392948, 42.835766, 40.403038>,  <31.253311, 42.860554, 40.209423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392948, 42.835766, 40.403038>,  <31.625677, 42.794456, 40.725731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392948, 42.835766, 40.403038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201495, -0.942679, -0.266001,
		-0.787959, -0.317318, 0.527664,
		-0.581824, 0.103277, -0.806730,
		31.218401, 42.866749, 40.161018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476048, 42.040535, 40.485039>,  <31.625677, 42.794456, 40.725731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476048, 42.040535, 40.485039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.342310, 42.247044, 40.169655>,  <31.262068, 42.370949, 39.980423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.342310, 42.247044, 40.169655>,  <31.476048, 42.040535, 40.485039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342310, 42.247044, 40.169655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197733, -0.779562, -0.594294,
		-0.921476, -0.354602, 0.158555,
		-0.334342, 0.516276, -0.788464,
		31.242008, 42.401928, 39.933117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985495, 41.609394, 40.124866>,  <31.476048, 42.040535, 40.485039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985495, 41.609394, 40.124866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.102316, 41.887688, 39.862370>,  <31.172409, 42.054665, 39.704872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.102316, 41.887688, 39.862370>,  <30.985495, 41.609394, 40.124866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102316, 41.887688, 39.862370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107880, -0.705747, -0.700202,
		-0.950298, 0.133702, -0.281172,
		0.292055, 0.695734, -0.656246,
		31.189932, 42.096409, 39.665497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536303, 41.596504, 39.533112>,  <30.985495, 41.609394, 40.124866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536303, 41.596504, 39.533112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882565, 41.748310, 39.402504>,  <31.090321, 41.839394, 39.324139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882565, 41.748310, 39.402504>,  <30.536303, 41.596504, 39.533112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882565, 41.748310, 39.402504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077152, -0.745533, -0.661988,
		-0.494664, 0.547861, -0.674653,
		0.865653, 0.379512, -0.326520,
		31.142260, 41.862164, 39.304546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465828, 41.609493, 38.839481>,  <30.536303, 41.596504, 39.533112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465828, 41.609493, 38.839481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855556, 41.579285, 38.924328>,  <31.089394, 41.561161, 38.975235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855556, 41.579285, 38.924328>,  <30.465828, 41.609493, 38.839481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855556, 41.579285, 38.924328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087049, -0.742471, -0.664198,
		0.207646, 0.665608, -0.716833,
		0.974323, -0.075519, 0.212112,
		31.147854, 41.556629, 38.987961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751694, 41.394318, 38.223434>,  <30.465828, 41.609493, 38.839481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751694, 41.394318, 38.223434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005556, 41.281948, 38.511402>,  <31.157875, 41.214527, 38.684185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005556, 41.281948, 38.511402>,  <30.751694, 41.394318, 38.223434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005556, 41.281948, 38.511402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215759, -0.830127, -0.514138,
		0.742063, 0.481631, -0.466234,
		0.634658, -0.280928, 0.719922,
		31.195953, 41.197670, 38.727379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306971, 41.174194, 37.906437>,  <30.751694, 41.394318, 38.223434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306971, 41.174194, 37.906437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353544, 41.021194, 38.273075>,  <31.381489, 40.929394, 38.493057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353544, 41.021194, 38.273075>,  <31.306971, 41.174194, 37.906437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353544, 41.021194, 38.273075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159489, -0.903691, -0.397374,
		0.980309, 0.192455, -0.044217,
		0.116435, -0.382497, 0.916591,
		31.388475, 40.906445, 38.548054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796518, 40.654366, 37.792721>,  <31.306971, 41.174194, 37.906437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796518, 40.654366, 37.792721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.621187, 40.564362, 38.140797>,  <31.515989, 40.510357, 38.349644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.621187, 40.564362, 38.140797>,  <31.796518, 40.654366, 37.792721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621187, 40.564362, 38.140797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183313, -0.970188, -0.158532,
		0.879923, 0.090029, 0.466508,
		-0.438328, -0.225013, 0.870194,
		31.489689, 40.496857, 38.401855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.936573, 37.423908, 43.694214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577122, 37.257561, 43.750114>,  <42.361450, 37.157753, 43.783653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577122, 37.257561, 43.750114>,  <42.936573, 37.423908, 43.694214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577122, 37.257561, 43.750114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194033, -0.662431, -0.723558,
		0.393478, -0.623091, 0.675968,
		-0.898625, -0.415865, 0.139751,
		42.307533, 37.132801, 43.792042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992821, 36.727577, 43.636990>,  <42.936573, 37.423908, 43.694214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992821, 36.727577, 43.636990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602978, 36.781628, 43.565563>,  <42.369072, 36.814056, 43.522709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602978, 36.781628, 43.565563>,  <42.992821, 36.727577, 43.636990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602978, 36.781628, 43.565563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054811, -0.629219, -0.775293,
		-0.217118, -0.765392, 0.605833,
		-0.974606, 0.135124, -0.178566,
		42.310596, 36.822166, 43.511993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652428, 36.033485, 43.574471>,  <42.992821, 36.727577, 43.636990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652428, 36.033485, 43.574471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409557, 36.285313, 43.380573>,  <42.263836, 36.436409, 43.264236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409557, 36.285313, 43.380573>,  <42.652428, 36.033485, 43.574471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409557, 36.285313, 43.380573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009816, -0.604082, -0.796862,
		-0.794504, -0.488597, 0.360606,
		-0.607180, 0.629570, -0.484741,
		42.227402, 36.474182, 43.235149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214275, 35.579823, 43.288994>,  <42.652428, 36.033485, 43.574471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214275, 35.579823, 43.288994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126659, 35.903839, 43.071426>,  <42.074089, 36.098251, 42.940884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126659, 35.903839, 43.071426>,  <42.214275, 35.579823, 43.288994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126659, 35.903839, 43.071426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064259, -0.568226, -0.820359,
		-0.973598, -0.144737, 0.176515,
		-0.219037, 0.810043, -0.543923,
		42.060947, 36.146851, 42.908249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725155, 35.332443, 42.870152>,  <42.214275, 35.579823, 43.288994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725155, 35.332443, 42.870152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834152, 35.662529, 42.672253>,  <41.899551, 35.860580, 42.553513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834152, 35.662529, 42.672253>,  <41.725155, 35.332443, 42.870152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834152, 35.662529, 42.672253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154851, -0.469889, -0.869037,
		-0.949615, 0.313420, -0.000257,
		0.272494, 0.825211, -0.494747,
		41.915901, 35.910091, 42.523830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264603, 35.431580, 42.224800>,  <41.725155, 35.332443, 42.870152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264603, 35.431580, 42.224800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.599277, 35.633282, 42.139313>,  <41.800083, 35.754303, 42.088020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.599277, 35.633282, 42.139313>,  <41.264603, 35.431580, 42.224800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599277, 35.633282, 42.139313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003972, -0.384634, -0.923061,
		-0.547666, 0.773163, -0.319816,
		0.836688, 0.504258, -0.213722,
		41.850285, 35.784557, 42.075195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195610, 35.590145, 41.555882>,  <41.264603, 35.431580, 42.224800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195610, 35.590145, 41.555882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590813, 35.600792, 41.616711>,  <41.827934, 35.607178, 41.653206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590813, 35.600792, 41.616711>,  <41.195610, 35.590145, 41.555882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590813, 35.600792, 41.616711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152176, -0.333820, -0.930272,
		0.026006, 0.942261, -0.333868,
		0.988011, 0.026614, 0.152071,
		41.887215, 35.608776, 41.662331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444057, 35.717598, 40.884628>,  <41.195610, 35.590145, 41.555882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444057, 35.717598, 40.884628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781769, 35.607815, 41.068745>,  <41.984394, 35.541943, 41.179214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781769, 35.607815, 41.068745>,  <41.444057, 35.717598, 40.884628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781769, 35.607815, 41.068745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270435, -0.523321, -0.808084,
		0.462665, 0.806726, -0.367605,
		0.844278, -0.274460, 0.460289,
		42.035053, 35.525478, 41.206833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997452, 35.888313, 40.476830>,  <41.444057, 35.717598, 40.884628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997452, 35.888313, 40.476830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172195, 35.602211, 40.695030>,  <42.277042, 35.430550, 40.825951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172195, 35.602211, 40.695030>,  <41.997452, 35.888313, 40.476830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172195, 35.602211, 40.695030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454878, -0.347518, -0.819949,
		0.776042, 0.606337, 0.173537,
		0.436858, -0.715253, 0.545498,
		42.303253, 35.387634, 40.858681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670818, 35.831501, 40.243168>,  <41.997452, 35.888313, 40.476830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670818, 35.831501, 40.243168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589672, 35.475002, 40.405418>,  <42.540985, 35.261105, 40.502769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589672, 35.475002, 40.405418>,  <42.670818, 35.831501, 40.243168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589672, 35.475002, 40.405418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615826, -0.438181, -0.654795,
		0.761319, 0.116959, 0.637742,
		-0.202862, -0.891245, 0.405622,
		42.528812, 35.207630, 40.527103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345406, 35.580109, 40.308151>,  <42.670818, 35.831501, 40.243168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345406, 35.580109, 40.308151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060524, 35.299622, 40.295124>,  <42.889595, 35.131329, 40.287308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060524, 35.299622, 40.295124>,  <43.345406, 35.580109, 40.308151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060524, 35.299622, 40.295124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408146, -0.375897, -0.831937,
		0.571124, -0.605803, 0.553913,
		-0.712204, -0.701216, -0.032572,
		42.846863, 35.089256, 40.285351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710155, 34.979237, 40.224304>,  <43.345406, 35.580109, 40.308151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710155, 34.979237, 40.224304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337662, 34.880821, 40.116776>,  <43.114166, 34.821774, 40.052258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337662, 34.880821, 40.116776>,  <43.710155, 34.979237, 40.224304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337662, 34.880821, 40.116776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360324, -0.511415, -0.780142,
		0.054464, -0.823359, 0.564901,
		-0.931236, -0.246037, -0.268822,
		43.058292, 34.807011, 40.036129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913334, 34.433582, 39.775227>,  <43.710155, 34.979237, 40.224304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913334, 34.433582, 39.775227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522659, 34.492992, 39.713238>,  <43.288254, 34.528641, 39.676044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522659, 34.492992, 39.713238>,  <43.913334, 34.433582, 39.775227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522659, 34.492992, 39.713238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057095, -0.516181, -0.854574,
		-0.206920, -0.843503, 0.495669,
		-0.976691, 0.148528, -0.154968,
		43.229652, 34.537552, 39.666748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664482, 33.802696, 39.543980>,  <43.913334, 34.433582, 39.775227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664482, 33.802696, 39.543980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395645, 34.079227, 39.437878>,  <43.234344, 34.245148, 39.374218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395645, 34.079227, 39.437878>,  <43.664482, 33.802696, 39.543980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395645, 34.079227, 39.437878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020241, -0.375245, -0.926705,
		-0.740194, -0.617459, 0.266191,
		-0.672089, 0.691329, -0.265256,
		43.194019, 34.286625, 39.358299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158466, 33.441357, 39.225349>,  <43.664482, 33.802696, 39.543980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158466, 33.441357, 39.225349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179993, 33.814865, 39.083828>,  <43.192909, 34.038971, 38.998913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179993, 33.814865, 39.083828>,  <43.158466, 33.441357, 39.225349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179993, 33.814865, 39.083828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039768, -0.356043, -0.933623,
		-0.997759, 0.036173, -0.056295,
		0.053816, 0.933769, -0.353806,
		43.196136, 34.094997, 38.977688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691833, 33.439075, 38.646698>,  <43.158466, 33.441357, 39.225349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691833, 33.439075, 38.646698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956615, 33.735207, 38.599834>,  <43.115486, 33.912884, 38.571716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956615, 33.735207, 38.599834>,  <42.691833, 33.439075, 38.646698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956615, 33.735207, 38.599834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120871, -0.259704, -0.958094,
		-0.739730, 0.620057, -0.261397,
		0.661959, 0.740326, -0.117164,
		43.155205, 33.957306, 38.564686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518990, 33.672184, 37.996590>,  <42.691833, 33.439075, 38.646698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518990, 33.672184, 37.996590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878490, 33.835857, 38.059601>,  <43.094193, 33.934063, 38.097408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878490, 33.835857, 38.059601>,  <42.518990, 33.672184, 37.996590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878490, 33.835857, 38.059601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300145, -0.312263, -0.901335,
		-0.319621, 0.857357, -0.403461,
		0.898752, 0.409183, 0.157525,
		43.148117, 33.958611, 38.106857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641689, 34.158356, 37.358223>,  <42.518990, 33.672184, 37.996590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641689, 34.158356, 37.358223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980774, 34.041176, 37.535118>,  <43.184223, 33.970867, 37.641254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980774, 34.041176, 37.535118>,  <42.641689, 34.158356, 37.358223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980774, 34.041176, 37.535118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419088, -0.141226, -0.896895,
		0.325204, 0.945639, 0.003056,
		0.847707, -0.292954, 0.442234,
		43.235085, 33.953289, 37.667789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158401, 34.494801, 36.946083>,  <42.641689, 34.158356, 37.358223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158401, 34.494801, 36.946083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358124, 34.190987, 37.112839>,  <43.477959, 34.008698, 37.212894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358124, 34.190987, 37.112839>,  <43.158401, 34.494801, 36.946083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358124, 34.190987, 37.112839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425289, -0.204358, -0.881684,
		0.754864, 0.617532, 0.220985,
		0.499308, -0.759534, 0.416892,
		43.507915, 33.963127, 37.237907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718472, 34.524323, 36.610859>,  <43.158401, 34.494801, 36.946083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718472, 34.524323, 36.610859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730045, 34.155880, 36.766155>,  <43.736988, 33.934814, 36.859333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730045, 34.155880, 36.766155>,  <43.718472, 34.524323, 36.610859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730045, 34.155880, 36.766155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509087, -0.320677, -0.798747,
		0.860229, 0.220756, 0.459645,
		0.028931, -0.921104, 0.388239,
		43.738724, 33.879547, 36.882626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309875, 34.192524, 36.332829>,  <43.718472, 34.524323, 36.610859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309875, 34.192524, 36.332829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095753, 33.875690, 36.450169>,  <43.967281, 33.685589, 36.520573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095753, 33.875690, 36.450169>,  <44.309875, 34.192524, 36.332829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095753, 33.875690, 36.450169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294045, -0.500322, -0.814380,
		0.791826, -0.349683, 0.500733,
		-0.535303, -0.792085, 0.293346,
		43.935162, 33.638065, 36.538174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843140, 33.629498, 36.447948>,  <44.309875, 34.192524, 36.332829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.843140, 33.629498, 36.447948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477200, 33.482864, 36.380226>,  <44.257637, 33.394882, 36.339592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477200, 33.482864, 36.380226>,  <44.843140, 33.629498, 36.447948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477200, 33.482864, 36.380226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341231, -0.477687, -0.809553,
		0.215894, -0.798392, 0.562102,
		-0.914850, -0.366585, -0.169307,
		44.202744, 33.372890, 36.329433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273727, 34.158276, 36.377407>,  <44.843140, 33.629498, 36.447948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273727, 34.158276, 36.377407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628071, 34.343319, 36.363312>,  <45.840679, 34.454346, 36.354855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628071, 34.343319, 36.363312>,  <45.273727, 34.158276, 36.377407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628071, 34.343319, 36.363312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154460, -0.222461, 0.962628,
		0.437482, -0.858199, -0.268524,
		0.885863, 0.462608, -0.035234,
		45.893829, 34.482101, 36.352741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898659, 33.710938, 36.626068>,  <45.273727, 34.158276, 36.377407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898659, 33.710938, 36.626068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984241, 34.098396, 36.676586>,  <46.035591, 34.330872, 36.706898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984241, 34.098396, 36.676586>,  <45.898659, 33.710938, 36.626068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984241, 34.098396, 36.676586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170114, -0.164257, 0.971638,
		0.961917, -0.186402, -0.199923,
		0.213954, 0.968646, 0.126292,
		46.048428, 34.388988, 36.714474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584465, 33.719009, 37.053967>,  <45.898659, 33.710938, 36.626068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584465, 33.719009, 37.053967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.422977, 34.082481, 37.096504>,  <46.326084, 34.300564, 37.122025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.422977, 34.082481, 37.096504>,  <46.584465, 33.719009, 37.053967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422977, 34.082481, 37.096504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095418, -0.073780, 0.992699,
		0.909892, 0.410923, -0.056917,
		-0.403723, 0.908680, 0.106341,
		46.301861, 34.355083, 37.128407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924557, 33.998703, 37.649628>,  <46.584465, 33.719009, 37.053967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924557, 33.998703, 37.649628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.591351, 34.218201, 37.621426>,  <46.391426, 34.349899, 37.604504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.591351, 34.218201, 37.621426>,  <46.924557, 33.998703, 37.649628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591351, 34.218201, 37.621426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017937, 0.100577, 0.994768,
		0.552960, 0.829921, -0.073939,
		-0.833015, 0.548740, -0.070501,
		46.341446, 34.382824, 37.600277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021503, 34.598450, 38.172550>,  <46.924557, 33.998703, 37.649628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021503, 34.598450, 38.172550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635292, 34.571846, 38.071888>,  <46.403564, 34.555885, 38.011490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635292, 34.571846, 38.071888>,  <47.021503, 34.598450, 38.172550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635292, 34.571846, 38.071888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254436, 0.037133, 0.966376,
		-0.054926, 0.997095, -0.052775,
		-0.965528, -0.066507, -0.251657,
		46.345634, 34.551895, 37.996391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680820, 35.061714, 38.588928>,  <47.021503, 34.598450, 38.172550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680820, 35.061714, 38.588928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.373081, 34.838120, 38.465229>,  <46.188438, 34.703964, 38.391010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.373081, 34.838120, 38.465229>,  <46.680820, 35.061714, 38.588928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373081, 34.838120, 38.465229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407052, 0.055858, 0.911696,
		-0.492351, 0.827294, -0.270511,
		-0.769350, -0.558986, -0.309249,
		46.142277, 34.670425, 38.372456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946751, 35.427475, 38.710739>,  <46.680820, 35.061714, 38.588928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946751, 35.427475, 38.710739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879002, 35.033264, 38.713383>,  <45.838352, 34.796738, 38.714970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879002, 35.033264, 38.713383>,  <45.946751, 35.427475, 38.710739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879002, 35.033264, 38.713383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412173, 0.076926, 0.907852,
		-0.895223, 0.151045, -0.419238,
		-0.169377, -0.985529, 0.006609,
		45.828190, 34.737606, 38.715366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329651, 35.360069, 38.949348>,  <45.946751, 35.427475, 38.710739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329651, 35.360069, 38.949348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457077, 34.984200, 38.999195>,  <45.533531, 34.758678, 39.029102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457077, 34.984200, 38.999195>,  <45.329651, 35.360069, 38.949348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457077, 34.984200, 38.999195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261247, 0.039338, 0.964470,
		-0.911189, -0.339804, -0.232955,
		0.318567, -0.939673, 0.124617,
		45.552647, 34.702297, 39.036579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808876, 34.924332, 39.209911>,  <45.329651, 35.360069, 38.949348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808876, 34.924332, 39.209911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150993, 34.744389, 39.312748>,  <45.356266, 34.636421, 39.374451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150993, 34.744389, 39.312748>,  <44.808876, 34.924332, 39.209911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150993, 34.744389, 39.312748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351709, -0.139703, 0.925626,
		-0.380484, -0.882106, -0.277706,
		0.855297, -0.449858, 0.257090,
		45.407581, 34.609432, 39.389874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674370, 34.266338, 39.555378>,  <44.808876, 34.924332, 39.209911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674370, 34.266338, 39.555378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.048832, 34.345947, 39.671307>,  <45.273510, 34.393711, 39.740864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.048832, 34.345947, 39.671307>,  <44.674370, 34.266338, 39.555378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048832, 34.345947, 39.671307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210636, -0.342523, 0.915593,
		0.281491, -0.918188, -0.278736,
		0.936160, 0.199020, 0.289821,
		45.329681, 34.405655, 39.758251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876514, 33.686722, 39.818817>,  <44.674370, 34.266338, 39.555378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876514, 33.686722, 39.818817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124542, 33.956203, 39.979633>,  <45.273357, 34.117893, 40.076122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124542, 33.956203, 39.979633>,  <44.876514, 33.686722, 39.818817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124542, 33.956203, 39.979633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169383, -0.385406, 0.907068,
		0.766045, -0.630543, -0.124864,
		0.620068, 0.673704, 0.402041,
		45.310562, 34.158314, 40.100246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271526, 33.306293, 40.362415>,  <44.876514, 33.686722, 39.818817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271526, 33.306293, 40.362415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280041, 33.694935, 40.456684>,  <45.285149, 33.928120, 40.513245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280041, 33.694935, 40.456684>,  <45.271526, 33.306293, 40.362415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280041, 33.694935, 40.456684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147359, -0.230103, 0.961945,
		0.988854, -0.055207, 0.138275,
		0.021288, 0.971599, 0.235673,
		45.286427, 33.986416, 40.527386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712593, 33.323074, 40.967720>,  <45.271526, 33.306293, 40.362415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712593, 33.323074, 40.967720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541111, 33.683956, 40.986671>,  <45.438221, 33.900486, 40.998043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541111, 33.683956, 40.986671>,  <45.712593, 33.323074, 40.967720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541111, 33.683956, 40.986671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050932, -0.076490, 0.995769,
		0.902009, 0.424475, 0.078743,
		-0.428702, 0.902203, 0.047375,
		45.412502, 33.954617, 41.000885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097580, 33.703976, 41.493847>,  <45.712593, 33.323074, 40.967720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097580, 33.703976, 41.493847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740902, 33.879181, 41.448215>,  <45.526894, 33.984306, 41.420837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740902, 33.879181, 41.448215>,  <46.097580, 33.703976, 41.493847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740902, 33.879181, 41.448215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079955, 0.095639, 0.992200,
		0.445510, 0.893865, -0.050259,
		-0.891699, 0.438017, -0.114077,
		45.473392, 34.010586, 41.413994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115471, 34.303940, 41.929024>,  <46.097580, 33.703976, 41.493847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115471, 34.303940, 41.929024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733044, 34.208855, 41.860409>,  <45.503586, 34.151806, 41.819241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733044, 34.208855, 41.860409>,  <46.115471, 34.303940, 41.929024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733044, 34.208855, 41.860409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206096, 0.128924, 0.970002,
		-0.208464, 0.962742, -0.172251,
		-0.956069, -0.237711, -0.171541,
		45.446224, 34.137543, 41.808945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733112, 34.844212, 42.228413>,  <46.115471, 34.303940, 41.929024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733112, 34.844212, 42.228413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454933, 34.559551, 42.188599>,  <45.288025, 34.388756, 42.164711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454933, 34.559551, 42.188599>,  <45.733112, 34.844212, 42.228413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454933, 34.559551, 42.188599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227707, 0.086872, 0.969847,
		-0.681546, 0.697141, -0.222462,
		-0.695445, -0.711652, -0.099536,
		45.246300, 34.346054, 42.158737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292568, 35.109028, 42.662884>,  <45.733112, 34.844212, 42.228413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292568, 35.109028, 42.662884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.120663, 34.757801, 42.578693>,  <45.017521, 34.547066, 42.528179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.120663, 34.757801, 42.578693>,  <45.292568, 35.109028, 42.662884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120663, 34.757801, 42.578693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404008, -0.021469, 0.914503,
		-0.807514, 0.478055, -0.345520,
		-0.429765, -0.878068, -0.210474,
		44.991734, 34.494381, 42.515553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460228, 35.104351, 42.697803>,  <45.292568, 35.109028, 42.662884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460228, 35.104351, 42.697803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606171, 34.738705, 42.768543>,  <44.693737, 34.519318, 42.810989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606171, 34.738705, 42.768543>,  <44.460228, 35.104351, 42.697803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606171, 34.738705, 42.768543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556776, -0.061973, 0.828348,
		-0.746243, -0.400698, -0.531567,
		0.364860, -0.914112, 0.176851,
		44.715630, 34.464470, 42.821598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922363, 34.714649, 42.875957>,  <44.460228, 35.104351, 42.697803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922363, 34.714649, 42.875957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219032, 34.490154, 43.022892>,  <44.397034, 34.355457, 43.111053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219032, 34.490154, 43.022892>,  <43.922363, 34.714649, 42.875957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219032, 34.490154, 43.022892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552312, -0.200232, 0.809233,
		-0.380617, -0.803071, -0.458484,
		0.741675, -0.561234, 0.367334,
		44.441536, 34.321785, 43.133091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618549, 34.209873, 43.163605>,  <43.922363, 34.714649, 42.875957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618549, 34.209873, 43.163605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978596, 34.179707, 43.335236>,  <44.194622, 34.161606, 43.438213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978596, 34.179707, 43.335236>,  <43.618549, 34.209873, 43.163605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978596, 34.179707, 43.335236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434232, -0.234807, 0.869660,
		0.035162, -0.969112, -0.244102,
		0.900114, -0.075418, 0.429076,
		44.248631, 34.157082, 43.463959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.503117, 37.701641, 36.579086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122944, 37.588509, 36.630745>,  <35.894840, 37.520630, 36.661739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122944, 37.588509, 36.630745>,  <36.503117, 37.701641, 36.579086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122944, 37.588509, 36.630745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278273, -0.959067, -0.052481,
		0.138702, -0.013942, 0.990236,
		-0.950434, -0.282836, 0.129145,
		35.837814, 37.503658, 36.669487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622131, 37.150242, 37.006760>,  <36.503117, 37.701641, 36.579086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622131, 37.150242, 37.006760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243820, 37.127331, 36.878872>,  <36.016834, 37.113583, 36.802139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243820, 37.127331, 36.878872>,  <36.622131, 37.150242, 37.006760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243820, 37.127331, 36.878872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093402, -0.990713, -0.098811,
		-0.311088, -0.123316, 0.942346,
		-0.945780, -0.057278, -0.319717,
		35.960087, 37.110146, 36.782955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225628, 36.612556, 37.511417>,  <36.622131, 37.150242, 37.006760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225628, 36.612556, 37.511417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075279, 36.656109, 37.143318>,  <35.985069, 36.682240, 36.922459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075279, 36.656109, 37.143318>,  <36.225628, 36.612556, 37.511417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075279, 36.656109, 37.143318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028296, -0.991261, -0.128841,
		-0.926238, -0.074468, 0.369510,
		-0.375875, 0.108882, -0.920251,
		35.962517, 36.688774, 36.867241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538246, 36.101624, 37.464561>,  <36.225628, 36.612556, 37.511417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538246, 36.101624, 37.464561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644703, 36.193581, 37.090115>,  <35.708576, 36.248756, 36.865448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644703, 36.193581, 37.090115>,  <35.538246, 36.101624, 37.464561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644703, 36.193581, 37.090115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019253, -0.969683, -0.243608,
		-0.963741, 0.082858, -0.253647,
		0.266142, 0.229892, -0.936119,
		35.724545, 36.262547, 36.809280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231251, 35.710716, 37.060604>,  <35.538246, 36.101624, 37.464561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231251, 35.710716, 37.060604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496666, 35.804314, 36.776360>,  <35.655914, 35.860474, 36.605812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496666, 35.804314, 36.776360>,  <35.231251, 35.710716, 37.060604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496666, 35.804314, 36.776360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136621, -0.971757, -0.192414,
		-0.735564, 0.030589, -0.676765,
		0.663537, 0.233993, -0.710610,
		35.695728, 35.874512, 36.563175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911541, 35.393768, 36.401993>,  <35.231251, 35.710716, 37.060604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911541, 35.393768, 36.401993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301067, 35.469997, 36.352413>,  <35.534782, 35.515736, 36.322666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301067, 35.469997, 36.352413>,  <34.911541, 35.393768, 36.401993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301067, 35.469997, 36.352413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168926, -0.971469, -0.166469,
		-0.152140, 0.141171, -0.978225,
		0.973816, 0.190574, -0.123952,
		35.593212, 35.527168, 36.315228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109116, 35.052719, 35.869610>,  <34.911541, 35.393768, 36.401993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109116, 35.052719, 35.869610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480198, 35.092613, 36.013512>,  <35.702847, 35.116550, 36.099854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480198, 35.092613, 36.013512>,  <35.109116, 35.052719, 35.869610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480198, 35.092613, 36.013512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159445, -0.977191, -0.140265,
		0.337562, 0.187486, -0.922443,
		0.927701, 0.099731, 0.359756,
		35.758507, 35.122532, 36.121437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501701, 34.554234, 35.390244>,  <35.109116, 35.052719, 35.869610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501701, 34.554234, 35.390244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724148, 34.602207, 35.719208>,  <35.857616, 34.630989, 35.916584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724148, 34.602207, 35.719208>,  <35.501701, 34.554234, 35.390244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724148, 34.602207, 35.719208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169996, -0.985027, 0.028692,
		0.813534, 0.123850, -0.568176,
		0.556116, 0.119930, 0.822407,
		35.890984, 34.638187, 35.965931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169888, 34.280422, 35.277409>,  <35.501701, 34.554234, 35.390244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169888, 34.280422, 35.277409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117016, 34.268482, 35.673717>,  <36.085293, 34.261318, 35.911503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117016, 34.268482, 35.673717>,  <36.169888, 34.280422, 35.277409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117016, 34.268482, 35.673717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204728, -0.978816, -0.002178,
		0.969853, 0.202552, 0.135494,
		-0.132182, -0.029852, 0.990776,
		36.077362, 34.259525, 35.970951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790882, 34.061855, 35.587547>,  <36.169888, 34.280422, 35.277409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790882, 34.061855, 35.587547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505390, 33.978680, 35.855083>,  <36.334095, 33.928772, 36.015606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505390, 33.978680, 35.855083>,  <36.790882, 34.061855, 35.587547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505390, 33.978680, 35.855083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296757, -0.954747, 0.019844,
		0.634450, 0.212647, 0.743138,
		-0.713729, -0.207942, 0.668844,
		36.291271, 33.916298, 36.055737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081482, 33.634598, 36.038929>,  <36.790882, 34.061855, 35.587547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081482, 33.634598, 36.038929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692963, 33.553242, 36.088257>,  <36.459850, 33.504429, 36.117855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692963, 33.553242, 36.088257>,  <37.081482, 33.634598, 36.038929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692963, 33.553242, 36.088257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200646, -0.979061, -0.034375,
		0.127733, -0.008644, 0.991771,
		-0.971301, -0.203386, 0.123324,
		36.401573, 33.492226, 36.125256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048756, 33.104343, 36.584007>,  <37.081482, 33.634598, 36.038929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048756, 33.104343, 36.584007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695004, 33.078587, 36.399086>,  <36.482750, 33.063133, 36.288136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695004, 33.078587, 36.399086>,  <37.048756, 33.104343, 36.584007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695004, 33.078587, 36.399086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079356, -0.996762, -0.012982,
		-0.459967, -0.048167, 0.886629,
		-0.884383, -0.064388, -0.462300,
		36.429688, 33.059269, 36.260395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508698, 32.461136, 36.670349>,  <37.048756, 33.104343, 36.584007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508698, 32.461136, 36.670349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378117, 32.369820, 37.037243>,  <37.299767, 32.315029, 37.257378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378117, 32.369820, 37.037243>,  <37.508698, 32.461136, 36.670349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378117, 32.369820, 37.037243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146922, -0.946346, -0.287825,
		0.933725, -0.228723, 0.275396,
		-0.326452, -0.228288, 0.917232,
		37.280182, 32.301334, 37.312412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894718, 31.944334, 36.990620>,  <37.508698, 32.461136, 36.670349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894718, 31.944334, 36.990620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517246, 31.945862, 37.122955>,  <37.290764, 31.946777, 37.202358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517246, 31.945862, 37.122955>,  <37.894718, 31.944334, 36.990620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517246, 31.945862, 37.122955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108897, -0.947806, -0.299674,
		0.312429, -0.318824, 0.894840,
		-0.943679, 0.003818, 0.330841,
		37.234142, 31.947008, 37.222206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355682, 31.843084, 37.458305>,  <37.894718, 31.944334, 36.990620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355682, 31.843084, 37.458305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644112, 31.843088, 37.735447>,  <38.817169, 31.843090, 37.901733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644112, 31.843088, 37.735447>,  <38.355682, 31.843084, 37.458305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644112, 31.843088, 37.735447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152079, 0.975616, 0.158257,
		-0.675958, -0.219484, 0.703496,
		0.721077, 0.000011, 0.692855,
		38.860435, 31.843092, 37.943302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079937, 32.296635, 37.953747>,  <38.355682, 31.843084, 37.458305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079937, 32.296635, 37.953747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478588, 32.293961, 37.986450>,  <38.717781, 32.292355, 38.006073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478588, 32.293961, 37.986450>,  <38.079937, 32.296635, 37.953747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478588, 32.293961, 37.986450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009945, 0.979477, 0.201311,
		-0.081430, -0.201446, 0.976109,
		0.996629, -0.006685, 0.081762,
		38.777576, 32.291954, 38.010979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226582, 32.432934, 38.643982>,  <38.079937, 32.296635, 37.953747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226582, 32.432934, 38.643982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549850, 32.537365, 38.432816>,  <38.743813, 32.600025, 38.306114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549850, 32.537365, 38.432816>,  <38.226582, 32.432934, 38.643982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549850, 32.537365, 38.432816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099291, 0.823146, 0.559081,
		0.580517, -0.504251, 0.639321,
		0.808171, 0.261077, -0.527918,
		38.792301, 32.615688, 38.274441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636234, 32.831680, 39.134346>,  <38.226582, 32.432934, 38.643982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636234, 32.831680, 39.134346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800961, 32.906017, 38.777500>,  <38.899796, 32.950619, 38.563393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800961, 32.906017, 38.777500>,  <38.636234, 32.831680, 39.134346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800961, 32.906017, 38.777500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038025, 0.974627, 0.220579,
		0.910472, -0.124761, 0.394302,
		0.411818, 0.185838, -0.892116,
		38.924507, 32.961769, 38.509865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113098, 33.209949, 39.306427>,  <38.636234, 32.831680, 39.134346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113098, 33.209949, 39.306427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026932, 33.286533, 38.923401>,  <38.975231, 33.332485, 38.693584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026932, 33.286533, 38.923401>,  <39.113098, 33.209949, 39.306427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026932, 33.286533, 38.923401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057885, 0.981370, 0.183199,
		0.974805, -0.015964, -0.222489,
		-0.215419, 0.191462, -0.957568,
		38.962307, 33.343971, 38.636131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560623, 33.735287, 39.164330>,  <39.113098, 33.209949, 39.306427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560623, 33.735287, 39.164330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290226, 33.779652, 38.872925>,  <39.127987, 33.806271, 38.698082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290226, 33.779652, 38.872925>,  <39.560623, 33.735287, 39.164330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290226, 33.779652, 38.872925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067807, 0.975052, 0.211368,
		0.733783, 0.192281, -0.651606,
		-0.675992, 0.110915, -0.728514,
		39.087429, 33.812927, 38.654369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690102, 34.389477, 38.773830>,  <39.560623, 33.735287, 39.164330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690102, 34.389477, 38.773830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302135, 34.312847, 38.713737>,  <39.069355, 34.266869, 38.677681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302135, 34.312847, 38.713737>,  <39.690102, 34.389477, 38.773830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302135, 34.312847, 38.713737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224286, 0.943140, 0.245322,
		0.094695, 0.271636, -0.957730,
		-0.969912, -0.191575, -0.150235,
		39.011162, 34.255375, 38.668667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493549, 35.017330, 38.465153>,  <39.690102, 34.389477, 38.773830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493549, 35.017330, 38.465153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140499, 34.842628, 38.534679>,  <38.928669, 34.737808, 38.576393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140499, 34.842628, 38.534679>,  <39.493549, 35.017330, 38.465153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140499, 34.842628, 38.534679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415251, 0.897728, 0.147143,
		-0.220303, 0.057696, -0.973724,
		-0.882629, -0.436756, 0.173814,
		38.875710, 34.711601, 38.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937691, 35.404270, 38.040005>,  <39.493549, 35.017330, 38.465153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937691, 35.404270, 38.040005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773624, 35.222603, 38.356358>,  <38.675182, 35.113602, 38.546169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773624, 35.222603, 38.356358>,  <38.937691, 35.404270, 38.040005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773624, 35.222603, 38.356358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571257, 0.803933, 0.165401,
		-0.710934, -0.383953, -0.589197,
		-0.410169, -0.454173, 0.790879,
		38.650574, 35.086349, 38.593620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316853, 35.568192, 37.924095>,  <38.937691, 35.404270, 38.040005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316853, 35.568192, 37.924095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322884, 35.445259, 38.304688>,  <38.326500, 35.371502, 38.533043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322884, 35.445259, 38.304688>,  <38.316853, 35.568192, 37.924095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322884, 35.445259, 38.304688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557888, 0.787116, 0.263076,
		-0.829779, -0.534788, -0.159588,
		0.015075, -0.307327, 0.951485,
		38.327408, 35.353062, 38.590134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667080, 35.797859, 38.068886>,  <38.316853, 35.568192, 37.924095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667080, 35.797859, 38.068886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832329, 35.749496, 38.429932>,  <37.931477, 35.720478, 38.646561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832329, 35.749496, 38.429932>,  <37.667080, 35.797859, 38.068886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832329, 35.749496, 38.429932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348620, 0.894651, 0.279396,
		-0.841307, -0.430094, 0.327448,
		0.413118, -0.120903, 0.902616,
		37.956264, 35.713226, 38.700718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146206, 35.881828, 38.556675>,  <37.667080, 35.797859, 38.068886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146206, 35.881828, 38.556675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480980, 35.961746, 38.760487>,  <37.681847, 36.009697, 38.882774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480980, 35.961746, 38.760487>,  <37.146206, 35.881828, 38.556675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480980, 35.961746, 38.760487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422493, 0.827653, 0.369446,
		-0.347899, -0.524475, 0.777105,
		0.836939, 0.199791, 0.509527,
		37.732063, 36.021683, 38.913345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891182, 36.016788, 39.344170>,  <37.146206, 35.881828, 38.556675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891182, 36.016788, 39.344170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241764, 36.199226, 39.282444>,  <37.452114, 36.308689, 39.245411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241764, 36.199226, 39.282444>,  <36.891182, 36.016788, 39.344170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241764, 36.199226, 39.282444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350599, 0.824196, 0.444726,
		0.330017, -0.335681, 0.882274,
		0.876453, 0.456091, -0.154309,
		37.504700, 36.336052, 39.236153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965099, 36.563854, 39.941578>,  <36.891182, 36.016788, 39.344170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965099, 36.563854, 39.941578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232815, 36.690159, 39.672554>,  <37.393444, 36.765942, 39.511139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232815, 36.690159, 39.672554>,  <36.965099, 36.563854, 39.941578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232815, 36.690159, 39.672554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076039, 0.929559, 0.360747,
		0.739097, -0.190304, 0.646158,
		0.669294, 0.315760, -0.672564,
		37.433601, 36.784885, 39.470783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025826, 36.338619, 40.595486>,  <36.965099, 36.563854, 39.941578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025826, 36.338619, 40.595486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707973, 36.296406, 40.834625>,  <36.517262, 36.271080, 40.978107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707973, 36.296406, 40.834625>,  <37.025826, 36.338619, 40.595486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707973, 36.296406, 40.834625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026502, -0.977807, -0.207826,
		0.606509, -0.180990, 0.774202,
		-0.794635, -0.105531, 0.597845,
		36.469582, 36.264748, 41.013977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187912, 35.726456, 40.815731>,  <37.025826, 36.338619, 40.595486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187912, 35.726456, 40.815731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802250, 35.770912, 40.912109>,  <36.570854, 35.797585, 40.969936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802250, 35.770912, 40.912109>,  <37.187912, 35.726456, 40.815731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802250, 35.770912, 40.912109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157644, -0.970347, -0.183236,
		0.213433, -0.214651, 0.953085,
		-0.964155, 0.111140, 0.240942,
		36.513004, 35.804253, 40.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026047, 35.287209, 41.275566>,  <37.187912, 35.726456, 40.815731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026047, 35.287209, 41.275566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660851, 35.364315, 41.131733>,  <36.441734, 35.410580, 41.045433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660851, 35.364315, 41.131733>,  <37.026047, 35.287209, 41.275566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660851, 35.364315, 41.131733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124205, -0.970832, -0.205083,
		-0.388625, -0.142576, 0.910298,
		-0.912986, 0.192763, -0.359581,
		36.386955, 35.422146, 41.023857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494476, 34.922989, 41.678280>,  <37.026047, 35.287209, 41.275566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494476, 34.922989, 41.678280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363834, 35.001156, 41.308384>,  <36.285450, 35.048058, 41.086449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363834, 35.001156, 41.308384>,  <36.494476, 34.922989, 41.678280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363834, 35.001156, 41.308384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188874, -0.972152, -0.138734,
		-0.926096, 0.129348, 0.354421,
		-0.326606, 0.195422, -0.924737,
		36.265854, 35.059784, 41.030964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020927, 34.392578, 41.514793>,  <36.494476, 34.922989, 41.678280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020927, 34.392578, 41.514793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040920, 34.527748, 41.138855>,  <36.052917, 34.608852, 40.913292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040920, 34.527748, 41.138855>,  <36.020927, 34.392578, 41.514793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040920, 34.527748, 41.138855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271431, -0.901006, -0.338399,
		-0.961159, 0.272018, 0.046686,
		0.049987, 0.337927, -0.939844,
		36.055916, 34.629128, 40.856903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581532, 33.912361, 41.173466>,  <36.020927, 34.392578, 41.514793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581532, 33.912361, 41.173466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747898, 34.110413, 40.868347>,  <35.847717, 34.229244, 40.685276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747898, 34.110413, 40.868347>,  <35.581532, 33.912361, 41.173466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747898, 34.110413, 40.868347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199138, -0.768842, -0.607639,
		-0.887331, 0.404629, -0.221175,
		0.415917, 0.495133, -0.762795,
		35.872673, 34.258953, 40.639507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114201, 33.857792, 40.631760>,  <35.581532, 33.912361, 41.173466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114201, 33.857792, 40.631760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479725, 33.929745, 40.486107>,  <35.699039, 33.972916, 40.398716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479725, 33.929745, 40.486107>,  <35.114201, 33.857792, 40.631760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479725, 33.929745, 40.486107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110506, -0.752621, -0.649115,
		-0.390816, 0.633407, -0.667876,
		0.913811, 0.179881, -0.364132,
		35.753868, 33.983707, 40.376869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105507, 34.031616, 39.876667>,  <35.114201, 33.857792, 40.631760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105507, 34.031616, 39.876667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463497, 33.877773, 39.967087>,  <35.678291, 33.785469, 40.021339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463497, 33.877773, 39.967087>,  <35.105507, 34.031616, 39.876667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463497, 33.877773, 39.967087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090618, -0.652867, -0.752033,
		0.436815, 0.652567, -0.619152,
		0.894975, -0.384606, 0.226048,
		35.731991, 33.762390, 40.034901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460491, 33.873928, 39.213280>,  <35.105507, 34.031616, 39.876667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460491, 33.873928, 39.213280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651424, 33.659470, 39.491760>,  <35.765984, 33.530796, 39.658848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651424, 33.659470, 39.491760>,  <35.460491, 33.873928, 39.213280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651424, 33.659470, 39.491760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032071, -0.781136, -0.623537,
		0.878134, 0.319965, -0.355671,
		0.477338, -0.536143, 0.696204,
		35.794624, 33.498627, 39.700623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027672, 33.440422, 38.844425>,  <35.460491, 33.873928, 39.213280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027672, 33.440422, 38.844425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979572, 33.232185, 39.182545>,  <35.950714, 33.107243, 39.385418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979572, 33.232185, 39.182545>,  <36.027672, 33.440422, 38.844425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979572, 33.232185, 39.182545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082117, -0.843342, -0.531066,
		0.989342, -0.133272, 0.058659,
		-0.120246, -0.520589, 0.845298,
		35.943497, 33.076008, 39.436134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365940, 32.764835, 38.748020>,  <36.027672, 33.440422, 38.844425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365940, 32.764835, 38.748020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142624, 32.719963, 39.076832>,  <36.008636, 32.693039, 39.274120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142624, 32.719963, 39.076832>,  <36.365940, 32.764835, 38.748020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142624, 32.719963, 39.076832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362407, -0.858314, -0.363261,
		0.746309, -0.500713, 0.438531,
		-0.558287, -0.112178, 0.822029,
		35.975140, 32.686310, 39.323441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524670, 32.164196, 39.039162>,  <36.365940, 32.764835, 38.748020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524670, 32.164196, 39.039162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147617, 32.255981, 39.136154>,  <35.921387, 32.311050, 39.194351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147617, 32.255981, 39.136154>,  <36.524670, 32.164196, 39.039162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147617, 32.255981, 39.136154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316859, -0.843653, -0.433416,
		0.105118, -0.485383, 0.867959,
		-0.942629, 0.229461, 0.242481,
		35.864830, 32.324821, 39.208897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.209431, 39.750515, 42.834610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870319, 39.580811, 42.707314>,  <35.666855, 39.478989, 42.630936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870319, 39.580811, 42.707314>,  <36.209431, 39.750515, 42.834610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870319, 39.580811, 42.707314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410391, -0.904871, 0.113080,
		-0.335941, -0.034736, 0.941243,
		-0.847775, -0.424266, -0.318239,
		35.615986, 39.453529, 42.611843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042198, 39.202438, 43.352436>,  <36.209431, 39.750515, 42.834610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042198, 39.202438, 43.352436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840633, 39.112965, 43.018719>,  <35.719696, 39.059280, 42.818489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840633, 39.112965, 43.018719>,  <36.042198, 39.202438, 43.352436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840633, 39.112965, 43.018719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336897, -0.940286, 0.048616,
		-0.795346, -0.256571, 0.549178,
		-0.503911, -0.223682, -0.834290,
		35.689461, 39.045860, 42.768433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110546, 38.467628, 43.315655>,  <36.042198, 39.202438, 43.352436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110546, 38.467628, 43.315655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.940224, 38.532036, 42.959507>,  <35.838032, 38.570683, 42.745819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.940224, 38.532036, 42.959507>,  <36.110546, 38.467628, 43.315655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940224, 38.532036, 42.959507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301362, -0.902615, -0.307356,
		-0.853155, -0.399198, 0.335810,
		-0.425803, 0.161022, -0.890373,
		35.812485, 38.580341, 42.692394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837433, 37.829369, 43.087597>,  <36.110546, 38.467628, 43.315655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837433, 37.829369, 43.087597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867336, 38.031048, 42.743458>,  <35.885277, 38.152058, 42.536976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867336, 38.031048, 42.743458>,  <35.837433, 37.829369, 43.087597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867336, 38.031048, 42.743458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233886, -0.847559, -0.476383,
		-0.969385, -0.165609, -0.181288,
		0.074759, 0.504200, -0.860345,
		35.889763, 38.182308, 42.485355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230221, 37.714855, 42.551910>,  <35.837433, 37.829369, 43.087597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230221, 37.714855, 42.551910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554996, 37.834217, 42.351223>,  <35.749863, 37.905834, 42.230812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554996, 37.834217, 42.351223>,  <35.230221, 37.714855, 42.551910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554996, 37.834217, 42.351223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008016, -0.853692, -0.520716,
		-0.583691, 0.426810, -0.690752,
		0.811936, 0.298400, -0.501714,
		35.798576, 37.923737, 42.200710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139408, 37.524452, 41.786003>,  <35.230221, 37.714855, 42.551910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139408, 37.524452, 41.786003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.535671, 37.555260, 41.831036>,  <35.773430, 37.573746, 41.858055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.535671, 37.555260, 41.831036>,  <35.139408, 37.524452, 41.786003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535671, 37.555260, 41.831036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125152, -0.841486, -0.525585,
		0.054253, 0.534762, -0.843260,
		0.990653, 0.077022, 0.112580,
		35.832867, 37.578365, 41.864811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342880, 37.496693, 41.087059>,  <35.139408, 37.524452, 41.786003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342880, 37.496693, 41.087059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640415, 37.419281, 41.342953>,  <35.818935, 37.372833, 41.496490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640415, 37.419281, 41.342953>,  <35.342880, 37.496693, 41.087059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640415, 37.419281, 41.342953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180914, -0.863131, -0.471461,
		0.643414, 0.466425, -0.607014,
		0.743833, -0.193527, 0.639734,
		35.863564, 37.361221, 41.534874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980602, 37.305168, 40.584080>,  <35.342880, 37.496693, 41.087059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980602, 37.305168, 40.584080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.082115, 37.171734, 40.947247>,  <36.143024, 37.091675, 41.165146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.082115, 37.171734, 40.947247>,  <35.980602, 37.305168, 40.584080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082115, 37.171734, 40.947247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252654, -0.883200, -0.395125,
		0.933681, 0.329665, -0.139859,
		0.253782, -0.333585, 0.907918,
		36.158249, 37.071659, 41.219624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601215, 36.942268, 40.489506>,  <35.980602, 37.305168, 40.584080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601215, 36.942268, 40.489506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465431, 36.792400, 40.834618>,  <36.383961, 36.702480, 41.041683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465431, 36.792400, 40.834618>,  <36.601215, 36.942268, 40.489506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465431, 36.792400, 40.834618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247395, -0.920513, -0.302408,
		0.907503, 0.110791, 0.405170,
		-0.339461, -0.374673, 0.862778,
		36.363594, 36.679996, 41.093452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364841, 37.125816, 40.249744>,  <36.601215, 36.942268, 40.489506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364841, 37.125816, 40.249744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382545, 37.176685, 39.853386>,  <37.393169, 37.207207, 39.615570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382545, 37.176685, 39.853386>,  <37.364841, 37.125816, 40.249744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382545, 37.176685, 39.853386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138428, 0.983077, 0.119989,
		0.989383, 0.131856, 0.061118,
		0.044263, 0.127176, -0.990892,
		37.395824, 37.214840, 39.556118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857418, 37.654404, 40.114162>,  <37.364841, 37.125816, 40.249744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857418, 37.654404, 40.114162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653515, 37.653118, 39.770039>,  <37.531174, 37.652348, 39.563564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653515, 37.653118, 39.770039>,  <37.857418, 37.654404, 40.114162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653515, 37.653118, 39.770039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051555, 0.998082, -0.034275,
		0.858773, -0.061825, -0.508612,
		-0.509755, -0.003213, -0.860313,
		37.500587, 37.652153, 39.511944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238567, 38.120201, 39.652641>,  <37.857418, 37.654404, 40.114162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238567, 38.120201, 39.652641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861183, 38.102558, 39.521225>,  <37.634754, 38.091972, 39.442375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861183, 38.102558, 39.521225>,  <38.238567, 38.120201, 39.652641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861183, 38.102558, 39.521225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053912, 0.998329, 0.020796,
		0.327079, 0.037332, -0.944259,
		-0.943458, -0.044105, -0.328545,
		37.578144, 38.089325, 39.422661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134838, 38.627029, 39.209885>,  <38.238567, 38.120201, 39.652641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134838, 38.627029, 39.209885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758362, 38.543697, 39.316292>,  <37.532478, 38.493698, 39.380135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758362, 38.543697, 39.316292>,  <38.134838, 38.627029, 39.209885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758362, 38.543697, 39.316292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239671, 0.966581, -0.090987,
		-0.238174, -0.149393, -0.959664,
		-0.941186, -0.208333, 0.266020,
		37.476006, 38.481197, 39.396099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852928, 39.104660, 38.916512>,  <38.134838, 38.627029, 39.209885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852928, 39.104660, 38.916512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.538437, 38.965328, 39.120674>,  <37.349743, 38.881729, 39.243172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.538437, 38.965328, 39.120674>,  <37.852928, 39.104660, 38.916512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538437, 38.965328, 39.120674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363409, 0.928686, 0.073995,
		-0.499781, -0.127309, -0.856745,
		-0.786227, -0.348330, 0.510405,
		37.302570, 38.860828, 39.273796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204620, 39.427986, 38.578766>,  <37.852928, 39.104660, 38.916512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204620, 39.427986, 38.578766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114948, 39.315933, 38.952133>,  <37.061146, 39.248703, 39.176155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114948, 39.315933, 38.952133>,  <37.204620, 39.427986, 38.578766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114948, 39.315933, 38.952133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481995, 0.864321, 0.143630,
		-0.847009, -0.417705, -0.328782,
		-0.224178, -0.280128, 0.933420,
		37.047695, 39.231895, 39.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574036, 39.653763, 38.694431>,  <37.204620, 39.427986, 38.578766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574036, 39.653763, 38.694431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656338, 39.567783, 39.076313>,  <36.705719, 39.516193, 39.305443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656338, 39.567783, 39.076313>,  <36.574036, 39.653763, 38.694431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656338, 39.567783, 39.076313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450818, 0.845073, 0.287428,
		-0.868578, -0.489538, 0.076975,
		0.205756, -0.214952, 0.954704,
		36.718063, 39.503296, 39.362724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926533, 39.557983, 39.139988>,  <36.574036, 39.653763, 38.694431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926533, 39.557983, 39.139988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252174, 39.668961, 39.344051>,  <36.447559, 39.735546, 39.466488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252174, 39.668961, 39.344051>,  <35.926533, 39.557983, 39.139988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252174, 39.668961, 39.344051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465237, 0.837358, 0.287031,
		-0.347551, -0.471018, 0.810771,
		0.814102, 0.277443, 0.510159,
		36.496407, 39.752193, 39.497101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684872, 39.773170, 39.780323>,  <35.926533, 39.557983, 39.139988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684872, 39.773170, 39.780323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054119, 39.926666, 39.770618>,  <36.275669, 40.018764, 39.764793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054119, 39.926666, 39.770618>,  <35.684872, 39.773170, 39.780323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054119, 39.926666, 39.770618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350784, 0.866326, 0.355570,
		0.157467, -0.319723, 0.934334,
		0.923122, 0.383740, -0.024264,
		36.331055, 40.041790, 39.763340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770782, 40.064014, 40.437145>,  <35.684872, 39.773170, 39.780323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770782, 40.064014, 40.437145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032921, 40.242535, 40.193394>,  <36.190205, 40.349648, 40.047142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032921, 40.242535, 40.193394>,  <35.770782, 40.064014, 40.437145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032921, 40.242535, 40.193394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298440, 0.894122, 0.333884,
		0.693868, -0.036948, 0.719154,
		0.655348, 0.446296, -0.609376,
		36.229527, 40.376423, 40.010582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322495, 40.414112, 40.899578>,  <35.770782, 40.064014, 40.437145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322495, 40.414112, 40.899578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369293, 40.572891, 40.535439>,  <36.397373, 40.668159, 40.316956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369293, 40.572891, 40.535439>,  <36.322495, 40.414112, 40.899578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369293, 40.572891, 40.535439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135063, 0.914491, 0.381398,
		0.983905, 0.078333, 0.160605,
		0.116996, 0.396951, -0.910353,
		36.404392, 40.691975, 40.262333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865379, 40.931740, 40.964016>,  <36.322495, 40.414112, 40.899578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865379, 40.931740, 40.964016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.631832, 41.009884, 40.648819>,  <36.491703, 41.056770, 40.459702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.631832, 41.009884, 40.648819>,  <36.865379, 40.931740, 40.964016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631832, 41.009884, 40.648819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130356, 0.935460, 0.328514,
		0.801314, 0.294529, -0.520719,
		-0.583869, 0.195364, -0.787991,
		36.456673, 41.068493, 40.412422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845665, 41.696278, 40.961391>,  <36.865379, 40.931740, 40.964016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845665, 41.696278, 40.961391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533871, 41.581593, 40.738609>,  <36.346794, 41.512783, 40.604939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533871, 41.581593, 40.738609>,  <36.845665, 41.696278, 40.961391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533871, 41.581593, 40.738609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453252, 0.871860, 0.185535,
		0.432393, 0.397063, -0.809554,
		-0.779486, -0.286708, -0.556955,
		36.300026, 41.495579, 40.571522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819859, 42.248997, 40.447971>,  <36.845665, 41.696278, 40.961391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819859, 42.248997, 40.447971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461155, 42.072018, 40.444908>,  <36.245934, 41.965828, 40.443069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461155, 42.072018, 40.444908>,  <36.819859, 42.248997, 40.447971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461155, 42.072018, 40.444908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439412, 0.888288, 0.133649,
		-0.052329, 0.123217, -0.990999,
		-0.896760, -0.442451, -0.007660,
		36.192127, 41.939281, 40.442612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.439173, 40.673119, 40.102612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.780737, 40.577221, 40.287373>,  <28.985676, 40.519684, 40.398232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.780737, 40.577221, 40.287373>,  <28.439173, 40.673119, 40.102612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780737, 40.577221, 40.287373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031851, -0.861828, -0.506199,
		0.519441, 0.446962, -0.728290,
		0.853912, -0.239744, 0.461905,
		29.036911, 40.505299, 40.425945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893393, 40.439430, 39.610744>,  <28.439173, 40.673119, 40.102612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893393, 40.439430, 39.610744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.037418, 40.262726, 39.939426>,  <29.123833, 40.156704, 40.136635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.037418, 40.262726, 39.939426>,  <28.893393, 40.439430, 39.610744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037418, 40.262726, 39.939426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010889, -0.882714, -0.469784,
		0.932865, 0.160204, -0.322643,
		0.360062, -0.441759, 0.821708,
		29.145437, 40.130199, 40.185940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499050, 40.139763, 39.420990>,  <28.893393, 40.439430, 39.610744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499050, 40.139763, 39.420990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391254, 39.959538, 39.761429>,  <29.326578, 39.851402, 39.965694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391254, 39.959538, 39.761429>,  <29.499050, 40.139763, 39.420990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391254, 39.959538, 39.761429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120812, -0.860998, -0.494052,
		0.955396, -0.235964, 0.177595,
		-0.269488, -0.450559, 0.851101,
		29.310408, 39.824371, 40.016758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848536, 39.492668, 39.411385>,  <29.499050, 40.139763, 39.420990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848536, 39.492668, 39.411385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577351, 39.417686, 39.695702>,  <29.414640, 39.372696, 39.866291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577351, 39.417686, 39.695702>,  <29.848536, 39.492668, 39.411385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577351, 39.417686, 39.695702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068836, -0.946501, -0.315273,
		0.731867, -0.262671, 0.628788,
		-0.677961, -0.187455, 0.710794,
		29.373962, 39.361450, 39.908939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105940, 38.867195, 39.829449>,  <29.848536, 39.492668, 39.411385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105940, 38.867195, 39.829449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709375, 38.888786, 39.877098>,  <29.471437, 38.901741, 39.905689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709375, 38.888786, 39.877098>,  <30.105940, 38.867195, 39.829449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709375, 38.888786, 39.877098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084799, -0.958746, -0.271321,
		0.099567, -0.279093, 0.955088,
		-0.991411, 0.053976, 0.119126,
		29.411953, 38.904980, 39.912834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984764, 38.289948, 40.264107>,  <30.105940, 38.867195, 39.829449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984764, 38.289948, 40.264107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.624903, 38.392197, 40.122528>,  <29.408985, 38.453548, 40.037582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.624903, 38.392197, 40.122528>,  <29.984764, 38.289948, 40.264107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624903, 38.392197, 40.122528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182014, -0.956466, -0.228131,
		-0.396853, -0.140816, 0.907016,
		-0.899654, 0.255625, -0.353946,
		29.355007, 38.468884, 40.016346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461735, 37.797775, 40.668526>,  <29.984764, 38.289948, 40.264107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461735, 37.797775, 40.668526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301754, 37.936909, 40.329338>,  <29.205765, 38.020390, 40.125824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301754, 37.936909, 40.329338>,  <29.461735, 37.797775, 40.668526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301754, 37.936909, 40.329338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083005, -0.935132, -0.344438,
		-0.912768, -0.067374, 0.402883,
		-0.399955, 0.347833, -0.847967,
		29.181768, 38.041260, 40.074947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865660, 37.431347, 40.588451>,  <29.461735, 37.797775, 40.668526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865660, 37.431347, 40.588451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.974176, 37.570889, 40.229630>,  <29.039288, 37.654613, 40.014336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.974176, 37.570889, 40.229630>,  <28.865660, 37.431347, 40.588451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974176, 37.570889, 40.229630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048425, -0.935771, -0.349268,
		-0.961278, 0.051314, -0.270762,
		0.271294, 0.348856, -0.897050,
		29.055565, 37.675545, 39.960514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453350, 37.010830, 40.140285>,  <28.865660, 37.431347, 40.588451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453350, 37.010830, 40.140285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.750343, 37.158562, 39.916744>,  <28.928539, 37.247200, 39.782619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.750343, 37.158562, 39.916744>,  <28.453350, 37.010830, 40.140285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750343, 37.158562, 39.916744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153549, -0.905897, -0.394681,
		-0.652028, 0.207233, -0.729324,
		0.742484, 0.369330, -0.558850,
		28.973089, 37.269360, 39.749088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381182, 36.732494, 39.479340>,  <28.453350, 37.010830, 40.140285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381182, 36.732494, 39.479340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.763044, 36.850941, 39.491673>,  <28.992161, 36.922009, 39.499073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.763044, 36.850941, 39.491673>,  <28.381182, 36.732494, 39.479340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763044, 36.850941, 39.491673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282136, -0.866779, -0.411209,
		-0.095043, 0.401261, -0.911019,
		0.954655, 0.296114, 0.030828,
		29.049440, 36.939774, 39.500919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702440, 36.516953, 38.839588>,  <28.381182, 36.732494, 39.479340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702440, 36.516953, 38.839588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011852, 36.572754, 39.086876>,  <29.197500, 36.606236, 39.235249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011852, 36.572754, 39.086876>,  <28.702440, 36.516953, 38.839588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011852, 36.572754, 39.086876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502712, -0.729060, -0.464492,
		0.385918, 0.670083, -0.634079,
		0.773530, 0.139503, 0.618216,
		29.243912, 36.614605, 39.272339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277281, 36.584213, 38.449062>,  <28.702440, 36.516953, 38.839588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277281, 36.584213, 38.449062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424845, 36.468010, 38.802219>,  <29.513384, 36.398289, 39.014114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424845, 36.468010, 38.802219>,  <29.277281, 36.584213, 38.449062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424845, 36.468010, 38.802219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507186, -0.733092, -0.453143,
		0.778888, 0.614962, -0.123102,
		0.368911, -0.290512, 0.882897,
		29.535519, 36.380856, 39.067089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956551, 36.454624, 38.260532>,  <29.277281, 36.584213, 38.449062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956551, 36.454624, 38.260532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.899405, 36.256218, 38.603123>,  <29.865118, 36.137173, 38.808678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.899405, 36.256218, 38.603123>,  <29.956551, 36.454624, 38.260532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899405, 36.256218, 38.603123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459555, -0.799662, -0.386457,
		0.876584, 0.338389, 0.342190,
		-0.142863, -0.496017, 0.856480,
		29.856546, 36.107414, 38.860065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663408, 36.243294, 38.509632>,  <29.956551, 36.454624, 38.260532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663408, 36.243294, 38.509632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396864, 36.001568, 38.684341>,  <30.236937, 35.856533, 38.789165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396864, 36.001568, 38.684341>,  <30.663408, 36.243294, 38.509632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396864, 36.001568, 38.684341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456356, -0.793790, -0.402041,
		0.589661, -0.068583, 0.804734,
		-0.666363, -0.604312, 0.436769,
		30.196955, 35.820274, 38.815372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429586, 36.174286, 38.542664>,  <30.663408, 36.243294, 38.509632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429586, 36.174286, 38.542664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559330, 36.279510, 38.179214>,  <31.637177, 36.342648, 37.961147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559330, 36.279510, 38.179214>,  <31.429586, 36.174286, 38.542664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559330, 36.279510, 38.179214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081402, 0.964751, 0.250258,
		0.942425, -0.007210, 0.334340,
		0.324359, 0.263066, -0.908619,
		31.656637, 36.358429, 37.906628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912304, 36.784512, 38.702572>,  <31.429586, 36.174286, 38.542664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912304, 36.784512, 38.702572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844515, 36.826641, 38.310616>,  <31.803841, 36.851917, 38.075443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844515, 36.826641, 38.310616>,  <31.912304, 36.784512, 38.702572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844515, 36.826641, 38.310616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002347, 0.994313, 0.106466,
		0.985532, 0.015743, -0.168757,
		-0.169473, 0.105322, -0.979891,
		31.793673, 36.858238, 38.016647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454163, 37.327446, 38.388123>,  <31.912304, 36.784512, 38.702572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454163, 37.327446, 38.388123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131042, 37.285572, 38.156086>,  <31.937170, 37.260448, 38.016865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131042, 37.285572, 38.156086>,  <32.454163, 37.327446, 38.388123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131042, 37.285572, 38.156086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053796, 0.993090, -0.104300,
		0.586998, -0.053047, -0.807849,
		-0.807799, -0.104683, -0.580088,
		31.888702, 37.254166, 37.982059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544930, 37.754086, 37.775475>,  <32.454163, 37.327446, 38.388123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544930, 37.754086, 37.775475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146225, 37.737530, 37.803032>,  <31.907001, 37.727596, 37.819565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146225, 37.737530, 37.803032>,  <32.544930, 37.754086, 37.775475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146225, 37.737530, 37.803032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025726, 0.976408, 0.214394,
		-0.076139, 0.211928, -0.974315,
		-0.996765, -0.041388, 0.068891,
		31.847195, 37.725113, 37.823700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296032, 38.270458, 37.321850>,  <32.544930, 37.754086, 37.775475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296032, 38.270458, 37.321850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990332, 38.184879, 37.565212>,  <31.806911, 38.133533, 37.711227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990332, 38.184879, 37.565212>,  <32.296032, 38.270458, 37.321850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990332, 38.184879, 37.565212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081507, 0.967849, 0.237961,
		-0.639751, 0.132272, -0.757115,
		-0.764248, -0.213946, 0.608402,
		31.761057, 38.120697, 37.747734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818716, 38.783703, 37.199345>,  <32.296032, 38.270458, 37.321850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818716, 38.783703, 37.199345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668993, 38.660034, 37.549042>,  <31.579159, 38.585835, 37.758862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668993, 38.660034, 37.549042>,  <31.818716, 38.783703, 37.199345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668993, 38.660034, 37.549042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215236, 0.946002, 0.242391,
		-0.901979, -0.097440, -0.420641,
		-0.374309, -0.309168, 0.874247,
		31.556700, 38.567284, 37.811317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132603, 39.126793, 37.441853>,  <31.818716, 38.783703, 37.199345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132603, 39.126793, 37.441853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247118, 38.990879, 37.800201>,  <31.315826, 38.909332, 38.015209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247118, 38.990879, 37.800201>,  <31.132603, 39.126793, 37.441853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247118, 38.990879, 37.800201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239541, 0.879933, 0.410290,
		-0.927717, -0.332059, 0.170521,
		0.286288, -0.339786, 0.895871,
		31.333004, 38.888943, 38.068962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579594, 39.223759, 37.868614>,  <31.132603, 39.126793, 37.441853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579594, 39.223759, 37.868614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915018, 39.225895, 38.086525>,  <31.116272, 39.227177, 38.217274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915018, 39.225895, 38.086525>,  <30.579594, 39.223759, 37.868614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915018, 39.225895, 38.086525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164834, 0.955575, 0.244348,
		-0.519273, -0.294700, 0.802189,
		0.838561, 0.005345, 0.544781,
		31.166586, 39.227497, 38.249958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382822, 39.735901, 38.324245>,  <30.579594, 39.223759, 37.868614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382822, 39.735901, 38.324245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767277, 39.678375, 38.418510>,  <30.997950, 39.643860, 38.475071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767277, 39.678375, 38.418510>,  <30.382822, 39.735901, 38.324245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767277, 39.678375, 38.418510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012075, 0.874689, 0.484535,
		-0.275815, -0.462858, 0.842430,
		0.961135, -0.143814, 0.235664,
		31.055616, 39.635231, 38.489208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510571, 39.849865, 39.131920>,  <30.382822, 39.735901, 38.324245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510571, 39.849865, 39.131920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.851124, 39.910019, 38.930912>,  <31.055456, 39.946114, 38.810307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.851124, 39.910019, 38.930912>,  <30.510571, 39.849865, 39.131920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851124, 39.910019, 38.930912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091941, 0.900403, 0.425231,
		0.516421, -0.408237, 0.752763,
		0.851385, 0.150388, -0.502521,
		31.106539, 39.955135, 38.780155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084467, 40.026203, 39.552650>,  <30.510571, 39.849865, 39.131920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084467, 40.026203, 39.552650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206612, 40.173050, 39.201202>,  <31.279898, 40.261158, 38.990334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206612, 40.173050, 39.201202>,  <31.084467, 40.026203, 39.552650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206612, 40.173050, 39.201202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213981, 0.872643, 0.438983,
		0.927882, -0.322058, 0.187917,
		0.305362, 0.367114, -0.878625,
		31.298220, 40.283184, 38.937614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795050, 40.371964, 39.675751>,  <31.084467, 40.026203, 39.552650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795050, 40.371964, 39.675751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645994, 40.531189, 39.340446>,  <31.556561, 40.626724, 39.139263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645994, 40.531189, 39.340446>,  <31.795050, 40.371964, 39.675751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645994, 40.531189, 39.340446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130465, 0.916824, 0.377377,
		0.918760, 0.031262, -0.393578,
		-0.372639, 0.398067, -0.838262,
		31.534203, 40.650608, 39.088966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189793, 41.021709, 39.596317>,  <31.795050, 40.371964, 39.675751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189793, 41.021709, 39.596317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879953, 41.052761, 39.345249>,  <31.694050, 41.071392, 39.194607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879953, 41.052761, 39.345249>,  <32.189793, 41.021709, 39.596317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879953, 41.052761, 39.345249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027642, 0.987335, 0.156222,
		0.631847, 0.138359, -0.762644,
		-0.774600, 0.077627, -0.627670,
		31.647573, 41.076050, 39.156948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401543, 41.573185, 39.179176>,  <32.189793, 41.021709, 39.596317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401543, 41.573185, 39.179176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004265, 41.566269, 39.133114>,  <31.765898, 41.562119, 39.105476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004265, 41.566269, 39.133114>,  <32.401543, 41.573185, 39.179176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004265, 41.566269, 39.133114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045423, 0.968105, 0.246392,
		0.107219, 0.249946, -0.962305,
		-0.993197, -0.017293, -0.115152,
		31.706306, 41.561081, 39.098568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650150, 41.842766, 38.511768>,  <32.401543, 41.573185, 39.179176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650150, 41.842766, 38.511768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027447, 41.969784, 38.472855>,  <33.253822, 42.045994, 38.449505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027447, 41.969784, 38.472855>,  <32.650150, 41.842766, 38.511768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027447, 41.969784, 38.472855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308636, -0.946287, -0.096354,
		-0.122655, 0.060860, -0.990582,
		0.943239, 0.317547, -0.097283,
		33.310417, 42.065048, 38.443668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879642, 41.466984, 37.861282>,  <32.650150, 41.842766, 38.511768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879642, 41.466984, 37.861282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202679, 41.588856, 38.063259>,  <33.396500, 41.661980, 38.184444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202679, 41.588856, 38.063259>,  <32.879642, 41.466984, 37.861282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202679, 41.588856, 38.063259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518590, -0.774592, -0.362037,
		0.280818, 0.554236, -0.783559,
		0.807592, 0.304679, 0.504941,
		33.444958, 41.680260, 38.214741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445637, 41.427753, 37.384827>,  <32.879642, 41.466984, 37.861282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445637, 41.427753, 37.384827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626194, 41.410805, 37.741356>,  <33.734528, 41.400635, 37.955273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626194, 41.410805, 37.741356>,  <33.445637, 41.427753, 37.384827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626194, 41.410805, 37.741356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449499, -0.852085, -0.268146,
		0.770841, 0.521686, -0.365578,
		0.451392, -0.042372, 0.891319,
		33.761612, 41.398094, 38.008751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194977, 41.473038, 37.271423>,  <33.445637, 41.427753, 37.384827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194977, 41.473038, 37.271423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151260, 41.288128, 37.623413>,  <34.125031, 41.177181, 37.834606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151260, 41.288128, 37.623413>,  <34.194977, 41.473038, 37.271423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151260, 41.288128, 37.623413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596861, -0.738440, -0.313788,
		0.794866, 0.490930, 0.356618,
		-0.109293, -0.462271, 0.879977,
		34.118473, 41.149448, 37.887405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877670, 41.244370, 37.452564>,  <34.194977, 41.473038, 37.271423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877670, 41.244370, 37.452564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589024, 41.025688, 37.622452>,  <34.415836, 40.894482, 37.724384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589024, 41.025688, 37.622452>,  <34.877670, 41.244370, 37.452564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589024, 41.025688, 37.622452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432643, -0.835068, -0.339826,
		0.540452, -0.061473, 0.839126,
		-0.721618, -0.546701, 0.424718,
		34.372540, 40.861679, 37.749866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245720, 40.691212, 37.966969>,  <34.877670, 41.244370, 37.452564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245720, 40.691212, 37.966969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873924, 40.550598, 37.922287>,  <34.650848, 40.466232, 37.895477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873924, 40.550598, 37.922287>,  <35.245720, 40.691212, 37.966969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873924, 40.550598, 37.922287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365990, -0.916616, -0.160828,
		-0.045851, -0.190369, 0.980641,
		-0.929489, -0.351531, -0.111701,
		34.595078, 40.445137, 37.888775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198032, 40.121193, 38.378448>,  <35.245720, 40.691212, 37.966969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198032, 40.121193, 38.378448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875656, 40.070099, 38.147228>,  <34.682232, 40.039444, 38.008495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875656, 40.070099, 38.147228>,  <35.198032, 40.121193, 38.378448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875656, 40.070099, 38.147228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296488, -0.932251, -0.207373,
		-0.512404, -0.338516, 0.789207,
		-0.805938, -0.127732, -0.578055,
		34.633873, 40.031780, 37.973812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916180, 39.438255, 38.590240>,  <35.198032, 40.121193, 38.378448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916180, 39.438255, 38.590240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782890, 39.537041, 38.226269>,  <34.702915, 39.596313, 38.007885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782890, 39.537041, 38.226269>,  <34.916180, 39.438255, 38.590240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782890, 39.537041, 38.226269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199804, -0.924669, -0.324137,
		-0.921431, -0.289819, 0.258784,
		-0.333231, 0.246964, -0.909927,
		34.682922, 39.611130, 37.953289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555359, 38.861790, 38.393566>,  <34.916180, 39.438255, 38.590240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555359, 38.861790, 38.393566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645657, 39.041622, 38.047867>,  <34.699837, 39.149521, 37.840446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645657, 39.041622, 38.047867>,  <34.555359, 38.861790, 38.393566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645657, 39.041622, 38.047867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309065, -0.874367, -0.374114,
		-0.923861, -0.182654, -0.336331,
		0.225743, 0.449577, -0.864245,
		34.713379, 39.176495, 37.788593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302090, 38.423096, 37.774536>,  <34.555359, 38.861790, 38.393566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302090, 38.423096, 37.774536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568428, 38.670639, 37.607845>,  <34.728230, 38.819164, 37.507832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568428, 38.670639, 37.607845>,  <34.302090, 38.423096, 37.774536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568428, 38.670639, 37.607845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427304, -0.774184, -0.466959,
		-0.611609, 0.132850, -0.779927,
		0.665842, 0.618862, -0.416730,
		34.768181, 38.856297, 37.482826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182732, 38.497192, 36.988129>,  <34.302090, 38.423096, 37.774536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182732, 38.497192, 36.988129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559536, 38.599411, 37.075138>,  <34.785618, 38.660744, 37.127342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559536, 38.599411, 37.075138>,  <34.182732, 38.497192, 36.988129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559536, 38.599411, 37.075138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334494, -0.767346, -0.547078,
		0.027110, 0.588112, -0.808325,
		0.942008, 0.255549, 0.217522,
		34.842140, 38.676075, 37.140396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556763, 38.464390, 36.341690>,  <34.182732, 38.497192, 36.988129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556763, 38.464390, 36.341690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845798, 38.457378, 36.618111>,  <35.019222, 38.453171, 36.783962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845798, 38.457378, 36.618111>,  <34.556763, 38.464390, 36.341690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845798, 38.457378, 36.618111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503523, -0.671593, -0.543533,
		0.473631, 0.740714, -0.476463,
		0.722591, -0.017524, 0.691054,
		35.062576, 38.452122, 36.825428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242435, 38.532425, 36.044868>,  <34.556763, 38.464390, 36.341690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242435, 38.532425, 36.044868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291363, 38.331074, 36.387016>,  <35.320717, 38.210262, 36.592304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291363, 38.331074, 36.387016>,  <35.242435, 38.532425, 36.044868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291363, 38.331074, 36.387016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384622, -0.770451, -0.508401,
		0.914935, 0.391178, 0.099372,
		0.122314, -0.503374, 0.855368,
		35.328056, 38.180061, 36.643627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761738, 38.126911, 35.793118>,  <35.242435, 38.532425, 36.044868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761738, 38.126911, 35.793118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613884, 37.998825, 36.142021>,  <35.525173, 37.921974, 36.351364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613884, 37.998825, 36.142021>,  <35.761738, 38.126911, 35.793118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613884, 37.998825, 36.142021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237988, -0.940055, -0.244249,
		0.898183, 0.117305, 0.423683,
		-0.369634, -0.320212, 0.872259,
		35.502995, 37.902763, 36.403698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.020927, 39.297604, 27.018122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898750, 38.929291, 27.115166>,  <26.825445, 38.708302, 27.173391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898750, 38.929291, 27.115166>,  <27.020927, 39.297604, 27.018122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898750, 38.929291, 27.115166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007639, 0.252408, 0.967591,
		-0.952180, 0.297395, -0.070062,
		-0.305441, -0.920786, 0.242609,
		26.807117, 38.653053, 27.187948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368690, 39.379997, 27.496843>,  <27.020927, 39.297604, 27.018122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368690, 39.379997, 27.496843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.524895, 39.020092, 27.574736>,  <26.618618, 38.804150, 27.621471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.524895, 39.020092, 27.574736>,  <26.368690, 39.379997, 27.496843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524895, 39.020092, 27.574736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133507, 0.153941, 0.979019,
		-0.910866, -0.408316, -0.060010,
		0.390511, -0.899767, 0.194732,
		26.642048, 38.750160, 27.633156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961336, 39.101120, 28.065794>,  <26.368690, 39.379997, 27.496843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961336, 39.101120, 28.065794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.288486, 38.871162, 28.056200>,  <26.484777, 38.733189, 28.050444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.288486, 38.871162, 28.056200>,  <25.961336, 39.101120, 28.065794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288486, 38.871162, 28.056200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064796, -0.133439, 0.988936,
		-0.571735, -0.807273, -0.146388,
		0.817876, -0.574895, -0.023984,
		26.533850, 38.698692, 28.049006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783419, 38.627525, 28.510557>,  <25.961336, 39.101120, 28.065794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783419, 38.627525, 28.510557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177769, 38.564526, 28.487759>,  <26.414379, 38.526726, 28.474079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177769, 38.564526, 28.487759>,  <25.783419, 38.627525, 28.510557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177769, 38.564526, 28.487759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001650, -0.349412, 0.936968,
		-0.167483, -0.923638, -0.344735,
		0.985874, -0.157495, -0.056997,
		26.473530, 38.517277, 28.470659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878868, 37.949749, 28.725704>,  <25.783419, 38.627525, 28.510557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878868, 37.949749, 28.725704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222157, 38.149143, 28.774649>,  <26.428129, 38.268780, 28.804014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222157, 38.149143, 28.774649>,  <25.878868, 37.949749, 28.725704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222157, 38.149143, 28.774649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072654, -0.353965, 0.932432,
		0.508112, -0.791343, -0.339997,
		0.858221, 0.498482, 0.122360,
		26.479624, 38.298687, 28.811357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297407, 37.553352, 29.123474>,  <25.878868, 37.949749, 28.725704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297407, 37.553352, 29.123474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468748, 37.911385, 29.173016>,  <26.571552, 38.126205, 29.202742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468748, 37.911385, 29.173016>,  <26.297407, 37.553352, 29.123474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468748, 37.911385, 29.173016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085992, -0.176825, 0.980479,
		0.899510, -0.409341, -0.152713,
		0.428354, 0.895083, 0.123856,
		26.597254, 38.179909, 29.210173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856855, 37.406876, 29.612780>,  <26.297407, 37.553352, 29.123474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856855, 37.406876, 29.612780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775515, 37.798275, 29.626556>,  <26.726711, 38.033115, 29.634823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775515, 37.798275, 29.626556>,  <26.856855, 37.406876, 29.612780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775515, 37.798275, 29.626556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013048, -0.037881, 0.999197,
		0.979019, 0.202738, 0.020471,
		-0.203351, 0.978500, 0.034440,
		26.714510, 38.091824, 29.636889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315638, 37.544598, 30.060709>,  <26.856855, 37.406876, 29.612780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315638, 37.544598, 30.060709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.026707, 37.821213, 30.059011>,  <26.853348, 37.987183, 30.057993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.026707, 37.821213, 30.059011>,  <27.315638, 37.544598, 30.060709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026707, 37.821213, 30.059011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158929, -0.160023, 0.974235,
		0.673043, 0.704391, 0.225494,
		-0.722326, 0.691539, -0.004246,
		26.810009, 38.028675, 30.057737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519201, 38.099323, 30.499414>,  <27.315638, 37.544598, 30.060709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519201, 38.099323, 30.499414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.119925, 38.082062, 30.482697>,  <26.880358, 38.071705, 30.472666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.119925, 38.082062, 30.482697>,  <27.519201, 38.099323, 30.499414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119925, 38.082062, 30.482697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032107, -0.204802, 0.978277,
		-0.050777, 0.977851, 0.203047,
		-0.998194, -0.043155, -0.041795,
		26.820467, 38.069115, 30.470158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400509, 38.064472, 31.144354>,  <27.519201, 38.099323, 30.499414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400509, 38.064472, 31.144354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027216, 38.081963, 31.001713>,  <26.803240, 38.092457, 30.916128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027216, 38.081963, 31.001713>,  <27.400509, 38.064472, 31.144354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027216, 38.081963, 31.001713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358787, -0.165114, 0.918700,
		-0.018706, 0.985304, 0.169779,
		-0.933232, 0.043730, -0.356603,
		26.747246, 38.095081, 30.894732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948616, 38.615685, 31.490711>,  <27.400509, 38.064472, 31.144354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948616, 38.615685, 31.490711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720701, 38.324139, 31.338869>,  <26.583952, 38.149212, 31.247763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720701, 38.324139, 31.338869>,  <26.948616, 38.615685, 31.490711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720701, 38.324139, 31.338869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433511, -0.125842, 0.892318,
		-0.698150, 0.672993, -0.244268,
		-0.569785, -0.728865, -0.379606,
		26.549767, 38.105480, 31.224987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203302, 38.819275, 31.550104>,  <26.948616, 38.615685, 31.490711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203302, 38.819275, 31.550104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.229509, 38.420639, 31.530024>,  <26.245234, 38.181458, 31.517975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.229509, 38.420639, 31.530024>,  <26.203302, 38.819275, 31.550104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229509, 38.420639, 31.530024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451717, -0.074482, 0.889046,
		-0.889752, -0.035573, -0.455056,
		0.065519, -0.996588, -0.050201,
		26.249165, 38.121662, 31.514963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652369, 38.536667, 31.966463>,  <26.203302, 38.819275, 31.550104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652369, 38.536667, 31.966463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.824692, 38.177650, 31.928904>,  <25.928085, 37.962238, 31.906368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.824692, 38.177650, 31.928904>,  <25.652369, 38.536667, 31.966463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824692, 38.177650, 31.928904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249958, -0.218656, 0.943245,
		-0.867135, -0.382889, -0.318547,
		0.430810, -0.897544, -0.093898,
		25.953936, 37.908386, 31.900734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214251, 37.974384, 32.170609>,  <25.652369, 38.536667, 31.966463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214251, 37.974384, 32.170609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.591997, 37.856377, 32.228764>,  <25.818645, 37.785572, 32.263657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.591997, 37.856377, 32.228764>,  <25.214251, 37.974384, 32.170609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591997, 37.856377, 32.228764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256555, -0.384152, 0.886909,
		-0.205804, -0.874866, -0.438469,
		0.944365, -0.295020, 0.145391,
		25.875307, 37.767872, 32.272381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202482, 37.262985, 32.218552>,  <25.214251, 37.974384, 32.170609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202482, 37.262985, 32.218552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.539665, 37.369553, 32.405502>,  <25.741976, 37.433495, 32.517673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.539665, 37.369553, 32.405502>,  <25.202482, 37.262985, 32.218552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539665, 37.369553, 32.405502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176846, -0.683259, 0.708437,
		0.508084, -0.679836, -0.528842,
		0.842957, 0.266422, 0.467379,
		25.792553, 37.449478, 32.545715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589008, 36.594067, 32.308655>,  <25.202482, 37.262985, 32.218552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589008, 36.594067, 32.308655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.732332, 36.853798, 32.576977>,  <25.818327, 37.009636, 32.737972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.732332, 36.853798, 32.576977>,  <25.589008, 36.594067, 32.308655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732332, 36.853798, 32.576977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223797, -0.637827, 0.736947,
		0.906382, -0.414181, -0.083222,
		0.358311, 0.649330, 0.670808,
		25.839825, 37.048595, 32.778217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050936, 36.222824, 32.833847>,  <25.589008, 36.594067, 32.308655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050936, 36.222824, 32.833847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929686, 36.568737, 32.993980>,  <25.856936, 36.776283, 33.090061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929686, 36.568737, 32.993980>,  <26.050936, 36.222824, 32.833847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929686, 36.568737, 32.993980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358515, -0.492723, 0.792900,
		0.882939, 0.096825, 0.459396,
		-0.303128, 0.864782, 0.400331,
		25.838747, 36.828171, 33.114079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215181, 36.044331, 33.455643>,  <26.050936, 36.222824, 32.833847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215181, 36.044331, 33.455643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.042770, 36.401318, 33.508881>,  <25.939323, 36.615509, 33.540821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.042770, 36.401318, 33.508881>,  <26.215181, 36.044331, 33.455643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042770, 36.401318, 33.508881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302446, -0.281854, 0.910541,
		0.850143, 0.352214, 0.391411,
		-0.431026, 0.892470, 0.133091,
		25.913462, 36.669060, 33.548809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324919, 36.223446, 34.220917>,  <26.215181, 36.044331, 33.455643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324919, 36.223446, 34.220917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017426, 36.440632, 34.085720>,  <25.832930, 36.570946, 34.004604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017426, 36.440632, 34.085720>,  <26.324919, 36.223446, 34.220917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017426, 36.440632, 34.085720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527651, -0.239776, 0.814919,
		0.361433, 0.804795, 0.470821,
		-0.768734, 0.542967, -0.337987,
		25.786806, 36.603523, 33.984325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746572, 35.680840, 34.431278>,  <26.324919, 36.223446, 34.220917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746572, 35.680840, 34.431278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910982, 35.317780, 34.465275>,  <27.009628, 35.099941, 34.485672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910982, 35.317780, 34.465275>,  <26.746572, 35.680840, 34.431278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910982, 35.317780, 34.465275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112293, -0.142926, -0.983343,
		0.904681, 0.394636, -0.160669,
		0.411026, -0.907653, 0.084987,
		27.034290, 35.045483, 34.490772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398195, 35.555286, 33.915901>,  <26.746572, 35.680840, 34.431278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398195, 35.555286, 33.915901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212511, 35.219116, 34.027760>,  <27.101101, 35.017414, 34.094875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212511, 35.219116, 34.027760>,  <27.398195, 35.555286, 33.915901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212511, 35.219116, 34.027760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062824, -0.283684, -0.956858,
		0.883493, -0.461753, 0.078891,
		-0.464212, -0.840421, 0.279642,
		27.073248, 34.966991, 34.111652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723669, 34.961163, 33.472549>,  <27.398195, 35.555286, 33.915901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723669, 34.961163, 33.472549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.396090, 34.778461, 33.611519>,  <27.199541, 34.668842, 33.694901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.396090, 34.778461, 33.611519>,  <27.723669, 34.961163, 33.472549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396090, 34.778461, 33.611519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222916, -0.304669, -0.926005,
		0.528800, -0.835797, 0.147692,
		-0.818950, -0.456749, 0.347422,
		27.150404, 34.641438, 33.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743887, 34.190903, 33.325211>,  <27.723669, 34.961163, 33.472549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743887, 34.190903, 33.325211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361107, 34.303684, 33.352760>,  <27.131439, 34.371353, 33.369289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361107, 34.303684, 33.352760>,  <27.743887, 34.190903, 33.325211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361107, 34.303684, 33.352760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161766, -0.321091, -0.933130,
		-0.240984, -0.904103, 0.352880,
		-0.956953, 0.281954, 0.068876,
		27.074022, 34.388271, 33.373421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368542, 33.586445, 32.950752>,  <27.743887, 34.190903, 33.325211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368542, 33.586445, 32.950752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143650, 33.916977, 32.963882>,  <27.008715, 34.115295, 32.971760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143650, 33.916977, 32.963882>,  <27.368542, 33.586445, 32.950752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143650, 33.916977, 32.963882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243921, -0.127777, -0.961340,
		-0.790192, -0.548498, 0.273400,
		-0.562227, 0.826331, 0.032822,
		26.974981, 34.164875, 32.973728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893084, 33.531151, 32.318886>,  <27.368542, 33.586445, 32.950752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893084, 33.531151, 32.318886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879847, 33.922363, 32.401215>,  <26.871904, 34.157089, 32.450611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879847, 33.922363, 32.401215>,  <26.893084, 33.531151, 32.318886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879847, 33.922363, 32.401215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356037, 0.180886, -0.916798,
		-0.933886, -0.103616, 0.342229,
		-0.033090, 0.978031, 0.205818,
		26.869919, 34.215771, 32.462959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196087, 33.784458, 32.062519>,  <26.893084, 33.531151, 32.318886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196087, 33.784458, 32.062519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425182, 34.108711, 32.111267>,  <26.562639, 34.303261, 32.140514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425182, 34.108711, 32.111267>,  <26.196087, 33.784458, 32.062519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425182, 34.108711, 32.111267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225456, 0.298706, -0.927332,
		-0.788125, 0.503641, 0.353841,
		0.572737, 0.810629, 0.121868,
		26.597004, 34.351898, 32.147827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866251, 34.336952, 31.818491>,  <26.196087, 33.784458, 32.062519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866251, 34.336952, 31.818491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239599, 34.480518, 31.818178>,  <26.463608, 34.566658, 31.817991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239599, 34.480518, 31.818178>,  <25.866251, 34.336952, 31.818491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239599, 34.480518, 31.818178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135655, 0.350753, -0.926590,
		-0.332294, 0.864957, 0.376071,
		0.933370, 0.358916, -0.000783,
		26.519609, 34.588192, 31.817944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887520, 34.993759, 31.581753>,  <25.866251, 34.336952, 31.818491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887520, 34.993759, 31.581753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265032, 34.874699, 31.524229>,  <26.491539, 34.803261, 31.489714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265032, 34.874699, 31.524229>,  <25.887520, 34.993759, 31.581753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265032, 34.874699, 31.524229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023482, 0.373569, -0.927305,
		0.329739, 0.878549, 0.345578,
		0.943780, -0.297654, -0.143810,
		26.548166, 34.785404, 31.481087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147125, 35.517120, 31.133118>,  <25.887520, 34.993759, 31.581753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147125, 35.517120, 31.133118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424109, 35.229050, 31.115913>,  <26.590298, 35.056210, 31.105591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424109, 35.229050, 31.115913>,  <26.147125, 35.517120, 31.133118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424109, 35.229050, 31.115913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241389, 0.287456, -0.926877,
		0.679877, 0.631441, 0.372893,
		0.692459, -0.720174, -0.043011,
		26.631845, 35.012997, 31.103010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660561, 35.881157, 30.811880>,  <26.147125, 35.517120, 31.133118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660561, 35.881157, 30.811880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707321, 35.487171, 30.760998>,  <26.735378, 35.250778, 30.730469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707321, 35.487171, 30.760998>,  <26.660561, 35.881157, 30.811880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707321, 35.487171, 30.760998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410469, 0.164549, -0.896905,
		0.904350, 0.052636, 0.423533,
		0.116902, -0.984964, -0.127205,
		26.742392, 35.191681, 30.722836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334599, 35.779842, 30.422403>,  <26.660561, 35.881157, 30.811880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334599, 35.779842, 30.422403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134138, 35.436958, 30.375004>,  <27.013861, 35.231228, 30.346563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134138, 35.436958, 30.375004>,  <27.334599, 35.779842, 30.422403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134138, 35.436958, 30.375004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163170, 0.040873, -0.985751,
		0.849836, -0.513348, 0.119387,
		-0.501153, -0.857207, -0.118498,
		26.983791, 35.179798, 30.339455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828566, 35.268005, 30.027506>,  <27.334599, 35.779842, 30.422403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828566, 35.268005, 30.027506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439877, 35.197582, 29.964563>,  <27.206663, 35.155327, 29.926798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439877, 35.197582, 29.964563>,  <27.828566, 35.268005, 30.027506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439877, 35.197582, 29.964563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145984, 0.075851, -0.986375,
		0.185597, -0.981453, -0.048004,
		-0.971721, -0.176060, -0.157355,
		27.148359, 35.144764, 29.917356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838095, 34.844322, 29.484159>,  <27.828566, 35.268005, 30.027506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838095, 34.844322, 29.484159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454735, 34.958050, 29.494190>,  <27.224718, 35.026287, 29.500210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454735, 34.958050, 29.494190>,  <27.838095, 34.844322, 29.484159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454735, 34.958050, 29.494190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020231, 0.019972, -0.999596,
		-0.284707, -0.958521, -0.013389,
		-0.958401, 0.284321, 0.025079,
		27.167215, 35.043346, 29.501715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673344, 34.495899, 28.944231>,  <27.838095, 34.844322, 29.484159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673344, 34.495899, 28.944231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349014, 34.724762, 28.993559>,  <27.154417, 34.862080, 29.023155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349014, 34.724762, 28.993559>,  <27.673344, 34.495899, 28.944231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349014, 34.724762, 28.993559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170047, -0.028672, -0.985019,
		-0.560046, -0.819645, 0.120541,
		-0.810822, 0.572154, 0.123321,
		27.105768, 34.896408, 29.030556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187735, 34.289284, 28.591507>,  <27.673344, 34.495899, 28.944231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187735, 34.289284, 28.591507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993814, 34.635635, 28.640858>,  <26.877462, 34.843445, 28.670469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993814, 34.635635, 28.640858>,  <27.187735, 34.289284, 28.591507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993814, 34.635635, 28.640858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354565, -0.065615, -0.932726,
		-0.799534, -0.495929, 0.338821,
		-0.484798, 0.865880, 0.123378,
		26.848375, 34.895401, 28.677872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389147, 34.221622, 28.305580>,  <27.187735, 34.289284, 28.591507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389147, 34.221622, 28.305580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522770, 34.598640, 28.307520>,  <26.602943, 34.824852, 28.308683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522770, 34.598640, 28.307520>,  <26.389147, 34.221622, 28.305580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522770, 34.598640, 28.307520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169137, 0.065004, -0.983447,
		-0.927253, 0.327707, 0.181134,
		0.334057, 0.942541, 0.004847,
		26.622988, 34.881401, 28.308973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907248, 34.619438, 28.025454>,  <26.389147, 34.221622, 28.305580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907248, 34.619438, 28.025454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227503, 34.852596, 27.970022>,  <26.419657, 34.992493, 27.936764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227503, 34.852596, 27.970022>,  <25.907248, 34.619438, 28.025454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227503, 34.852596, 27.970022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303423, 0.195026, -0.932684,
		-0.516634, 0.788793, 0.333010,
		0.800640, 0.582899, -0.138581,
		26.467695, 35.027466, 27.928448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596510, 35.196148, 27.693041>,  <25.907248, 34.619438, 28.025454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596510, 35.196148, 27.693041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.991545, 35.196728, 27.630211>,  <26.228565, 35.197075, 27.592514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.991545, 35.196728, 27.630211>,  <25.596510, 35.196148, 27.693041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991545, 35.196728, 27.630211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149176, 0.321842, -0.934968,
		0.049199, 0.946792, 0.318062,
		0.987586, 0.001448, -0.157073,
		26.287821, 35.197163, 27.583090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755028, 35.779530, 27.480343>,  <25.596510, 35.196148, 27.693041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755028, 35.779530, 27.480343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057728, 35.564674, 27.331312>,  <26.239347, 35.435760, 27.241894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057728, 35.564674, 27.331312>,  <25.755028, 35.779530, 27.480343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057728, 35.564674, 27.331312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242799, 0.298223, -0.923099,
		0.606941, 0.789017, 0.095264,
		0.756750, -0.537136, -0.372577,
		26.284754, 35.403534, 27.219540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045481, 36.264122, 27.058414>,  <25.755028, 35.779530, 27.480343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045481, 36.264122, 27.058414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156174, 35.892834, 26.958954>,  <26.222589, 35.670059, 26.899277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156174, 35.892834, 26.958954>,  <26.045481, 36.264122, 27.058414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156174, 35.892834, 26.958954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226326, 0.188520, -0.955634,
		0.933915, 0.320729, -0.157911,
		0.276731, -0.928220, -0.248651,
		26.239193, 35.614368, 26.884359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659573, 36.360764, 26.676472>,  <26.045481, 36.264122, 27.058414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659573, 36.360764, 26.676472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471281, 36.025486, 26.566307>,  <26.358307, 35.824322, 26.500208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471281, 36.025486, 26.566307>,  <26.659573, 36.360764, 26.676472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471281, 36.025486, 26.566307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167964, 0.391588, -0.904681,
		0.866142, -0.379600, -0.325118,
		-0.470729, -0.838190, -0.275411,
		26.330063, 35.774029, 26.483685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890459, 36.281841, 26.013239>,  <26.659573, 36.360764, 26.676472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890459, 36.281841, 26.013239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.570955, 36.041290, 26.020411>,  <26.379253, 35.896957, 26.024714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.570955, 36.041290, 26.020411>,  <26.890459, 36.281841, 26.013239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570955, 36.041290, 26.020411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258272, 0.315820, -0.912992,
		0.543394, -0.733893, -0.407584,
		-0.798761, -0.601381, 0.017930,
		26.331327, 35.860878, 26.025789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.437866, 42.599689, 39.920437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155018, 42.442333, 40.155457>,  <35.985310, 42.347919, 40.296471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155018, 42.442333, 40.155457>,  <36.437866, 42.599689, 39.920437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155018, 42.442333, 40.155457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358856, 0.915641, 0.181174,
		-0.609260, -0.082734, -0.788643,
		-0.707125, -0.393392, 0.587553,
		35.942879, 42.324314, 40.331722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905102, 42.941570, 39.644825>,  <36.437866, 42.599689, 39.920437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905102, 42.941570, 39.644825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799931, 42.801807, 40.004555>,  <35.736828, 42.717949, 40.220394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799931, 42.801807, 40.004555>,  <35.905102, 42.941570, 39.644825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799931, 42.801807, 40.004555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327032, 0.909216, 0.257635,
		-0.907700, -0.226369, -0.353325,
		-0.262928, -0.349404, 0.899325,
		35.721050, 42.696987, 40.274353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255749, 43.304478, 39.800064>,  <35.905102, 42.941570, 39.644825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255749, 43.304478, 39.800064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398632, 43.173866, 40.150101>,  <35.484364, 43.095497, 40.360123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398632, 43.173866, 40.150101>,  <35.255749, 43.304478, 39.800064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398632, 43.173866, 40.150101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365752, 0.813179, 0.452731,
		-0.859433, -0.481786, 0.171049,
		0.357213, -0.326530, 0.875087,
		35.505795, 43.075909, 40.412628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769058, 43.541943, 40.196533>,  <35.255749, 43.304478, 39.800064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769058, 43.541943, 40.196533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081070, 43.475151, 40.437756>,  <35.268276, 43.435078, 40.582489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081070, 43.475151, 40.437756>,  <34.769058, 43.541943, 40.196533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081070, 43.475151, 40.437756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203236, 0.843889, 0.496535,
		-0.591820, -0.509874, 0.624322,
		0.780028, -0.166975, 0.603055,
		35.315079, 43.425060, 40.618671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518059, 43.753887, 40.827843>,  <34.769058, 43.541943, 40.196533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518059, 43.753887, 40.827843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913250, 43.746651, 40.889244>,  <35.150364, 43.742310, 40.926086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913250, 43.746651, 40.889244>,  <34.518059, 43.753887, 40.827843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913250, 43.746651, 40.889244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070774, 0.829938, 0.553347,
		-0.137413, -0.557562, 0.818684,
		0.987982, -0.018095, 0.153505,
		35.209644, 43.741222, 40.935295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527874, 44.041180, 41.484364>,  <34.518059, 43.753887, 40.827843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527874, 44.041180, 41.484364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898674, 44.077988, 41.338924>,  <35.121155, 44.100071, 41.251663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898674, 44.077988, 41.338924>,  <34.527874, 44.041180, 41.484364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898674, 44.077988, 41.338924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020241, 0.955750, 0.293484,
		0.374513, -0.279419, 0.884118,
		0.927001, 0.092018, -0.363596,
		35.176773, 44.105595, 41.229847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842216, 44.477074, 41.940823>,  <34.527874, 44.041180, 41.484364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842216, 44.477074, 41.940823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090015, 44.530003, 41.631317>,  <35.238697, 44.561760, 41.445614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090015, 44.530003, 41.631317>,  <34.842216, 44.477074, 41.940823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090015, 44.530003, 41.631317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072587, 0.991123, 0.111380,
		0.781632, -0.012835, 0.623608,
		0.619502, 0.132324, -0.773762,
		35.275867, 44.569698, 41.399189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373199, 44.878666, 42.178688>,  <34.842216, 44.477074, 41.940823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373199, 44.878666, 42.178688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384766, 44.913036, 41.780334>,  <35.391705, 44.933659, 41.541325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384766, 44.913036, 41.780334>,  <35.373199, 44.878666, 42.178688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384766, 44.913036, 41.780334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042679, 0.995283, 0.087118,
		0.998671, -0.045022, 0.025109,
		0.028913, 0.085930, -0.995881,
		35.393440, 44.938816, 41.481571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976334, 45.275776, 41.941158>,  <35.373199, 44.878666, 42.178688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976334, 45.275776, 41.941158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711624, 45.304352, 41.642643>,  <35.552799, 45.321499, 41.463531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711624, 45.304352, 41.642643>,  <35.976334, 45.275776, 41.941158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711624, 45.304352, 41.642643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111033, 0.993811, -0.003324,
		0.741434, -0.085063, -0.665613,
		-0.661776, 0.071440, -0.746290,
		35.513092, 45.325783, 41.418755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139759, 45.792889, 41.528088>,  <35.976334, 45.275776, 41.941158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139759, 45.792889, 41.528088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750610, 45.768253, 41.438892>,  <35.517120, 45.753471, 41.385376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750610, 45.768253, 41.438892>,  <36.139759, 45.792889, 41.528088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750610, 45.768253, 41.438892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078888, 0.994457, 0.069511,
		0.217468, 0.085216, -0.972341,
		-0.972874, -0.061590, -0.222985,
		35.458748, 45.749775, 41.371998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114265, 46.322021, 41.271091>,  <36.139759, 45.792889, 41.528088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114265, 46.322021, 41.271091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736462, 46.236240, 41.370617>,  <35.509781, 46.184772, 41.430332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736462, 46.236240, 41.370617>,  <36.114265, 46.322021, 41.271091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736462, 46.236240, 41.370617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190889, 0.974786, 0.115559,
		-0.267323, 0.061651, -0.961633,
		-0.944510, -0.214457, 0.248815,
		35.453110, 46.171902, 41.445263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690170, 46.900928, 40.944077>,  <36.114265, 46.322021, 41.271091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690170, 46.900928, 40.944077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475269, 46.723736, 41.231167>,  <35.346329, 46.617420, 41.403419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475269, 46.723736, 41.231167>,  <35.690170, 46.900928, 40.944077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475269, 46.723736, 41.231167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324863, 0.893994, 0.308607,
		-0.778347, -0.067361, -0.624210,
		-0.537252, -0.442986, 0.717721,
		35.314095, 46.590839, 41.446484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037670, 47.202255, 40.992607>,  <35.690170, 46.900928, 40.944077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037670, 47.202255, 40.992607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048496, 47.037113, 41.356766>,  <35.054993, 46.938026, 41.575260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048496, 47.037113, 41.356766>,  <35.037670, 47.202255, 40.992607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048496, 47.037113, 41.356766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153277, 0.898242, 0.411907,
		-0.987813, -0.150692, -0.038968,
		0.027069, -0.412860, 0.910392,
		35.056618, 46.913254, 41.629883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290127, 47.208988, 41.459404>,  <35.037670, 47.202255, 40.992607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290127, 47.208988, 41.459404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653645, 47.235981, 41.624104>,  <34.871758, 47.252178, 41.722923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653645, 47.235981, 41.624104>,  <34.290127, 47.208988, 41.459404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653645, 47.235981, 41.624104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165341, 0.964291, 0.206895,
		-0.383082, -0.256104, 0.887502,
		0.908796, 0.067483, 0.411747,
		34.926285, 47.256226, 41.747627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901108, 46.563202, 41.523674>,  <34.290127, 47.208988, 41.459404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901108, 46.563202, 41.523674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584850, 46.737831, 41.351955>,  <33.395096, 46.842609, 41.248924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584850, 46.737831, 41.351955>,  <33.901108, 46.563202, 41.523674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584850, 46.737831, 41.351955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011640, -0.690296, -0.723433,
		-0.612173, -0.576971, 0.540693,
		-0.790638, 0.436572, -0.429297,
		33.347660, 46.868801, 41.223167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440414, 46.048302, 41.411873>,  <33.901108, 46.563202, 41.523674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440414, 46.048302, 41.411873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360470, 46.337345, 41.147182>,  <33.312504, 46.510773, 40.988365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360470, 46.337345, 41.147182>,  <33.440414, 46.048302, 41.411873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360470, 46.337345, 41.147182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017869, -0.677933, -0.734907,
		-0.979661, -0.135057, 0.148407,
		-0.199864, 0.722611, -0.661731,
		33.300510, 46.554127, 40.948662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783932, 45.879173, 41.158642>,  <33.440414, 46.048302, 41.411873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783932, 45.879173, 41.158642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925545, 46.124554, 40.876270>,  <33.010513, 46.271782, 40.706848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925545, 46.124554, 40.876270>,  <32.783932, 45.879173, 41.158642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925545, 46.124554, 40.876270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217012, -0.680328, -0.700042,
		-0.909708, 0.401031, -0.107729,
		0.354030, 0.613455, -0.705929,
		33.031754, 46.308590, 40.664494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264248, 46.051456, 40.677628>,  <32.783932, 45.879173, 41.158642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264248, 46.051456, 40.677628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616459, 46.116989, 40.499714>,  <32.827785, 46.156311, 40.392967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616459, 46.116989, 40.499714>,  <32.264248, 46.051456, 40.677628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616459, 46.116989, 40.499714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211695, -0.703649, -0.678280,
		-0.424097, 0.691402, -0.584898,
		0.880527, 0.163836, -0.444781,
		32.880615, 46.166142, 40.366280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094231, 45.970245, 40.060410>,  <32.264248, 46.051456, 40.677628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094231, 45.970245, 40.060410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492321, 45.938789, 40.037296>,  <32.731174, 45.919914, 40.023426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492321, 45.938789, 40.037296>,  <32.094231, 45.970245, 40.060410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492321, 45.938789, 40.037296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097534, -0.821318, -0.562071,
		-0.003259, 0.565024, -0.825068,
		0.995227, -0.078641, -0.057786,
		32.790890, 45.915195, 40.019962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224010, 45.861755, 39.344482>,  <32.094231, 45.970245, 40.060410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224010, 45.861755, 39.344482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563938, 45.731785, 39.510487>,  <32.767895, 45.653805, 39.610088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563938, 45.731785, 39.510487>,  <32.224010, 45.861755, 39.344482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563938, 45.731785, 39.510487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007252, -0.780100, -0.625613,
		0.527026, 0.534667, -0.660587,
		0.849818, -0.324924, 0.415010,
		32.818882, 45.634308, 39.634991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760502, 45.722401, 38.760731>,  <32.224010, 45.861755, 39.344482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760502, 45.722401, 38.760731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883179, 45.518955, 39.082539>,  <32.956787, 45.396889, 39.275623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883179, 45.518955, 39.082539>,  <32.760502, 45.722401, 38.760731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883179, 45.518955, 39.082539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148615, -0.809299, -0.568286,
		0.940134, 0.293854, -0.172621,
		0.306695, -0.508611, 0.804520,
		32.975185, 45.366371, 39.323895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383423, 45.341778, 38.551952>,  <32.760502, 45.722401, 38.760731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383423, 45.341778, 38.551952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218273, 45.125683, 38.845257>,  <33.119183, 44.996025, 39.021240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218273, 45.125683, 38.845257>,  <33.383423, 45.341778, 38.551952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218273, 45.125683, 38.845257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254304, -0.841447, -0.476757,
		0.874565, -0.010369, 0.484797,
		-0.412874, -0.540241, 0.733263,
		33.094410, 44.963612, 39.065235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794575, 44.809101, 38.470657>,  <33.383423, 45.341778, 38.551952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794575, 44.809101, 38.470657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534412, 44.654163, 38.732018>,  <33.378315, 44.561199, 38.888836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534412, 44.654163, 38.732018>,  <33.794575, 44.809101, 38.470657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534412, 44.654163, 38.732018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284042, -0.921827, -0.263734,
		0.704483, 0.014062, 0.709582,
		-0.650403, -0.387347, 0.653405,
		33.339291, 44.537960, 38.928040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153057, 44.247833, 38.730312>,  <33.794575, 44.809101, 38.470657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153057, 44.247833, 38.730312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764050, 44.189518, 38.802925>,  <33.530643, 44.154530, 38.846493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764050, 44.189518, 38.802925>,  <34.153057, 44.247833, 38.730312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764050, 44.189518, 38.802925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124207, -0.984339, -0.125095,
		0.196925, -0.099110, 0.975396,
		-0.972519, -0.145786, 0.181531,
		33.472294, 44.145782, 38.857384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206982, 43.664494, 39.071659>,  <34.153057, 44.247833, 38.730312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206982, 43.664494, 39.071659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819439, 43.703972, 38.980820>,  <33.586914, 43.727657, 38.926315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819439, 43.703972, 38.980820>,  <34.206982, 43.664494, 39.071659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819439, 43.703972, 38.980820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088723, -0.994606, -0.053728,
		-0.231173, -0.031906, 0.972389,
		-0.968859, 0.098694, -0.227096,
		33.528782, 43.733582, 38.912689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791195, 43.287243, 39.563614>,  <34.206982, 43.664494, 39.071659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791195, 43.287243, 39.563614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540012, 43.318813, 39.253918>,  <33.389305, 43.337757, 39.068100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540012, 43.318813, 39.253918>,  <33.791195, 43.287243, 39.563614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540012, 43.318813, 39.253918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003978, -0.995156, -0.098224,
		-0.778242, -0.058600, 0.625224,
		-0.627952, 0.078930, -0.774239,
		33.351627, 43.342491, 39.021645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234035, 42.737186, 39.634567>,  <33.791195, 43.287243, 39.563614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234035, 42.737186, 39.634567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261204, 42.832481, 39.247036>,  <33.277504, 42.889660, 39.014519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261204, 42.832481, 39.247036>,  <33.234035, 42.737186, 39.634567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261204, 42.832481, 39.247036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092907, -0.968362, -0.231611,
		-0.993356, -0.074280, -0.087904,
		0.067919, 0.238239, -0.968829,
		33.281578, 42.903954, 38.956387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754719, 42.214279, 39.256321>,  <33.234035, 42.737186, 39.634567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754719, 42.214279, 39.256321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.013939, 42.358753, 38.988121>,  <33.169472, 42.445438, 38.827202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.013939, 42.358753, 38.988121>,  <32.754719, 42.214279, 39.256321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013939, 42.358753, 38.988121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180302, -0.928124, -0.325695,
		-0.739946, 0.090174, -0.666594,
		0.648051, 0.361186, -0.670503,
		33.208355, 42.467110, 38.786968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195202, 42.353962, 38.836102>,  <32.754719, 42.214279, 39.256321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195202, 42.353962, 38.836102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867214, 42.187084, 38.992870>,  <31.670422, 42.086960, 39.086929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867214, 42.187084, 38.992870>,  <32.195202, 42.353962, 38.836102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867214, 42.187084, 38.992870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315619, 0.900724, 0.298465,
		-0.477527, 0.121035, -0.870240,
		-0.819971, -0.417190, 0.391919,
		31.621223, 42.061928, 39.110447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662340, 42.894222, 38.728302>,  <32.195202, 42.353962, 38.836102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662340, 42.894222, 38.728302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540159, 42.662247, 39.030392>,  <31.466850, 42.523060, 39.211647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540159, 42.662247, 39.030392>,  <31.662340, 42.894222, 38.728302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540159, 42.662247, 39.030392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428502, 0.792005, 0.434872,
		-0.850343, -0.190782, -0.490427,
		-0.305454, -0.579939, 0.755227,
		31.448523, 42.488266, 39.256958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961630, 43.065144, 38.832283>,  <31.662340, 42.894222, 38.728302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961630, 43.065144, 38.832283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.069355, 42.869450, 39.164097>,  <31.133989, 42.752033, 39.363186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.069355, 42.869450, 39.164097>,  <30.961630, 43.065144, 38.832283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069355, 42.869450, 39.164097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437644, 0.705108, 0.557934,
		-0.857868, -0.513299, -0.024214,
		0.269313, -0.489231, 0.829532,
		31.150148, 42.722679, 39.412956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409950, 42.908924, 39.138748>,  <30.961630, 43.065144, 38.832283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409950, 42.908924, 39.138748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.648272, 42.895611, 39.459724>,  <30.791265, 42.887623, 39.652309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.648272, 42.895611, 39.459724>,  <30.409950, 42.908924, 39.138748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648272, 42.895611, 39.459724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537685, 0.725655, 0.429325,
		-0.596583, -0.687254, 0.414453,
		0.595805, -0.033283, 0.802439,
		30.827013, 42.885628, 39.700455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998140, 43.121555, 39.630230>,  <30.409950, 42.908924, 39.138748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998140, 43.121555, 39.630230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349506, 43.180557, 39.812054>,  <30.560326, 43.215958, 39.921150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349506, 43.180557, 39.812054>,  <29.998140, 43.121555, 39.630230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349506, 43.180557, 39.812054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343911, 0.855565, 0.386953,
		-0.331828, -0.496235, 0.802273,
		0.878416, 0.147509, 0.454561,
		30.613031, 43.224812, 39.948421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849247, 43.338974, 40.296768>,  <29.998140, 43.121555, 39.630230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849247, 43.338974, 40.296768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.231630, 43.454590, 40.276371>,  <30.461061, 43.523960, 40.264133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.231630, 43.454590, 40.276371>,  <29.849247, 43.338974, 40.296768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231630, 43.454590, 40.276371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197117, 0.760988, 0.618096,
		0.217455, -0.580823, 0.784448,
		0.955960, 0.289036, -0.050991,
		30.518417, 43.541302, 40.261074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002302, 43.534229, 41.012615>,  <29.849247, 43.338974, 40.296768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002302, 43.534229, 41.012615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265356, 43.707951, 40.766396>,  <30.423189, 43.812183, 40.618664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265356, 43.707951, 40.766396>,  <30.002302, 43.534229, 41.012615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265356, 43.707951, 40.766396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067111, 0.780071, 0.622082,
		0.750340, -0.450414, 0.483857,
		0.657637, 0.434300, -0.615545,
		30.462646, 43.838242, 40.581730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921164, 43.009319, 41.574188>,  <30.002302, 43.534229, 41.012615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921164, 43.009319, 41.574188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.557062, 42.919365, 41.713253>,  <29.338602, 42.865395, 41.796692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.557062, 42.919365, 41.713253>,  <29.921164, 43.009319, 41.574188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557062, 42.919365, 41.713253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126466, -0.950527, -0.283733,
		0.394265, -0.214302, 0.893661,
		-0.910254, -0.224884, 0.347658,
		29.283985, 42.851898, 41.817551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984970, 42.400364, 41.704948>,  <29.921164, 43.009319, 41.574188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984970, 42.400364, 41.704948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588852, 42.410519, 41.759605>,  <29.351181, 42.416611, 41.792400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588852, 42.410519, 41.759605>,  <29.984970, 42.400364, 41.704948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588852, 42.410519, 41.759605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045701, -0.987978, -0.147683,
		0.131247, -0.152494, 0.979551,
		-0.990296, 0.025384, 0.136638,
		29.291763, 42.418133, 41.800598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849478, 41.886574, 42.261955>,  <29.984970, 42.400364, 41.704948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849478, 41.886574, 42.261955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547842, 41.967392, 42.011986>,  <29.366859, 42.015884, 41.862003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547842, 41.967392, 42.011986>,  <29.849478, 41.886574, 42.261955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547842, 41.967392, 42.011986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014964, -0.956543, -0.291208,
		-0.656600, -0.210246, 0.724344,
		-0.754091, 0.202047, -0.624919,
		29.321615, 42.028008, 41.824509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412420, 41.222691, 42.280579>,  <29.849478, 41.886574, 42.261955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412420, 41.222691, 42.280579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.321602, 41.430378, 41.951004>,  <29.267111, 41.554989, 41.753262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.321602, 41.430378, 41.951004>,  <29.412420, 41.222691, 42.280579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321602, 41.430378, 41.951004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263662, -0.847204, -0.461224,
		-0.937514, 0.112521, 0.329251,
		-0.227045, 0.519215, -0.823933,
		29.253489, 41.586143, 41.703823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731728, 41.036263, 42.068218>,  <29.412420, 41.222691, 42.280579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731728, 41.036263, 42.068218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.890278, 41.189041, 41.734272>,  <28.985409, 41.280708, 41.533905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.890278, 41.189041, 41.734272>,  <28.731728, 41.036263, 42.068218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890278, 41.189041, 41.734272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279369, -0.816051, -0.505977,
		-0.874550, 0.433794, -0.216761,
		0.396378, 0.381946, -0.834867,
		29.009192, 41.303623, 41.483810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413427, 40.785423, 41.555767>,  <28.731728, 41.036263, 42.068218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413427, 40.785423, 41.555767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.741793, 40.912235, 41.365780>,  <28.938812, 40.988323, 41.251789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.741793, 40.912235, 41.365780>,  <28.413427, 40.785423, 41.555767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741793, 40.912235, 41.365780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018532, -0.816513, -0.577030,
		-0.570749, 0.482495, -0.664413,
		0.820915, 0.317026, -0.474966,
		28.988068, 41.007343, 41.223289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236376, 40.695290, 40.792011>,  <28.413427, 40.785423, 41.555767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236376, 40.695290, 40.792011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.635288, 40.690567, 40.821114>,  <28.874636, 40.687733, 40.838573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.635288, 40.690567, 40.821114>,  <28.236376, 40.695290, 40.792011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635288, 40.690567, 40.821114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030427, -0.833145, -0.552216,
		0.067135, 0.552928, -0.830520,
		0.997280, -0.011803, 0.072757,
		28.934473, 40.687027, 40.842941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.111668, 45.520233, 44.425110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387283, 45.609463, 44.149296>,  <33.552654, 45.663002, 43.983807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387283, 45.609463, 44.149296>,  <33.111668, 45.520233, 44.425110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387283, 45.609463, 44.149296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208228, -0.972268, -0.106470,
		-0.694166, -0.070219, -0.716382,
		0.689039, 0.223078, -0.689537,
		33.593994, 45.676388, 43.942436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001495, 44.961826, 44.041096>,  <33.111668, 45.520233, 44.425110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001495, 44.961826, 44.041096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.370632, 45.108479, 43.993851>,  <33.592113, 45.196472, 43.965504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.370632, 45.108479, 43.993851>,  <33.001495, 44.961826, 44.041096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370632, 45.108479, 43.993851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344150, -0.922522, -0.174681,
		-0.173004, 0.120554, -0.977515,
		0.922838, 0.366632, -0.118112,
		33.647484, 45.218468, 43.958416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192680, 44.659267, 43.509113>,  <33.001495, 44.961826, 44.041096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192680, 44.659267, 43.509113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549225, 44.791592, 43.633072>,  <33.763153, 44.870987, 43.707447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549225, 44.791592, 43.633072>,  <33.192680, 44.659267, 43.509113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549225, 44.791592, 43.633072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376109, -0.921349, -0.098280,
		0.253014, 0.204159, -0.945676,
		0.891362, 0.330811, 0.309900,
		33.816635, 44.890835, 43.726040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572220, 44.567318, 42.940895>,  <33.192680, 44.659267, 43.509113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572220, 44.567318, 42.940895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.803364, 44.586075, 43.266811>,  <33.942051, 44.597328, 43.462360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.803364, 44.586075, 43.266811>,  <33.572220, 44.567318, 42.940895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803364, 44.586075, 43.266811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312018, -0.935200, -0.167470,
		0.754136, 0.351002, -0.555046,
		0.577861, 0.046889, 0.814787,
		33.976723, 44.600143, 43.511246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150600, 44.351192, 42.668343>,  <33.572220, 44.567318, 42.940895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150600, 44.351192, 42.668343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.187931, 44.298996, 43.063160>,  <34.210331, 44.267677, 43.300053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.187931, 44.298996, 43.063160>,  <34.150600, 44.351192, 42.668343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187931, 44.298996, 43.063160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299085, -0.941913, -0.152800,
		0.949652, 0.309472, -0.048878,
		0.093326, -0.130488, 0.987048,
		34.215927, 44.259850, 43.359276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716854, 43.972923, 42.639149>,  <34.150600, 44.351192, 42.668343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716854, 43.972923, 42.639149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.583015, 43.895561, 43.008068>,  <34.502712, 43.849144, 43.229420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.583015, 43.895561, 43.008068>,  <34.716854, 43.972923, 42.639149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583015, 43.895561, 43.008068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204891, -0.970230, -0.129124,
		0.919818, 0.145767, 0.364262,
		-0.334596, -0.193404, 0.922302,
		34.482635, 43.837540, 43.284760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266155, 43.687977, 43.219166>,  <34.716854, 43.972923, 42.639149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266155, 43.687977, 43.219166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897854, 43.556763, 43.303650>,  <34.676872, 43.478035, 43.354340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897854, 43.556763, 43.303650>,  <35.266155, 43.687977, 43.219166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897854, 43.556763, 43.303650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324728, -0.944421, -0.051188,
		0.216261, 0.021454, 0.976100,
		-0.920751, -0.328037, 0.211208,
		34.621628, 43.458351, 43.367012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357349, 43.103172, 43.584335>,  <35.266155, 43.687977, 43.219166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357349, 43.103172, 43.584335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.964508, 43.083778, 43.511543>,  <34.728802, 43.072144, 43.467869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.964508, 43.083778, 43.511543>,  <35.357349, 43.103172, 43.584335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964508, 43.083778, 43.511543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042266, -0.998388, 0.037886,
		-0.183523, 0.029517, 0.982572,
		-0.982107, -0.048482, -0.181979,
		34.669876, 43.069233, 43.456951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068707, 42.657291, 44.095974>,  <35.357349, 43.103172, 43.584335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068707, 42.657291, 44.095974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799042, 42.642422, 43.800915>,  <34.637241, 42.633499, 43.623878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799042, 42.642422, 43.800915>,  <35.068707, 42.657291, 44.095974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799042, 42.642422, 43.800915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001640, -0.998805, 0.048839,
		-0.738581, 0.031716, 0.673418,
		-0.674162, -0.037176, -0.737647,
		34.596794, 42.631268, 43.579620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638775, 42.074997, 44.191986>,  <35.068707, 42.657291, 44.095974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638775, 42.074997, 44.191986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582497, 42.154564, 43.804039>,  <34.548729, 42.202305, 43.571270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582497, 42.154564, 43.804039>,  <34.638775, 42.074997, 44.191986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582497, 42.154564, 43.804039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093594, -0.972548, -0.213049,
		-0.985619, -0.120748, 0.118216,
		-0.140696, 0.198921, -0.969863,
		34.540287, 42.214241, 43.513081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092407, 41.589909, 44.000004>,  <34.638775, 42.074997, 44.191986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092407, 41.589909, 44.000004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275028, 41.714428, 43.666622>,  <34.384602, 41.789139, 43.466591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275028, 41.714428, 43.666622>,  <34.092407, 41.589909, 44.000004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275028, 41.714428, 43.666622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096330, -0.948577, -0.301534,
		-0.884465, 0.057380, -0.463064,
		0.456554, 0.311303, -0.833456,
		34.411995, 41.807819, 43.416584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698277, 41.281364, 43.527809>,  <34.092407, 41.589909, 44.000004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698277, 41.281364, 43.527809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044094, 41.376308, 43.350624>,  <34.251587, 41.433273, 43.244312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044094, 41.376308, 43.350624>,  <33.698277, 41.281364, 43.527809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044094, 41.376308, 43.350624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122290, -0.954301, -0.272681,
		-0.487443, 0.181576, -0.854066,
		0.864549, 0.237360, -0.442963,
		34.303459, 41.447517, 43.217735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055649, 41.210300, 42.939884>,  <33.698277, 41.281364, 43.527809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055649, 41.210300, 42.939884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.734921, 41.028610, 43.095192>,  <32.542484, 40.919598, 43.188377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.734921, 41.028610, 43.095192>,  <33.055649, 41.210300, 42.939884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734921, 41.028610, 43.095192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342161, 0.881696, 0.324867,
		-0.489902, 0.127634, -0.862384,
		-0.801824, -0.454227, 0.388273,
		32.494373, 40.892342, 43.211674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530621, 41.719078, 42.843098>,  <33.055649, 41.210300, 42.939884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530621, 41.719078, 42.843098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.380066, 41.470398, 43.117855>,  <32.289734, 41.321190, 43.282711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.380066, 41.470398, 43.117855>,  <32.530621, 41.719078, 42.843098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380066, 41.470398, 43.117855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512355, 0.757403, 0.404764,
		-0.771895, -0.199583, -0.603609,
		-0.376391, -0.621698, 0.686893,
		32.267147, 41.283890, 43.323921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788881, 41.810959, 42.882000>,  <32.530621, 41.719078, 42.843098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788881, 41.810959, 42.882000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.835966, 41.607563, 43.223194>,  <31.864216, 41.485527, 43.427910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.835966, 41.607563, 43.223194>,  <31.788881, 41.810959, 42.882000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835966, 41.607563, 43.223194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577886, 0.663463, 0.475252,
		-0.807584, -0.548871, -0.215751,
		0.117710, -0.508485, 0.852987,
		31.871279, 41.455017, 43.479092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086437, 41.851959, 43.049274>,  <31.788881, 41.810959, 42.882000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086437, 41.851959, 43.049274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.305731, 41.762714, 43.371681>,  <31.437307, 41.709167, 43.565125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.305731, 41.762714, 43.371681>,  <31.086437, 41.851959, 43.049274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305731, 41.762714, 43.371681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615713, 0.544544, 0.569534,
		-0.565982, -0.808511, 0.161163,
		0.548235, -0.223115, 0.806014,
		31.470201, 41.695782, 43.613483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648581, 41.642467, 43.616222>,  <31.086437, 41.851959, 43.049274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648581, 41.642467, 43.616222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.992699, 41.735355, 43.797756>,  <31.199169, 41.791088, 43.906677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.992699, 41.735355, 43.797756>,  <30.648581, 41.642467, 43.616222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992699, 41.735355, 43.797756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504111, 0.520052, 0.689506,
		-0.075901, -0.821962, 0.564462,
		0.860297, 0.232217, 0.453832,
		31.250788, 41.805019, 43.933907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673780, 41.528522, 44.363350>,  <30.648581, 41.642467, 43.616222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673780, 41.528522, 44.363350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.958900, 41.806442, 44.325050>,  <31.129972, 41.973194, 44.302071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.958900, 41.806442, 44.325050>,  <30.673780, 41.528522, 44.363350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958900, 41.806442, 44.325050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511971, 0.608750, 0.606060,
		0.479375, -0.382983, 0.789635,
		0.712801, 0.694800, -0.095743,
		31.172741, 42.014881, 44.296326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737976, 41.864628, 45.016125>,  <30.673780, 41.528522, 44.363350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737976, 41.864628, 45.016125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.903528, 42.155106, 44.796547>,  <31.002859, 42.329391, 44.664799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.903528, 42.155106, 44.796547>,  <30.737976, 41.864628, 45.016125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903528, 42.155106, 44.796547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569010, 0.677075, 0.466688,
		0.710587, 0.119208, 0.693437,
		0.413876, 0.726195, -0.548951,
		31.027693, 42.372963, 44.631863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846764, 42.341640, 45.518963>,  <30.737976, 41.864628, 45.016125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846764, 42.341640, 45.518963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.865839, 42.556458, 45.182079>,  <30.877283, 42.685349, 44.979950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.865839, 42.556458, 45.182079>,  <30.846764, 42.341640, 45.518963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865839, 42.556458, 45.182079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518075, 0.734188, 0.438824,
		0.854005, 0.415401, 0.313236,
		0.047686, 0.537038, -0.842209,
		30.880144, 42.717567, 44.929417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065199, 42.972523, 45.662781>,  <30.846764, 42.341640, 45.518963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065199, 42.972523, 45.662781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.885485, 43.045364, 45.312927>,  <30.777657, 43.089069, 45.103016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.885485, 43.045364, 45.312927>,  <31.065199, 42.972523, 45.662781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885485, 43.045364, 45.312927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425682, 0.817092, 0.388787,
		0.785454, 0.546992, -0.289590,
		-0.449285, 0.182101, -0.874633,
		30.750700, 43.099995, 45.050537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056952, 43.693840, 45.572666>,  <31.065199, 42.972523, 45.662781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056952, 43.693840, 45.572666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769552, 43.569557, 45.323757>,  <30.597113, 43.494987, 45.174412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769552, 43.569557, 45.323757>,  <31.056952, 43.693840, 45.572666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769552, 43.569557, 45.323757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526118, 0.827973, 0.194066,
		0.454928, 0.466825, -0.758364,
		-0.718499, -0.310703, -0.622272,
		30.554003, 43.476345, 45.137074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880426, 44.259869, 45.200459>,  <31.056952, 43.693840, 45.572666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880426, 44.259869, 45.200459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.568428, 44.015907, 45.144424>,  <30.381229, 43.869530, 45.110802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.568428, 44.015907, 45.144424>,  <30.880426, 44.259869, 45.200459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568428, 44.015907, 45.144424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613819, 0.702106, 0.360933,
		-0.121776, 0.367516, -0.922010,
		-0.779998, -0.609900, -0.140089,
		30.334429, 43.832935, 45.102398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384460, 44.575706, 44.750854>,  <30.880426, 44.259869, 45.200459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384460, 44.575706, 44.750854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194838, 44.297123, 44.966343>,  <30.081064, 44.129974, 45.095634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194838, 44.297123, 44.966343>,  <30.384460, 44.575706, 44.750854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194838, 44.297123, 44.966343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641669, 0.692232, 0.330267,
		-0.602936, -0.189114, -0.775051,
		-0.474057, -0.696456, 0.538720,
		30.052620, 44.088184, 45.127960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674561, 44.773121, 44.639763>,  <30.384460, 44.575706, 44.750854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674561, 44.773121, 44.639763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687077, 44.520008, 44.949242>,  <29.694586, 44.368141, 45.134930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687077, 44.520008, 44.949242>,  <29.674561, 44.773121, 44.639763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687077, 44.520008, 44.949242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705091, 0.534671, 0.465803,
		-0.708426, -0.560105, -0.429436,
		0.031292, -0.632779, 0.773700,
		29.696465, 44.330173, 45.181351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919519, 44.689434, 44.855114>,  <29.674561, 44.773121, 44.639763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919519, 44.689434, 44.855114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.173502, 44.601814, 45.151451>,  <29.325891, 44.549244, 45.329254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.173502, 44.601814, 45.151451>,  <28.919519, 44.689434, 44.855114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173502, 44.601814, 45.151451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543168, 0.555337, 0.629738,
		-0.549361, -0.802258, 0.233634,
		0.634957, -0.219051, 0.740841,
		29.363989, 44.536098, 45.373703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921246, 44.087666, 44.410320>,  <28.919519, 44.689434, 44.855114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921246, 44.087666, 44.410320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923203, 44.413170, 44.177849>,  <28.924377, 44.608475, 44.038368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923203, 44.413170, 44.177849>,  <28.921246, 44.087666, 44.410320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923203, 44.413170, 44.177849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134263, -0.575386, -0.806786,
		-0.990934, 0.081979, 0.106442,
		0.004894, 0.813763, -0.581176,
		28.924671, 44.657299, 44.003494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383223, 44.024010, 43.995914>,  <28.921246, 44.087666, 44.410320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383223, 44.024010, 43.995914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.585537, 44.300064, 43.788879>,  <28.706926, 44.465694, 43.664658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.585537, 44.300064, 43.788879>,  <28.383223, 44.024010, 43.995914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585537, 44.300064, 43.788879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120712, -0.537470, -0.834599,
		-0.854171, 0.484608, -0.188538,
		0.505787, 0.690131, -0.517589,
		28.737272, 44.507103, 43.633602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042418, 44.208759, 43.349934>,  <28.383223, 44.024010, 43.995914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042418, 44.208759, 43.349934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.430508, 44.263592, 43.270065>,  <28.663363, 44.296490, 43.222145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.430508, 44.263592, 43.270065>,  <28.042418, 44.208759, 43.349934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430508, 44.263592, 43.270065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064311, -0.649019, -0.758049,
		-0.233504, 0.748321, -0.620880,
		0.970227, 0.137077, -0.199674,
		28.721575, 44.304714, 43.210163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081772, 44.305370, 42.678963>,  <28.042418, 44.208759, 43.349934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081772, 44.305370, 42.678963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.463711, 44.212803, 42.753487>,  <28.692875, 44.157265, 42.798203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.463711, 44.212803, 42.753487>,  <28.081772, 44.305370, 42.678963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463711, 44.212803, 42.753487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033362, -0.539624, -0.841245,
		0.295215, 0.809477, -0.507538,
		0.954848, -0.231416, 0.186311,
		28.750166, 44.143379, 42.809380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331493, 44.210804, 42.013447>,  <28.081772, 44.305370, 42.678963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331493, 44.210804, 42.013447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.618704, 44.058357, 42.246407>,  <28.791031, 43.966888, 42.386181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.618704, 44.058357, 42.246407>,  <28.331493, 44.210804, 42.013447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618704, 44.058357, 42.246407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265089, -0.623951, -0.735128,
		0.643557, 0.682229, -0.346983,
		0.718026, -0.381116, 0.582400,
		28.834112, 43.944023, 42.421127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098818, 44.155933, 41.661320>,  <28.331493, 44.210804, 42.013447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098818, 44.155933, 41.661320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.062571, 43.870785, 41.939484>,  <29.040823, 43.699696, 42.106380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.062571, 43.870785, 41.939484>,  <29.098818, 44.155933, 41.661320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062571, 43.870785, 41.939484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327715, -0.680739, -0.655131,
		0.940421, 0.168530, 0.295307,
		-0.090618, -0.712876, 0.695411,
		29.035385, 43.656921, 42.148106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767401, 43.707886, 41.678623>,  <29.098818, 44.155933, 41.661320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767401, 43.707886, 41.678623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.490446, 43.472439, 41.845539>,  <29.324272, 43.331173, 41.945690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.490446, 43.472439, 41.845539>,  <29.767401, 43.707886, 41.678623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490446, 43.472439, 41.845539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364412, -0.784443, -0.501850,
		0.622738, -0.195408, 0.757636,
		-0.692388, -0.588613, 0.417294,
		29.282730, 43.295856, 41.970726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461229, 43.834652, 41.466984>,  <29.767401, 43.707886, 41.678623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461229, 43.834652, 41.466984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.531933, 44.010803, 41.114887>,  <30.574354, 44.116493, 40.903629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.531933, 44.010803, 41.114887>,  <30.461229, 43.834652, 41.466984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531933, 44.010803, 41.114887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125767, 0.876888, 0.463950,
		0.976186, -0.192712, 0.099611,
		0.176756, 0.440374, -0.880243,
		30.584959, 44.142914, 40.850815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992695, 44.279171, 41.605106>,  <30.461229, 43.834652, 41.466984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992695, 44.279171, 41.605106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.867933, 44.448540, 41.264889>,  <30.793076, 44.550163, 41.060757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.867933, 44.448540, 41.264889>,  <30.992695, 44.279171, 41.605106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867933, 44.448540, 41.264889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267593, 0.898114, 0.348976,
		0.911652, -0.118753, -0.393431,
		-0.311905, 0.423424, -0.850545,
		30.774363, 44.575565, 41.009724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521046, 44.684422, 41.365955>,  <30.992695, 44.279171, 41.605106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521046, 44.684422, 41.365955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.191206, 44.842068, 41.203617>,  <30.993303, 44.936657, 41.106213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.191206, 44.842068, 41.203617>,  <31.521046, 44.684422, 41.365955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191206, 44.842068, 41.203617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235167, 0.891280, 0.387705,
		0.514524, 0.224259, -0.827631,
		-0.824597, 0.394116, -0.405847,
		30.943827, 44.960304, 41.081863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729000, 45.339962, 41.120789>,  <31.521046, 44.684422, 41.365955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729000, 45.339962, 41.120789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335081, 45.409000, 41.112907>,  <31.098730, 45.450424, 41.108177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335081, 45.409000, 41.112907>,  <31.729000, 45.339962, 41.120789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335081, 45.409000, 41.112907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153840, 0.919173, 0.362565,
		0.080692, 0.354020, -0.931750,
		-0.984795, 0.172596, -0.019707,
		31.039642, 45.460781, 41.106995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568071, 45.939186, 40.767250>,  <31.729000, 45.339962, 41.120789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568071, 45.939186, 40.767250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271961, 45.884098, 41.030468>,  <31.094296, 45.851048, 41.188400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271961, 45.884098, 41.030468>,  <31.568071, 45.939186, 40.767250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271961, 45.884098, 41.030468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185423, 0.899009, 0.396738,
		-0.646228, 0.415713, -0.639979,
		-0.740276, -0.137716, 0.658047,
		31.049879, 45.842785, 41.227882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284111, 46.543991, 40.746632>,  <31.568071, 45.939186, 40.767250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284111, 46.543991, 40.746632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176859, 46.353569, 41.081650>,  <31.112507, 46.239315, 41.282661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176859, 46.353569, 41.081650>,  <31.284111, 46.543991, 40.746632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176859, 46.353569, 41.081650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322073, 0.775059, 0.543648,
		-0.907951, 0.415519, -0.054494,
		-0.268132, -0.476054, 0.837543,
		31.096420, 46.210754, 41.332912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912073, 47.017918, 41.090553>,  <31.284111, 46.543991, 40.746632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912073, 47.017918, 41.090553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.992271, 46.749237, 41.375824>,  <31.040390, 46.588028, 41.546986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.992271, 46.749237, 41.375824>,  <30.912073, 47.017918, 41.090553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992271, 46.749237, 41.375824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379797, 0.724321, 0.575424,
		-0.903081, 0.155492, 0.400334,
		0.200497, -0.671700, 0.713176,
		31.052420, 46.547726, 41.589775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754543, 47.374958, 41.707897>,  <30.912073, 47.017918, 41.090553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754543, 47.374958, 41.707897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.998722, 47.081207, 41.826588>,  <31.145229, 46.904957, 41.897804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.998722, 47.081207, 41.826588>,  <30.754543, 47.374958, 41.707897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998722, 47.081207, 41.826588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372399, 0.596749, 0.710781,
		-0.699053, -0.323391, 0.637764,
		0.610445, -0.734377, 0.296729,
		31.181856, 46.860893, 41.915607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811766, 47.425678, 42.442493>,  <30.754543, 47.374958, 41.707897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811766, 47.425678, 42.442493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129097, 47.203228, 42.343414>,  <31.319496, 47.069759, 42.283966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129097, 47.203228, 42.343414>,  <30.811766, 47.425678, 42.442493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129097, 47.203228, 42.343414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597343, 0.632518, 0.493054,
		-0.117526, -0.539115, 0.833992,
		0.793328, -0.556126, -0.247700,
		31.367096, 47.036392, 42.269104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.135410, 32.422520, 35.708481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531483, 32.462143, 35.669041>,  <32.769127, 32.485916, 35.645378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531483, 32.462143, 35.669041>,  <32.135410, 32.422520, 35.708481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531483, 32.462143, 35.669041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013857, 0.771561, 0.636005,
		0.139077, -0.628396, 0.765360,
		0.990185, 0.099059, -0.098598,
		32.828537, 32.491859, 35.639462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474808, 32.270859, 36.262417>,  <32.135410, 32.422520, 35.708481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474808, 32.270859, 36.262417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729923, 32.510380, 36.068649>,  <32.882992, 32.654095, 35.952389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729923, 32.510380, 36.068649>,  <32.474808, 32.270859, 36.262417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729923, 32.510380, 36.068649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061900, 0.666756, 0.742701,
		0.767724, -0.443697, 0.462312,
		0.637784, 0.598807, -0.484421,
		32.921261, 32.690022, 35.923325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963768, 32.424580, 36.743423>,  <32.474808, 32.270859, 36.262417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963768, 32.424580, 36.743423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993370, 32.722271, 36.477898>,  <33.011131, 32.900887, 36.318581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993370, 32.722271, 36.477898>,  <32.963768, 32.424580, 36.743423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993370, 32.722271, 36.477898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028848, 0.663766, 0.747384,
		0.996840, -0.074461, 0.027654,
		0.074007, 0.744225, -0.663817,
		33.015572, 32.945538, 36.278751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441154, 32.882118, 37.045765>,  <32.963768, 32.424580, 36.743423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441154, 32.882118, 37.045765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265629, 33.095867, 36.756798>,  <33.160313, 33.224117, 36.583416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265629, 33.095867, 36.756798>,  <33.441154, 32.882118, 37.045765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265629, 33.095867, 36.756798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060925, 0.784416, 0.617235,
		0.896511, 0.314864, -0.311655,
		-0.438813, 0.534370, -0.722421,
		33.133984, 33.256180, 36.540073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662449, 33.603260, 37.065754>,  <33.441154, 32.882118, 37.045765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662449, 33.603260, 37.065754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329041, 33.668732, 36.854679>,  <33.128994, 33.708015, 36.728035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329041, 33.668732, 36.854679>,  <33.662449, 33.603260, 37.065754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329041, 33.668732, 36.854679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098744, 0.895599, 0.433766,
		0.543593, 0.413659, -0.730338,
		-0.833520, 0.163675, -0.527688,
		33.078983, 33.717834, 36.696373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712620, 34.375896, 36.794216>,  <33.662449, 33.603260, 37.065754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712620, 34.375896, 36.794216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327126, 34.276085, 36.756363>,  <33.095829, 34.216198, 36.733650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327126, 34.276085, 36.756363>,  <33.712620, 34.375896, 36.794216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327126, 34.276085, 36.756363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262621, 0.949775, 0.170169,
		0.047417, 0.188850, -0.980860,
		-0.963733, -0.249526, -0.094631,
		33.038006, 34.201225, 36.727974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395386, 34.885506, 36.359394>,  <33.712620, 34.375896, 36.794216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395386, 34.885506, 36.359394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109875, 34.706264, 36.574699>,  <32.938568, 34.598721, 36.703884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109875, 34.706264, 36.574699>,  <33.395386, 34.885506, 36.359394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109875, 34.706264, 36.574699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381262, 0.893285, 0.238079,
		-0.587507, -0.035285, -0.808449,
		-0.713775, -0.448104, 0.538264,
		32.895741, 34.571835, 36.736179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737644, 35.335247, 36.167736>,  <33.395386, 34.885506, 36.359394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737644, 35.335247, 36.167736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604378, 35.125568, 36.481224>,  <32.524418, 34.999760, 36.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604378, 35.125568, 36.481224>,  <32.737644, 35.335247, 36.167736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604378, 35.125568, 36.481224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509928, 0.799335, 0.317863,
		-0.793078, -0.293740, -0.533614,
		-0.333167, -0.524195, 0.783721,
		32.504429, 34.968311, 36.716339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964987, 35.446960, 36.162903>,  <32.737644, 35.335247, 36.167736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964987, 35.446960, 36.162903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067291, 35.320873, 36.528465>,  <32.128674, 35.245220, 36.747803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067291, 35.320873, 36.528465>,  <31.964987, 35.446960, 36.162903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067291, 35.320873, 36.528465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596569, 0.692423, 0.405779,
		-0.760717, -0.648991, -0.010952,
		0.255763, -0.315216, 0.913906,
		32.144020, 35.226307, 36.802635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377583, 35.511547, 36.587608>,  <31.964987, 35.446960, 36.162903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377583, 35.511547, 36.587608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690521, 35.519562, 36.836617>,  <31.878284, 35.524368, 36.986019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690521, 35.519562, 36.836617>,  <31.377583, 35.511547, 36.587608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690521, 35.519562, 36.836617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430928, 0.739055, 0.517783,
		-0.449702, -0.673347, 0.586832,
		0.782349, 0.020034, 0.622518,
		31.925226, 35.525574, 37.023373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114594, 35.414021, 37.206387>,  <31.377583, 35.511547, 36.587608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114594, 35.414021, 37.206387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469070, 35.579842, 37.289146>,  <31.681757, 35.679333, 37.338802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469070, 35.579842, 37.289146>,  <31.114594, 35.414021, 37.206387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469070, 35.579842, 37.289146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455511, 0.697952, 0.552605,
		0.084678, -0.583960, 0.807354,
		0.886194, 0.414552, 0.206899,
		31.734928, 35.704208, 37.351215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144623, 35.550167, 37.967297>,  <31.114594, 35.414021, 37.206387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144623, 35.550167, 37.967297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411591, 35.773586, 37.770287>,  <31.571772, 35.907639, 37.652081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411591, 35.773586, 37.770287>,  <31.144623, 35.550167, 37.967297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411591, 35.773586, 37.770287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318971, 0.812066, 0.488678,
		0.672912, -0.169051, 0.720147,
		0.667419, 0.558543, -0.492526,
		31.611816, 35.941151, 37.622528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049862, 35.516506, 38.621803>,  <31.144623, 35.550167, 37.967297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049862, 35.516506, 38.621803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657774, 35.444107, 38.653831>,  <30.422522, 35.400669, 38.673046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657774, 35.444107, 38.653831>,  <31.049862, 35.516506, 38.621803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657774, 35.444107, 38.653831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128537, -0.889814, -0.437847,
		0.150494, -0.418894, 0.895477,
		-0.980219, -0.180995, 0.080068,
		30.363708, 35.389809, 38.677853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966597, 34.899094, 38.889774>,  <31.049862, 35.516506, 38.621803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966597, 34.899094, 38.889774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603323, 34.956871, 38.732632>,  <30.385359, 34.991539, 38.638344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603323, 34.956871, 38.732632>,  <30.966597, 34.899094, 38.889774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603323, 34.956871, 38.732632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001330, -0.939560, -0.342381,
		-0.418570, -0.310422, 0.853485,
		-0.908183, 0.144446, -0.392859,
		30.330868, 35.000206, 38.614773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462097, 34.323185, 39.161606>,  <30.966597, 34.899094, 38.889774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462097, 34.323185, 39.161606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269133, 34.466663, 38.841953>,  <30.153355, 34.552750, 38.650162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269133, 34.466663, 38.841953>,  <30.462097, 34.323185, 39.161606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269133, 34.466663, 38.841953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125848, -0.931228, -0.342017,
		-0.866857, -0.064423, 0.494376,
		-0.482411, 0.358697, -0.799135,
		30.124409, 34.574272, 38.602211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995373, 33.793793, 39.027847>,  <30.462097, 34.323185, 39.161606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995373, 33.793793, 39.027847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994364, 34.006916, 38.689354>,  <29.993757, 34.134789, 38.486259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994364, 34.006916, 38.689354>,  <29.995373, 33.793793, 39.027847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994364, 34.006916, 38.689354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114625, -0.840813, -0.529051,
		-0.993406, 0.095665, 0.063195,
		-0.002523, 0.532806, -0.846234,
		29.993607, 34.166759, 38.435482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331017, 33.631268, 38.776054>,  <29.995373, 33.793793, 39.027847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331017, 33.631268, 38.776054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579939, 33.754574, 38.488247>,  <29.729292, 33.828560, 38.315563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579939, 33.754574, 38.488247>,  <29.331017, 33.631268, 38.776054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579939, 33.754574, 38.488247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197211, -0.827796, -0.525226,
		-0.757524, 0.468748, -0.454349,
		0.622307, 0.308268, -0.719517,
		29.766630, 33.847054, 38.272392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996626, 33.579140, 38.148987>,  <29.331017, 33.631268, 38.776054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996626, 33.579140, 38.148987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379522, 33.573860, 38.033390>,  <29.609261, 33.570690, 37.964031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379522, 33.573860, 38.033390>,  <28.996626, 33.579140, 38.148987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379522, 33.573860, 38.033390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148099, -0.880491, -0.450336,
		-0.248510, 0.473879, -0.844797,
		0.957241, -0.013201, -0.288992,
		29.666695, 33.569901, 37.946693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016483, 33.383671, 37.470306>,  <28.996626, 33.579140, 38.148987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016483, 33.383671, 37.470306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402267, 33.330902, 37.561882>,  <29.633738, 33.299240, 37.616829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402267, 33.330902, 37.561882>,  <29.016483, 33.383671, 37.470306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402267, 33.330902, 37.561882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059074, -0.952166, -0.299816,
		0.257545, 0.275635, -0.926119,
		0.964459, -0.131926, 0.228943,
		29.691605, 33.291325, 37.630566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298410, 33.097717, 36.987839>,  <29.016483, 33.383671, 37.470306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298410, 33.097717, 36.987839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545244, 32.986324, 37.282227>,  <29.693344, 32.919491, 37.458858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545244, 32.986324, 37.282227>,  <29.298410, 33.097717, 36.987839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545244, 32.986324, 37.282227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139930, -0.959212, -0.245624,
		0.774354, 0.048586, -0.630884,
		0.617086, -0.278480, 0.735972,
		29.730370, 32.902779, 37.503017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728746, 32.632401, 36.671337>,  <29.298410, 33.097717, 36.987839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728746, 32.632401, 36.671337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731180, 32.575230, 37.067223>,  <29.732641, 32.540928, 37.304752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731180, 32.575230, 37.067223>,  <29.728746, 32.632401, 36.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731180, 32.575230, 37.067223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265504, -0.954441, -0.136200,
		0.964090, -0.261944, -0.043756,
		0.006086, -0.142926, 0.989715,
		29.733006, 32.532352, 37.364136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035625, 31.912029, 36.731720>,  <29.728746, 32.632401, 36.671337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035625, 31.912029, 36.731720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851402, 32.012630, 37.072224>,  <29.740870, 32.072990, 37.276524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851402, 32.012630, 37.072224>,  <30.035625, 31.912029, 36.731720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851402, 32.012630, 37.072224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384013, -0.921081, 0.064368,
		0.800264, -0.297248, 0.520789,
		-0.460556, 0.251501, 0.851255,
		29.713236, 32.088081, 37.327599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100580, 31.353415, 37.191505>,  <30.035625, 31.912029, 36.731720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100580, 31.353415, 37.191505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799452, 31.560598, 37.353973>,  <29.618774, 31.684910, 37.451454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799452, 31.560598, 37.353973>,  <30.100580, 31.353415, 37.191505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799452, 31.560598, 37.353973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480447, -0.854194, 0.198804,
		0.449924, -0.045481, 0.891908,
		-0.752821, 0.517961, 0.406174,
		29.573606, 31.715986, 37.475826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016911, 31.051933, 37.847221>,  <30.100580, 31.353415, 37.191505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016911, 31.051933, 37.847221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682161, 31.234728, 37.726685>,  <29.481312, 31.344404, 37.654362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682161, 31.234728, 37.726685>,  <30.016911, 31.051933, 37.847221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682161, 31.234728, 37.726685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490730, -0.870245, 0.043097,
		-0.242548, 0.183945, 0.952541,
		-0.836872, 0.456988, -0.301343,
		29.431099, 31.371824, 37.636280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604101, 31.354725, 38.275600>,  <30.016911, 31.051933, 37.847221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604101, 31.354725, 38.275600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698017, 31.259937, 37.898514>,  <30.754368, 31.203064, 37.672260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698017, 31.259937, 37.898514>,  <30.604101, 31.354725, 38.275600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698017, 31.259937, 37.898514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566724, -0.754573, 0.330821,
		-0.789744, -0.611936, -0.042872,
		0.234792, -0.236968, -0.942719,
		30.768454, 31.188847, 37.615700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046793, 31.102535, 38.968521>,  <30.604101, 31.354725, 38.275600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046793, 31.102535, 38.968521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287903, 30.948681, 39.248154>,  <31.432568, 30.856367, 39.415936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287903, 30.948681, 39.248154>,  <31.046793, 31.102535, 38.968521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287903, 30.948681, 39.248154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792913, 0.386672, -0.470929,
		-0.089179, 0.838176, 0.538059,
		0.602774, -0.384637, 0.699084,
		31.468735, 30.833290, 39.457878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583387, 31.667337, 39.195396>,  <31.046793, 31.102535, 38.968521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583387, 31.667337, 39.195396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716846, 31.301191, 39.285538>,  <31.796923, 31.081503, 39.339622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716846, 31.301191, 39.285538>,  <31.583387, 31.667337, 39.195396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716846, 31.301191, 39.285538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884228, 0.221002, -0.411458,
		0.326832, 0.336545, 0.883130,
		0.333648, -0.915366, 0.225352,
		31.816940, 31.026581, 39.353142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376209, 31.642847, 39.101498>,  <31.583387, 31.667337, 39.195396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376209, 31.642847, 39.101498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663467, 31.546638, 39.362701>,  <32.835823, 31.488913, 39.519424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663467, 31.546638, 39.362701>,  <32.376209, 31.642847, 39.101498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663467, 31.546638, 39.362701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123330, 0.967506, 0.220731,
		-0.684877, -0.077982, 0.724473,
		0.718145, -0.240523, 0.653005,
		32.878910, 31.474482, 39.558601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281113, 31.861917, 39.802387>,  <32.376209, 31.642847, 39.101498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281113, 31.861917, 39.802387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674740, 31.849222, 39.732422>,  <32.910915, 31.841604, 39.690441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674740, 31.849222, 39.732422>,  <32.281113, 31.861917, 39.802387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674740, 31.849222, 39.732422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071300, 0.971795, 0.224792,
		0.162846, -0.233683, 0.958579,
		0.984072, -0.031740, -0.174915,
		32.969963, 31.839701, 39.679947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650295, 32.109787, 40.465500>,  <32.281113, 31.861917, 39.802387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650295, 32.109787, 40.465500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890930, 32.148430, 40.148323>,  <33.035313, 32.171616, 39.958015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890930, 32.148430, 40.148323>,  <32.650295, 32.109787, 40.465500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890930, 32.148430, 40.148323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003830, 0.992998, 0.118074,
		0.798795, -0.067995, 0.597749,
		0.601592, 0.096606, -0.792941,
		33.071407, 32.177410, 39.910442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165737, 32.496853, 40.704773>,  <32.650295, 32.109787, 40.465500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165737, 32.496853, 40.704773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206234, 32.530354, 40.308239>,  <33.230534, 32.550453, 40.070320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206234, 32.530354, 40.308239>,  <33.165737, 32.496853, 40.704773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206234, 32.530354, 40.308239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197753, 0.974872, 0.102554,
		0.975007, -0.206423, 0.082158,
		0.101263, 0.083744, -0.991328,
		33.236607, 32.555477, 40.010841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680023, 32.928761, 40.733669>,  <33.165737, 32.496853, 40.704773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680023, 32.928761, 40.733669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514503, 32.944782, 40.369873>,  <33.415192, 32.954395, 40.151596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514503, 32.944782, 40.369873>,  <33.680023, 32.928761, 40.733669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514503, 32.944782, 40.369873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027313, 0.999128, 0.031580,
		0.909960, -0.011773, -0.414529,
		-0.413796, 0.040059, -0.909488,
		33.390366, 32.956799, 40.097027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032322, 33.448971, 40.432693>,  <33.680023, 32.928761, 40.733669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032322, 33.448971, 40.432693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696629, 33.428894, 40.216114>,  <33.495213, 33.416847, 40.086166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696629, 33.428894, 40.216114>,  <34.032322, 33.448971, 40.432693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696629, 33.428894, 40.216114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080280, 0.996256, 0.032088,
		0.537810, 0.070397, -0.840121,
		-0.839235, -0.050188, -0.541448,
		33.444859, 33.413837, 40.053680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061947, 33.900806, 39.856361>,  <34.032322, 33.448971, 40.432693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061947, 33.900806, 39.856361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669930, 33.840336, 39.907997>,  <33.434719, 33.804054, 39.938980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669930, 33.840336, 39.907997>,  <34.061947, 33.900806, 39.856361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669930, 33.840336, 39.907997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145985, 0.988080, 0.048859,
		-0.134938, 0.029039, -0.990428,
		-0.980041, -0.151180, 0.129090,
		33.375916, 33.794983, 39.946724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659077, 34.275616, 39.291042>,  <34.061947, 33.900806, 39.856361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659077, 34.275616, 39.291042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401592, 34.212059, 39.590477>,  <33.247101, 34.173923, 39.770138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401592, 34.212059, 39.590477>,  <33.659077, 34.275616, 39.291042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401592, 34.212059, 39.590477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259715, 0.965510, -0.018394,
		-0.719847, -0.206260, -0.662779,
		-0.643714, -0.158893, 0.748589,
		33.208477, 34.164391, 39.815052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004211, 34.554733, 39.025009>,  <33.659077, 34.275616, 39.291042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004211, 34.554733, 39.025009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006695, 34.521648, 39.423630>,  <33.008186, 34.501797, 39.662804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006695, 34.521648, 39.423630>,  <33.004211, 34.554733, 39.025009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006695, 34.521648, 39.423630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017013, 0.996438, 0.082600,
		-0.999836, 0.016441, 0.007596,
		0.006210, -0.082715, 0.996554,
		33.008560, 34.496834, 39.722595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562450, 35.002399, 39.179428>,  <33.004211, 34.554733, 39.025009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562450, 35.002399, 39.179428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744133, 34.934624, 39.529282>,  <32.853142, 34.893959, 39.739193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744133, 34.934624, 39.529282>,  <32.562450, 35.002399, 39.179428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744133, 34.934624, 39.529282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017452, 0.979866, 0.198891,
		-0.890724, -0.105603, 0.442108,
		0.454210, -0.169442, 0.874633,
		32.880398, 34.883793, 39.791672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159302, 35.257252, 39.682934>,  <32.562450, 35.002399, 39.179428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159302, 35.257252, 39.682934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526318, 35.278980, 39.840500>,  <32.746529, 35.292019, 39.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526318, 35.278980, 39.840500>,  <32.159302, 35.257252, 39.682934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526318, 35.278980, 39.840500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198697, 0.920716, 0.335860,
		-0.344437, -0.386434, 0.855588,
		0.917542, 0.054320, 0.393912,
		32.801579, 35.295277, 39.958675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081623, 35.629520, 40.191650>,  <32.159302, 35.257252, 39.682934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081623, 35.629520, 40.191650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479156, 35.644783, 40.150017>,  <32.717678, 35.653942, 40.125034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479156, 35.644783, 40.150017>,  <32.081623, 35.629520, 40.191650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479156, 35.644783, 40.150017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003510, 0.927597, 0.373565,
		0.110804, -0.371628, 0.921745,
		0.993836, 0.038157, -0.104086,
		32.777306, 35.656231, 40.118790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322315, 35.897945, 40.764946>,  <32.081623, 35.629520, 40.191650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322315, 35.897945, 40.764946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653183, 35.972614, 40.552929>,  <32.851704, 36.017414, 40.425716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653183, 35.972614, 40.552929>,  <32.322315, 35.897945, 40.764946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653183, 35.972614, 40.552929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036131, 0.923598, 0.381657,
		0.560792, -0.334845, 0.757226,
		0.827168, 0.186671, -0.530044,
		32.901333, 36.028614, 40.393917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762440, 36.152050, 41.188789>,  <32.322315, 35.897945, 40.764946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762440, 36.152050, 41.188789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888752, 36.283428, 40.832722>,  <32.964539, 36.362255, 40.619080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888752, 36.283428, 40.832722>,  <32.762440, 36.152050, 41.188789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888752, 36.283428, 40.832722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081458, 0.925327, 0.370316,
		0.945329, -0.189451, 0.265447,
		0.315782, 0.328448, -0.890171,
		32.983486, 36.381962, 40.565670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334778, 36.503979, 41.364132>,  <32.762440, 36.152050, 41.188789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334778, 36.503979, 41.364132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222805, 36.603764, 40.993317>,  <33.155621, 36.663635, 40.770828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222805, 36.603764, 40.993317>,  <33.334778, 36.503979, 41.364132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222805, 36.603764, 40.993317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128788, 0.966678, 0.221240,
		0.951342, -0.057460, -0.302732,
		-0.279932, 0.249463, -0.927042,
		33.138824, 36.678604, 40.715202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823620, 36.953323, 41.124146>,  <33.334778, 36.503979, 41.364132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823620, 36.953323, 41.124146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512604, 37.041214, 40.888466>,  <33.325996, 37.093948, 40.747059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512604, 37.041214, 40.888466>,  <33.823620, 36.953323, 41.124146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512604, 37.041214, 40.888466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022476, 0.926658, 0.375233,
		0.628437, 0.305000, -0.715571,
		-0.777536, 0.219727, -0.589201,
		33.279343, 37.107132, 40.711704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931835, 37.686150, 40.901623>,  <33.823620, 36.953323, 41.124146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931835, 37.686150, 40.901623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547413, 37.598194, 40.834663>,  <33.316761, 37.545422, 40.794487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547413, 37.598194, 40.834663>,  <33.931835, 37.686150, 40.901623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547413, 37.598194, 40.834663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269067, 0.882688, 0.385311,
		0.063033, 0.415346, -0.907477,
		-0.961057, -0.219885, -0.167394,
		33.259094, 37.532230, 40.784447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764999, 38.322430, 40.524616>,  <33.931835, 37.686150, 40.901623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764999, 38.322430, 40.524616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426304, 38.158630, 40.660469>,  <33.223087, 38.060352, 40.741982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426304, 38.158630, 40.660469>,  <33.764999, 38.322430, 40.524616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426304, 38.158630, 40.660469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251577, 0.870700, 0.422600,
		-0.468769, 0.272388, -0.840274,
		-0.846738, -0.409496, 0.339630,
		33.172283, 38.035782, 40.762360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246986, 38.784004, 40.310341>,  <33.764999, 38.322430, 40.524616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246986, 38.784004, 40.310341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085331, 38.564663, 40.603184>,  <32.988338, 38.433060, 40.778889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085331, 38.564663, 40.603184>,  <33.246986, 38.784004, 40.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085331, 38.564663, 40.603184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067124, 0.816004, 0.574135,
		-0.912230, 0.182890, -0.366588,
		-0.404141, -0.548351, 0.732108,
		32.964088, 38.400158, 40.822815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638859, 39.085247, 40.572182>,  <33.246986, 38.784004, 40.310341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638859, 39.085247, 40.572182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756866, 38.840740, 40.865932>,  <32.827671, 38.694035, 41.042183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756866, 38.840740, 40.865932>,  <32.638859, 39.085247, 40.572182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756866, 38.840740, 40.865932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067772, 0.753268, 0.654213,
		-0.953085, -0.242775, 0.180800,
		0.295018, -0.611268, 0.734382,
		32.845371, 38.657360, 41.086246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120247, 39.183521, 41.082668>,  <32.638859, 39.085247, 40.572182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120247, 39.183521, 41.082668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428028, 39.030895, 41.287544>,  <32.612698, 38.939320, 41.410469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428028, 39.030895, 41.287544>,  <32.120247, 39.183521, 41.082668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428028, 39.030895, 41.287544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294071, 0.500227, 0.814430,
		-0.566975, -0.777289, 0.272693,
		0.769455, -0.381570, 0.512194,
		32.658863, 38.916424, 41.441204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844185, 38.802284, 41.751972>,  <32.120247, 39.183521, 41.082668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844185, 38.802284, 41.751972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222290, 38.925724, 41.794392>,  <32.449154, 38.999786, 41.819843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222290, 38.925724, 41.794392>,  <31.844185, 38.802284, 41.751972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222290, 38.925724, 41.794392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221672, 0.368782, 0.902697,
		0.239458, -0.876794, 0.417003,
		0.945263, 0.308596, 0.106053,
		32.505867, 39.018303, 41.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993288, 38.658985, 42.497822>,  <31.844185, 38.802284, 41.751972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993288, 38.658985, 42.497822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286304, 38.899639, 42.370434>,  <32.462112, 39.044033, 42.294003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286304, 38.899639, 42.370434>,  <31.993288, 38.658985, 42.497822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286304, 38.899639, 42.370434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192691, 0.631966, 0.750659,
		0.652888, -0.488518, 0.578868,
		0.732535, 0.601639, -0.318469,
		32.506065, 39.080132, 42.274895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455280, 38.860188, 43.068951>,  <31.993288, 38.658985, 42.497822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455280, 38.860188, 43.068951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522846, 39.137543, 42.788754>,  <32.563385, 39.303955, 42.620636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522846, 39.137543, 42.788754>,  <32.455280, 38.860188, 43.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522846, 39.137543, 42.788754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260431, 0.716842, 0.646772,
		0.950602, 0.073182, 0.301662,
		0.168912, 0.693385, -0.700491,
		32.573521, 39.345558, 42.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789780, 39.311653, 43.408451>,  <32.455280, 38.860188, 43.068951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789780, 39.311653, 43.408451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735931, 39.538506, 43.083431>,  <32.703621, 39.674618, 42.888420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735931, 39.538506, 43.083431>,  <32.789780, 39.311653, 43.408451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735931, 39.538506, 43.083431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113007, 0.805878, 0.581197,
		0.984432, 0.170065, -0.044399,
		-0.134621, 0.567132, -0.812551,
		32.695545, 39.708645, 42.839664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122643, 39.918716, 43.555637>,  <32.789780, 39.311653, 43.408451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122643, 39.918716, 43.555637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865612, 40.035255, 43.272171>,  <32.711391, 40.105179, 43.102093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865612, 40.035255, 43.272171>,  <33.122643, 39.918716, 43.555637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865612, 40.035255, 43.272171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221806, 0.814560, 0.535999,
		0.733412, 0.501609, -0.458798,
		-0.642581, 0.291344, -0.708667,
		32.672836, 40.122658, 43.059570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289257, 40.717884, 43.405468>,  <33.122643, 39.918716, 43.555637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289257, 40.717884, 43.405468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920330, 40.612968, 43.291954>,  <32.698975, 40.550018, 43.223846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920330, 40.612968, 43.291954>,  <33.289257, 40.717884, 43.405468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920330, 40.612968, 43.291954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370084, 0.810883, 0.453328,
		0.111217, 0.523138, -0.844960,
		-0.922317, -0.262289, -0.283789,
		32.643635, 40.534283, 43.206818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707207, 40.857029, 42.778549>,  <33.289257, 40.717884, 43.405468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707207, 40.857029, 42.778549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086311, 40.979950, 42.812737>,  <34.313774, 41.053703, 42.833248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086311, 40.979950, 42.812737>,  <33.707207, 40.857029, 42.778549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086311, 40.979950, 42.812737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317017, -0.877912, -0.358846,
		-0.035242, 0.367196, -0.929476,
		0.947765, 0.307306, 0.085468,
		34.370640, 41.072144, 42.838375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108471, 40.737064, 42.102501>,  <33.707207, 40.857029, 42.778549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108471, 40.737064, 42.102501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371788, 40.723282, 42.403290>,  <34.529778, 40.715012, 42.583763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371788, 40.723282, 42.403290>,  <34.108471, 40.737064, 42.102501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371788, 40.723282, 42.403290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438704, -0.794210, -0.420440,
		0.611715, 0.606666, -0.507702,
		0.658288, -0.034459, 0.751977,
		34.569275, 40.712944, 42.628883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663387, 40.519016, 41.768799>,  <34.108471, 40.737064, 42.102501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663387, 40.519016, 41.768799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776337, 40.464092, 42.148571>,  <34.844105, 40.431137, 42.376434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776337, 40.464092, 42.148571>,  <34.663387, 40.519016, 41.768799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776337, 40.464092, 42.148571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549236, -0.788296, -0.277361,
		0.786515, 0.599778, -0.147176,
		0.282373, -0.137314, 0.949426,
		34.861050, 40.422897, 42.433399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402328, 40.344776, 41.769756>,  <34.663387, 40.519016, 41.768799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402328, 40.344776, 41.769756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251278, 40.221058, 42.118866>,  <35.160648, 40.146828, 42.328331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251278, 40.221058, 42.118866>,  <35.402328, 40.344776, 41.769756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251278, 40.221058, 42.118866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463763, -0.878999, -0.110842,
		0.801451, 0.362904, 0.475371,
		-0.377625, -0.309294, 0.872775,
		35.137989, 40.128269, 42.380699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975082, 40.009975, 42.129917>,  <35.402328, 40.344776, 41.769756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975082, 40.009975, 42.129917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638565, 39.859894, 42.285580>,  <35.436653, 39.769844, 42.378975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638565, 39.859894, 42.285580>,  <35.975082, 40.009975, 42.129917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638565, 39.859894, 42.285580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429642, -0.900995, 0.060127,
		0.328066, 0.217782, 0.919208,
		-0.841297, -0.375205, 0.389154,
		35.386177, 39.747334, 42.402325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
