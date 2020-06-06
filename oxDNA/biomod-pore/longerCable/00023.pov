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
	<24.121008, 35.537167, 35.583141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.181860, 35.226200, 35.339016>,  <24.218372, 35.039619, 35.192539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.181860, 35.226200, 35.339016>,  <24.121008, 35.537167, 35.583141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.181860, 35.226200, 35.339016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986877, 0.085670, 0.136869,
		-0.054118, -0.623129, 0.780244,
		0.152131, -0.777413, -0.610316,
		24.227499, 34.992977, 35.155922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609711, 35.011421, 35.824642>,  <24.121008, 35.537167, 35.583141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609711, 35.011421, 35.824642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606491, 35.050129, 35.426533>,  <24.604559, 35.073353, 35.187668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606491, 35.050129, 35.426533>,  <24.609711, 35.011421, 35.824642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606491, 35.050129, 35.426533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972500, 0.232436, 0.014736,
		0.232764, -0.967786, -0.095975,
		-0.008047, 0.096766, -0.995275,
		24.604076, 35.079159, 35.127949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062828, 34.505943, 35.518276>,  <24.609711, 35.011421, 35.824642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062828, 34.505943, 35.518276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028969, 34.848148, 35.313950>,  <25.008654, 35.053471, 35.191353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028969, 34.848148, 35.313950>,  <25.062828, 34.505943, 35.518276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028969, 34.848148, 35.313950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958321, 0.210291, 0.193390,
		0.272868, -0.473161, -0.837653,
		-0.084646, 0.855510, -0.510821,
		25.003574, 35.104801, 35.160702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703945, 34.566917, 35.349224>,  <25.062828, 34.505943, 35.518276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703945, 34.566917, 35.349224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556219, 34.938538, 35.340572>,  <25.467583, 35.161510, 35.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556219, 34.938538, 35.340572>,  <25.703945, 34.566917, 35.349224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556219, 34.938538, 35.340572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928515, 0.367945, -0.049765,
		-0.038276, -0.038462, -0.998527,
		-0.369317, 0.929052, -0.021629,
		25.445423, 35.217255, 35.334084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091333, 35.189861, 35.503502>,  <25.703945, 34.566917, 35.349224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091333, 35.189861, 35.503502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875576, 35.221504, 35.838833>,  <25.746120, 35.240490, 36.040031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875576, 35.221504, 35.838833>,  <26.091333, 35.189861, 35.503502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875576, 35.221504, 35.838833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796383, -0.275494, 0.538403,
		0.273545, 0.958042, 0.085602,
		-0.539395, 0.079105, 0.838329,
		25.713757, 35.245235, 36.090332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403383, 35.650444, 35.992393>,  <26.091333, 35.189861, 35.503502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403383, 35.650444, 35.992393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168129, 35.385567, 36.178123>,  <26.026976, 35.226639, 36.289562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168129, 35.385567, 36.178123>,  <26.403383, 35.650444, 35.992393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168129, 35.385567, 36.178123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727929, -0.183230, 0.660716,
		-0.352442, 0.726587, 0.589793,
		-0.588136, -0.662192, 0.464326,
		25.991688, 35.186909, 36.317421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498373, 35.679260, 36.729481>,  <26.403383, 35.650444, 35.992393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498373, 35.679260, 36.729481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332350, 35.318127, 36.684536>,  <26.232737, 35.101448, 36.657570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332350, 35.318127, 36.684536>,  <26.498373, 35.679260, 36.729481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332350, 35.318127, 36.684536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716338, -0.400439, 0.571410,
		-0.560881, 0.156675, 0.812936,
		-0.415057, -0.902830, -0.112366,
		26.207832, 35.047279, 36.650826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457176, 35.372715, 37.365257>,  <26.498373, 35.679260, 36.729481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457176, 35.372715, 37.365257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487823, 35.044254, 37.139038>,  <26.506212, 34.847179, 37.003307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487823, 35.044254, 37.139038>,  <26.457176, 35.372715, 37.365257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487823, 35.044254, 37.139038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705027, -0.356461, 0.613084,
		-0.705030, -0.445695, 0.551624,
		0.076616, -0.821152, -0.565543,
		26.510809, 34.797909, 36.969376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326424, 34.724632, 37.784195>,  <26.457176, 35.372715, 37.365257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326424, 34.724632, 37.784195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570652, 34.624222, 37.483746>,  <26.717190, 34.563976, 37.303474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570652, 34.624222, 37.483746>,  <26.326424, 34.724632, 37.784195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570652, 34.624222, 37.483746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677965, -0.324551, 0.659568,
		-0.409346, -0.911951, -0.027976,
		0.610572, -0.251024, -0.751124,
		26.753824, 34.548916, 37.258408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719790, 34.116470, 38.011166>,  <26.326424, 34.724632, 37.784195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719790, 34.116470, 38.011166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929790, 34.261303, 37.703068>,  <27.055792, 34.348202, 37.518211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929790, 34.261303, 37.703068>,  <26.719790, 34.116470, 38.011166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929790, 34.261303, 37.703068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850909, -0.204108, 0.484039,
		0.018049, -0.909526, -0.415256,
		0.525003, 0.362081, -0.770240,
		27.087292, 34.369926, 37.471996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181643, 33.621315, 38.009312>,  <26.719790, 34.116470, 38.011166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181643, 33.621315, 38.009312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336275, 33.927929, 37.804184>,  <27.429054, 34.111897, 37.681107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336275, 33.927929, 37.804184>,  <27.181643, 33.621315, 38.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336275, 33.927929, 37.804184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922187, -0.328003, 0.204900,
		-0.011142, -0.552123, -0.833688,
		0.386582, 0.766534, -0.512815,
		27.452250, 34.157890, 37.650341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862453, 33.308556, 37.893967>,  <27.181643, 33.621315, 38.009312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862453, 33.308556, 37.893967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896919, 33.695267, 37.797707>,  <27.917599, 33.927296, 37.739952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896919, 33.695267, 37.797707>,  <27.862453, 33.308556, 37.893967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896919, 33.695267, 37.797707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995184, -0.072192, 0.066306,
		0.046730, -0.245203, -0.968345,
		0.086165, 0.966780, -0.240649,
		27.922770, 33.985302, 37.725513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282413, 33.347641, 37.220619>,  <27.862453, 33.308556, 37.893967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282413, 33.347641, 37.220619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310419, 33.665977, 37.461197>,  <28.327223, 33.856979, 37.605541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310419, 33.665977, 37.461197>,  <28.282413, 33.347641, 37.220619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310419, 33.665977, 37.461197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988179, -0.137762, 0.067254,
		0.136379, 0.589622, -0.796082,
		0.070016, 0.795844, 0.601441,
		28.331425, 33.904732, 37.641628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669815, 33.870770, 36.893887>,  <28.282413, 33.347641, 37.220619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669815, 33.870770, 36.893887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706526, 33.918453, 37.289333>,  <28.728552, 33.947063, 37.526604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706526, 33.918453, 37.289333>,  <28.669815, 33.870770, 36.893887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706526, 33.918453, 37.289333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986024, -0.149507, -0.073510,
		0.139043, 0.981549, -0.131261,
		0.091778, 0.119205, 0.988619,
		28.734058, 33.954216, 37.585918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213747, 34.301392, 37.104610>,  <28.669815, 33.870770, 36.893887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213747, 34.301392, 37.104610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160233, 34.051285, 37.412151>,  <29.128124, 33.901218, 37.596676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160233, 34.051285, 37.412151>,  <29.213747, 34.301392, 37.104610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160233, 34.051285, 37.412151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990467, -0.058691, 0.124618,
		-0.032795, 0.778197, 0.627163,
		-0.133787, -0.625271, 0.768854,
		29.120096, 33.863705, 37.642807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700033, 34.723286, 37.015388>,  <29.213747, 34.301392, 37.104610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700033, 34.723286, 37.015388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022919, 34.736122, 36.779636>,  <29.216650, 34.743824, 36.638184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022919, 34.736122, 36.779636>,  <28.700033, 34.723286, 37.015388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022919, 34.736122, 36.779636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587546, 0.051890, 0.807525,
		0.056505, -0.998137, 0.023026,
		0.807216, 0.032100, -0.589384,
		29.265083, 34.745750, 36.602821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031761, 35.059486, 36.891254>,  <28.700033, 34.723286, 37.015388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031761, 35.059486, 36.891254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881048, 34.771252, 37.124081>,  <27.790621, 34.598312, 37.263775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881048, 34.771252, 37.124081>,  <28.031761, 35.059486, 36.891254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881048, 34.771252, 37.124081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877028, 0.075301, -0.474501,
		0.298088, -0.689268, -0.660344,
		-0.376782, -0.720583, 0.582061,
		27.768013, 34.555077, 37.298698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789761, 34.631325, 36.446030>,  <28.031761, 35.059486, 36.891254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789761, 34.631325, 36.446030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573946, 34.549850, 36.772812>,  <27.444458, 34.500965, 36.968880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573946, 34.549850, 36.772812>,  <27.789761, 34.631325, 36.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573946, 34.549850, 36.772812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832530, -0.015782, -0.553755,
		0.125684, -0.978910, -0.161057,
		-0.539535, -0.203683, 0.816955,
		27.412086, 34.488747, 37.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369310, 34.162098, 36.234970>,  <27.789761, 34.631325, 36.446030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369310, 34.162098, 36.234970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179981, 34.300892, 36.558838>,  <27.066383, 34.384167, 36.753159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179981, 34.300892, 36.558838>,  <27.369310, 34.162098, 36.234970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179981, 34.300892, 36.558838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880547, -0.160748, -0.445867,
		-0.024558, -0.923991, 0.381624,
		-0.473323, 0.346987, 0.809670,
		27.037985, 34.404987, 36.801739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779253, 33.772335, 36.228420>,  <27.369310, 34.162098, 36.234970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779253, 33.772335, 36.228420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705782, 34.097012, 36.450203>,  <26.661699, 34.291817, 36.583271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705782, 34.097012, 36.450203>,  <26.779253, 33.772335, 36.228420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705782, 34.097012, 36.450203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942186, 0.015444, -0.334734,
		-0.280263, -0.583886, 0.761925,
		-0.183679, 0.811689, 0.554457,
		26.650679, 34.340519, 36.616539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110413, 33.911373, 36.110886>,  <26.779253, 33.772335, 36.228420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110413, 33.911373, 36.110886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163137, 34.143139, 36.432606>,  <26.194773, 34.282200, 36.625637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163137, 34.143139, 36.432606>,  <26.110413, 33.911373, 36.110886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163137, 34.143139, 36.432606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879364, 0.442857, -0.174919,
		-0.457542, -0.684218, 0.567892,
		0.131812, 0.579416, 0.804303,
		26.202681, 34.316963, 36.673897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541407, 33.939789, 36.583313>,  <26.110413, 33.911373, 36.110886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541407, 33.939789, 36.583313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760647, 34.269852, 36.638012>,  <25.892191, 34.467888, 36.670830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760647, 34.269852, 36.638012>,  <25.541407, 33.939789, 36.583313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760647, 34.269852, 36.638012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822782, 0.561309, -0.089227,
		-0.150382, -0.063605, 0.986580,
		0.548101, 0.825159, 0.136744,
		25.925077, 34.517399, 36.679035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168373, 34.459373, 37.015839>,  <25.541407, 33.939789, 36.583313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168373, 34.459373, 37.015839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427479, 34.646744, 36.775513>,  <25.582943, 34.759167, 36.631317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427479, 34.646744, 36.775513>,  <25.168373, 34.459373, 37.015839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427479, 34.646744, 36.775513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748978, 0.535861, -0.389724,
		0.139400, 0.702449, 0.697949,
		0.647765, 0.468421, -0.600818,
		25.621809, 34.787270, 36.595268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030058, 35.108147, 37.143959>,  <25.168373, 34.459373, 37.015839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030058, 35.108147, 37.143959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200262, 35.059875, 36.785210>,  <25.302385, 35.030914, 36.569962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200262, 35.059875, 36.785210>,  <25.030058, 35.108147, 37.143959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200262, 35.059875, 36.785210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615398, 0.688046, -0.384549,
		0.663494, 0.715563, 0.218508,
		0.425512, -0.120676, -0.896870,
		25.327915, 35.023674, 36.516148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920876, 35.713955, 36.810490>,  <25.030058, 35.108147, 37.143959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920876, 35.713955, 36.810490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040201, 35.510994, 36.487118>,  <25.111797, 35.389217, 36.293095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040201, 35.510994, 36.487118>,  <24.920876, 35.713955, 36.810490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040201, 35.510994, 36.487118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344839, 0.732485, -0.586985,
		0.889997, 0.453884, 0.043541,
		0.298316, -0.507400, -0.808426,
		25.129696, 35.358772, 36.244591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875076, 36.297390, 37.265877>,  <24.920876, 35.713955, 36.810490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875076, 36.297390, 37.265877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693491, 36.378494, 36.918819>,  <24.584539, 36.427155, 36.710587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693491, 36.378494, 36.918819>,  <24.875076, 36.297390, 37.265877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693491, 36.378494, 36.918819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845599, 0.404975, -0.347790,
		0.280857, -0.891563, -0.355296,
		-0.453962, 0.202759, -0.867644,
		24.557302, 36.439323, 36.658527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565216, 36.217381, 36.966328>,  <24.875076, 36.297390, 37.265877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565216, 36.217381, 36.966328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257355, 36.349800, 36.747955>,  <25.072638, 36.429253, 36.616932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257355, 36.349800, 36.747955>,  <25.565216, 36.217381, 36.966328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257355, 36.349800, 36.747955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634129, 0.495824, -0.593329,
		0.074267, -0.802850, -0.591538,
		-0.769653, 0.331046, -0.545933,
		25.026459, 36.449116, 36.584175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747885, 36.984077, 36.728790>,  <25.565216, 36.217381, 36.966328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747885, 36.984077, 36.728790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685740, 37.072929, 37.113815>,  <25.648453, 37.126240, 37.344830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685740, 37.072929, 37.113815>,  <25.747885, 36.984077, 36.728790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685740, 37.072929, 37.113815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145268, -0.968936, 0.200151,
		0.977118, -0.108732, 0.182807,
		-0.155365, 0.222127, 0.962560,
		25.639130, 37.139568, 37.402584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171110, 36.561317, 37.207428>,  <25.747885, 36.984077, 36.728790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171110, 36.561317, 37.207428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816353, 36.641155, 37.374081>,  <25.603498, 36.689056, 37.474072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816353, 36.641155, 37.374081>,  <26.171110, 36.561317, 37.207428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816353, 36.641155, 37.374081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003200, -0.904487, 0.426490,
		0.461965, 0.376918, 0.802821,
		-0.886892, 0.199592, 0.416635,
		25.550285, 36.701035, 37.499073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750429, 36.510193, 37.785999>,  <26.171110, 36.561317, 37.207428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750429, 36.510193, 37.785999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943785, 36.665356, 38.099907>,  <27.059797, 36.758453, 38.288254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943785, 36.665356, 38.099907>,  <26.750429, 36.510193, 37.785999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943785, 36.665356, 38.099907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853536, -0.009713, -0.520943,
		-0.194454, 0.921648, -0.335786,
		0.483388, 0.387905, 0.784771,
		27.088800, 36.781727, 38.335339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178787, 37.181057, 37.581261>,  <26.750429, 36.510193, 37.785999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178787, 37.181057, 37.581261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311102, 36.955261, 37.883766>,  <27.390491, 36.819782, 38.065269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311102, 36.955261, 37.883766>,  <27.178787, 37.181057, 37.581261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311102, 36.955261, 37.883766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855255, -0.159415, -0.493077,
		0.398896, 0.809901, 0.430049,
		0.330787, -0.564488, 0.756262,
		27.410337, 36.785915, 38.110645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887878, 37.474998, 37.823650>,  <27.178787, 37.181057, 37.581261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887878, 37.474998, 37.823650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848957, 37.082359, 37.889370>,  <27.825605, 36.846775, 37.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848957, 37.082359, 37.889370>,  <27.887878, 37.474998, 37.823650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848957, 37.082359, 37.889370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861837, -0.165668, -0.479366,
		0.497765, 0.094958, 0.862098,
		-0.097302, -0.981599, 0.164302,
		27.819767, 36.787880, 37.938660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522541, 37.683846, 38.024460>,  <27.887878, 37.474998, 37.823650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522541, 37.683846, 38.024460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331118, 37.336460, 38.076229>,  <28.216263, 37.128029, 38.107288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331118, 37.336460, 38.076229>,  <28.522541, 37.683846, 38.024460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331118, 37.336460, 38.076229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846361, -0.417006, 0.331329,
		-0.233778, 0.268097, 0.934597,
		-0.478561, -0.868464, 0.129420,
		28.187550, 37.075920, 38.115055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606428, 37.377029, 38.781670>,  <28.522541, 37.683846, 38.024460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606428, 37.377029, 38.781670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552362, 37.089058, 38.509365>,  <28.519924, 36.916275, 38.345982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552362, 37.089058, 38.509365>,  <28.606428, 37.377029, 38.781670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552362, 37.089058, 38.509365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779240, -0.501598, 0.375746,
		-0.611977, -0.479686, 0.628797,
		-0.135163, -0.719931, -0.680757,
		28.511814, 36.873077, 38.305138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412970, 36.690731, 39.162971>,  <28.606428, 37.377029, 38.781670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412970, 36.690731, 39.162971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595093, 36.652584, 38.808887>,  <28.704367, 36.629696, 38.596436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595093, 36.652584, 38.808887>,  <28.412970, 36.690731, 39.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595093, 36.652584, 38.808887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750219, -0.494305, 0.439128,
		-0.479440, -0.864042, -0.153521,
		0.455311, -0.095360, -0.885211,
		28.731686, 36.623974, 38.543324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748806, 36.057201, 39.175301>,  <28.412970, 36.690731, 39.162971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748806, 36.057201, 39.175301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926369, 36.266682, 38.884460>,  <29.032906, 36.392372, 38.709953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926369, 36.266682, 38.884460>,  <28.748806, 36.057201, 39.175301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926369, 36.266682, 38.884460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896038, -0.252258, 0.365351,
		0.007918, -0.813695, -0.581238,
		0.443906, 0.523704, -0.727105,
		29.059540, 36.423794, 38.666328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422554, 35.878857, 39.069782>,  <28.748806, 36.057201, 39.175301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422554, 35.878857, 39.069782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420938, 36.258533, 38.943916>,  <29.419970, 36.486340, 38.868397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420938, 36.258533, 38.943916>,  <29.422554, 35.878857, 39.069782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420938, 36.258533, 38.943916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971883, 0.077808, 0.222239,
		0.235431, -0.304917, -0.922821,
		-0.004038, 0.949195, -0.314662,
		29.419727, 36.543293, 38.849518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815508, 36.035892, 38.451309>,  <29.422554, 35.878857, 39.069782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815508, 36.035892, 38.451309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810369, 36.333141, 38.718922>,  <29.807287, 36.511490, 38.879490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810369, 36.333141, 38.718922>,  <29.815508, 36.035892, 38.451309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810369, 36.333141, 38.718922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995019, -0.056645, 0.082022,
		0.098850, 0.666753, -0.738694,
		-0.012845, 0.743123, 0.669032,
		29.806517, 36.556080, 38.919632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430252, 36.390034, 38.394703>,  <29.815508, 36.035892, 38.451309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430252, 36.390034, 38.394703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333807, 36.565475, 38.740997>,  <30.275940, 36.670742, 38.948772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333807, 36.565475, 38.740997>,  <30.430252, 36.390034, 38.394703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333807, 36.565475, 38.740997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951176, -0.070318, 0.300532,
		0.192691, 0.895925, -0.400235,
		-0.241111, 0.438603, 0.865732,
		30.261475, 36.697056, 39.000717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062040, 36.451111, 38.527504>,  <30.430252, 36.390034, 38.394703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062040, 36.451111, 38.527504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855556, 36.582047, 38.844078>,  <30.731667, 36.660610, 39.034023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855556, 36.582047, 38.844078>,  <31.062040, 36.451111, 38.527504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855556, 36.582047, 38.844078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813351, -0.102122, 0.572741,
		0.268305, 0.939371, -0.213528,
		-0.516210, 0.327342, 0.791438,
		30.700693, 36.680248, 39.081509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435930, 36.963676, 38.849403>,  <31.062040, 36.451111, 38.527504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435930, 36.963676, 38.849403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224262, 36.744522, 39.108570>,  <31.097261, 36.613029, 39.264072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224262, 36.744522, 39.108570>,  <31.435930, 36.963676, 38.849403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224262, 36.744522, 39.108570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789012, -0.036810, 0.613274,
		-0.312154, 0.835743, 0.451767,
		-0.529169, -0.547885, 0.647921,
		31.065512, 36.580158, 39.302948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487345, 37.334286, 39.514141>,  <31.435930, 36.963676, 38.849403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487345, 37.334286, 39.514141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426655, 36.952972, 39.618629>,  <31.390242, 36.724186, 39.681324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426655, 36.952972, 39.618629>,  <31.487345, 37.334286, 39.514141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426655, 36.952972, 39.618629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853338, 0.007037, 0.521311,
		-0.498793, 0.302007, 0.812402,
		-0.151723, -0.953280, 0.261224,
		31.381138, 36.666988, 39.696995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733459, 38.078079, 39.742710>,  <31.487345, 37.334286, 39.514141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733459, 38.078079, 39.742710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694595, 38.242821, 40.105133>,  <31.671276, 38.341667, 40.322586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694595, 38.242821, 40.105133>,  <31.733459, 38.078079, 39.742710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694595, 38.242821, 40.105133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300425, 0.880033, -0.367813,
		-0.948844, 0.236464, -0.209236,
		-0.097160, 0.411857, 0.906054,
		31.665447, 38.366379, 40.376949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478476, 38.777504, 39.518745>,  <31.733459, 38.078079, 39.742710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478476, 38.777504, 39.518745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597954, 38.752953, 39.899696>,  <31.669641, 38.738224, 40.128265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597954, 38.752953, 39.899696>,  <31.478476, 38.777504, 39.518745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597954, 38.752953, 39.899696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187746, 0.982208, 0.004414,
		-0.935699, 0.177486, 0.304903,
		0.298695, -0.061375, 0.952373,
		31.687563, 38.734539, 40.185410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000847, 39.117294, 39.907059>,  <31.478476, 38.777504, 39.518745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000847, 39.117294, 39.907059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365232, 39.142815, 40.070068>,  <31.583864, 39.158127, 40.167873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365232, 39.142815, 40.070068>,  <31.000847, 39.117294, 39.907059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365232, 39.142815, 40.070068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036500, 0.971624, -0.233697,
		-0.410865, 0.227765, 0.882787,
		0.910965, 0.063796, 0.407520,
		31.638521, 39.161953, 40.192326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021595, 39.711578, 40.377861>,  <31.000847, 39.117294, 39.907059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021595, 39.711578, 40.377861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392227, 39.614872, 40.262627>,  <31.614607, 39.556847, 40.193485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392227, 39.614872, 40.262627>,  <31.021595, 39.711578, 40.377861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392227, 39.614872, 40.262627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133727, 0.927738, -0.348452,
		0.351515, 0.284344, 0.891956,
		0.926582, -0.241765, -0.288090,
		31.670202, 39.542343, 40.176201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445219, 40.333164, 40.397282>,  <31.021595, 39.711578, 40.377861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445219, 40.333164, 40.397282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660213, 40.118687, 40.136944>,  <31.789209, 39.989998, 39.980740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660213, 40.118687, 40.136944>,  <31.445219, 40.333164, 40.397282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660213, 40.118687, 40.136944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044765, 0.788866, -0.612933,
		0.842085, 0.300306, 0.448006,
		0.537484, -0.536196, -0.650849,
		31.821459, 39.957829, 39.941689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973299, 40.723286, 40.175835>,  <31.445219, 40.333164, 40.397282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973299, 40.723286, 40.175835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870401, 40.440701, 39.912098>,  <31.808662, 40.271149, 39.753857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870401, 40.440701, 39.912098>,  <31.973299, 40.723286, 40.175835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870401, 40.440701, 39.912098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066183, 0.693580, -0.717332,
		0.964077, -0.140892, -0.225175,
		-0.257243, -0.706467, -0.659340,
		31.793228, 40.228760, 39.714294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361187, 40.737034, 39.506420>,  <31.973299, 40.723286, 40.175835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361187, 40.737034, 39.506420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009922, 40.573074, 39.407784>,  <31.799162, 40.474697, 39.348602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009922, 40.573074, 39.407784>,  <32.361187, 40.737034, 39.506420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009922, 40.573074, 39.407784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107116, 0.670912, -0.733759,
		0.466209, -0.617949, -0.633079,
		-0.878166, -0.409898, -0.246593,
		31.746471, 40.450104, 39.333805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122509, 40.731190, 39.462269>,  <32.361187, 40.737034, 39.506420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122509, 40.731190, 39.462269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375908, 40.981026, 39.644947>,  <33.527946, 41.130928, 39.754555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375908, 40.981026, 39.644947>,  <33.122509, 40.731190, 39.462269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375908, 40.981026, 39.644947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770795, -0.560913, -0.302079,
		0.067494, 0.543387, -0.836765,
		0.633498, 0.624585, 0.456698,
		33.565956, 41.168400, 39.781956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904778, 40.598305, 38.746571>,  <33.122509, 40.731190, 39.462269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904778, 40.598305, 38.746571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031696, 40.874538, 38.486595>,  <33.107845, 41.040279, 38.330608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031696, 40.874538, 38.486595>,  <32.904778, 40.598305, 38.746571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031696, 40.874538, 38.486595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937532, -0.331542, 0.105420,
		-0.142682, -0.642789, -0.752638,
		0.317294, 0.690581, -0.649941,
		33.126884, 41.081711, 38.291615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094059, 39.974148, 38.425167>,  <32.904778, 40.598305, 38.746571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094059, 39.974148, 38.425167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287647, 39.676361, 38.241196>,  <33.403801, 39.497688, 38.130814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287647, 39.676361, 38.241196>,  <33.094059, 39.974148, 38.425167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287647, 39.676361, 38.241196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229810, 0.615265, -0.754080,
		0.844367, 0.259260, 0.468859,
		0.483975, -0.744469, -0.459929,
		33.432838, 39.453022, 38.103218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827477, 40.279896, 38.297817>,  <33.094059, 39.974148, 38.425167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827477, 40.279896, 38.297817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771072, 39.988171, 38.030018>,  <33.737228, 39.813137, 37.869339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771072, 39.988171, 38.030018>,  <33.827477, 40.279896, 38.297817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771072, 39.988171, 38.030018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280403, 0.619140, -0.733512,
		0.949469, -0.291161, 0.117196,
		-0.141009, -0.729309, -0.669496,
		33.728771, 39.769379, 37.829170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048275, 40.473133, 37.529739>,  <33.827477, 40.279896, 38.297817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048275, 40.473133, 37.529739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037514, 40.355717, 37.147514>,  <34.031055, 40.285267, 36.918179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037514, 40.355717, 37.147514>,  <34.048275, 40.473133, 37.529739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037514, 40.355717, 37.147514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005354, -0.955941, 0.293509,
		-0.999624, 0.002781, 0.027290,
		-0.026904, -0.293545, -0.955567,
		34.029442, 40.267654, 36.860844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415058, 40.230991, 37.266586>,  <34.048275, 40.473133, 37.529739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415058, 40.230991, 37.266586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752834, 40.073051, 37.121799>,  <33.955498, 39.978287, 37.034927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752834, 40.073051, 37.121799>,  <33.415058, 40.230991, 37.266586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752834, 40.073051, 37.121799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173693, -0.841074, 0.512274,
		-0.506711, -0.369713, -0.778817,
		0.844438, -0.394850, -0.361965,
		34.006165, 39.954597, 37.013210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186916, 39.526989, 36.996365>,  <33.415058, 40.230991, 37.266586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186916, 39.526989, 36.996365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569958, 39.574093, 37.101540>,  <33.799782, 39.602356, 37.164646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569958, 39.574093, 37.101540>,  <33.186916, 39.526989, 36.996365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569958, 39.574093, 37.101540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065612, -0.799533, 0.597028,
		0.280534, -0.588966, -0.757905,
		0.957599, 0.117759, 0.262939,
		33.857239, 39.609421, 37.180420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627132, 38.855583, 36.932896>,  <33.186916, 39.526989, 36.996365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627132, 38.855583, 36.932896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693592, 39.128155, 37.218006>,  <33.733467, 39.291698, 37.389072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693592, 39.128155, 37.218006>,  <33.627132, 38.855583, 36.932896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693592, 39.128155, 37.218006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199400, -0.684678, 0.701039,
		0.965730, -0.258606, 0.022117,
		0.166149, 0.681425, 0.712780,
		33.743439, 39.332581, 37.431839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895573, 38.510960, 37.465668>,  <33.627132, 38.855583, 36.932896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895573, 38.510960, 37.465668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728077, 38.841728, 37.615791>,  <33.627579, 39.040188, 37.705868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728077, 38.841728, 37.615791>,  <33.895573, 38.510960, 37.465668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728077, 38.841728, 37.615791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373118, -0.533459, 0.759081,
		0.827915, 0.177819, 0.531918,
		-0.418736, 0.826923, 0.375311,
		33.602455, 39.089806, 37.728386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078201, 38.586765, 38.170265>,  <33.895573, 38.510960, 37.465668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078201, 38.586765, 38.170265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728996, 38.774166, 38.116058>,  <33.519474, 38.886604, 38.083534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728996, 38.774166, 38.116058>,  <34.078201, 38.586765, 38.170265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728996, 38.774166, 38.116058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373658, -0.463954, 0.803198,
		0.313424, 0.751835, 0.580094,
		-0.873009, 0.468498, -0.135515,
		33.467094, 38.914715, 38.075405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767620, 37.946945, 38.010361>,  <34.078201, 38.586765, 38.170265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767620, 37.946945, 38.010361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747902, 37.551529, 37.953285>,  <33.736069, 37.314281, 37.919041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747902, 37.551529, 37.953285>,  <33.767620, 37.946945, 38.010361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747902, 37.551529, 37.953285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138648, 0.134709, -0.981137,
		0.989114, -0.068153, 0.130418,
		-0.049299, -0.988539, -0.142692,
		33.733112, 37.254967, 37.910477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401131, 37.616451, 37.747009>,  <33.767620, 37.946945, 38.010361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401131, 37.616451, 37.747009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093857, 37.402889, 37.605682>,  <33.909492, 37.274754, 37.520885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093857, 37.402889, 37.605682>,  <34.401131, 37.616451, 37.747009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093857, 37.402889, 37.605682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233576, 0.280114, -0.931117,
		0.596097, -0.797799, -0.090473,
		-0.768187, -0.533904, -0.353322,
		33.863400, 37.242718, 37.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757710, 37.285160, 37.224560>,  <34.401131, 37.616451, 37.747009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757710, 37.285160, 37.224560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367558, 37.267517, 37.138123>,  <34.133469, 37.256931, 37.086262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367558, 37.267517, 37.138123>,  <34.757710, 37.285160, 37.224560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367558, 37.267517, 37.138123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204007, 0.191799, -0.959997,
		0.083790, -0.980443, -0.178078,
		-0.975377, -0.044109, -0.216088,
		34.074944, 37.254284, 37.073296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632816, 36.798943, 36.631447>,  <34.757710, 37.285160, 37.224560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632816, 36.798943, 36.631447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357952, 37.089188, 36.645844>,  <34.193031, 37.263332, 36.654480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357952, 37.089188, 36.645844>,  <34.632816, 36.798943, 36.631447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357952, 37.089188, 36.645844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082931, 0.127560, -0.988358,
		-0.721754, -0.676179, -0.147830,
		-0.687164, 0.725611, 0.035991,
		34.151802, 37.306870, 36.656639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091843, 36.659332, 36.154320>,  <34.632816, 36.798943, 36.631447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091843, 36.659332, 36.154320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140175, 37.053463, 36.202545>,  <34.169174, 37.289940, 36.231480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140175, 37.053463, 36.202545>,  <34.091843, 36.659332, 36.154320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140175, 37.053463, 36.202545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250167, 0.087309, -0.964258,
		-0.960633, 0.146677, -0.235946,
		0.120834, 0.985324, 0.120566,
		34.176426, 37.349060, 36.238716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633511, 36.959290, 35.774487>,  <34.091843, 36.659332, 36.154320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633511, 36.959290, 35.774487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832565, 36.621525, 35.695152>,  <34.951996, 36.418865, 35.647552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832565, 36.621525, 35.695152>,  <34.633511, 36.959290, 35.774487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832565, 36.621525, 35.695152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102227, 0.284164, -0.953310,
		0.861343, 0.454123, 0.227730,
		0.497633, -0.844407, -0.198339,
		34.981853, 36.368202, 35.635651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213264, 37.164085, 35.479614>,  <34.633511, 36.959290, 35.774487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213264, 37.164085, 35.479614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178024, 36.804157, 35.308708>,  <35.156879, 36.588200, 35.206165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178024, 36.804157, 35.308708>,  <35.213264, 37.164085, 35.479614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178024, 36.804157, 35.308708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147500, 0.435987, -0.887783,
		0.985130, -0.015197, -0.171136,
		-0.088104, -0.899824, -0.427263,
		35.151592, 36.534210, 35.180531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299870, 37.008896, 34.825642>,  <35.213264, 37.164085, 35.479614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299870, 37.008896, 34.825642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426811, 37.207500, 34.502464>,  <35.502975, 37.326664, 34.308559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426811, 37.207500, 34.502464>,  <35.299870, 37.008896, 34.825642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426811, 37.207500, 34.502464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538389, -0.795692, -0.277508,
		-0.780657, -0.346919, -0.519829,
		0.317351, 0.496509, -0.807940,
		35.522018, 37.356453, 34.260082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144615, 36.605968, 34.215755>,  <35.299870, 37.008896, 34.825642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144615, 36.605968, 34.215755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469772, 36.828587, 34.147091>,  <35.664867, 36.962158, 34.105892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469772, 36.828587, 34.147091>,  <35.144615, 36.605968, 34.215755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469772, 36.828587, 34.147091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433623, -0.775093, -0.459566,
		-0.388823, 0.299140, -0.871397,
		0.812889, 0.556547, -0.171660,
		35.713638, 36.995552, 34.095592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396667, 36.572079, 33.447117>,  <35.144615, 36.605968, 34.215755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396667, 36.572079, 33.447117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705215, 36.674099, 33.680336>,  <35.890343, 36.735310, 33.820267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705215, 36.674099, 33.680336>,  <35.396667, 36.572079, 33.447117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705215, 36.674099, 33.680336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565570, -0.694773, -0.444321,
		0.291761, 0.672489, -0.680172,
		0.771366, 0.255049, 0.583047,
		35.936626, 36.750614, 33.855251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941437, 36.461693, 33.074081>,  <35.396667, 36.572079, 33.447117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941437, 36.461693, 33.074081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122875, 36.498142, 33.428696>,  <36.231739, 36.520012, 33.641464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122875, 36.498142, 33.428696>,  <35.941437, 36.461693, 33.074081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122875, 36.498142, 33.428696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552269, -0.809478, -0.199362,
		0.699465, 0.580036, -0.417500,
		0.453594, 0.091125, 0.886537,
		36.258953, 36.525478, 33.694656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629189, 36.459110, 32.916870>,  <35.941437, 36.461693, 33.074081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629189, 36.459110, 32.916870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615891, 36.340023, 33.298500>,  <36.607910, 36.268570, 33.527477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615891, 36.340023, 33.298500>,  <36.629189, 36.459110, 32.916870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615891, 36.340023, 33.298500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501297, -0.830808, -0.241783,
		0.864636, 0.470236, 0.176868,
		-0.033248, -0.297718, 0.954075,
		36.605915, 36.250706, 33.584721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298954, 36.509995, 33.294125>,  <36.629189, 36.459110, 32.916870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298954, 36.509995, 33.294125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092102, 36.226967, 33.486755>,  <36.967991, 36.057148, 33.602333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092102, 36.226967, 33.486755>,  <37.298954, 36.509995, 33.294125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092102, 36.226967, 33.486755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786466, -0.614827, -0.058822,
		0.337705, 0.348322, 0.874430,
		-0.517134, -0.707574, 0.481573,
		36.936962, 36.014694, 33.631226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859688, 36.183910, 33.608170>,  <37.298954, 36.509995, 33.294125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859688, 36.183910, 33.608170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529095, 35.959038, 33.596359>,  <37.330738, 35.824116, 33.589272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529095, 35.959038, 33.596359>,  <37.859688, 36.183910, 33.608170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529095, 35.959038, 33.596359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551652, -0.798315, -0.241605,
		0.112253, -0.215973, 0.969925,
		-0.826486, -0.562182, -0.029529,
		37.281147, 35.790382, 33.587502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097610, 35.495762, 33.577290>,  <37.859688, 36.183910, 33.608170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097610, 35.495762, 33.577290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723667, 35.392433, 33.479874>,  <37.499302, 35.330437, 33.421425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723667, 35.392433, 33.479874>,  <38.097610, 35.495762, 33.577290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723667, 35.392433, 33.479874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317508, -0.915253, -0.247993,
		-0.158841, -0.309165, 0.937650,
		-0.934857, -0.258319, -0.243542,
		37.443211, 35.314938, 33.406811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027855, 34.794144, 33.847305>,  <38.097610, 35.495762, 33.577290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027855, 34.794144, 33.847305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720474, 34.819607, 33.592613>,  <37.536045, 34.834885, 33.439796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720474, 34.819607, 33.592613>,  <38.027855, 34.794144, 33.847305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720474, 34.819607, 33.592613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260178, -0.877999, -0.401779,
		-0.584623, -0.474412, 0.658141,
		-0.768455, 0.063656, -0.636730,
		37.489937, 34.838703, 33.401596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494617, 34.158276, 33.910507>,  <38.027855, 34.794144, 33.847305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494617, 34.158276, 33.910507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468765, 34.330433, 33.550377>,  <37.453255, 34.433727, 33.334297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468765, 34.330433, 33.550377>,  <37.494617, 34.158276, 33.910507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468765, 34.330433, 33.550377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111686, -0.893423, -0.435111,
		-0.991640, -0.128674, 0.009671,
		-0.064627, 0.430393, -0.900325,
		37.449379, 34.459553, 33.280281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604488, 33.624695, 33.529961>,  <37.494617, 34.158276, 33.910507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604488, 33.624695, 33.529961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600414, 33.890575, 33.231144>,  <37.597969, 34.050102, 33.051853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600414, 33.890575, 33.231144>,  <37.604488, 33.624695, 33.529961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600414, 33.890575, 33.231144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351712, -0.696963, -0.624932,
		-0.936053, -0.269107, -0.226687,
		-0.010181, 0.664698, -0.747043,
		37.597359, 34.089985, 33.007030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493095, 33.183376, 33.003620>,  <37.604488, 33.624695, 33.529961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493095, 33.183376, 33.003620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633968, 33.506474, 32.814510>,  <37.718491, 33.700333, 32.701046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633968, 33.506474, 32.814510>,  <37.493095, 33.183376, 33.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633968, 33.506474, 32.814510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395380, -0.586249, -0.707097,
		-0.848318, 0.062101, -0.525832,
		0.352180, 0.807747, -0.472773,
		37.739624, 33.748798, 32.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314682, 33.094498, 32.323200>,  <37.493095, 33.183376, 33.003620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314682, 33.094498, 32.323200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632599, 33.335678, 32.350803>,  <37.823349, 33.480385, 32.367367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632599, 33.335678, 32.350803>,  <37.314682, 33.094498, 32.323200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632599, 33.335678, 32.350803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501119, -0.587873, -0.635047,
		-0.342333, 0.539311, -0.769384,
		0.794788, 0.602950, 0.069010,
		37.871037, 33.516563, 32.371506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573463, 33.176945, 31.662037>,  <37.314682, 33.094498, 32.323200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573463, 33.176945, 31.662037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893158, 33.271183, 31.883205>,  <38.084972, 33.327724, 32.015907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893158, 33.271183, 31.883205>,  <37.573463, 33.176945, 31.662037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893158, 33.271183, 31.883205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595086, -0.439177, -0.673050,
		0.084262, 0.866959, -0.491205,
		0.799233, 0.235597, 0.552921,
		38.132927, 33.341862, 32.049080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986885, 33.333263, 31.076981>,  <37.573463, 33.176945, 31.662037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986885, 33.333263, 31.076981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226482, 33.321308, 31.397058>,  <38.370239, 33.314133, 31.589106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226482, 33.321308, 31.397058>,  <37.986885, 33.333263, 31.076981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226482, 33.321308, 31.397058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779315, -0.207935, -0.591128,
		0.184059, 0.977686, -0.101256,
		0.598992, -0.029892, 0.800197,
		38.406181, 33.312340, 31.637117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454670, 33.960533, 31.082733>,  <37.986885, 33.333263, 31.076981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454670, 33.960533, 31.082733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600033, 33.627621, 31.250183>,  <38.687248, 33.427872, 31.350653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600033, 33.627621, 31.250183>,  <38.454670, 33.960533, 31.082733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600033, 33.627621, 31.250183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762450, 0.007477, -0.647004,
		0.535359, 0.554305, 0.637289,
		0.363402, -0.832280, 0.418627,
		38.709053, 33.377937, 31.375771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054119, 34.109974, 31.181295>,  <38.454670, 33.960533, 31.082733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054119, 34.109974, 31.181295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029011, 33.711777, 31.152861>,  <39.013947, 33.472858, 31.135799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029011, 33.711777, 31.152861>,  <39.054119, 34.109974, 31.181295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029011, 33.711777, 31.152861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838487, -0.013969, -0.544742,
		0.541294, -0.093797, 0.835585,
		-0.062767, -0.995493, -0.071086,
		39.010181, 33.413128, 31.131535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751163, 33.857731, 31.316059>,  <39.054119, 34.109974, 31.181295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751163, 33.857731, 31.316059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546143, 33.579170, 31.115133>,  <39.423130, 33.412033, 30.994577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546143, 33.579170, 31.115133>,  <39.751163, 33.857731, 31.316059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546143, 33.579170, 31.115133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645001, 0.073903, -0.760600,
		0.566804, -0.713839, 0.411299,
		-0.512550, -0.696399, -0.502316,
		39.392376, 33.370251, 30.964439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188580, 33.801174, 30.783978>,  <39.751163, 33.857731, 31.316059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188580, 33.801174, 30.783978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899342, 33.540272, 30.693033>,  <39.725800, 33.383732, 30.638466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899342, 33.540272, 30.693033>,  <40.188580, 33.801174, 30.783978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899342, 33.540272, 30.693033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435287, -0.174707, -0.883178,
		0.536335, -0.737591, 0.410249,
		-0.723098, -0.652255, -0.227363,
		39.682411, 33.344597, 30.624825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472107, 33.165657, 30.642071>,  <40.188580, 33.801174, 30.783978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472107, 33.165657, 30.642071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127068, 33.202435, 30.443089>,  <39.920044, 33.224503, 30.323700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127068, 33.202435, 30.443089>,  <40.472107, 33.165657, 30.642071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127068, 33.202435, 30.443089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498206, -0.016248, -0.866906,
		-0.087795, -0.995631, -0.031794,
		-0.862602, 0.091950, -0.497456,
		39.868286, 33.230019, 30.293852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473938, 32.690845, 30.135891>,  <40.472107, 33.165657, 30.642071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473938, 32.690845, 30.135891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185078, 32.932487, 30.001099>,  <40.011761, 33.077473, 29.920223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185078, 32.932487, 30.001099>,  <40.473938, 32.690845, 30.135891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185078, 32.932487, 30.001099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254255, -0.221244, -0.941491,
		-0.643316, -0.765576, 0.006174,
		-0.722149, 0.604107, -0.336981,
		39.968433, 33.113720, 29.900003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043407, 32.345837, 29.687311>,  <40.473938, 32.690845, 30.135891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043407, 32.345837, 29.687311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965755, 32.724957, 29.586124>,  <39.919163, 32.952427, 29.525412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965755, 32.724957, 29.586124>,  <40.043407, 32.345837, 29.687311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965755, 32.724957, 29.586124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091655, -0.239220, -0.966630,
		-0.976685, -0.210838, -0.040431,
		-0.194130, 0.947798, -0.252966,
		39.907516, 33.009296, 29.510235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445255, 32.334080, 29.185453>,  <40.043407, 32.345837, 29.687311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445255, 32.334080, 29.185453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654316, 32.673260, 29.150106>,  <39.779755, 32.876770, 29.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654316, 32.673260, 29.150106>,  <39.445255, 32.334080, 29.185453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654316, 32.673260, 29.150106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326504, -0.294832, -0.898036,
		-0.787546, 0.440510, -0.430955,
		0.522654, 0.847953, -0.088365,
		39.811111, 32.927647, 29.123596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198490, 32.724350, 28.569580>,  <39.445255, 32.334080, 29.185453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198490, 32.724350, 28.569580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569553, 32.851452, 28.648050>,  <39.792191, 32.927711, 28.695133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569553, 32.851452, 28.648050>,  <39.198490, 32.724350, 28.569580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569553, 32.851452, 28.648050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241157, -0.108643, -0.964386,
		-0.285123, 0.941929, -0.177412,
		0.927657, 0.317753, 0.196176,
		39.847851, 32.946777, 28.706903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384151, 33.312233, 28.047926>,  <39.198490, 32.724350, 28.569580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384151, 33.312233, 28.047926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752476, 33.217789, 28.172098>,  <39.973469, 33.161121, 28.246601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752476, 33.217789, 28.172098>,  <39.384151, 33.312233, 28.047926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752476, 33.217789, 28.172098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282821, -0.143861, -0.948323,
		0.268566, 0.961019, -0.065692,
		0.920806, -0.236108, 0.310433,
		40.028717, 33.146957, 28.265228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740280, 33.557690, 27.472223>,  <39.384151, 33.312233, 28.047926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740280, 33.557690, 27.472223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011814, 33.342194, 27.671797>,  <40.174736, 33.212894, 27.791540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011814, 33.342194, 27.671797>,  <39.740280, 33.557690, 27.472223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011814, 33.342194, 27.671797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437538, -0.248899, -0.864066,
		0.589694, 0.804863, 0.066758,
		0.678839, -0.538743, 0.498933,
		40.215466, 33.180569, 27.821476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358341, 33.840366, 27.236050>,  <39.740280, 33.557690, 27.472223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358341, 33.840366, 27.236050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433014, 33.473415, 27.376661>,  <40.477818, 33.253246, 27.461027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433014, 33.473415, 27.376661>,  <40.358341, 33.840366, 27.236050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433014, 33.473415, 27.376661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571124, -0.189802, -0.798619,
		0.799355, 0.349851, 0.488503,
		0.186679, -0.917376, 0.351528,
		40.489017, 33.198204, 27.482121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113708, 33.786064, 27.330084>,  <40.358341, 33.840366, 27.236050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113708, 33.786064, 27.330084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964447, 33.416100, 27.300980>,  <40.874889, 33.194122, 27.283518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964447, 33.416100, 27.300980>,  <41.113708, 33.786064, 27.330084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964447, 33.416100, 27.300980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724443, -0.241488, -0.645651,
		0.579599, -0.293641, 0.760158,
		-0.373158, -0.924910, -0.072760,
		40.852501, 33.138626, 27.279152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699291, 33.352905, 27.228691>,  <41.113708, 33.786064, 27.330084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699291, 33.352905, 27.228691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394485, 33.153240, 27.063684>,  <41.211601, 33.033440, 26.964680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394485, 33.153240, 27.063684>,  <41.699291, 33.352905, 27.228691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394485, 33.153240, 27.063684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583402, -0.252726, -0.771863,
		0.281035, -0.828832, 0.483795,
		-0.762011, -0.499167, -0.412517,
		41.165882, 33.003490, 26.939930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003914, 32.786079, 26.872356>,  <41.699291, 33.352905, 27.228691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003914, 32.786079, 26.872356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637985, 32.783985, 26.710829>,  <41.418427, 32.782730, 26.613913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637985, 32.783985, 26.710829>,  <42.003914, 32.786079, 26.872356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637985, 32.783985, 26.710829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363762, -0.445029, -0.818307,
		-0.175426, -0.895501, 0.409028,
		-0.914824, -0.005237, -0.403819,
		41.363537, 32.782413, 26.589684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769775, 32.116749, 26.688049>,  <42.003914, 32.786079, 26.872356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769775, 32.116749, 26.688049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560783, 32.350800, 26.439972>,  <41.435390, 32.491230, 26.291124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560783, 32.350800, 26.439972>,  <41.769775, 32.116749, 26.688049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560783, 32.350800, 26.439972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261365, -0.582450, -0.769701,
		-0.811607, -0.564249, 0.151385,
		-0.522477, 0.585128, -0.620196,
		41.404041, 32.526337, 26.253914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519577, 31.620743, 26.249870>,  <41.769775, 32.116749, 26.688049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519577, 31.620743, 26.249870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456085, 31.968323, 26.062368>,  <41.417992, 32.176872, 25.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456085, 31.968323, 26.062368>,  <41.519577, 31.620743, 26.249870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456085, 31.968323, 26.062368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170595, -0.443496, -0.879891,
		-0.972473, -0.219630, -0.077844,
		-0.158727, 0.868950, -0.468755,
		41.408466, 32.229008, 25.921741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154869, 31.531252, 25.608635>,  <41.519577, 31.620743, 26.249870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154869, 31.531252, 25.608635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344101, 31.873486, 25.524561>,  <41.457638, 32.078827, 25.474117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344101, 31.873486, 25.524561>,  <41.154869, 31.531252, 25.608635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344101, 31.873486, 25.524561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338758, -0.396875, -0.853073,
		-0.813291, 0.332366, -0.477588,
		0.473075, 0.855583, -0.210183,
		41.486023, 32.130161, 25.461506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113510, 31.644415, 24.905636>,  <41.154869, 31.531252, 25.608635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113510, 31.644415, 24.905636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422226, 31.884987, 24.988222>,  <41.607456, 32.029331, 25.037775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422226, 31.884987, 24.988222>,  <41.113510, 31.644415, 24.905636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422226, 31.884987, 24.988222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419227, -0.237124, -0.876368,
		-0.478115, 0.762926, -0.435144,
		0.771787, 0.601429, 0.206467,
		41.653763, 32.065414, 25.050161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145481, 32.085827, 24.369308>,  <41.113510, 31.644415, 24.905636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145481, 32.085827, 24.369308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506939, 32.107990, 24.539183>,  <41.723812, 32.121288, 24.641108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506939, 32.107990, 24.539183>,  <41.145481, 32.085827, 24.369308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506939, 32.107990, 24.539183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425321, 0.000343, -0.905043,
		-0.050293, 0.998464, -0.023256,
		0.903644, 0.055408, 0.424685,
		41.778030, 32.124611, 24.666588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495850, 32.549179, 24.023901>,  <41.145481, 32.085827, 24.369308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495850, 32.549179, 24.023901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794502, 32.357506, 24.208479>,  <41.973694, 32.242504, 24.319225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794502, 32.357506, 24.208479>,  <41.495850, 32.549179, 24.023901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794502, 32.357506, 24.208479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591998, 0.162176, -0.789454,
		0.303454, 0.862604, 0.404758,
		0.746629, -0.479179, 0.461447,
		42.018490, 32.213753, 24.346912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040054, 33.013519, 23.918749>,  <41.495850, 32.549179, 24.023901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040054, 33.013519, 23.918749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187611, 32.657326, 24.025299>,  <42.276142, 32.443607, 24.089230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187611, 32.657326, 24.025299>,  <42.040054, 33.013519, 23.918749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187611, 32.657326, 24.025299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613056, 0.017691, -0.789842,
		0.698630, 0.454667, 0.552443,
		0.368888, -0.890486, 0.266377,
		42.298279, 32.390179, 24.105211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732391, 33.046253, 23.963024>,  <42.040054, 33.013519, 23.918749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732391, 33.046253, 23.963024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694229, 32.649982, 23.924131>,  <42.671333, 32.412220, 23.900795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694229, 32.649982, 23.924131>,  <42.732391, 33.046253, 23.963024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694229, 32.649982, 23.924131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717345, -0.000700, -0.696718,
		0.690155, -0.136219, 0.710725,
		-0.095404, -0.990678, -0.097233,
		42.665607, 32.352779, 23.894962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397831, 32.747715, 23.986111>,  <42.732391, 33.046253, 23.963024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397831, 32.747715, 23.986111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179237, 32.469017, 23.800247>,  <43.048080, 32.301800, 23.688728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179237, 32.469017, 23.800247>,  <43.397831, 32.747715, 23.986111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179237, 32.469017, 23.800247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678964, -0.043789, -0.732865,
		0.490271, -0.715983, 0.496993,
		-0.546482, -0.696743, -0.464658,
		43.015293, 32.259995, 23.660851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829403, 32.185734, 23.796080>,  <43.397831, 32.747715, 23.986111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829403, 32.185734, 23.796080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529270, 32.174202, 23.531906>,  <43.349190, 32.167282, 23.373402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529270, 32.174202, 23.531906>,  <43.829403, 32.185734, 23.796080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529270, 32.174202, 23.531906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659242, 0.041426, -0.750789,
		0.049013, -0.998725, -0.012070,
		-0.750332, -0.028842, -0.660432,
		43.304169, 32.165554, 23.333776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046078, 31.718149, 23.329767>,  <43.829403, 32.185734, 23.796080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046078, 31.718149, 23.329767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764568, 31.911915, 23.121901>,  <43.595665, 32.028175, 22.997181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764568, 31.911915, 23.121901>,  <44.046078, 31.718149, 23.329767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764568, 31.911915, 23.121901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637260, 0.107126, -0.763166,
		-0.314019, -0.868255, -0.384090,
		-0.703769, 0.484414, -0.519665,
		43.553436, 32.057240, 22.966002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090538, 31.325315, 22.775213>,  <44.046078, 31.718149, 23.329767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090538, 31.325315, 22.775213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905178, 31.670393, 22.694201>,  <43.793961, 31.877439, 22.645594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905178, 31.670393, 22.694201>,  <44.090538, 31.325315, 22.775213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905178, 31.670393, 22.694201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518727, 0.078781, -0.851302,
		-0.718458, -0.499552, -0.484010,
		-0.463401, 0.862694, -0.202531,
		43.766159, 31.929201, 22.633442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984230, 31.420773, 22.041767>,  <44.090538, 31.325315, 22.775213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984230, 31.420773, 22.041767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931221, 31.805244, 22.138571>,  <43.899414, 32.035927, 22.196653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931221, 31.805244, 22.138571>,  <43.984230, 31.420773, 22.041767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931221, 31.805244, 22.138571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706947, 0.262800, -0.656629,
		-0.694740, 0.084068, -0.714332,
		-0.132524, 0.961181, 0.242009,
		43.891464, 32.093597, 22.211174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992569, 31.774191, 21.346102>,  <43.984230, 31.420773, 22.041767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992569, 31.774191, 21.346102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088844, 32.021713, 21.645206>,  <44.146610, 32.170227, 21.824669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088844, 32.021713, 21.645206>,  <43.992569, 31.774191, 21.346102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088844, 32.021713, 21.645206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712349, 0.410666, -0.569133,
		-0.659264, 0.669649, -0.341966,
		0.240686, 0.618808, 0.747761,
		44.161049, 32.207355, 21.869535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119690, 32.329346, 21.046772>,  <43.992569, 31.774191, 21.346102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119690, 32.329346, 21.046772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314453, 32.381706, 21.392208>,  <44.431313, 32.413124, 21.599470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314453, 32.381706, 21.392208>,  <44.119690, 32.329346, 21.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314453, 32.381706, 21.392208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797968, 0.335403, -0.500751,
		-0.355199, 0.932936, 0.058855,
		0.486909, 0.130902, 0.863588,
		44.460526, 32.420979, 21.651285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350864, 33.055069, 21.258394>,  <44.119690, 32.329346, 21.046772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350864, 33.055069, 21.258394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601715, 32.776920, 21.398771>,  <44.752228, 32.610031, 21.482998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601715, 32.776920, 21.398771>,  <44.350864, 33.055069, 21.258394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601715, 32.776920, 21.398771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738943, 0.388664, -0.550366,
		0.246312, 0.604478, 0.757586,
		0.627131, -0.695375, 0.350942,
		44.789856, 32.568306, 21.504053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286777, 33.745968, 21.617741>,  <44.350864, 33.055069, 21.258394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286777, 33.745968, 21.617741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586639, 34.004864, 21.562477>,  <44.766556, 34.160202, 21.529320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586639, 34.004864, 21.562477>,  <44.286777, 33.745968, 21.617741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586639, 34.004864, 21.562477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305384, -0.523495, -0.795420,
		-0.587156, 0.554101, -0.590101,
		0.749659, 0.647243, -0.138159,
		44.811539, 34.199036, 21.521029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227688, 33.986542, 20.963772>,  <44.286777, 33.745968, 21.617741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227688, 33.986542, 20.963772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601147, 34.083961, 21.068836>,  <44.825222, 34.142414, 21.131876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601147, 34.083961, 21.068836>,  <44.227688, 33.986542, 20.963772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601147, 34.083961, 21.068836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348542, -0.448537, -0.823003,
		-0.082630, 0.859940, -0.503662,
		0.933644, 0.243552, 0.262663,
		44.881241, 34.157028, 21.147635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529327, 34.269886, 20.350924>,  <44.227688, 33.986542, 20.963772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529327, 34.269886, 20.350924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790466, 34.113140, 20.610226>,  <44.947151, 34.019093, 20.765806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790466, 34.113140, 20.610226>,  <44.529327, 34.269886, 20.350924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790466, 34.113140, 20.610226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346156, -0.606872, -0.715459,
		0.673770, 0.691483, -0.260548,
		0.652847, -0.391865, 0.648253,
		44.986320, 33.995583, 20.804701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631725, 33.613468, 20.378305>,  <44.529327, 34.269886, 20.350924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631725, 33.613468, 20.378305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967945, 33.744480, 20.205704>,  <45.169678, 33.823090, 20.102142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967945, 33.744480, 20.205704>,  <44.631725, 33.613468, 20.378305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967945, 33.744480, 20.205704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301499, 0.378925, 0.874936,
		0.450083, -0.865526, 0.219753,
		0.840550, 0.327538, -0.431503,
		45.220112, 33.842739, 20.076254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304626, 33.352375, 20.736635>,  <44.631725, 33.613468, 20.378305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304626, 33.352375, 20.736635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309917, 33.710365, 20.558266>,  <45.313091, 33.925159, 20.451244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309917, 33.710365, 20.558266>,  <45.304626, 33.352375, 20.736635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309917, 33.710365, 20.558266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020173, 0.446110, 0.894750,
		0.999709, -0.002844, 0.023957,
		0.013232, 0.894973, -0.445923,
		45.313889, 33.978859, 20.424488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.969402, 33.623848, 21.081347>,  <45.304626, 33.352375, 20.736635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.969402, 33.623848, 21.081347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670448, 33.861797, 20.962997>,  <45.491077, 34.004566, 20.891989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670448, 33.861797, 20.962997>,  <45.969402, 33.623848, 21.081347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670448, 33.861797, 20.962997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000077, 0.445405, 0.895329,
		0.664392, 0.669132, -0.332934,
		-0.747384, 0.594876, -0.295872,
		45.446232, 34.040260, 20.874235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121010, 34.369961, 21.341238>,  <45.969402, 33.623848, 21.081347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121010, 34.369961, 21.341238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729637, 34.318787, 21.276352>,  <45.494816, 34.288082, 21.237421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729637, 34.318787, 21.276352>,  <46.121010, 34.369961, 21.341238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729637, 34.318787, 21.276352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204962, 0.502681, 0.839823,
		-0.025899, 0.854953, -0.518058,
		-0.978427, -0.127933, -0.162214,
		45.436108, 34.280407, 21.227688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843033, 34.973755, 21.353369>,  <46.121010, 34.369961, 21.341238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843033, 34.973755, 21.353369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518661, 34.753185, 21.431677>,  <45.324039, 34.620842, 21.478661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518661, 34.753185, 21.431677>,  <45.843033, 34.973755, 21.353369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518661, 34.753185, 21.431677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278098, 0.657561, 0.700196,
		-0.514835, 0.513366, -0.686585,
		-0.810929, -0.551424, 0.195769,
		45.275383, 34.587757, 21.490408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273651, 35.398510, 21.359865>,  <45.843033, 34.973755, 21.353369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273651, 35.398510, 21.359865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144482, 35.079620, 21.563885>,  <45.066978, 34.888287, 21.686296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144482, 35.079620, 21.563885>,  <45.273651, 35.398510, 21.359865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144482, 35.079620, 21.563885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391666, 0.603177, 0.694820,
		-0.861578, 0.024607, -0.507029,
		-0.322926, -0.797227, 0.510046,
		45.047604, 34.840450, 21.716898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553852, 35.565063, 21.593180>,  <45.273651, 35.398510, 21.359865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553852, 35.565063, 21.593180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720840, 35.283871, 21.823494>,  <44.821033, 35.115154, 21.961683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720840, 35.283871, 21.823494>,  <44.553852, 35.565063, 21.593180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720840, 35.283871, 21.823494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255878, 0.517061, 0.816807,
		-0.871922, -0.488321, 0.035977,
		0.417466, -0.702987, 0.575788,
		44.846081, 35.072975, 21.996231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063129, 35.520275, 22.096373>,  <44.553852, 35.565063, 21.593180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063129, 35.520275, 22.096373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368904, 35.315308, 22.252869>,  <44.552368, 35.192326, 22.346767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368904, 35.315308, 22.252869>,  <44.063129, 35.520275, 22.096373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368904, 35.315308, 22.252869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312192, 0.236744, 0.920048,
		-0.564073, -0.825458, 0.021002,
		0.764433, -0.512418, 0.391242,
		44.598232, 35.161583, 22.370241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839760, 35.077564, 22.537531>,  <44.063129, 35.520275, 22.096373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839760, 35.077564, 22.537531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220242, 35.100750, 22.658756>,  <44.448532, 35.114662, 22.731491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220242, 35.100750, 22.658756>,  <43.839760, 35.077564, 22.537531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220242, 35.100750, 22.658756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308529, 0.165786, 0.936656,
		0.004046, -0.984457, 0.175579,
		0.951206, 0.057961, 0.303063,
		44.505604, 35.118137, 22.749676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907051, 34.691738, 23.101068>,  <43.839760, 35.077564, 22.537531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907051, 34.691738, 23.101068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205265, 34.956394, 23.133068>,  <44.384193, 35.115189, 23.152267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205265, 34.956394, 23.133068>,  <43.907051, 34.691738, 23.101068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205265, 34.956394, 23.133068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186428, 0.091799, 0.978171,
		0.639856, -0.744178, 0.191789,
		0.745539, 0.661643, 0.079997,
		44.428928, 35.154888, 23.157066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279953, 34.593964, 23.735994>,  <43.907051, 34.691738, 23.101068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279953, 34.593964, 23.735994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374878, 34.969967, 23.637951>,  <44.431831, 35.195568, 23.579124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374878, 34.969967, 23.637951>,  <44.279953, 34.593964, 23.735994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374878, 34.969967, 23.637951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126418, 0.280052, 0.951625,
		0.963174, -0.194842, 0.185292,
		0.237308, 0.940004, -0.245107,
		44.446072, 35.251968, 23.564419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700745, 34.754978, 24.251795>,  <44.279953, 34.593964, 23.735994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700745, 34.754978, 24.251795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577133, 35.097565, 24.086399>,  <44.502968, 35.303116, 23.987162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577133, 35.097565, 24.086399>,  <44.700745, 34.754978, 24.251795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577133, 35.097565, 24.086399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296907, 0.326160, 0.897477,
		0.903520, 0.400113, 0.153497,
		-0.309027, 0.856463, -0.413488,
		44.484425, 35.354504, 23.962353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931171, 35.157959, 24.726793>,  <44.700745, 34.754978, 24.251795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931171, 35.157959, 24.726793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659286, 35.356171, 24.510481>,  <44.496155, 35.475098, 24.380693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659286, 35.356171, 24.510481>,  <44.931171, 35.157959, 24.726793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659286, 35.356171, 24.510481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453273, 0.295873, 0.840835,
		0.576658, 0.816647, 0.023501,
		-0.679712, 0.495526, -0.540781,
		44.455372, 35.504829, 24.348246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856102, 35.902344, 24.962416>,  <44.931171, 35.157959, 24.726793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856102, 35.902344, 24.962416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511143, 35.793903, 24.791409>,  <44.304165, 35.728840, 24.688805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511143, 35.793903, 24.791409>,  <44.856102, 35.902344, 24.962416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511143, 35.793903, 24.791409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490550, 0.239001, 0.837997,
		-0.125002, 0.932408, -0.339102,
		-0.862401, -0.271097, -0.427518,
		44.252422, 35.712574, 24.663153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443844, 36.456326, 25.199654>,  <44.856102, 35.902344, 24.962416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443844, 36.456326, 25.199654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192410, 36.177650, 25.061377>,  <44.041550, 36.010445, 24.978411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192410, 36.177650, 25.061377>,  <44.443844, 36.456326, 25.199654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192410, 36.177650, 25.061377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623255, 0.185359, 0.759733,
		-0.465221, 0.693012, -0.550729,
		-0.628587, -0.696689, -0.345690,
		44.003834, 35.968643, 24.957670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804958, 36.741737, 25.332836>,  <44.443844, 36.456326, 25.199654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804958, 36.741737, 25.332836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737789, 36.354458, 25.258652>,  <43.697487, 36.122089, 25.214140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737789, 36.354458, 25.258652>,  <43.804958, 36.741737, 25.332836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737789, 36.354458, 25.258652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789685, 0.019496, 0.613202,
		-0.590085, 0.249426, -0.767845,
		-0.167918, -0.968198, -0.185463,
		43.687412, 36.063999, 25.203012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140915, 36.710575, 25.239737>,  <43.804958, 36.741737, 25.332836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140915, 36.710575, 25.239737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223888, 36.329987, 25.330656>,  <43.273674, 36.101631, 25.385208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223888, 36.329987, 25.330656>,  <43.140915, 36.710575, 25.239737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223888, 36.329987, 25.330656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837594, -0.052708, 0.543745,
		-0.505380, -0.303175, -0.807884,
		0.207432, -0.951476, 0.227300,
		43.286118, 36.044544, 25.398846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439346, 36.386879, 25.079290>,  <43.140915, 36.710575, 25.239737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439346, 36.386879, 25.079290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645702, 36.128174, 25.303989>,  <42.769516, 35.972950, 25.438808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645702, 36.128174, 25.303989>,  <42.439346, 36.386879, 25.079290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645702, 36.128174, 25.303989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786126, -0.096864, 0.610428,
		-0.340388, -0.756518, -0.558406,
		0.515889, -0.646760, 0.561747,
		42.800468, 35.934147, 25.472513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155952, 35.658543, 25.101347>,  <42.439346, 36.386879, 25.079290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155952, 35.658543, 25.101347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356277, 35.757233, 25.433205>,  <42.476475, 35.816444, 25.632320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356277, 35.757233, 25.433205>,  <42.155952, 35.658543, 25.101347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356277, 35.757233, 25.433205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857033, 0.007183, 0.515212,
		0.121156, -0.969059, 0.215049,
		0.500815, 0.246725, 0.829645,
		42.506523, 35.831249, 25.682098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822033, 35.307384, 25.647497>,  <42.155952, 35.658543, 25.101347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822033, 35.307384, 25.647497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039032, 35.576550, 25.848650>,  <42.169231, 35.738049, 25.969341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039032, 35.576550, 25.848650>,  <41.822033, 35.307384, 25.647497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039032, 35.576550, 25.848650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743704, 0.106345, 0.659996,
		0.390638, -0.732041, 0.558137,
		0.542500, 0.672909, 0.502880,
		42.201782, 35.778423, 25.999514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578350, 35.136845, 26.411982>,  <41.822033, 35.307384, 25.647497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578350, 35.136845, 26.411982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739605, 35.502060, 26.436781>,  <41.836357, 35.721188, 26.451660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739605, 35.502060, 26.436781>,  <41.578350, 35.136845, 26.411982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739605, 35.502060, 26.436781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698283, 0.263112, 0.665712,
		0.591508, -0.311664, 0.743629,
		0.403137, 0.913037, 0.061997,
		41.860546, 35.775970, 26.455379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646763, 35.277679, 27.117756>,  <41.578350, 35.136845, 26.411982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646763, 35.277679, 27.117756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700596, 35.628414, 26.933126>,  <41.732895, 35.838856, 26.822350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700596, 35.628414, 26.933126>,  <41.646763, 35.277679, 27.117756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700596, 35.628414, 26.933126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530670, 0.457158, 0.713720,
		0.836826, 0.148891, 0.526833,
		0.134579, 0.876834, -0.461574,
		41.740971, 35.891464, 26.794655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894413, 35.617592, 27.616230>,  <41.646763, 35.277679, 27.117756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894413, 35.617592, 27.616230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738472, 35.859291, 27.338268>,  <41.644905, 36.004311, 27.171492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738472, 35.859291, 27.338268>,  <41.894413, 35.617592, 27.616230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738472, 35.859291, 27.338268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539660, 0.461542, 0.704092,
		0.746177, 0.649506, 0.146156,
		-0.389855, 0.604252, -0.694905,
		41.621517, 36.040565, 27.129797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869690, 36.285671, 27.927526>,  <41.894413, 35.617592, 27.616230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869690, 36.285671, 27.927526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594318, 36.296471, 27.637606>,  <41.429096, 36.302952, 27.463654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594318, 36.296471, 27.637606>,  <41.869690, 36.285671, 27.927526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594318, 36.296471, 27.637606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617134, 0.503226, 0.604905,
		0.381072, 0.863733, -0.329772,
		-0.688426, 0.026998, -0.724804,
		41.387791, 36.304569, 27.420164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755836, 37.065784, 27.831896>,  <41.869690, 36.285671, 27.927526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755836, 37.065784, 27.831896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458950, 36.826111, 27.711832>,  <41.280819, 36.682308, 27.639793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458950, 36.826111, 27.711832>,  <41.755836, 37.065784, 27.831896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458950, 36.826111, 27.711832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643306, 0.511498, 0.569673,
		-0.187805, 0.615917, -0.765098,
		-0.742218, -0.599179, -0.300162,
		41.236286, 36.646358, 27.621784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187382, 37.490181, 27.818853>,  <41.755836, 37.065784, 27.831896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187382, 37.490181, 27.818853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024170, 37.125130, 27.808901>,  <40.926243, 36.906097, 27.802929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024170, 37.125130, 27.808901>,  <41.187382, 37.490181, 27.818853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024170, 37.125130, 27.808901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772418, 0.330554, 0.542315,
		-0.486709, 0.240498, -0.839807,
		-0.408027, -0.912631, -0.024881,
		40.901760, 36.851341, 27.801437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502285, 37.533974, 27.854603>,  <41.187382, 37.490181, 27.818853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502285, 37.533974, 27.854603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514420, 37.146088, 27.951542>,  <40.521698, 36.913357, 28.009705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514420, 37.146088, 27.951542>,  <40.502285, 37.533974, 27.854603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514420, 37.146088, 27.951542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759204, 0.135352, 0.636623,
		-0.650145, -0.203302, -0.732106,
		0.030335, -0.969715, 0.242346,
		40.523521, 36.855171, 28.024246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817989, 37.265820, 27.846634>,  <40.502285, 37.533974, 27.854603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817989, 37.265820, 27.846634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021511, 37.009792, 28.076916>,  <40.143623, 36.856178, 28.215084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021511, 37.009792, 28.076916>,  <39.817989, 37.265820, 27.846634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021511, 37.009792, 28.076916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630449, 0.178338, 0.755466,
		-0.586216, -0.747338, -0.312788,
		0.508807, -0.640063, 0.575703,
		40.174152, 36.817772, 28.249626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334255, 36.692158, 28.111101>,  <39.817989, 37.265820, 27.846634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334255, 36.692158, 28.111101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655422, 36.724827, 28.347288>,  <39.848122, 36.744427, 28.489000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655422, 36.724827, 28.347288>,  <39.334255, 36.692158, 28.111101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655422, 36.724827, 28.347288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590178, 0.248082, 0.768209,
		-0.083742, -0.965290, 0.247391,
		0.802918, 0.081673, 0.590468,
		39.896297, 36.749329, 28.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047604, 36.496822, 28.752119>,  <39.334255, 36.692158, 28.111101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047604, 36.496822, 28.752119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395035, 36.662735, 28.860580>,  <39.603493, 36.762283, 28.925657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395035, 36.662735, 28.860580>,  <39.047604, 36.496822, 28.752119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395035, 36.662735, 28.860580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416320, 0.314000, 0.853277,
		0.268771, -0.854031, 0.445413,
		0.868585, 0.414771, 0.271156,
		39.655609, 36.787167, 28.941925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183182, 36.257160, 29.455452>,  <39.047604, 36.496822, 28.752119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183182, 36.257160, 29.455452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364693, 36.611649, 29.418158>,  <39.473598, 36.824341, 29.395781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364693, 36.611649, 29.418158>,  <39.183182, 36.257160, 29.455452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364693, 36.611649, 29.418158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390087, 0.291623, 0.873377,
		0.801198, -0.359949, 0.478037,
		0.453778, 0.886224, -0.093236,
		39.500828, 36.877514, 29.390186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372078, 36.332813, 30.113752>,  <39.183182, 36.257160, 29.455452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372078, 36.332813, 30.113752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422970, 36.678879, 29.919720>,  <39.453506, 36.886517, 29.803299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422970, 36.678879, 29.919720>,  <39.372078, 36.332813, 30.113752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422970, 36.678879, 29.919720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255985, 0.501131, 0.826644,
		0.958271, 0.019000, 0.285228,
		0.127230, 0.865163, -0.485083,
		39.461140, 36.938427, 29.774195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609421, 36.674179, 30.610575>,  <39.372078, 36.332813, 30.113752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609421, 36.674179, 30.610575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535076, 36.992245, 30.379692>,  <39.490471, 37.183083, 30.241163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535076, 36.992245, 30.379692>,  <39.609421, 36.674179, 30.610575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535076, 36.992245, 30.379692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201722, 0.544050, 0.814443,
		0.961647, 0.267808, 0.059285,
		-0.185860, 0.795166, -0.577207,
		39.479317, 37.230793, 30.206530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877266, 37.271160, 30.943762>,  <39.609421, 36.674179, 30.610575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877266, 37.271160, 30.943762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582630, 37.402344, 30.707159>,  <39.405849, 37.481052, 30.565197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582630, 37.402344, 30.707159>,  <39.877266, 37.271160, 30.943762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582630, 37.402344, 30.707159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463735, 0.391728, 0.794669,
		0.492326, 0.859648, -0.136458,
		-0.736590, 0.327956, -0.591506,
		39.361652, 37.500729, 30.529707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832611, 37.985245, 31.128395>,  <39.877266, 37.271160, 30.943762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832611, 37.985245, 31.128395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480793, 37.900230, 30.958109>,  <39.269703, 37.849220, 30.855938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480793, 37.900230, 30.958109>,  <39.832611, 37.985245, 31.128395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480793, 37.900230, 30.958109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474594, 0.456033, 0.752858,
		0.034131, 0.864212, -0.501969,
		-0.879543, -0.212536, -0.425715,
		39.216930, 37.836472, 30.830395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361851, 38.534256, 31.365519>,  <39.832611, 37.985245, 31.128395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361851, 38.534256, 31.365519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108868, 38.263180, 31.215462>,  <38.957077, 38.100533, 31.125427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108868, 38.263180, 31.215462>,  <39.361851, 38.534256, 31.365519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108868, 38.263180, 31.215462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594088, 0.113615, 0.796336,
		-0.497047, 0.726519, -0.474463,
		-0.632459, -0.677689, -0.375144,
		38.919128, 38.059872, 31.102919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622898, 38.854008, 31.251949>,  <39.361851, 38.534256, 31.365519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622898, 38.854008, 31.251949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583645, 38.458466, 31.296728>,  <38.560093, 38.221138, 31.323595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583645, 38.458466, 31.296728>,  <38.622898, 38.854008, 31.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583645, 38.458466, 31.296728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677051, 0.148783, 0.720739,
		-0.729364, -0.005066, -0.684107,
		-0.098132, -0.988857, 0.111946,
		38.554207, 38.161808, 31.330313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901630, 38.632236, 30.976332>,  <38.622898, 38.854008, 31.251949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901630, 38.632236, 30.976332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049919, 38.363411, 31.232735>,  <38.138893, 38.202114, 31.386576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049919, 38.363411, 31.232735>,  <37.901630, 38.632236, 30.976332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049919, 38.363411, 31.232735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655407, 0.299693, 0.693272,
		-0.658030, -0.677133, -0.329373,
		0.370726, -0.672067, 0.641005,
		38.161137, 38.161793, 31.425035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272438, 38.366417, 31.427473>,  <37.901630, 38.632236, 30.976332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272438, 38.366417, 31.427473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602432, 38.253613, 31.623377>,  <37.800430, 38.185928, 31.740919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602432, 38.253613, 31.623377>,  <37.272438, 38.366417, 31.427473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602432, 38.253613, 31.623377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463800, 0.157340, 0.871856,
		-0.322935, -0.946421, -0.000994,
		0.824986, -0.282014, 0.489761,
		37.849930, 38.169010, 31.770306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059906, 37.825466, 31.963614>,  <37.272438, 38.366417, 31.427473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059906, 37.825466, 31.963614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395714, 38.014584, 32.070698>,  <37.597198, 38.128056, 32.134949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395714, 38.014584, 32.070698>,  <37.059906, 37.825466, 31.963614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395714, 38.014584, 32.070698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378238, 0.154845, 0.912666,
		0.390050, -0.867461, 0.308825,
		0.839521, 0.472795, 0.267710,
		37.647572, 38.156422, 32.151012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231400, 37.497902, 32.599152>,  <37.059906, 37.825466, 31.963614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231400, 37.497902, 32.599152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445766, 37.835167, 32.581848>,  <37.574387, 38.037525, 32.571468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445766, 37.835167, 32.581848>,  <37.231400, 37.497902, 32.599152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445766, 37.835167, 32.581848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407788, 0.303371, 0.861206,
		0.739259, -0.443894, 0.506413,
		0.535915, 0.843163, -0.043255,
		37.606541, 38.088116, 32.568871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698360, 37.484241, 33.172714>,  <37.231400, 37.497902, 32.599152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698360, 37.484241, 33.172714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662952, 37.871296, 33.078194>,  <37.641708, 38.103531, 33.021481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662952, 37.871296, 33.078194>,  <37.698360, 37.484241, 33.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662952, 37.871296, 33.078194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261030, 0.206404, 0.943006,
		0.961263, 0.145160, 0.234312,
		-0.088524, 0.967639, -0.236299,
		37.636395, 38.161587, 33.007305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126583, 37.771011, 33.619148>,  <37.698360, 37.484241, 33.172714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126583, 37.771011, 33.619148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857872, 38.040459, 33.495884>,  <37.696648, 38.202126, 33.421925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857872, 38.040459, 33.495884>,  <38.126583, 37.771011, 33.619148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857872, 38.040459, 33.495884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265527, 0.169393, 0.949106,
		0.691532, 0.719410, 0.065069,
		-0.671773, 0.673614, -0.308163,
		37.656342, 38.242542, 33.403435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891869, 37.961864, 34.378036>,  <38.126583, 37.771011, 33.619148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891869, 37.961864, 34.378036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098480, 38.145027, 34.667458>,  <38.222446, 38.254925, 34.841110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098480, 38.145027, 34.667458>,  <37.891869, 37.961864, 34.378036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098480, 38.145027, 34.667458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802410, 0.036122, -0.595679,
		-0.298899, 0.888268, -0.348767,
		0.516525, 0.457902, 0.723552,
		38.253437, 38.282398, 34.884521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249214, 38.481781, 34.140411>,  <37.891869, 37.961864, 34.378036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249214, 38.481781, 34.140411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461498, 38.400665, 34.469585>,  <38.588871, 38.351997, 34.667091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461498, 38.400665, 34.469585>,  <38.249214, 38.481781, 34.140411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461498, 38.400665, 34.469585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829937, -0.072581, -0.553115,
		0.171895, 0.976529, 0.129782,
		0.530713, -0.202788, 0.822934,
		38.620712, 38.339828, 34.716465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870899, 38.801369, 33.998936>,  <38.249214, 38.481781, 34.140411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870899, 38.801369, 33.998936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966331, 38.552841, 34.297478>,  <39.023590, 38.403725, 34.476601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966331, 38.552841, 34.297478>,  <38.870899, 38.801369, 33.998936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966331, 38.552841, 34.297478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922999, -0.093857, -0.373182,
		0.301915, 0.777915, 0.551086,
		0.238580, -0.621321, 0.746351,
		39.037907, 38.366444, 34.521381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569466, 38.953724, 34.236568>,  <38.870899, 38.801369, 33.998936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569466, 38.953724, 34.236568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465939, 38.573116, 34.303059>,  <39.403824, 38.344753, 34.342953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465939, 38.573116, 34.303059>,  <39.569466, 38.953724, 34.236568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465939, 38.573116, 34.303059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881528, -0.303025, -0.362056,
		0.394871, 0.052823, 0.917216,
		-0.258814, -0.951518, 0.166221,
		39.388294, 38.287663, 34.352924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074036, 38.694019, 34.675526>,  <39.569466, 38.953724, 34.236568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074036, 38.694019, 34.675526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889435, 38.376282, 34.517517>,  <39.778675, 38.185638, 34.422714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889435, 38.376282, 34.517517>,  <40.074036, 38.694019, 34.675526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889435, 38.376282, 34.517517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873728, -0.329849, -0.357491,
		0.153673, -0.510122, 0.846263,
		-0.461503, -0.794340, -0.395019,
		39.750984, 38.137981, 34.399010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427071, 38.113529, 34.854713>,  <40.074036, 38.694019, 34.675526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427071, 38.113529, 34.854713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241123, 37.968193, 34.531757>,  <40.129555, 37.880993, 34.337982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241123, 37.968193, 34.531757>,  <40.427071, 38.113529, 34.854713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241123, 37.968193, 34.531757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838759, -0.472737, -0.270193,
		-0.283512, -0.802811, 0.524515,
		-0.464871, -0.363338, -0.807391,
		40.101662, 37.859192, 34.289539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916351, 37.645123, 34.655640>,  <40.427071, 38.113529, 34.854713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916351, 37.645123, 34.655640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670708, 37.659664, 34.340286>,  <40.523319, 37.668388, 34.151073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670708, 37.659664, 34.340286>,  <40.916351, 37.645123, 34.655640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670708, 37.659664, 34.340286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705895, -0.421443, -0.569296,
		-0.352956, -0.906126, 0.233148,
		-0.614112, 0.036359, -0.788380,
		40.486473, 37.670570, 34.103771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810001, 36.918995, 34.346615>,  <40.916351, 37.645123, 34.655640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810001, 36.918995, 34.346615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738659, 37.196320, 34.067329>,  <40.695854, 37.362717, 33.899757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738659, 37.196320, 34.067329>,  <40.810001, 36.918995, 34.346615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738659, 37.196320, 34.067329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756991, -0.356642, -0.547513,
		-0.628611, -0.626195, -0.461224,
		-0.178359, 0.693316, -0.698213,
		40.685150, 37.404316, 33.857864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829868, 36.525520, 33.753349>,  <40.810001, 36.918995, 34.346615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829868, 36.525520, 33.753349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866711, 36.905849, 33.635059>,  <40.888817, 37.134048, 33.564087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866711, 36.905849, 33.635059>,  <40.829868, 36.525520, 33.753349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866711, 36.905849, 33.635059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642028, -0.283719, -0.712252,
		-0.761128, -0.124259, -0.636587,
		0.092108, 0.950822, -0.295725,
		40.894344, 37.191097, 33.546341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848419, 36.428829, 33.087883>,  <40.829868, 36.525520, 33.753349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848419, 36.428829, 33.087883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995281, 36.793076, 33.163750>,  <41.083397, 37.011623, 33.209270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995281, 36.793076, 33.163750>,  <40.848419, 36.428829, 33.087883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995281, 36.793076, 33.163750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671724, -0.118527, -0.731258,
		-0.643416, 0.395888, -0.655201,
		0.367155, 0.910617, 0.189665,
		41.105427, 37.066261, 33.220650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981579, 36.762280, 32.358299>,  <40.848419, 36.428829, 33.087883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981579, 36.762280, 32.358299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185314, 37.001339, 32.605972>,  <41.307556, 37.144775, 32.754578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185314, 37.001339, 32.605972>,  <40.981579, 36.762280, 32.358299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185314, 37.001339, 32.605972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705344, 0.122276, -0.698240,
		-0.493014, 0.792378, -0.359268,
		0.509340, 0.597650, 0.619183,
		41.338116, 37.180634, 32.791729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317665, 37.378319, 31.981253>,  <40.981579, 36.762280, 32.358299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317665, 37.378319, 31.981253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526630, 37.359604, 32.321815>,  <41.652012, 37.348373, 32.526154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526630, 37.359604, 32.321815>,  <41.317665, 37.378319, 31.981253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526630, 37.359604, 32.321815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850801, 0.095049, -0.516821,
		-0.056742, 0.994372, 0.089465,
		0.522416, -0.046791, 0.851406,
		41.683353, 37.345566, 32.577236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746975, 38.029724, 32.001259>,  <41.317665, 37.378319, 31.981253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746975, 38.029724, 32.001259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909809, 37.734123, 32.215977>,  <42.007511, 37.556763, 32.344807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909809, 37.734123, 32.215977>,  <41.746975, 38.029724, 32.001259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909809, 37.734123, 32.215977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821234, 0.038886, -0.569265,
		0.399816, 0.672577, 0.622726,
		0.407090, -0.739005, 0.536796,
		42.031937, 37.512421, 32.377014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398365, 38.113686, 31.883080>,  <41.746975, 38.029724, 32.001259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398365, 38.113686, 31.883080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406681, 37.741497, 32.029385>,  <42.411671, 37.518185, 32.117168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406681, 37.741497, 32.029385>,  <42.398365, 38.113686, 31.883080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406681, 37.741497, 32.029385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739703, -0.231808, -0.631747,
		0.672613, 0.283689, 0.683457,
		0.020789, -0.930476, 0.365762,
		42.412918, 37.462353, 32.139114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092529, 38.026291, 31.809435>,  <42.398365, 38.113686, 31.883080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092529, 38.026291, 31.809435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934422, 37.661003, 31.849018>,  <42.839558, 37.441830, 31.872768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934422, 37.661003, 31.849018>,  <43.092529, 38.026291, 31.809435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934422, 37.661003, 31.849018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741037, -0.380681, -0.553124,
		0.542796, -0.145300, 0.827200,
		-0.395269, -0.913219, 0.098959,
		42.815842, 37.387039, 31.878706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604580, 37.524303, 32.056973>,  <43.092529, 38.026291, 31.809435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604580, 37.524303, 32.056973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324326, 37.322033, 31.855616>,  <43.156174, 37.200672, 31.734800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324326, 37.322033, 31.855616>,  <43.604580, 37.524303, 32.056973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324326, 37.322033, 31.855616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695811, -0.328002, -0.638953,
		0.157989, -0.797939, 0.581664,
		-0.700632, -0.505676, -0.503394,
		43.114136, 37.170330, 31.704597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926926, 36.913307, 31.729250>,  <43.604580, 37.524303, 32.056973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926926, 36.913307, 31.729250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587757, 36.887302, 31.518801>,  <43.384254, 36.871700, 31.392530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587757, 36.887302, 31.518801>,  <43.926926, 36.913307, 31.729250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587757, 36.887302, 31.518801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484295, -0.498655, -0.718889,
		-0.215615, -0.864359, 0.454305,
		-0.847920, -0.065015, -0.526122,
		43.333382, 36.867798, 31.360964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862728, 36.169075, 31.548820>,  <43.926926, 36.913307, 31.729250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862728, 36.169075, 31.548820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656914, 36.396004, 31.291637>,  <43.533424, 36.532162, 31.137327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656914, 36.396004, 31.291637>,  <43.862728, 36.169075, 31.548820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656914, 36.396004, 31.291637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413791, -0.492464, -0.765674,
		-0.751020, -0.660016, 0.018635,
		-0.514535, 0.567325, -0.642959,
		43.502552, 36.566200, 31.098749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623138, 35.727947, 30.942860>,  <43.862728, 36.169075, 31.548820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623138, 35.727947, 30.942860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562134, 36.091488, 30.787563>,  <43.525532, 36.309612, 30.694386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562134, 36.091488, 30.787563>,  <43.623138, 35.727947, 30.942860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562134, 36.091488, 30.787563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341503, -0.320178, -0.883664,
		-0.927425, -0.267353, -0.261545,
		-0.152509, 0.908850, -0.388243,
		43.516380, 36.364143, 30.671091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325188, 35.587276, 30.334986>,  <43.623138, 35.727947, 30.942860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325188, 35.587276, 30.334986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420761, 35.974068, 30.299526>,  <43.478104, 36.206142, 30.278252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420761, 35.974068, 30.299526>,  <43.325188, 35.587276, 30.334986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420761, 35.974068, 30.299526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149556, -0.126848, -0.980583,
		-0.959450, 0.221034, -0.174926,
		0.238931, 0.966982, -0.088647,
		43.492439, 36.264164, 30.272932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924953, 35.965736, 29.769117>,  <43.325188, 35.587276, 30.334986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924953, 35.965736, 29.769117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292736, 36.105816, 29.840620>,  <43.513405, 36.189865, 29.883522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292736, 36.105816, 29.840620>,  <42.924953, 35.965736, 29.769117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292736, 36.105816, 29.840620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227998, -0.104482, -0.968039,
		-0.320333, 0.930828, -0.175913,
		0.919458, 0.350203, 0.178758,
		43.568573, 36.210876, 29.894247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035015, 36.434532, 29.198149>,  <42.924953, 35.965736, 29.769117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035015, 36.434532, 29.198149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398964, 36.361824, 29.347332>,  <43.617332, 36.318199, 29.436842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398964, 36.361824, 29.347332>,  <43.035015, 36.434532, 29.198149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398964, 36.361824, 29.347332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343175, -0.175478, -0.922734,
		0.233175, 0.967557, -0.097282,
		0.909868, -0.181774, 0.372958,
		43.671925, 36.307293, 29.459219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556511, 36.835732, 28.709610>,  <43.035015, 36.434532, 29.198149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556511, 36.835732, 28.709610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737041, 36.540642, 28.910435>,  <43.845360, 36.363590, 29.030930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737041, 36.540642, 28.910435>,  <43.556511, 36.835732, 28.709610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737041, 36.540642, 28.910435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460019, -0.289757, -0.839299,
		0.764646, 0.609759, 0.208590,
		0.451330, -0.737722, 0.502062,
		43.872440, 36.319324, 29.061054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246506, 36.866219, 28.591490>,  <43.556511, 36.835732, 28.709610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246506, 36.866219, 28.591490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200222, 36.488575, 28.714952>,  <44.172451, 36.261990, 28.789030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200222, 36.488575, 28.714952>,  <44.246506, 36.866219, 28.591490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200222, 36.488575, 28.714952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448433, -0.326928, -0.831881,
		0.886295, 0.042155, 0.461199,
		-0.115711, -0.944108, 0.308659,
		44.165508, 36.205341, 28.807550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881176, 36.527294, 28.407455>,  <44.246506, 36.866219, 28.591490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881176, 36.527294, 28.407455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618050, 36.230785, 28.460800>,  <44.460175, 36.052879, 28.492807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618050, 36.230785, 28.460800>,  <44.881176, 36.527294, 28.407455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618050, 36.230785, 28.460800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462412, -0.537250, -0.705363,
		0.594517, -0.402332, 0.696188,
		-0.657817, -0.741277, 0.133361,
		44.420704, 36.008404, 28.500809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280518, 35.903145, 28.251030>,  <44.881176, 36.527294, 28.407455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280518, 35.903145, 28.251030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900604, 35.780304, 28.226997>,  <44.672657, 35.706600, 28.212578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900604, 35.780304, 28.226997>,  <45.280518, 35.903145, 28.251030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900604, 35.780304, 28.226997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238038, -0.584423, -0.775750,
		0.203121, -0.751092, 0.628174,
		-0.949779, -0.307100, -0.060080,
		44.615669, 35.688175, 28.208973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282253, 35.182373, 28.242249>,  <45.280518, 35.903145, 28.251030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282253, 35.182373, 28.242249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930592, 35.269993, 28.072962>,  <44.719597, 35.322563, 27.971390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930592, 35.269993, 28.072962>,  <45.282253, 35.182373, 28.242249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930592, 35.269993, 28.072962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192527, -0.649126, -0.735914,
		-0.435918, -0.728461, 0.528508,
		-0.879152, 0.219046, -0.423214,
		44.666847, 35.335709, 27.945997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897457, 34.613033, 28.026121>,  <45.282253, 35.182373, 28.242249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897457, 34.613033, 28.026121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710590, 34.871517, 27.784737>,  <44.598473, 35.026608, 27.639906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710590, 34.871517, 27.784737>,  <44.897457, 34.613033, 28.026121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710590, 34.871517, 27.784737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141181, -0.619241, -0.772404,
		-0.872826, -0.446037, 0.198054,
		-0.467164, 0.646213, -0.603462,
		44.570442, 35.065380, 27.603699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597610, 34.154942, 27.576561>,  <44.897457, 34.613033, 28.026121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597610, 34.154942, 27.576561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589371, 34.510601, 27.393698>,  <44.584427, 34.723995, 27.283979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589371, 34.510601, 27.393698>,  <44.597610, 34.154942, 27.576561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589371, 34.510601, 27.393698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284701, -0.433108, -0.855197,
		-0.958395, -0.147773, -0.244218,
		-0.020602, 0.889146, -0.457160,
		44.583191, 34.777344, 27.256550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217369, 33.995045, 27.007832>,  <44.597610, 34.154942, 27.576561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217369, 33.995045, 27.007832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426571, 34.328297, 26.935879>,  <44.552094, 34.528248, 26.892706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426571, 34.328297, 26.935879>,  <44.217369, 33.995045, 27.007832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426571, 34.328297, 26.935879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328686, -0.391870, -0.859305,
		-0.786405, 0.390295, -0.478788,
		0.523005, 0.833132, -0.179883,
		44.583473, 34.578236, 26.881914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059673, 34.146671, 26.313885>,  <44.217369, 33.995045, 27.007832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059673, 34.146671, 26.313885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402225, 34.322803, 26.421755>,  <44.607758, 34.428482, 26.486477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402225, 34.322803, 26.421755>,  <44.059673, 34.146671, 26.313885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402225, 34.322803, 26.421755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482161, -0.495071, -0.722790,
		-0.184754, 0.749011, -0.636277,
		0.856380, 0.440326, 0.269677,
		44.659138, 34.454903, 26.502659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329197, 34.481503, 25.635218>,  <44.059673, 34.146671, 26.313885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329197, 34.481503, 25.635218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654335, 34.466404, 25.867720>,  <44.849419, 34.457344, 26.007221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654335, 34.466404, 25.867720>,  <44.329197, 34.481503, 25.635218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654335, 34.466404, 25.867720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510979, -0.432817, -0.742678,
		0.279614, 0.900691, -0.332523,
		0.812845, -0.037751, 0.581256,
		44.898190, 34.455078, 26.042097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903755, 34.764576, 25.320503>,  <44.329197, 34.481503, 25.635218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903755, 34.764576, 25.320503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080429, 34.520725, 25.583797>,  <45.186436, 34.374416, 25.741774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080429, 34.520725, 25.583797>,  <44.903755, 34.764576, 25.320503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080429, 34.520725, 25.583797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637769, -0.302666, -0.708268,
		0.631001, 0.732635, 0.255115,
		0.441687, -0.609623, 0.658234,
		45.212936, 34.337837, 25.781267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586708, 34.869453, 25.272350>,  <44.903755, 34.764576, 25.320503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586708, 34.869453, 25.272350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548317, 34.510624, 25.444883>,  <45.525284, 34.295326, 25.548403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548317, 34.510624, 25.444883>,  <45.586708, 34.869453, 25.272350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548317, 34.510624, 25.444883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611472, -0.395063, -0.685585,
		0.785424, 0.197947, 0.586453,
		-0.095977, -0.897074, 0.431331,
		45.519524, 34.241501, 25.574282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204769, 34.639534, 25.201965>,  <45.586708, 34.869453, 25.272350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204769, 34.639534, 25.201965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991558, 34.309940, 25.278831>,  <45.863632, 34.112183, 25.324951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991558, 34.309940, 25.278831>,  <46.204769, 34.639534, 25.201965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991558, 34.309940, 25.278831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696488, -0.556265, -0.453293,
		0.480403, -0.107775, 0.870401,
		-0.533027, -0.823987, 0.192167,
		45.831650, 34.062744, 25.336481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779240, 34.249737, 25.252302>,  <46.204769, 34.639534, 25.201965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779240, 34.249737, 25.252302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456444, 34.020859, 25.193850>,  <46.262764, 33.883533, 25.158777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456444, 34.020859, 25.193850>,  <46.779240, 34.249737, 25.252302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456444, 34.020859, 25.193850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550163, -0.638466, -0.538221,
		0.214667, -0.514738, 0.830038,
		-0.806994, -0.572194, -0.146132,
		46.214344, 33.849201, 25.150009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.952656, 33.555153, 25.361275>,  <46.779240, 34.249737, 25.252302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.952656, 33.555153, 25.361275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631420, 33.533405, 25.123922>,  <46.438679, 33.520359, 24.981512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631420, 33.533405, 25.123922>,  <46.952656, 33.555153, 25.361275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.631420, 33.533405, 25.123922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500231, -0.602602, -0.621804,
		-0.323766, -0.796187, 0.511137,
		-0.803085, -0.054367, -0.593380,
		46.390495, 33.517094, 24.945908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636562, 32.789505, 25.394430>,  <46.952656, 33.555153, 25.361275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636562, 32.789505, 25.394430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552238, 32.986897, 25.056900>,  <46.501644, 33.105331, 24.854382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552238, 32.986897, 25.056900>,  <46.636562, 32.789505, 25.394430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552238, 32.986897, 25.056900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539629, -0.661026, -0.521388,
		-0.815084, -0.565264, -0.126946,
		-0.210807, 0.493479, -0.843824,
		46.488995, 33.134941, 24.803753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355206, 32.332973, 24.979380>,  <46.636562, 32.789505, 25.394430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355206, 32.332973, 24.979380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510952, 32.615055, 24.742373>,  <46.604401, 32.784306, 24.600168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510952, 32.615055, 24.742373>,  <46.355206, 32.332973, 24.979380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510952, 32.615055, 24.742373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474975, -0.704883, -0.526819,
		-0.789172, -0.076306, -0.609413,
		0.389365, 0.705208, -0.592518,
		46.627762, 32.826618, 24.564617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220139, 31.688566, 25.185072>,  <46.355206, 32.332973, 24.979380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220139, 31.688566, 25.185072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077789, 31.317661, 25.231609>,  <45.992378, 31.095118, 25.259531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077789, 31.317661, 25.231609>,  <46.220139, 31.688566, 25.185072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077789, 31.317661, 25.231609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749162, 0.357486, 0.557637,
		-0.558668, 0.111289, -0.821891,
		-0.355874, -0.927264, 0.116342,
		45.971027, 31.039482, 25.266512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543159, 31.784760, 25.210062>,  <46.220139, 31.688566, 25.185072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543159, 31.784760, 25.210062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607315, 31.440382, 25.403162>,  <45.645809, 31.233755, 25.519022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607315, 31.440382, 25.403162>,  <45.543159, 31.784760, 25.210062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607315, 31.440382, 25.403162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713199, 0.237029, 0.659670,
		-0.682366, -0.450100, -0.576008,
		0.160388, -0.860945, 0.482751,
		45.655430, 31.182098, 25.547987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843117, 31.443281, 25.335022>,  <45.543159, 31.784760, 25.210062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.843117, 31.443281, 25.335022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103378, 31.273741, 25.587053>,  <45.259537, 31.172016, 25.738272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103378, 31.273741, 25.587053>,  <44.843117, 31.443281, 25.335022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103378, 31.273741, 25.587053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705669, -0.030999, 0.707863,
		-0.280496, -0.905201, -0.319268,
		0.650656, -0.423851, 0.630078,
		45.298576, 31.146585, 25.776077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469650, 30.943672, 25.592165>,  <44.843117, 31.443281, 25.335022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469650, 30.943672, 25.592165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757435, 31.023241, 25.858341>,  <44.930103, 31.070982, 26.018047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757435, 31.023241, 25.858341>,  <44.469650, 30.943672, 25.592165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757435, 31.023241, 25.858341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672583, -0.039438, 0.738970,
		0.173242, -0.979221, 0.105419,
		0.719457, 0.198924, 0.665440,
		44.973270, 31.082918, 26.057974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359241, 30.586388, 26.119501>,  <44.469650, 30.943672, 25.592165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359241, 30.586388, 26.119501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584946, 30.883955, 26.262720>,  <44.720367, 31.062496, 26.348652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584946, 30.883955, 26.262720>,  <44.359241, 30.586388, 26.119501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584946, 30.883955, 26.262720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650710, 0.133816, 0.747442,
		0.508124, -0.654735, 0.559582,
		0.564258, 0.743919, 0.358047,
		44.754223, 31.107130, 26.370134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437866, 30.456125, 26.878777>,  <44.359241, 30.586388, 26.119501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437866, 30.456125, 26.878777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529011, 30.841198, 26.820366>,  <44.583698, 31.072241, 26.785320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529011, 30.841198, 26.820366>,  <44.437866, 30.456125, 26.878777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529011, 30.841198, 26.820366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575941, 0.254177, 0.776972,
		0.785093, -0.092938, 0.612365,
		0.227859, 0.962682, -0.146026,
		44.597370, 31.130003, 26.776558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687077, 30.844130, 27.504919>,  <44.437866, 30.456125, 26.878777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687077, 30.844130, 27.504919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582840, 31.142361, 27.259577>,  <44.520298, 31.321299, 27.112371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582840, 31.142361, 27.259577>,  <44.687077, 30.844130, 27.504919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582840, 31.142361, 27.259577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477025, 0.452907, 0.753208,
		0.839368, 0.488867, 0.237634,
		-0.260592, 0.745576, -0.613358,
		44.504662, 31.366034, 27.075569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767693, 31.498846, 27.919266>,  <44.687077, 30.844130, 27.504919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767693, 31.498846, 27.919266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576015, 31.635431, 27.595839>,  <44.461010, 31.717382, 27.401783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576015, 31.635431, 27.595839>,  <44.767693, 31.498846, 27.919266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576015, 31.635431, 27.595839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546301, 0.604997, 0.579253,
		0.686973, 0.719293, -0.103368,
		-0.479190, 0.341461, -0.808567,
		44.432259, 31.737869, 27.353268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726933, 32.248478, 27.985769>,  <44.767693, 31.498846, 27.919266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726933, 32.248478, 27.985769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437622, 32.123184, 27.739597>,  <44.264034, 32.048008, 27.591894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437622, 32.123184, 27.739597>,  <44.726933, 32.248478, 27.985769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437622, 32.123184, 27.739597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650606, 0.607828, 0.455255,
		0.231474, 0.729678, -0.643421,
		-0.723279, -0.313234, -0.615429,
		44.220638, 32.029213, 27.554968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339920, 32.821644, 27.883343>,  <44.726933, 32.248478, 27.985769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339920, 32.821644, 27.883343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116383, 32.510948, 27.767153>,  <43.982262, 32.324532, 27.697439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116383, 32.510948, 27.767153>,  <44.339920, 32.821644, 27.883343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116383, 32.510948, 27.767153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816836, 0.455140, 0.354439,
		-0.143099, 0.435345, -0.888818,
		-0.558839, -0.776738, -0.290475,
		43.948730, 32.277927, 27.680010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771164, 33.167774, 27.633617>,  <44.339920, 32.821644, 27.883343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771164, 33.167774, 27.633617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667019, 32.792168, 27.723473>,  <43.604530, 32.566803, 27.777386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667019, 32.792168, 27.723473>,  <43.771164, 33.167774, 27.633617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667019, 32.792168, 27.723473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817917, 0.338140, 0.465482,
		-0.513053, -0.062541, -0.856075,
		-0.260362, -0.939016, 0.224637,
		43.588909, 32.510464, 27.790863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978836, 33.111134, 27.479189>,  <43.771164, 33.167774, 27.633617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978836, 33.111134, 27.479189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115009, 32.851871, 27.751657>,  <43.196712, 32.696312, 27.915138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115009, 32.851871, 27.751657>,  <42.978836, 33.111134, 27.479189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115009, 32.851871, 27.751657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704955, 0.303446, 0.641061,
		-0.622208, -0.698435, -0.353619,
		0.340435, -0.648159, 0.681171,
		43.217140, 32.657425, 27.956009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395084, 32.798782, 27.780207>,  <42.978836, 33.111134, 27.479189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395084, 32.798782, 27.780207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671612, 32.736473, 28.062431>,  <42.837528, 32.699089, 28.231766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671612, 32.736473, 28.062431>,  <42.395084, 32.798782, 27.780207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671612, 32.736473, 28.062431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625133, 0.360744, 0.692151,
		-0.362345, -0.919565, 0.152010,
		0.691314, -0.155770, 0.705564,
		42.879005, 32.689743, 28.274101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066357, 32.690018, 28.378233>,  <42.395084, 32.798782, 27.780207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066357, 32.690018, 28.378233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429260, 32.723442, 28.543110>,  <42.647003, 32.743496, 28.642036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429260, 32.723442, 28.543110>,  <42.066357, 32.690018, 28.378233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429260, 32.723442, 28.543110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412177, 0.371557, 0.831899,
		-0.083637, -0.924642, 0.371540,
		0.907257, 0.083563, 0.412191,
		42.701439, 32.748512, 28.666767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026520, 32.351688, 29.089842>,  <42.066357, 32.690018, 28.378233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026520, 32.351688, 29.089842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312531, 32.629288, 29.056147>,  <42.484138, 32.795849, 29.035931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312531, 32.629288, 29.056147>,  <42.026520, 32.351688, 29.089842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312531, 32.629288, 29.056147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357556, 0.466584, 0.808982,
		0.600737, -0.548328, 0.581766,
		0.715030, 0.694000, -0.084236,
		42.527039, 32.837486, 29.030876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246754, 32.429420, 29.774168>,  <42.026520, 32.351688, 29.089842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246754, 32.429420, 29.774168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362041, 32.756790, 29.575325>,  <42.431213, 32.953213, 29.456018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362041, 32.756790, 29.575325>,  <42.246754, 32.429420, 29.774168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362041, 32.756790, 29.575325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236531, 0.563898, 0.791247,
		0.927893, -0.110468, 0.356106,
		0.288215, 0.818423, -0.497108,
		42.448505, 33.002316, 29.426193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640099, 32.829967, 30.250624>,  <42.246754, 32.429420, 29.774168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640099, 32.829967, 30.250624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535221, 33.098076, 29.972921>,  <42.472294, 33.258942, 29.806301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535221, 33.098076, 29.972921>,  <42.640099, 32.829967, 30.250624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535221, 33.098076, 29.972921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051783, 0.708614, 0.703693,
		0.963624, 0.220456, -0.151087,
		-0.262196, 0.670272, -0.694254,
		42.456562, 33.299156, 29.764645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078438, 33.397652, 30.285044>,  <42.640099, 32.829967, 30.250624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078438, 33.397652, 30.285044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764126, 33.579128, 30.116898>,  <42.575539, 33.688015, 30.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764126, 33.579128, 30.116898>,  <43.078438, 33.397652, 30.285044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764126, 33.579128, 30.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065247, 0.615051, 0.785783,
		0.615051, 0.644882, -0.453694,
		-0.785783, 0.453694, -0.420365,
		42.528393, 33.715237, 29.990788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176941, 34.102558, 30.302126>,  <43.078438, 33.397652, 30.285044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176941, 34.102558, 30.302126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778774, 34.067791, 30.286160>,  <42.539875, 34.046932, 30.276579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778774, 34.067791, 30.286160>,  <43.176941, 34.102558, 30.302126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778774, 34.067791, 30.286160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089083, 0.690558, 0.717770,
		-0.034823, 0.718035, -0.695135,
		-0.995415, -0.086919, -0.039918,
		42.480148, 34.041714, 30.274183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966782, 34.782253, 30.466532>,  <43.176941, 34.102558, 30.302126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966782, 34.782253, 30.466532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642082, 34.555824, 30.523994>,  <42.447262, 34.419968, 30.558472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642082, 34.555824, 30.523994>,  <42.966782, 34.782253, 30.466532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642082, 34.555824, 30.523994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199520, 0.499985, 0.842738,
		-0.548874, 0.655425, -0.518803,
		-0.811745, -0.566068, 0.143658,
		42.398560, 34.386005, 30.567091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490810, 35.256615, 30.617188>,  <42.966782, 34.782253, 30.466532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490810, 35.256615, 30.617188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353558, 34.902740, 30.743416>,  <42.271206, 34.690414, 30.819153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353558, 34.902740, 30.743416>,  <42.490810, 35.256615, 30.617188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353558, 34.902740, 30.743416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319589, 0.425889, 0.846452,
		-0.883245, 0.189593, -0.428873,
		-0.343134, -0.884688, 0.315573,
		42.250618, 34.637333, 30.838087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864250, 35.399788, 30.919210>,  <42.490810, 35.256615, 30.617188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864250, 35.399788, 30.919210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981766, 35.059414, 31.093384>,  <42.052277, 34.855190, 31.197887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981766, 35.059414, 31.093384>,  <41.864250, 35.399788, 30.919210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981766, 35.059414, 31.093384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353035, 0.326736, 0.876704,
		-0.888288, -0.411289, -0.204418,
		0.293788, -0.850932, 0.435435,
		42.069901, 34.804134, 31.224014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314026, 35.268909, 31.359215>,  <41.864250, 35.399788, 30.919210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314026, 35.268909, 31.359215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623695, 35.044380, 31.476227>,  <41.809498, 34.909664, 31.546434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623695, 35.044380, 31.476227>,  <41.314026, 35.268909, 31.359215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623695, 35.044380, 31.476227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173322, 0.256503, 0.950876,
		-0.608783, -0.786844, 0.101288,
		0.774172, -0.561322, 0.292532,
		41.855946, 34.875984, 31.563986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179890, 35.183434, 31.995098>,  <41.314026, 35.268909, 31.359215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179890, 35.183434, 31.995098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554420, 35.044113, 32.012886>,  <41.779140, 34.960522, 32.023560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554420, 35.044113, 32.012886>,  <41.179890, 35.183434, 31.995098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554420, 35.044113, 32.012886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024920, 0.192250, 0.981029,
		-0.350240, -0.917457, 0.188689,
		0.936328, -0.348298, 0.044471,
		41.835320, 34.939625, 32.026226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175896, 34.772556, 32.581646>,  <41.179890, 35.183434, 31.995098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175896, 34.772556, 32.581646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563690, 34.857346, 32.532398>,  <41.796368, 34.908218, 32.502850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563690, 34.857346, 32.532398>,  <41.175896, 34.772556, 32.581646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563690, 34.857346, 32.532398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145234, -0.092055, 0.985106,
		0.197485, -0.972930, -0.120032,
		0.969488, 0.211976, -0.123123,
		41.854538, 34.920937, 32.495461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527626, 34.245724, 32.892101>,  <41.175896, 34.772556, 32.581646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527626, 34.245724, 32.892101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815029, 34.522118, 32.860390>,  <41.987473, 34.687954, 32.841362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815029, 34.522118, 32.860390>,  <41.527626, 34.245724, 32.892101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815029, 34.522118, 32.860390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342782, -0.252623, 0.904811,
		0.605180, -0.677292, -0.418368,
		0.718511, 0.690982, -0.079281,
		42.030582, 34.729412, 32.836605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026211, 33.979225, 33.269386>,  <41.527626, 34.245724, 32.892101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026211, 33.979225, 33.269386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140423, 34.361897, 33.246613>,  <42.208950, 34.591499, 33.232948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140423, 34.361897, 33.246613>,  <42.026211, 33.979225, 33.269386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140423, 34.361897, 33.246613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405247, -0.066690, 0.911772,
		0.868473, -0.283414, -0.406732,
		0.285534, 0.956676, -0.056934,
		42.226082, 34.648899, 33.229534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834251, 34.129074, 33.207458>,  <42.026211, 33.979225, 33.269386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834251, 34.129074, 33.207458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646427, 34.430099, 33.392139>,  <42.533733, 34.610714, 33.502949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646427, 34.430099, 33.392139>,  <42.834251, 34.129074, 33.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646427, 34.430099, 33.392139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399642, -0.285128, 0.871199,
		0.787272, 0.593597, -0.166869,
		-0.469562, 0.752559, 0.461700,
		42.505558, 34.655869, 33.530651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153858, 34.148777, 33.854214>,  <42.834251, 34.129074, 33.207458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153858, 34.148777, 33.854214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850605, 34.400970, 33.920815>,  <42.668652, 34.552288, 33.960773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850605, 34.400970, 33.920815>,  <43.153858, 34.148777, 33.854214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850605, 34.400970, 33.920815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163480, -0.063417, 0.984506,
		0.631274, 0.773608, -0.054993,
		-0.758135, 0.630483, 0.166503,
		42.623165, 34.590115, 33.970764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274738, 34.570160, 34.461803>,  <43.153858, 34.148777, 33.854214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274738, 34.570160, 34.461803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876949, 34.609581, 34.447308>,  <42.638275, 34.633232, 34.438610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876949, 34.609581, 34.447308>,  <43.274738, 34.570160, 34.461803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876949, 34.609581, 34.447308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036516, -0.000959, 0.999333,
		0.098453, 0.995131, 0.004552,
		-0.994471, 0.098553, -0.036244,
		42.578609, 34.639149, 34.436436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965496, 35.012936, 35.075268>,  <43.274738, 34.570160, 34.461803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965496, 35.012936, 35.075268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631992, 34.816326, 34.974670>,  <42.431892, 34.698360, 34.914310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631992, 34.816326, 34.974670>,  <42.965496, 35.012936, 35.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631992, 34.816326, 34.974670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229775, -0.105295, 0.967531,
		-0.502049, 0.864474, -0.025150,
		-0.833757, -0.491527, -0.251498,
		42.381866, 34.668869, 34.899220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418011, 35.313766, 35.503551>,  <42.965496, 35.012936, 35.075268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418011, 35.313766, 35.503551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281441, 34.961067, 35.373352>,  <42.199501, 34.749447, 35.295235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281441, 34.961067, 35.373352>,  <42.418011, 35.313766, 35.503551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281441, 34.961067, 35.373352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287922, -0.231539, 0.929242,
		-0.894724, 0.410982, -0.174822,
		-0.341423, -0.881750, -0.325494,
		42.179012, 34.696541, 35.275703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857777, 35.218838, 35.880081>,  <42.418011, 35.313766, 35.503551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857777, 35.218838, 35.880081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939152, 34.848415, 35.752945>,  <41.987976, 34.626160, 35.676662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939152, 34.848415, 35.752945>,  <41.857777, 35.218838, 35.880081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939152, 34.848415, 35.752945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380637, -0.373903, 0.845761,
		-0.902068, -0.051079, -0.428560,
		0.203441, -0.926060, -0.317844,
		42.000183, 34.570599, 35.657593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228939, 34.873890, 36.016071>,  <41.857777, 35.218838, 35.880081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228939, 34.873890, 36.016071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530655, 34.611294, 36.012852>,  <41.711685, 34.453735, 36.010921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530655, 34.611294, 36.012852>,  <41.228939, 34.873890, 36.016071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530655, 34.611294, 36.012852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287303, -0.341076, 0.895055,
		-0.590343, -0.672819, -0.445882,
		0.754289, -0.656492, -0.008049,
		41.756943, 34.414345, 36.010437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968365, 34.304729, 36.299370>,  <41.228939, 34.873890, 36.016071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968365, 34.304729, 36.299370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349522, 34.183670, 36.307339>,  <41.578217, 34.111034, 36.312122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349522, 34.183670, 36.307339>,  <40.968365, 34.304729, 36.299370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349522, 34.183670, 36.307339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169245, -0.476051, 0.862979,
		-0.251692, -0.825700, -0.504847,
		0.952894, -0.302647, 0.019927,
		41.635391, 34.092876, 36.313316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013111, 33.641613, 36.187214>,  <40.968365, 34.304729, 36.299370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013111, 33.641613, 36.187214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351448, 33.708839, 36.389725>,  <41.554451, 33.749176, 36.511230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351448, 33.708839, 36.389725>,  <41.013111, 33.641613, 36.187214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351448, 33.708839, 36.389725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339235, -0.562969, 0.753649,
		0.411675, -0.809210, -0.419168,
		0.845839, 0.168062, 0.506273,
		41.605198, 33.759258, 36.541607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170586, 32.896008, 36.457615>,  <41.013111, 33.641613, 36.187214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170586, 32.896008, 36.457615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417992, 33.144260, 36.650387>,  <41.566433, 33.293213, 36.766048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417992, 33.144260, 36.650387>,  <41.170586, 32.896008, 36.457615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417992, 33.144260, 36.650387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010648, -0.619881, 0.784623,
		0.785704, -0.480167, -0.390012,
		0.618511, 0.620634, 0.481930,
		41.603546, 33.330452, 36.794968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861740, 32.613045, 36.415730>,  <41.170586, 32.896008, 36.457615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861740, 32.613045, 36.415730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801498, 32.856125, 36.727631>,  <41.765354, 33.001972, 36.914772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801498, 32.856125, 36.727631>,  <41.861740, 32.613045, 36.415730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801498, 32.856125, 36.727631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253222, -0.738726, 0.624630,
		0.955613, 0.291526, -0.042624,
		-0.150609, 0.607698, 0.779757,
		41.756317, 33.038433, 36.961559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457031, 32.552750, 36.845943>,  <41.861740, 32.613045, 36.415730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457031, 32.552750, 36.845943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152470, 32.682571, 37.070415>,  <41.969734, 32.760464, 37.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152470, 32.682571, 37.070415>,  <42.457031, 32.552750, 36.845943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152470, 32.682571, 37.070415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094323, -0.800979, 0.591216,
		0.641378, 0.503088, 0.579256,
		-0.761405, 0.324555, 0.561183,
		41.924049, 32.779938, 37.238770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606594, 32.675789, 37.506691>,  <42.457031, 32.552750, 36.845943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606594, 32.675789, 37.506691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216610, 32.589142, 37.526787>,  <41.982620, 32.537151, 37.538845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216610, 32.589142, 37.526787>,  <42.606594, 32.675789, 37.506691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216610, 32.589142, 37.526787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191928, -0.705619, 0.682104,
		-0.112306, 0.674668, 0.729527,
		-0.974962, -0.216621, 0.050243,
		41.924122, 32.524155, 37.541859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065723, 33.143612, 37.828613>,  <42.606594, 32.675789, 37.506691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065723, 33.143612, 37.828613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073627, 33.541309, 37.786476>,  <43.078369, 33.779926, 37.761196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073627, 33.541309, 37.786476>,  <43.065723, 33.143612, 37.828613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073627, 33.541309, 37.786476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002440, 0.105312, 0.994436,
		0.999802, -0.019907, -0.000345,
		0.019760, 0.994240, -0.105340,
		43.079556, 33.839581, 37.754875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519260, 33.323498, 38.279663>,  <43.065723, 33.143612, 37.828613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519260, 33.323498, 38.279663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293091, 33.647816, 38.219124>,  <43.157391, 33.842407, 38.182800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293091, 33.647816, 38.219124>,  <43.519260, 33.323498, 38.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293091, 33.647816, 38.219124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033793, 0.160573, 0.986445,
		0.824110, 0.562872, -0.063392,
		-0.565421, 0.810797, -0.151351,
		43.123463, 33.891056, 38.173717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736656, 33.853985, 38.787739>,  <43.519260, 33.323498, 38.279663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736656, 33.853985, 38.787739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373962, 33.996117, 38.696903>,  <43.156345, 34.081398, 38.642403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373962, 33.996117, 38.696903>,  <43.736656, 33.853985, 38.787739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373962, 33.996117, 38.696903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089332, 0.364438, 0.926933,
		0.412129, 0.860769, -0.298707,
		-0.906736, 0.355332, -0.227090,
		43.101940, 34.102715, 38.628777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511208, 34.061882, 39.501072>,  <43.736656, 33.853985, 38.787739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511208, 34.061882, 39.501072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209812, 34.176765, 39.264511>,  <43.028973, 34.245697, 39.122574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209812, 34.176765, 39.264511>,  <43.511208, 34.061882, 39.501072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209812, 34.176765, 39.264511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456191, 0.419360, 0.784874,
		0.473434, 0.861190, -0.184962,
		-0.753492, 0.287208, -0.591406,
		42.983765, 34.262928, 39.087090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306305, 34.831512, 39.508865>,  <43.511208, 34.061882, 39.501072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306305, 34.831512, 39.508865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986034, 34.620449, 39.395382>,  <42.793873, 34.493809, 39.327293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986034, 34.620449, 39.395382>,  <43.306305, 34.831512, 39.508865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986034, 34.620449, 39.395382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517845, 0.371436, 0.770631,
		-0.301253, 0.763943, -0.570647,
		-0.800677, -0.527661, -0.283708,
		42.745831, 34.462151, 39.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756466, 35.280201, 39.502411>,  <43.306305, 34.831512, 39.508865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756466, 35.280201, 39.502411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572151, 34.925209, 39.499256>,  <42.461563, 34.712215, 39.497364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572151, 34.925209, 39.499256>,  <42.756466, 35.280201, 39.502411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572151, 34.925209, 39.499256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484389, 0.244029, 0.840129,
		-0.743670, 0.390939, -0.542329,
		-0.460784, -0.887477, -0.007890,
		42.433914, 34.658966, 39.496891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988194, 35.348328, 39.601261>,  <42.756466, 35.280201, 39.502411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988194, 35.348328, 39.601261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088291, 34.981087, 39.724201>,  <42.148350, 34.760742, 39.797966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088291, 34.981087, 39.724201>,  <41.988194, 35.348328, 39.601261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088291, 34.981087, 39.724201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430220, 0.178941, 0.884811,
		-0.867347, -0.353644, -0.350208,
		0.250242, -0.918105, 0.307349,
		42.163364, 34.705654, 39.816406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436474, 35.030167, 39.754562>,  <41.988194, 35.348328, 39.601261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436474, 35.030167, 39.754562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711483, 34.831379, 39.966351>,  <41.876488, 34.712105, 40.093422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711483, 34.831379, 39.966351>,  <41.436474, 35.030167, 39.754562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711483, 34.831379, 39.966351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468209, 0.253948, 0.846340,
		-0.555062, -0.829778, -0.058091,
		0.687522, -0.496970, 0.529466,
		41.917740, 34.682289, 40.125191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136368, 34.530304, 40.051750>,  <41.436474, 35.030167, 39.754562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136368, 34.530304, 40.051750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438007, 34.647053, 40.287086>,  <41.618992, 34.717102, 40.428288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438007, 34.647053, 40.287086>,  <41.136368, 34.530304, 40.051750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438007, 34.647053, 40.287086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656626, 0.316808, 0.684452,
		0.013376, -0.902467, 0.430552,
		0.754098, 0.291867, 0.588345,
		41.664238, 34.734612, 40.463589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839161, 34.556816, 40.677292>,  <41.136368, 34.530304, 40.051750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839161, 34.556816, 40.677292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184814, 34.709606, 40.808365>,  <41.392204, 34.801281, 40.887009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184814, 34.709606, 40.808365>,  <40.839161, 34.556816, 40.677292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184814, 34.709606, 40.808365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437572, 0.248610, 0.864132,
		0.248609, -0.890107, 0.381972,
		-0.864132, -0.381972, -0.327679,
		41.444054, 34.824196, 40.906670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800549, 34.611252, 41.459198>,  <40.839161, 34.556816, 40.677292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800549, 34.611252, 41.459198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130096, 34.816868, 41.363697>,  <41.327824, 34.940239, 41.306396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130096, 34.816868, 41.363697>,  <40.800549, 34.611252, 41.459198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130096, 34.816868, 41.363697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071102, 0.511648, 0.856248,
		0.562309, -0.688457, 0.458079,
		0.823865, 0.514046, -0.238753,
		41.377258, 34.971081, 41.292072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141445, 34.598000, 42.099106>,  <40.800549, 34.611252, 41.459198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141445, 34.598000, 42.099106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229229, 34.892830, 41.843433>,  <41.281898, 35.069729, 41.690029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229229, 34.892830, 41.843433>,  <41.141445, 34.598000, 42.099106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229229, 34.892830, 41.843433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081174, 0.666678, 0.740912,
		0.972238, -0.110716, 0.206142,
		0.219461, 0.737076, -0.639183,
		41.295067, 35.113953, 41.651680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612072, 35.104698, 42.417107>,  <41.141445, 34.598000, 42.099106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612072, 35.104698, 42.417107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419292, 35.315037, 42.136761>,  <41.303623, 35.441238, 41.968552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419292, 35.315037, 42.136761>,  <41.612072, 35.104698, 42.417107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419292, 35.315037, 42.136761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145702, 0.740659, 0.655893,
		0.864001, 0.418224, -0.280342,
		-0.481947, 0.525845, -0.700866,
		41.274708, 35.472790, 41.926502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804356, 35.817123, 42.562931>,  <41.612072, 35.104698, 42.417107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804356, 35.817123, 42.562931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472969, 35.795071, 42.340004>,  <41.274136, 35.781841, 42.206249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472969, 35.795071, 42.340004>,  <41.804356, 35.817123, 42.562931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472969, 35.795071, 42.340004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441382, 0.676786, 0.589187,
		0.344702, 0.734113, -0.585030,
		-0.828470, -0.055128, -0.557314,
		41.224426, 35.778534, 42.172810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540745, 36.504841, 42.516064>,  <41.804356, 35.817123, 42.562931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540745, 36.504841, 42.516064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240334, 36.244419, 42.472084>,  <41.060085, 36.088165, 42.445694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240334, 36.244419, 42.472084>,  <41.540745, 36.504841, 42.516064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240334, 36.244419, 42.472084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555708, 0.533332, 0.637766,
		-0.356577, 0.540082, -0.762341,
		-0.751027, -0.651052, -0.109953,
		41.015026, 36.049103, 42.439098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942204, 36.910618, 42.284760>,  <41.540745, 36.504841, 42.516064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942204, 36.910618, 42.284760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807240, 36.561089, 42.424809>,  <40.726261, 36.351372, 42.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807240, 36.561089, 42.424809>,  <40.942204, 36.910618, 42.284760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807240, 36.561089, 42.424809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611854, 0.486231, 0.623870,
		-0.715394, -0.003726, -0.698711,
		-0.337410, -0.873822, 0.350126,
		40.706017, 36.298943, 42.529846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242973, 36.896904, 42.148426>,  <40.942204, 36.910618, 42.284760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242973, 36.896904, 42.148426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307899, 36.660645, 42.464600>,  <40.346855, 36.518890, 42.654305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307899, 36.660645, 42.464600>,  <40.242973, 36.896904, 42.148426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307899, 36.660645, 42.464600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755935, 0.440429, 0.484340,
		-0.634205, -0.676136, -0.375000,
		0.162319, -0.590646, 0.790437,
		40.356594, 36.483452, 42.701729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529095, 36.793804, 42.441612>,  <40.242973, 36.896904, 42.148426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529095, 36.793804, 42.441612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762466, 36.644344, 42.730053>,  <39.902489, 36.554668, 42.903118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762466, 36.644344, 42.730053>,  <39.529095, 36.793804, 42.441612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762466, 36.644344, 42.730053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690851, 0.238489, 0.682531,
		-0.427002, -0.896387, -0.118993,
		0.583433, -0.373649, 0.721105,
		39.937496, 36.532249, 42.946384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118279, 36.233162, 42.827862>,  <39.529095, 36.793804, 42.441612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118279, 36.233162, 42.827862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409767, 36.382053, 43.057789>,  <39.584660, 36.471386, 43.195744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409767, 36.382053, 43.057789>,  <39.118279, 36.233162, 42.827862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409767, 36.382053, 43.057789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648462, 0.105234, 0.753938,
		0.220147, -0.922156, 0.318062,
		0.728720, 0.372228, 0.574816,
		39.628384, 36.493721, 43.230232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053913, 35.867195, 43.494831>,  <39.118279, 36.233162, 42.827862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053913, 35.867195, 43.494831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227085, 36.223629, 43.549309>,  <39.330990, 36.437489, 43.581993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227085, 36.223629, 43.549309>,  <39.053913, 35.867195, 43.494831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227085, 36.223629, 43.549309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686175, 0.227789, 0.690852,
		0.584582, -0.392541, 0.710053,
		0.432930, 0.891080, 0.136191,
		39.356964, 36.490952, 43.590164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258595, 36.035072, 44.198643>,  <39.053913, 35.867195, 43.494831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258595, 36.035072, 44.198643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168739, 36.355099, 43.976135>,  <39.114826, 36.547115, 43.842632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168739, 36.355099, 43.976135>,  <39.258595, 36.035072, 44.198643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168739, 36.355099, 43.976135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804920, 0.169399, 0.568689,
		0.549220, 0.575499, 0.605936,
		-0.224635, 0.800066, -0.556268,
		39.101349, 36.595119, 43.809254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122734, 36.681999, 44.625797>,  <39.258595, 36.035072, 44.198643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122734, 36.681999, 44.625797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916492, 36.647861, 44.284771>,  <38.792747, 36.627377, 44.080154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916492, 36.647861, 44.284771>,  <39.122734, 36.681999, 44.625797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916492, 36.647861, 44.284771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852044, -0.053890, 0.520689,
		-0.090385, 0.994892, -0.044934,
		-0.515608, -0.085348, -0.852563,
		38.761810, 36.622257, 44.029003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765450, 37.418079, 44.856037>,  <39.122734, 36.681999, 44.625797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765450, 37.418079, 44.856037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087509, 37.643341, 44.930424>,  <39.280746, 37.778500, 44.975056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087509, 37.643341, 44.930424>,  <38.765450, 37.418079, 44.856037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087509, 37.643341, 44.930424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428390, -0.769105, 0.474300,
		0.410135, -0.302216, -0.860497,
		0.805153, 0.563155, 0.185970,
		39.329056, 37.812286, 44.986214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810097, 37.316513, 44.157131>,  <38.765450, 37.418079, 44.856037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810097, 37.316513, 44.157131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478756, 37.265007, 44.375214>,  <38.279953, 37.234104, 44.506065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478756, 37.265007, 44.375214>,  <38.810097, 37.316513, 44.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478756, 37.265007, 44.375214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554679, -0.324913, 0.766004,
		0.078509, 0.936937, 0.340567,
		-0.828352, -0.128767, 0.545208,
		38.230251, 37.226376, 44.538776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382660, 37.509296, 43.681427>,  <38.810097, 37.316513, 44.157131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382660, 37.509296, 43.681427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477325, 37.218094, 43.938797>,  <39.534126, 37.043373, 44.093220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477325, 37.218094, 43.938797>,  <39.382660, 37.509296, 43.681427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477325, 37.218094, 43.938797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417918, -0.521569, -0.743848,
		0.877117, 0.444944, 0.180808,
		0.236667, -0.728004, 0.643427,
		39.548325, 36.999691, 44.131824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117752, 37.355747, 43.766312>,  <39.382660, 37.509296, 43.681427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117752, 37.355747, 43.766312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977695, 36.995953, 43.870861>,  <39.893661, 36.780075, 43.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977695, 36.995953, 43.870861>,  <40.117752, 37.355747, 43.766312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977695, 36.995953, 43.870861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611268, -0.430854, -0.663864,
		0.709754, -0.072677, 0.700690,
		-0.350143, -0.899491, 0.261375,
		39.872654, 36.726105, 43.949272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546738, 36.922310, 44.003380>,  <40.117752, 37.355747, 43.766312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546738, 36.922310, 44.003380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268139, 36.718864, 43.800911>,  <40.100979, 36.596798, 43.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268139, 36.718864, 43.800911>,  <40.546738, 36.922310, 44.003380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268139, 36.718864, 43.800911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696772, -0.310806, -0.646458,
		0.171475, -0.802941, 0.570861,
		-0.696495, -0.508611, -0.506171,
		40.059189, 36.566280, 43.649059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757473, 36.231361, 43.905849>,  <40.546738, 36.922310, 44.003380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757473, 36.231361, 43.905849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500790, 36.307484, 43.608662>,  <40.346779, 36.353157, 43.430351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500790, 36.307484, 43.608662>,  <40.757473, 36.231361, 43.905849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500790, 36.307484, 43.608662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642350, -0.395934, -0.656219,
		-0.419051, -0.898342, 0.131825,
		-0.641703, 0.190312, -0.742966,
		40.308277, 36.364574, 43.385773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571693, 35.558445, 43.522793>,  <40.757473, 36.231361, 43.905849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571693, 35.558445, 43.522793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463711, 35.849430, 43.270470>,  <40.398922, 36.024021, 43.119076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463711, 35.849430, 43.270470>,  <40.571693, 35.558445, 43.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463711, 35.849430, 43.270470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315596, -0.552092, -0.771747,
		-0.909682, -0.407419, -0.080544,
		-0.269957, 0.727464, -0.630808,
		40.382725, 36.067669, 43.081226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123245, 35.133560, 42.978416>,  <40.571693, 35.558445, 43.522793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123245, 35.133560, 42.978416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290081, 35.473476, 42.849487>,  <40.390182, 35.677425, 42.772129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290081, 35.473476, 42.849487>,  <40.123245, 35.133560, 42.978416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290081, 35.473476, 42.849487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282296, -0.458234, -0.842811,
		-0.863912, 0.260538, -0.431017,
		0.417091, 0.849789, -0.322325,
		40.415207, 35.728413, 42.752789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022232, 35.256252, 42.356167>,  <40.123245, 35.133560, 42.978416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022232, 35.256252, 42.356167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314693, 35.529137, 42.355495>,  <40.490170, 35.692867, 42.355091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314693, 35.529137, 42.355495>,  <40.022232, 35.256252, 42.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314693, 35.529137, 42.355495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308170, -0.332478, -0.891342,
		-0.608638, 0.651194, -0.453329,
		0.731158, 0.682206, -0.001680,
		40.534042, 35.733799, 42.354992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108845, 35.594780, 41.572994>,  <40.022232, 35.256252, 42.356167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108845, 35.594780, 41.572994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454037, 35.613701, 41.774200>,  <40.661152, 35.625053, 41.894924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454037, 35.613701, 41.774200>,  <40.108845, 35.594780, 41.572994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454037, 35.613701, 41.774200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472139, -0.429928, -0.769575,
		0.179862, 0.901623, -0.393351,
		0.862980, 0.047299, 0.503020,
		40.712929, 35.627892, 41.925106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297192, 36.275055, 41.436668>,  <40.108845, 35.594780, 41.572994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297192, 36.275055, 41.436668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603245, 36.121872, 41.643707>,  <40.786877, 36.029961, 41.767933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603245, 36.121872, 41.643707>,  <40.297192, 36.275055, 41.436668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603245, 36.121872, 41.643707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295806, -0.504957, -0.810874,
		0.571900, 0.773537, -0.273078,
		0.765134, -0.382960, 0.517602,
		40.832787, 36.006985, 41.798988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909481, 36.252560, 40.966465>,  <40.297192, 36.275055, 41.436668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909481, 36.252560, 40.966465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007641, 35.994190, 41.255619>,  <41.066536, 35.839169, 41.429111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007641, 35.994190, 41.255619>,  <40.909481, 36.252560, 40.966465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007641, 35.994190, 41.255619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494889, -0.557728, -0.666351,
		0.833584, 0.521273, 0.182792,
		0.245403, -0.645921, 0.722885,
		41.081261, 35.800415, 41.472485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494877, 35.874374, 40.582493>,  <40.909481, 36.252560, 40.966465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494877, 35.874374, 40.582493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495945, 35.706066, 40.945358>,  <41.496586, 35.605083, 41.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495945, 35.706066, 40.945358>,  <41.494877, 35.874374, 40.582493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495945, 35.706066, 40.945358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715870, -0.632607, -0.295530,
		0.698228, 0.650202, 0.299524,
		0.002674, -0.420768, 0.907164,
		41.496746, 35.579834, 41.217506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153194, 35.894188, 40.822769>,  <41.494877, 35.874374, 40.582493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153194, 35.894188, 40.822769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945786, 35.586716, 40.972580>,  <41.821339, 35.402233, 41.062466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945786, 35.586716, 40.972580>,  <42.153194, 35.894188, 40.822769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945786, 35.586716, 40.972580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463204, -0.620688, -0.632605,
		0.718733, -0.154537, 0.677895,
		-0.518522, -0.768677, 0.374527,
		41.790230, 35.356113, 41.084938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588524, 35.355339, 40.944302>,  <42.153194, 35.894188, 40.822769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588524, 35.355339, 40.944302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236141, 35.166077, 40.947010>,  <42.024712, 35.052521, 40.948635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236141, 35.166077, 40.947010>,  <42.588524, 35.355339, 40.944302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236141, 35.166077, 40.947010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376338, -0.709229, -0.596125,
		0.286862, -0.522610, 0.802864,
		-0.880954, -0.473153, 0.006773,
		41.971855, 35.024132, 40.949043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607998, 34.525887, 41.260185>,  <42.588524, 35.355339, 40.944302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607998, 34.525887, 41.260185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314640, 34.548008, 40.989162>,  <42.138626, 34.561283, 40.826550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314640, 34.548008, 40.989162>,  <42.607998, 34.525887, 41.260185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314640, 34.548008, 40.989162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460965, -0.692092, -0.555446,
		-0.499650, -0.719687, 0.482079,
		-0.733390, 0.055307, -0.677555,
		42.094624, 34.564602, 40.785896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861626, 34.132992, 40.743908>,  <42.607998, 34.525887, 41.260185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861626, 34.132992, 40.743908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540051, 34.287682, 40.563183>,  <42.347107, 34.380497, 40.454750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540051, 34.287682, 40.563183>,  <42.861626, 34.132992, 40.743908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540051, 34.287682, 40.563183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323614, -0.352917, -0.877908,
		-0.498961, -0.851993, 0.158572,
		-0.803935, 0.386726, -0.451809,
		42.298870, 34.403698, 40.427639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738235, 33.641640, 40.254467>,  <42.861626, 34.132992, 40.743908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738235, 33.641640, 40.254467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542374, 33.966888, 40.128563>,  <42.424858, 34.162037, 40.053020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542374, 33.966888, 40.128563>,  <42.738235, 33.641640, 40.254467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542374, 33.966888, 40.128563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260996, -0.207753, -0.942719,
		-0.831938, -0.543756, -0.110494,
		-0.489654, 0.813122, -0.314755,
		42.395477, 34.210827, 40.034138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248398, 33.387398, 39.783272>,  <42.738235, 33.641640, 40.254467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248398, 33.387398, 39.783272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307217, 33.778740, 39.725029>,  <42.342506, 34.013546, 39.690083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307217, 33.778740, 39.725029>,  <42.248398, 33.387398, 39.783272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307217, 33.778740, 39.725029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013481, -0.145215, -0.989308,
		-0.989037, 0.147439, -0.008164,
		0.147049, 0.978353, -0.145610,
		42.351330, 34.072247, 39.681347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880997, 33.564774, 39.107109>,  <42.248398, 33.387398, 39.783272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880997, 33.564774, 39.107109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159649, 33.847889, 39.154003>,  <42.326839, 34.017757, 39.182140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159649, 33.847889, 39.154003>,  <41.880997, 33.564774, 39.107109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159649, 33.847889, 39.154003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244716, -0.080810, -0.966221,
		-0.674407, 0.701786, -0.229502,
		0.696627, 0.707789, 0.117239,
		42.368637, 34.060226, 39.189175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775852, 34.023018, 38.694061>,  <41.880997, 33.564774, 39.107109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775852, 34.023018, 38.694061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164669, 34.098663, 38.749729>,  <42.397961, 34.144051, 38.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164669, 34.098663, 38.749729>,  <41.775852, 34.023018, 38.694061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164669, 34.098663, 38.749729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117640, 0.120717, -0.985692,
		-0.203207, 0.974507, 0.095095,
		0.972043, 0.189112, 0.139172,
		42.456284, 34.155396, 38.791481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962021, 34.595058, 38.338459>,  <41.775852, 34.023018, 38.694061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962021, 34.595058, 38.338459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328629, 34.445408, 38.395050>,  <42.548592, 34.355618, 38.429005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328629, 34.445408, 38.395050>,  <41.962021, 34.595058, 38.338459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328629, 34.445408, 38.395050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217054, 0.168091, -0.961578,
		0.335974, 0.912015, 0.235265,
		0.916520, -0.374131, 0.141482,
		42.603584, 34.333168, 38.437496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513580, 35.015972, 37.991478>,  <41.962021, 34.595058, 38.338459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513580, 35.015972, 37.991478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693840, 34.660706, 38.027405>,  <42.801998, 34.447544, 38.048962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693840, 34.660706, 38.027405>,  <42.513580, 35.015972, 37.991478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693840, 34.660706, 38.027405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248985, 0.028437, -0.968090,
		0.857275, 0.458633, 0.233956,
		0.450651, -0.888171, 0.089814,
		42.829037, 34.394253, 38.054348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060474, 35.089180, 37.630051>,  <42.513580, 35.015972, 37.991478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060474, 35.089180, 37.630051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024887, 34.694050, 37.681091>,  <43.003536, 34.456970, 37.711716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024887, 34.694050, 37.681091>,  <43.060474, 35.089180, 37.630051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024887, 34.694050, 37.681091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301723, -0.148823, -0.941708,
		0.949235, -0.045280, 0.311291,
		-0.088968, -0.987826, 0.127606,
		42.998196, 34.397701, 37.719372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711174, 34.797066, 37.505989>,  <43.060474, 35.089180, 37.630051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711174, 34.797066, 37.505989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401653, 34.558064, 37.421871>,  <43.215942, 34.414661, 37.371399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401653, 34.558064, 37.421871>,  <43.711174, 34.797066, 37.505989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401653, 34.558064, 37.421871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293348, -0.043785, -0.955003,
		0.561409, -0.800671, 0.209157,
		-0.773800, -0.597503, -0.210294,
		43.169514, 34.378811, 37.358784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802193, 34.021542, 37.451405>,  <43.711174, 34.797066, 37.505989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802193, 34.021542, 37.451405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515068, 34.175545, 37.219364>,  <43.342793, 34.267948, 37.080139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515068, 34.175545, 37.219364>,  <43.802193, 34.021542, 37.451405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515068, 34.175545, 37.219364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611031, -0.051037, -0.789960,
		-0.333749, -0.921500, -0.198619,
		-0.717811, 0.385011, -0.580099,
		43.299725, 34.291046, 37.045334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755508, 33.642605, 36.863728>,  <43.802193, 34.021542, 37.451405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755508, 33.642605, 36.863728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688751, 34.023884, 36.762886>,  <43.648697, 34.252651, 36.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688751, 34.023884, 36.762886>,  <43.755508, 33.642605, 36.863728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688751, 34.023884, 36.762886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708795, -0.061750, -0.702706,
		-0.685387, -0.295967, -0.665318,
		-0.166894, 0.953200, -0.252103,
		43.638683, 34.309845, 36.687256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728725, 33.802635, 36.054996>,  <43.755508, 33.642605, 36.863728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728725, 33.802635, 36.054996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850735, 34.119324, 36.266708>,  <43.923939, 34.309338, 36.393734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850735, 34.119324, 36.266708>,  <43.728725, 33.802635, 36.054996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850735, 34.119324, 36.266708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746168, 0.146661, -0.649403,
		-0.591772, 0.593012, -0.546024,
		0.305023, 0.791724, 0.529277,
		43.942242, 34.356842, 36.425491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817692, 34.454426, 35.629810>,  <43.728725, 33.802635, 36.054996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817692, 34.454426, 35.629810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084812, 34.477383, 35.926659>,  <44.245083, 34.491158, 36.104767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084812, 34.477383, 35.926659>,  <43.817692, 34.454426, 35.629810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084812, 34.477383, 35.926659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703647, 0.276460, -0.654561,
		-0.242737, 0.959310, 0.144234,
		0.667802, 0.057397, 0.742123,
		44.285152, 34.494602, 36.149296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206547, 35.102161, 35.702637>,  <43.817692, 34.454426, 35.629810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206547, 35.102161, 35.702637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435482, 34.797058, 35.823051>,  <44.572845, 34.613995, 35.895298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435482, 34.797058, 35.823051>,  <44.206547, 35.102161, 35.702637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435482, 34.797058, 35.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704602, 0.269656, -0.656370,
		0.419478, 0.587777, 0.691778,
		0.572341, -0.762760, 0.301034,
		44.607185, 34.568230, 35.913361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850128, 35.426861, 35.658436>,  <44.206547, 35.102161, 35.702637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850128, 35.426861, 35.658436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972977, 35.420799, 36.039055>,  <45.046684, 35.417164, 36.267426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972977, 35.420799, 36.039055>,  <44.850128, 35.426861, 35.658436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972977, 35.420799, 36.039055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289332, 0.951056, 0.108529,
		-0.906622, -0.308646, 0.287705,
		0.307120, -0.015153, 0.951550,
		45.065113, 35.416252, 36.324520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255817, 35.997360, 36.039501>,  <44.850128, 35.426861, 35.658436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255817, 35.997360, 36.039501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137684, 36.102898, 36.406799>,  <45.066803, 36.166218, 36.627178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137684, 36.102898, 36.406799>,  <45.255817, 35.997360, 36.039501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137684, 36.102898, 36.406799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584194, 0.810369, -0.044951,
		-0.755974, 0.523155, -0.393461,
		-0.295332, 0.263839, 0.918242,
		45.049084, 36.182049, 36.682270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152691, 36.679451, 36.035942>,  <45.255817, 35.997360, 36.039501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152691, 36.679451, 36.035942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256699, 36.645737, 36.420708>,  <45.319103, 36.625507, 36.651569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256699, 36.645737, 36.420708>,  <45.152691, 36.679451, 36.035942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256699, 36.645737, 36.420708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666398, 0.736581, -0.115595,
		-0.698788, 0.671077, 0.247693,
		0.260019, -0.084286, 0.961918,
		45.334705, 36.620449, 36.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085266, 37.350243, 36.377892>,  <45.152691, 36.679451, 36.035942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085266, 37.350243, 36.377892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375809, 37.127434, 36.538952>,  <45.550133, 36.993748, 36.635590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375809, 37.127434, 36.538952>,  <45.085266, 37.350243, 36.377892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375809, 37.127434, 36.538952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660124, 0.728527, -0.182988,
		-0.191417, 0.398717, 0.896875,
		0.726358, -0.557021, 0.402655,
		45.593716, 36.960327, 36.659748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380547, 37.762482, 36.915459>,  <45.085266, 37.350243, 36.377892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380547, 37.762482, 36.915459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658138, 37.509369, 36.778061>,  <45.824692, 37.357502, 36.695621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658138, 37.509369, 36.778061>,  <45.380547, 37.762482, 36.915459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658138, 37.509369, 36.778061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604684, 0.771199, -0.199021,
		0.390837, -0.069589, 0.917826,
		0.693977, -0.632779, -0.343492,
		45.866333, 37.319534, 36.675014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043976, 37.902531, 37.253761>,  <45.380547, 37.762482, 36.915459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043976, 37.902531, 37.253761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070187, 37.741871, 36.888382>,  <46.085911, 37.645473, 36.669155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070187, 37.741871, 36.888382>,  <46.043976, 37.902531, 37.253761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070187, 37.741871, 36.888382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545718, 0.780809, -0.304187,
		0.835403, -0.478552, 0.270350,
		0.065522, -0.401654, -0.913445,
		46.089844, 37.621376, 36.614349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733200, 37.806950, 37.025005>,  <46.043976, 37.902531, 37.253761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733200, 37.806950, 37.025005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489792, 37.865433, 36.713024>,  <46.343746, 37.900524, 36.525837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489792, 37.865433, 36.713024>,  <46.733200, 37.806950, 37.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489792, 37.865433, 36.713024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386972, 0.912766, -0.130809,
		0.692785, -0.381419, -0.612020,
		-0.608525, 0.146212, -0.779949,
		46.307236, 37.909298, 36.479038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.990993, 37.072861, 37.254696>,  <46.733200, 37.806950, 37.025005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.990993, 37.072861, 37.254696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131599, 37.354366, 37.007748>,  <47.215961, 37.523270, 36.859577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131599, 37.354366, 37.007748>,  <46.990993, 37.072861, 37.254696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131599, 37.354366, 37.007748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083386, -0.680373, -0.728106,
		-0.932462, 0.204458, -0.297844,
		0.351512, 0.703768, -0.617374,
		47.237053, 37.565498, 36.822536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588982, 37.078552, 36.741749>,  <46.990993, 37.072861, 37.254696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588982, 37.078552, 36.741749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948425, 37.193081, 36.608765>,  <47.164089, 37.261799, 36.528973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948425, 37.193081, 36.608765>,  <46.588982, 37.078552, 36.741749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948425, 37.193081, 36.608765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008551, -0.746163, -0.665709,
		-0.438676, 0.601052, -0.668057,
		0.898605, 0.286318, -0.332463,
		47.218006, 37.278976, 36.509026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586536, 37.156933, 36.025234>,  <46.588982, 37.078552, 36.741749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586536, 37.156933, 36.025234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974609, 37.114830, 36.112560>,  <47.207455, 37.089569, 36.164955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974609, 37.114830, 36.112560>,  <46.586536, 37.156933, 36.025234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974609, 37.114830, 36.112560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043193, -0.811264, -0.583083,
		0.238483, 0.575128, -0.782530,
		0.970186, -0.105255, 0.218314,
		47.265667, 37.083252, 36.178055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255375, 37.244228, 35.486855>,  <46.586536, 37.156933, 36.025234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255375, 37.244228, 35.486855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288078, 36.989880, 35.793835>,  <47.307701, 36.837273, 35.978024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288078, 36.989880, 35.793835>,  <47.255375, 37.244228, 35.486855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288078, 36.989880, 35.793835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189028, -0.746162, -0.638365,
		0.978562, 0.197261, 0.059193,
		0.081757, -0.635869, 0.767454,
		47.312607, 36.799118, 36.024071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.984749, 36.907597, 35.573772>,  <47.255375, 37.244228, 35.486855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.984749, 36.907597, 35.573772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691811, 36.660160, 35.687618>,  <47.516048, 36.511696, 35.755924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691811, 36.660160, 35.687618>,  <47.984749, 36.907597, 35.573772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.691811, 36.660160, 35.687618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140934, -0.546629, -0.825430,
		0.666184, -0.564391, 0.487505,
		-0.732350, -0.618594, 0.284614,
		47.472107, 36.474583, 35.773003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.161026, 36.140709, 35.632690>,  <47.984749, 36.907597, 35.573772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.161026, 36.140709, 35.632690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770203, 36.156860, 35.549046>,  <47.535709, 36.166553, 35.498859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770203, 36.156860, 35.549046>,  <48.161026, 36.140709, 35.632690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.770203, 36.156860, 35.549046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130233, -0.663620, -0.736646,
		-0.168518, -0.746979, 0.643136,
		-0.977057, 0.040380, -0.209113,
		47.477085, 36.168976, 35.486313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.851906, 35.516548, 35.535889>,  <48.161026, 36.140709, 35.632690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.851906, 35.516548, 35.535889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593521, 35.749859, 35.338902>,  <47.438488, 35.889843, 35.220711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593521, 35.749859, 35.338902>,  <47.851906, 35.516548, 35.535889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593521, 35.749859, 35.338902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073889, -0.594321, -0.800827,
		-0.759784, -0.553692, 0.340812,
		-0.645963, 0.583273, -0.492467,
		47.399731, 35.924839, 35.191162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.100643, 34.810265, 35.317104>,  <47.851906, 35.516548, 35.535889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.100643, 34.810265, 35.317104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.908794, 34.844990, 34.967838>,  <47.793686, 34.865826, 34.758278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.908794, 34.844990, 34.967838>,  <48.100643, 34.810265, 35.317104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.908794, 34.844990, 34.967838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450212, 0.878478, -0.159959,
		0.753174, -0.469831, -0.460422,
		-0.479624, 0.086811, -0.873170,
		47.764908, 34.871033, 34.705887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.316170, 29.421211, 29.980082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252506, 29.730188, 29.734154>,  <41.214310, 29.915575, 29.586597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252506, 29.730188, 29.734154>,  <41.316170, 29.421211, 29.980082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252506, 29.730188, 29.734154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389901, 0.522951, 0.757958,
		0.906998, 0.360354, 0.217944,
		-0.159159, 0.772443, -0.614818,
		41.204758, 29.961922, 29.549707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694481, 30.001637, 30.305073>,  <41.316170, 29.421211, 29.980082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694481, 30.001637, 30.305073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.438877, 30.165379, 30.044582>,  <41.285515, 30.263624, 29.888288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.438877, 30.165379, 30.044582>,  <41.694481, 30.001637, 30.305073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438877, 30.165379, 30.044582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398873, 0.547556, 0.735583,
		0.657697, 0.729801, -0.186613,
		-0.639011, 0.409356, -0.651224,
		41.247173, 30.288185, 29.849215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716194, 30.711136, 30.491364>,  <41.694481, 30.001637, 30.305073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716194, 30.711136, 30.491364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.355156, 30.639799, 30.334641>,  <41.138531, 30.596996, 30.240606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.355156, 30.639799, 30.334641>,  <41.716194, 30.711136, 30.491364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355156, 30.639799, 30.334641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427375, 0.480435, 0.765854,
		0.051653, 0.858706, -0.509859,
		-0.902598, -0.178342, -0.391806,
		41.084377, 30.586296, 30.217098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344631, 31.386719, 30.661886>,  <41.716194, 30.711136, 30.491364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344631, 31.386719, 30.661886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073456, 31.102051, 30.588213>,  <40.910751, 30.931250, 30.544008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073456, 31.102051, 30.588213>,  <41.344631, 31.386719, 30.661886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073456, 31.102051, 30.588213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473108, 0.230626, 0.850282,
		-0.562642, 0.663579, -0.493047,
		-0.677940, -0.711670, -0.184185,
		40.870075, 30.888550, 30.532957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601040, 31.632433, 30.551718>,  <41.344631, 31.386719, 30.661886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601040, 31.632433, 30.551718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592144, 31.254936, 30.683691>,  <40.586807, 31.028439, 30.762875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592144, 31.254936, 30.683691>,  <40.601040, 31.632433, 30.551718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592144, 31.254936, 30.683691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530236, 0.290908, 0.796381,
		-0.847558, -0.157233, -0.506876,
		-0.022237, -0.943743, 0.329933,
		40.585472, 30.971813, 30.782671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811195, 31.590506, 30.774075>,  <40.601040, 31.632433, 30.551718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811195, 31.590506, 30.774075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015766, 31.289806, 30.940599>,  <40.138508, 31.109386, 31.040514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015766, 31.289806, 30.940599>,  <39.811195, 31.590506, 30.774075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015766, 31.289806, 30.940599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620418, 0.012187, 0.784177,
		-0.594575, -0.659339, -0.460165,
		0.511431, -0.751746, 0.416312,
		40.169197, 31.064283, 31.065493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285755, 31.178244, 31.058260>,  <39.811195, 31.590506, 30.774075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285755, 31.178244, 31.058260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612522, 31.064720, 31.259096>,  <39.808582, 30.996607, 31.379599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612522, 31.064720, 31.259096>,  <39.285755, 31.178244, 31.058260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612522, 31.064720, 31.259096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496602, 0.096591, 0.862587,
		-0.293306, -0.954004, -0.062032,
		0.816920, -0.283807, 0.502092,
		39.857597, 30.979578, 31.409723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031235, 30.782230, 31.574200>,  <39.285755, 31.178244, 31.058260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031235, 30.782230, 31.574200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406162, 30.856850, 31.691938>,  <39.631119, 30.901621, 31.762581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406162, 30.856850, 31.691938>,  <39.031235, 30.782230, 31.574200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406162, 30.856850, 31.691938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323799, 0.154005, 0.933508,
		0.128815, -0.970300, 0.204756,
		0.937316, 0.186550, 0.294344,
		39.687359, 30.912813, 31.780241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189980, 30.265209, 32.098320>,  <39.031235, 30.782230, 31.574200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189980, 30.265209, 32.098320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.414383, 30.587824, 32.172901>,  <39.549026, 30.781393, 32.217651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.414383, 30.587824, 32.172901>,  <39.189980, 30.265209, 32.098320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414383, 30.587824, 32.172901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482947, 0.135949, 0.865032,
		0.672334, -0.575337, 0.465784,
		0.561008, 0.806539, 0.186454,
		39.582684, 30.829786, 32.228836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295177, 30.291054, 32.854298>,  <39.189980, 30.265209, 32.098320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295177, 30.291054, 32.854298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417454, 30.656549, 32.747238>,  <39.490818, 30.875847, 32.683002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417454, 30.656549, 32.747238>,  <39.295177, 30.291054, 32.854298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417454, 30.656549, 32.747238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243575, 0.346800, 0.905760,
		0.920448, -0.211689, 0.328577,
		0.305690, 0.913738, -0.267650,
		39.509159, 30.930672, 32.666943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775116, 30.532551, 33.445305>,  <39.295177, 30.291054, 32.854298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775116, 30.532551, 33.445305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.667980, 30.857426, 33.237991>,  <39.603699, 31.052351, 33.113605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.667980, 30.857426, 33.237991>,  <39.775116, 30.532551, 33.445305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667980, 30.857426, 33.237991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110425, 0.508512, 0.853945,
		0.957114, 0.285952, -0.046514,
		-0.267841, 0.812186, -0.518280,
		39.587627, 31.101082, 33.082508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190712, 31.085850, 33.777653>,  <39.775116, 30.532551, 33.445305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190712, 31.085850, 33.777653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.883869, 31.268963, 33.597881>,  <39.699764, 31.378832, 33.490021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.883869, 31.268963, 33.597881>,  <40.190712, 31.085850, 33.777653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883869, 31.268963, 33.597881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144323, 0.559452, 0.816201,
		0.625076, 0.690974, -0.363090,
		-0.767106, 0.457785, -0.449424,
		39.653736, 31.406298, 33.463055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261192, 31.844927, 33.859280>,  <40.190712, 31.085850, 33.777653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261192, 31.844927, 33.859280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872021, 31.815596, 33.771618>,  <39.638515, 31.797997, 33.719021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872021, 31.815596, 33.771618>,  <40.261192, 31.844927, 33.859280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872021, 31.815596, 33.771618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221911, 0.561115, 0.797437,
		0.064493, 0.824484, -0.562199,
		-0.972932, -0.073329, -0.219150,
		39.580143, 31.793596, 33.705872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982212, 32.577335, 33.785198>,  <40.261192, 31.844927, 33.859280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982212, 32.577335, 33.785198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.659054, 32.349846, 33.846970>,  <39.465157, 32.213352, 33.884033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.659054, 32.349846, 33.846970>,  <39.982212, 32.577335, 33.785198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659054, 32.349846, 33.846970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314028, 0.637197, 0.703822,
		-0.498683, 0.520123, -0.693388,
		-0.807899, -0.568728, 0.154426,
		39.416683, 32.179226, 33.893299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459969, 32.974888, 33.965973>,  <39.982212, 32.577335, 33.785198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459969, 32.974888, 33.965973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343025, 32.630619, 34.132713>,  <39.272858, 32.424057, 34.232758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343025, 32.630619, 34.132713>,  <39.459969, 32.974888, 33.965973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343025, 32.630619, 34.132713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158763, 0.473527, 0.866353,
		-0.943038, 0.187107, -0.275084,
		-0.292360, -0.860676, 0.416847,
		39.255318, 32.372417, 34.257767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825436, 33.077679, 34.314770>,  <39.459969, 32.974888, 33.965973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825436, 33.077679, 34.314770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951008, 32.733231, 34.474728>,  <39.026352, 32.526562, 34.570702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951008, 32.733231, 34.474728>,  <38.825436, 33.077679, 34.314770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951008, 32.733231, 34.474728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214448, 0.345997, 0.913399,
		-0.924910, -0.372502, -0.076046,
		0.313932, -0.861120, 0.399898,
		39.045189, 32.474895, 34.594696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308426, 33.000347, 34.785072>,  <38.825436, 33.077679, 34.314770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308426, 33.000347, 34.785072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612438, 32.763203, 34.891563>,  <38.794846, 32.620918, 34.955456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612438, 32.763203, 34.891563>,  <38.308426, 33.000347, 34.785072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612438, 32.763203, 34.891563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138284, 0.252738, 0.957602,
		-0.635006, -0.764620, 0.110106,
		0.760029, -0.592857, 0.266225,
		38.840446, 32.585346, 34.971432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013714, 32.582771, 35.304188>,  <38.308426, 33.000347, 34.785072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013714, 32.582771, 35.304188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407925, 32.629101, 35.353691>,  <38.644451, 32.656898, 35.383392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407925, 32.629101, 35.353691>,  <38.013714, 32.582771, 35.304188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407925, 32.629101, 35.353691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167287, 0.546918, 0.820302,
		0.027328, -0.829135, 0.558380,
		0.985529, 0.115827, 0.123757,
		38.703583, 32.663849, 35.390820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071186, 32.546329, 35.989956>,  <38.013714, 32.582771, 35.304188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071186, 32.546329, 35.989956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435913, 32.669132, 35.880901>,  <38.654751, 32.742813, 35.815468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435913, 32.669132, 35.880901>,  <38.071186, 32.546329, 35.989956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435913, 32.669132, 35.880901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066597, 0.544640, 0.836022,
		0.405152, -0.780459, 0.476168,
		0.911820, 0.307004, -0.272638,
		38.709457, 32.761234, 35.799110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486534, 32.435368, 36.566635>,  <38.071186, 32.546329, 35.989956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486534, 32.435368, 36.566635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675480, 32.714081, 36.350723>,  <38.788849, 32.881310, 36.221176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675480, 32.714081, 36.350723>,  <38.486534, 32.435368, 36.566635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675480, 32.714081, 36.350723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102730, 0.564714, 0.818868,
		0.875397, -0.442254, 0.195170,
		0.472363, 0.696784, -0.539782,
		38.817188, 32.923115, 36.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087624, 32.671883, 36.919346>,  <38.486534, 32.435368, 36.566635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087624, 32.671883, 36.919346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972771, 32.965485, 36.673164>,  <38.903858, 33.141647, 36.525455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972771, 32.965485, 36.673164>,  <39.087624, 32.671883, 36.919346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972771, 32.965485, 36.673164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137462, 0.604285, 0.784820,
		0.947975, 0.309952, -0.072615,
		-0.287137, 0.734009, -0.615454,
		38.886631, 33.185688, 36.488529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958973, 31.890684, 36.990452>,  <39.087624, 32.671883, 36.919346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958973, 31.890684, 36.990452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342606, 31.939598, 37.092594>,  <39.572784, 31.968946, 37.153881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342606, 31.939598, 37.092594>,  <38.958973, 31.890684, 36.990452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342606, 31.939598, 37.092594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267208, -0.689114, -0.673588,
		0.093600, 0.714260, -0.693593,
		0.959082, 0.122286, 0.255357,
		39.630329, 31.976284, 37.169201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441994, 32.010723, 36.341019>,  <38.958973, 31.890684, 36.990452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441994, 32.010723, 36.341019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674252, 31.858036, 36.628670>,  <39.813606, 31.766422, 36.801258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674252, 31.858036, 36.628670>,  <39.441994, 32.010723, 36.341019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674252, 31.858036, 36.628670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374777, -0.658811, -0.652312,
		0.722769, 0.648272, -0.239474,
		0.580644, -0.381721, 0.719126,
		39.848446, 31.743519, 36.844406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109219, 32.128555, 36.124485>,  <39.441994, 32.010723, 36.341019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109219, 32.128555, 36.124485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112495, 31.830746, 36.391502>,  <40.114464, 31.652060, 36.551712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112495, 31.830746, 36.391502>,  <40.109219, 32.128555, 36.124485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112495, 31.830746, 36.391502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453628, -0.592157, -0.666012,
		0.891154, 0.308275, 0.332884,
		0.008195, -0.744524, 0.667545,
		40.114956, 31.607389, 36.591766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695297, 31.914637, 35.972034>,  <40.109219, 32.128555, 36.124485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695297, 31.914637, 35.972034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.536240, 31.613188, 36.181389>,  <40.440804, 31.432318, 36.307003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.536240, 31.613188, 36.181389>,  <40.695297, 31.914637, 35.972034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536240, 31.613188, 36.181389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617619, -0.641690, -0.454731,
		0.678547, 0.142431, 0.720616,
		-0.397644, -0.753623, 0.523385,
		40.416946, 31.387100, 36.338406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256191, 31.555531, 36.181526>,  <40.695297, 31.914637, 35.972034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256191, 31.555531, 36.181526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.955574, 31.293653, 36.213917>,  <40.775204, 31.136528, 36.233353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.955574, 31.293653, 36.213917>,  <41.256191, 31.555531, 36.181526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955574, 31.293653, 36.213917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616668, -0.740831, -0.266252,
		0.234306, -0.150163, 0.960496,
		-0.751546, -0.654692, 0.080980,
		40.730110, 31.097246, 36.238213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564430, 30.940903, 36.297897>,  <41.256191, 31.555531, 36.181526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564430, 30.940903, 36.297897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198517, 30.816505, 36.194790>,  <40.978970, 30.741867, 36.132923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198517, 30.816505, 36.194790>,  <41.564430, 30.940903, 36.297897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198517, 30.816505, 36.194790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370528, -0.900170, -0.228915,
		-0.160847, -0.304921, 0.938697,
		-0.914788, -0.310993, -0.257772,
		40.924080, 30.723207, 36.117458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647480, 30.199266, 36.403263>,  <41.564430, 30.940903, 36.297897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647480, 30.199266, 36.403263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.337296, 30.249603, 36.155773>,  <41.151184, 30.279806, 36.007278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.337296, 30.249603, 36.155773>,  <41.647480, 30.199266, 36.403263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337296, 30.249603, 36.155773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340192, -0.742260, -0.577338,
		-0.531908, -0.658189, 0.532785,
		-0.775463, 0.125842, -0.618725,
		41.104656, 30.287355, 35.970154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342384, 29.604118, 36.316929>,  <41.647480, 30.199266, 36.403263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342384, 29.604118, 36.316929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211876, 29.810476, 36.000095>,  <41.133572, 29.934292, 35.809994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211876, 29.810476, 36.000095>,  <41.342384, 29.604118, 36.316929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211876, 29.810476, 36.000095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357737, -0.708228, -0.608635,
		-0.874969, -0.481939, 0.046520,
		-0.326272, 0.515895, -0.792085,
		41.113995, 29.965244, 35.762470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982178, 29.194357, 35.854927>,  <41.342384, 29.604118, 36.316929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982178, 29.194357, 35.854927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.063015, 29.501059, 35.611206>,  <41.111519, 29.685080, 35.464973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.063015, 29.501059, 35.611206>,  <40.982178, 29.194357, 35.854927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063015, 29.501059, 35.611206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336751, -0.638607, -0.691939,
		-0.919651, -0.065346, -0.387263,
		0.202093, 0.766753, -0.609301,
		41.123642, 29.731085, 35.428417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690685, 28.980551, 35.296135>,  <40.982178, 29.194357, 35.854927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690685, 28.980551, 35.296135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912621, 29.273560, 35.138371>,  <41.045784, 29.449366, 35.043713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912621, 29.273560, 35.138371>,  <40.690685, 28.980551, 35.296135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912621, 29.273560, 35.138371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226278, -0.589078, -0.775748,
		-0.800593, 0.341171, -0.492598,
		0.554842, 0.732523, -0.394412,
		41.079075, 29.493317, 35.020046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524975, 29.074251, 34.635078>,  <40.690685, 28.980551, 35.296135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524975, 29.074251, 34.635078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877216, 29.260344, 34.599098>,  <41.088562, 29.372000, 34.577511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877216, 29.260344, 34.599098>,  <40.524975, 29.074251, 34.635078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877216, 29.260344, 34.599098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143546, -0.442824, -0.885043,
		-0.451583, 0.766463, -0.456736,
		0.880606, 0.465233, -0.089949,
		41.141399, 29.399914, 34.572113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540176, 29.454220, 33.975346>,  <40.524975, 29.074251, 34.635078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540176, 29.454220, 33.975346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.914742, 29.362661, 34.081734>,  <41.139481, 29.307726, 34.145565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.914742, 29.362661, 34.081734>,  <40.540176, 29.454220, 33.975346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914742, 29.362661, 34.081734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154336, -0.412058, -0.897992,
		0.315143, 0.881938, -0.350528,
		0.936411, -0.228897, 0.265972,
		41.195663, 29.293993, 34.161526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938713, 29.817585, 33.539246>,  <40.540176, 29.454220, 33.975346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938713, 29.817585, 33.539246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.170326, 29.528793, 33.690754>,  <41.309296, 29.355518, 33.781658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.170326, 29.528793, 33.690754>,  <40.938713, 29.817585, 33.539246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170326, 29.528793, 33.690754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415794, -0.138125, -0.898908,
		0.701311, 0.677989, 0.220215,
		0.579032, -0.721978, 0.378772,
		41.344036, 29.312201, 33.804386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635895, 29.879896, 33.264278>,  <40.938713, 29.817585, 33.539246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635895, 29.879896, 33.264278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.624126, 29.498091, 33.382965>,  <41.617065, 29.269009, 33.454178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.624126, 29.498091, 33.382965>,  <41.635895, 29.879896, 33.264278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624126, 29.498091, 33.382965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387824, -0.284494, -0.876730,
		0.921264, 0.089280, 0.378553,
		-0.029422, -0.954511, 0.296719,
		41.615299, 29.211737, 33.471981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088203, 29.638933, 32.852226>,  <41.635895, 29.879896, 33.264278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088203, 29.638933, 32.852226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.979240, 29.279272, 32.989231>,  <41.913864, 29.063475, 33.071434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.979240, 29.279272, 32.989231>,  <42.088203, 29.638933, 32.852226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979240, 29.279272, 32.989231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345066, -0.423591, -0.837556,
		0.898178, -0.109966, 0.425657,
		-0.272407, -0.899154, 0.342515,
		41.897518, 29.009525, 33.091984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662270, 29.229128, 32.899723>,  <42.088203, 29.638933, 32.852226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662270, 29.229128, 32.899723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351128, 28.984474, 32.841984>,  <42.164440, 28.837681, 32.807339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351128, 28.984474, 32.841984>,  <42.662270, 29.229128, 32.899723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351128, 28.984474, 32.841984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487498, -0.442321, -0.752793,
		0.396587, -0.655937, 0.642234,
		-0.777859, -0.611636, -0.144350,
		42.117771, 28.800983, 32.798679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987949, 28.636587, 32.764870>,  <42.662270, 29.229128, 32.899723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987949, 28.636587, 32.764870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.611355, 28.578365, 32.643272>,  <42.385399, 28.543432, 32.570316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.611355, 28.578365, 32.643272>,  <42.987949, 28.636587, 32.764870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611355, 28.578365, 32.643272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332467, -0.252984, -0.908551,
		0.055341, -0.956458, 0.286575,
		-0.941490, -0.145557, -0.303990,
		42.328907, 28.534698, 32.552074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052185, 27.996635, 32.354717>,  <42.987949, 28.636587, 32.764870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052185, 27.996635, 32.354717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.717026, 28.193321, 32.259945>,  <42.515930, 28.311333, 32.203083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.717026, 28.193321, 32.259945>,  <43.052185, 27.996635, 32.354717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717026, 28.193321, 32.259945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168215, -0.180323, -0.969117,
		-0.519253, -0.851881, 0.068380,
		-0.837902, 0.491714, -0.236932,
		42.465656, 28.340836, 32.188866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599541, 27.523972, 31.944765>,  <43.052185, 27.996635, 32.354717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599541, 27.523972, 31.944765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.485203, 27.891186, 31.834854>,  <42.416599, 28.111515, 31.768908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.485203, 27.891186, 31.834854>,  <42.599541, 27.523972, 31.944765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485203, 27.891186, 31.834854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024006, -0.279791, -0.959761,
		-0.957974, -0.280943, 0.057939,
		-0.285849, 0.918035, -0.274777,
		42.399448, 28.166595, 31.752420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.524960, 27.568153, 31.122959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.759418, 27.889950, 31.161375>,  <41.900093, 28.083027, 31.184425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.759418, 27.889950, 31.161375>,  <41.524960, 27.568153, 31.122959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759418, 27.889950, 31.161375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216861, -0.041572, -0.975317,
		-0.780639, 0.592510, -0.198830,
		0.586151, 0.804489, 0.096040,
		41.935265, 28.131296, 31.190187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444065, 27.909433, 30.611450>,  <41.524960, 27.568153, 31.122959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444065, 27.909433, 30.611450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799255, 28.057806, 30.720194>,  <42.012371, 28.146830, 30.785440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799255, 28.057806, 30.720194>,  <41.444065, 27.909433, 30.611450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799255, 28.057806, 30.720194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300531, -0.020575, -0.953550,
		-0.348109, 0.928432, -0.129747,
		0.887976, 0.370932, 0.271860,
		42.065647, 28.169086, 30.801752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581692, 28.521973, 30.127270>,  <41.444065, 27.909433, 30.611450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581692, 28.521973, 30.127270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929947, 28.412367, 30.290686>,  <42.138901, 28.346603, 30.388735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929947, 28.412367, 30.290686>,  <41.581692, 28.521973, 30.127270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929947, 28.412367, 30.290686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467571, 0.202905, -0.860353,
		0.152853, 0.940078, 0.304778,
		0.870640, -0.274012, 0.408539,
		42.191139, 28.330164, 30.413248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050114, 29.107500, 29.993677>,  <41.581692, 28.521973, 30.127270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050114, 29.107500, 29.993677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.254704, 28.765627, 30.029257>,  <42.377457, 28.560503, 30.050606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.254704, 28.765627, 30.029257>,  <42.050114, 29.107500, 29.993677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254704, 28.765627, 30.029257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396230, 0.142724, -0.906990,
		0.762493, 0.499147, 0.411650,
		0.511474, -0.854683, 0.088950,
		42.408146, 28.509222, 30.055943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709686, 29.253246, 29.617826>,  <42.050114, 29.107500, 29.993677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709686, 29.253246, 29.617826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.729023, 28.854305, 29.639557>,  <42.740623, 28.614941, 29.652596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.729023, 28.854305, 29.639557>,  <42.709686, 29.253246, 29.617826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729023, 28.854305, 29.639557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340960, -0.034648, -0.939439,
		0.938834, 0.063935, 0.338383,
		0.048339, -0.997352, 0.054328,
		42.743526, 28.555099, 29.655855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317482, 29.108868, 29.215000>,  <42.709686, 29.253246, 29.617826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317482, 29.108868, 29.215000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121845, 28.760853, 29.239742>,  <43.004463, 28.552044, 29.254587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121845, 28.760853, 29.239742>,  <43.317482, 29.108868, 29.215000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121845, 28.760853, 29.239742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293786, -0.231093, -0.927516,
		0.821265, -0.435471, 0.368631,
		-0.489094, -0.870035, 0.061853,
		42.975117, 28.499842, 29.258299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863190, 28.675179, 29.124651>,  <43.317482, 29.108868, 29.215000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863190, 28.675179, 29.124651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.516590, 28.519051, 29.000183>,  <43.308632, 28.425373, 28.925503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.516590, 28.519051, 29.000183>,  <43.863190, 28.675179, 29.124651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516590, 28.519051, 29.000183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416104, -0.220435, -0.882194,
		0.275746, -0.893900, 0.353422,
		-0.866500, -0.390322, -0.311171,
		43.256641, 28.401955, 28.906832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113350, 28.086441, 28.802896>,  <43.863190, 28.675179, 29.124651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113350, 28.086441, 28.802896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.744774, 28.166348, 28.669607>,  <43.523628, 28.214291, 28.589634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.744774, 28.166348, 28.669607>,  <44.113350, 28.086441, 28.802896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744774, 28.166348, 28.669607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242395, -0.374687, -0.894904,
		-0.303623, -0.905375, 0.296831,
		-0.921443, 0.199764, -0.333223,
		43.468342, 28.226278, 28.569639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934551, 27.474602, 28.492809>,  <44.113350, 28.086441, 28.802896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934551, 27.474602, 28.492809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.696365, 27.759420, 28.343996>,  <43.553452, 27.930311, 28.254707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.696365, 27.759420, 28.343996>,  <43.934551, 27.474602, 28.492809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696365, 27.759420, 28.343996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265871, -0.262332, -0.927628,
		-0.758111, -0.651285, -0.033102,
		-0.595467, 0.712046, -0.372035,
		43.517727, 27.973034, 28.232386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633972, 27.150093, 27.983046>,  <43.934551, 27.474602, 28.492809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633972, 27.150093, 27.983046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.583469, 27.535231, 27.887552>,  <43.553169, 27.766314, 27.830257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.583469, 27.535231, 27.887552>,  <43.633972, 27.150093, 27.983046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583469, 27.535231, 27.887552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308972, -0.190520, -0.931793,
		-0.942654, -0.191404, -0.273438,
		-0.126253, 0.962843, -0.238732,
		43.545593, 27.824083, 27.815933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484119, 27.123146, 27.281101>,  <43.633972, 27.150093, 27.983046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484119, 27.123146, 27.281101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.524811, 27.518965, 27.321993>,  <43.549225, 27.756456, 27.346527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.524811, 27.518965, 27.321993>,  <43.484119, 27.123146, 27.281101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524811, 27.518965, 27.321993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022991, 0.105072, -0.994199,
		-0.994546, 0.098791, 0.033440,
		0.101732, 0.989545, 0.102228,
		43.555332, 27.815828, 27.352661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031521, 27.320112, 26.822538>,  <43.484119, 27.123146, 27.281101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031521, 27.320112, 26.822538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.300331, 27.611181, 26.877487>,  <43.461617, 27.785824, 26.910456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.300331, 27.611181, 26.877487>,  <43.031521, 27.320112, 26.822538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300331, 27.611181, 26.877487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202132, -0.001790, -0.979357,
		-0.712407, 0.685920, -0.148290,
		0.672026, 0.727675, 0.137371,
		43.501938, 27.829483, 26.918699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954754, 27.810043, 26.326603>,  <43.031521, 27.320112, 26.822538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954754, 27.810043, 26.326603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335873, 27.863512, 26.435638>,  <43.564545, 27.895594, 26.501060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335873, 27.863512, 26.435638>,  <42.954754, 27.810043, 26.326603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335873, 27.863512, 26.435638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238303, 0.227017, -0.944285,
		-0.188104, 0.964674, 0.184448,
		0.952800, 0.133669, 0.272588,
		43.621712, 27.903612, 26.517414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261749, 28.331139, 25.888279>,  <42.954754, 27.810043, 26.326603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261749, 28.331139, 25.888279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.598866, 28.163645, 26.023550>,  <43.801136, 28.063148, 26.104713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.598866, 28.163645, 26.023550>,  <43.261749, 28.331139, 25.888279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598866, 28.163645, 26.023550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443375, 0.183877, -0.877273,
		0.305163, 0.889297, 0.340627,
		0.842790, -0.418736, 0.338180,
		43.851704, 28.038023, 26.125004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853500, 28.766666, 25.813505>,  <43.261749, 28.331139, 25.888279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853500, 28.766666, 25.813505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.015759, 28.401453, 25.830584>,  <44.113113, 28.182325, 25.840832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.015759, 28.401453, 25.830584>,  <43.853500, 28.766666, 25.813505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015759, 28.401453, 25.830584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352518, 0.113174, -0.928936,
		0.843319, 0.391866, 0.367769,
		0.405641, -0.913035, 0.042698,
		44.137451, 28.127542, 25.843393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524338, 28.895044, 25.626741>,  <43.853500, 28.766666, 25.813505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524338, 28.895044, 25.626741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.453011, 28.504807, 25.575485>,  <44.410213, 28.270664, 25.544731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.453011, 28.504807, 25.575485>,  <44.524338, 28.895044, 25.626741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453011, 28.504807, 25.575485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428797, 0.040167, -0.902507,
		0.885628, -0.215876, 0.411169,
		-0.178314, -0.975594, -0.128140,
		44.399517, 28.212128, 25.537043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127880, 28.757898, 25.234997>,  <44.524338, 28.895044, 25.626741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127880, 28.757898, 25.234997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.875366, 28.449873, 25.198170>,  <44.723858, 28.265057, 25.176073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.875366, 28.449873, 25.198170>,  <45.127880, 28.757898, 25.234997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875366, 28.449873, 25.198170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277403, -0.113348, -0.954044,
		0.724241, -0.627815, 0.285173,
		-0.631287, -0.770065, -0.092067,
		44.685982, 28.218853, 25.170549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516331, 28.215273, 24.865284>,  <45.127880, 28.757898, 25.234997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516331, 28.215273, 24.865284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.129227, 28.128723, 24.813721>,  <44.896965, 28.076794, 24.782784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.129227, 28.128723, 24.813721>,  <45.516331, 28.215273, 24.865284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129227, 28.128723, 24.813721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185404, -0.265606, -0.946086,
		0.170472, -0.939487, 0.297161,
		-0.967763, -0.216375, -0.128906,
		44.838898, 28.063810, 24.775049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518070, 27.437878, 24.690557>,  <45.516331, 28.215273, 24.865284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518070, 27.437878, 24.690557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.178993, 27.618942, 24.579908>,  <44.975548, 27.727581, 24.513519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.178993, 27.618942, 24.579908>,  <45.518070, 27.437878, 24.690557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178993, 27.618942, 24.579908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065310, -0.428426, -0.901214,
		-0.526457, -0.782015, 0.333608,
		-0.847689, 0.452663, -0.276622,
		44.924686, 27.754740, 24.496922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075958, 26.933453, 24.472546>,  <45.518070, 27.437878, 24.690557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075958, 26.933453, 24.472546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.976326, 27.282845, 24.305214>,  <44.916546, 27.492479, 24.204815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.976326, 27.282845, 24.305214>,  <45.075958, 26.933453, 24.472546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976326, 27.282845, 24.305214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186563, -0.380577, -0.905735,
		-0.950345, -0.303641, -0.068166,
		-0.249076, 0.873478, -0.418327,
		44.901604, 27.544888, 24.179716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859287, 26.839655, 23.815847>,  <45.075958, 26.933453, 24.472546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859287, 26.839655, 23.815847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.902321, 27.235338, 23.776062>,  <44.928143, 27.472748, 23.752190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.902321, 27.235338, 23.776062>,  <44.859287, 26.839655, 23.815847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902321, 27.235338, 23.776062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093372, -0.109657, -0.989574,
		-0.989802, 0.097176, -0.104161,
		0.107585, 0.989208, -0.099465,
		44.934597, 27.532101, 23.746222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423847, 27.177734, 23.341009>,  <44.859287, 26.839655, 23.815847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423847, 27.177734, 23.341009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.728653, 27.434969, 23.310612>,  <44.911537, 27.589310, 23.292374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.728653, 27.434969, 23.310612>,  <44.423847, 27.177734, 23.341009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728653, 27.434969, 23.310612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122192, 0.027550, -0.992124,
		-0.635926, 0.765299, 0.099573,
		0.762015, 0.643085, -0.075993,
		44.957256, 27.627895, 23.287813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202606, 27.840714, 23.013111>,  <44.423847, 27.177734, 23.341009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202606, 27.840714, 23.013111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.566750, 27.685392, 22.955891>,  <44.785236, 27.592199, 22.921558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.566750, 27.685392, 22.955891>,  <44.202606, 27.840714, 23.013111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566750, 27.685392, 22.955891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226205, -0.177478, -0.957775,
		0.346519, 0.904280, -0.249405,
		0.910360, -0.388304, -0.143053,
		44.839859, 27.568901, 22.912975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762043, 28.277103, 22.706995>,  <44.202606, 27.840714, 23.013111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762043, 28.277103, 22.706995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.753387, 27.903996, 22.563065>,  <44.748196, 27.680130, 22.476707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.753387, 27.903996, 22.563065>,  <44.762043, 28.277103, 22.706995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753387, 27.903996, 22.563065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444113, 0.331416, -0.832422,
		0.895710, 0.141792, -0.421425,
		-0.021637, -0.932769, -0.359824,
		44.746895, 27.624165, 22.455116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790863, 28.858210, 22.958113>,  <44.762043, 28.277103, 22.706995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790863, 28.858210, 22.958113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.686462, 29.113190, 22.668137>,  <44.623821, 29.266178, 22.494150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.686462, 29.113190, 22.668137>,  <44.790863, 28.858210, 22.958113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686462, 29.113190, 22.668137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605267, 0.476958, 0.637309,
		0.752019, 0.605119, 0.261342,
		-0.260998, 0.637450, -0.724940,
		44.608162, 29.304424, 22.450655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803188, 29.576122, 23.255911>,  <44.790863, 28.858210, 22.958113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803188, 29.576122, 23.255911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.561333, 29.578617, 22.937321>,  <44.416218, 29.580114, 22.746166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.561333, 29.578617, 22.937321>,  <44.803188, 29.576122, 23.255911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561333, 29.578617, 22.937321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750107, 0.331830, 0.572039,
		0.267861, 0.943319, -0.195960,
		-0.604641, 0.006237, -0.796474,
		44.379940, 29.580488, 22.698378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495060, 30.272127, 23.149626>,  <44.803188, 29.576122, 23.255911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495060, 30.272127, 23.149626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.261959, 29.990288, 22.987669>,  <44.122097, 29.821184, 22.890495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.261959, 29.990288, 22.987669>,  <44.495060, 30.272127, 23.149626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261959, 29.990288, 22.987669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761482, 0.299459, 0.574864,
		-0.283800, 0.643323, -0.711051,
		-0.582754, -0.704599, -0.404893,
		44.087132, 29.778908, 22.866201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872818, 30.538353, 22.748100>,  <44.495060, 30.272127, 23.149626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872818, 30.538353, 22.748100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.803333, 30.177296, 22.905609>,  <43.761642, 29.960661, 23.000114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.803333, 30.177296, 22.905609>,  <43.872818, 30.538353, 22.748100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803333, 30.177296, 22.905609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677760, 0.399672, 0.617174,
		-0.714469, -0.159673, -0.681204,
		-0.173711, -0.902645, 0.393773,
		43.751221, 29.906502, 23.023741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274208, 30.710619, 23.022610>,  <43.872818, 30.538353, 22.748100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274208, 30.710619, 23.022610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366001, 30.349623, 23.168402>,  <43.421078, 30.133024, 23.255877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366001, 30.349623, 23.168402>,  <43.274208, 30.710619, 23.022610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366001, 30.349623, 23.168402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717255, 0.096330, 0.690120,
		-0.657937, -0.419798, -0.625211,
		0.229485, -0.902491, 0.364481,
		43.434845, 30.078875, 23.277746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591785, 30.486618, 23.263166>,  <43.274208, 30.710619, 23.022610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591785, 30.486618, 23.263166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.851624, 30.256311, 23.461767>,  <43.007526, 30.118128, 23.580927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.851624, 30.256311, 23.461767>,  <42.591785, 30.486618, 23.263166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851624, 30.256311, 23.461767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621001, -0.025078, 0.783409,
		-0.438611, -0.817228, -0.373843,
		0.649599, -0.575768, 0.496500,
		43.046505, 30.083580, 23.610718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134556, 30.044512, 23.642000>,  <42.591785, 30.486618, 23.263166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134556, 30.044512, 23.642000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.492737, 30.020576, 23.818447>,  <42.707645, 30.006216, 23.924314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.492737, 30.020576, 23.818447>,  <42.134556, 30.044512, 23.642000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492737, 30.020576, 23.818447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444288, -0.058285, 0.893986,
		-0.027775, -0.996506, -0.078773,
		0.895453, -0.059828, 0.441117,
		42.761372, 30.002625, 23.950783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126846, 29.454393, 24.054918>,  <42.134556, 30.044512, 23.642000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126846, 29.454393, 24.054918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.407825, 29.674507, 24.235477>,  <42.576412, 29.806576, 24.343813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.407825, 29.674507, 24.235477>,  <42.126846, 29.454393, 24.054918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407825, 29.674507, 24.235477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422702, -0.187703, 0.886617,
		0.572622, -0.813605, 0.100756,
		0.702444, 0.550286, 0.451396,
		42.618557, 29.839592, 24.370895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228565, 29.142616, 24.646900>,  <42.126846, 29.454393, 24.054918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228565, 29.142616, 24.646900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.388927, 29.503183, 24.712282>,  <42.485146, 29.719524, 24.751511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.388927, 29.503183, 24.712282>,  <42.228565, 29.142616, 24.646900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388927, 29.503183, 24.712282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267611, -0.055408, 0.961933,
		0.876162, -0.429386, 0.219017,
		0.400905, 0.901420, 0.163455,
		42.509197, 29.773609, 24.761318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458824, 29.044861, 25.221472>,  <42.228565, 29.142616, 24.646900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458824, 29.044861, 25.221472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.504787, 29.442162, 25.215204>,  <42.532364, 29.680542, 25.211443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.504787, 29.442162, 25.215204>,  <42.458824, 29.044861, 25.221472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504787, 29.442162, 25.215204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126720, 0.030301, 0.991476,
		0.985261, -0.111942, 0.129347,
		0.114907, 0.993253, -0.015669,
		42.539261, 29.740137, 25.210503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984108, 29.281366, 25.632687>,  <42.458824, 29.044861, 25.221472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984108, 29.281366, 25.632687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.774612, 29.621267, 25.608622>,  <42.648914, 29.825207, 25.594183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.774612, 29.621267, 25.608622>,  <42.984108, 29.281366, 25.632687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774612, 29.621267, 25.608622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214292, -0.063067, 0.974732,
		0.824485, 0.523398, 0.215126,
		-0.523740, 0.849751, -0.060162,
		42.617489, 29.876192, 25.590572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123943, 29.530510, 26.308205>,  <42.984108, 29.281366, 25.632687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123943, 29.530510, 26.308205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.816994, 29.740875, 26.161478>,  <42.632824, 29.867094, 26.073442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.816994, 29.740875, 26.161478>,  <43.123943, 29.530510, 26.308205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816994, 29.740875, 26.161478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405006, 0.045959, 0.913159,
		0.497100, 0.849296, 0.177730,
		-0.767374, 0.525912, -0.366816,
		42.586781, 29.898649, 26.051434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134060, 30.052149, 26.782583>,  <43.123943, 29.530510, 26.308205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134060, 30.052149, 26.782583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.772675, 30.006285, 26.617363>,  <42.555843, 29.978765, 26.518230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.772675, 30.006285, 26.617363>,  <43.134060, 30.052149, 26.782583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772675, 30.006285, 26.617363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428056, 0.189692, 0.883620,
		-0.022963, 0.975125, -0.220460,
		-0.903461, -0.114660, -0.413052,
		42.501637, 29.971888, 26.493448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692028, 30.485733, 27.193298>,  <43.134060, 30.052149, 26.782583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692028, 30.485733, 27.193298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422985, 30.256285, 27.006296>,  <42.261559, 30.118616, 26.894094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422985, 30.256285, 27.006296>,  <42.692028, 30.485733, 27.193298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422985, 30.256285, 27.006296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523918, -0.077023, 0.848279,
		-0.522597, 0.815493, -0.248723,
		-0.672608, -0.573618, -0.467504,
		42.221203, 30.084200, 26.866045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043774, 30.770372, 27.311930>,  <42.692028, 30.485733, 27.193298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043774, 30.770372, 27.311930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.961567, 30.387949, 27.228298>,  <41.912243, 30.158495, 27.178120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.961567, 30.387949, 27.228298>,  <42.043774, 30.770372, 27.311930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961567, 30.387949, 27.228298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568624, -0.057225, 0.820605,
		-0.796511, 0.287533, -0.531878,
		-0.205514, -0.956060, -0.209078,
		41.899914, 30.101131, 27.165575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293930, 30.696560, 27.387218>,  <42.043774, 30.770372, 27.311930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293930, 30.696560, 27.387218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.465714, 30.338306, 27.433521>,  <41.568783, 30.123354, 27.461304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.465714, 30.338306, 27.433521>,  <41.293930, 30.696560, 27.387218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465714, 30.338306, 27.433521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567301, -0.167823, 0.806229,
		-0.702660, -0.411914, -0.580169,
		0.429463, -0.895635, 0.115757,
		41.594551, 30.069616, 27.468248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787334, 30.222198, 27.356079>,  <41.293930, 30.696560, 27.387218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787334, 30.222198, 27.356079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081944, 30.039116, 27.555290>,  <41.258709, 29.929266, 27.674816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081944, 30.039116, 27.555290>,  <40.787334, 30.222198, 27.356079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081944, 30.039116, 27.555290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509955, 0.107974, 0.853397,
		-0.444381, -0.882522, -0.153885,
		0.736526, -0.457708, 0.498028,
		41.302902, 29.901804, 27.704699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460819, 29.937693, 27.921608>,  <40.787334, 30.222198, 27.356079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460819, 29.937693, 27.921608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.842674, 29.896509, 28.033371>,  <41.071789, 29.871799, 28.100428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.842674, 29.896509, 28.033371>,  <40.460819, 29.937693, 27.921608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842674, 29.896509, 28.033371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271218, 0.086688, 0.958606,
		-0.122920, -0.990901, 0.054831,
		0.954637, -0.102960, 0.279406,
		41.129066, 29.865622, 28.117193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460449, 29.344006, 28.325758>,  <40.460819, 29.937693, 27.921608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460449, 29.344006, 28.325758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767673, 29.577803, 28.430408>,  <40.952007, 29.718081, 28.493198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767673, 29.577803, 28.430408>,  <40.460449, 29.344006, 28.325758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767673, 29.577803, 28.430408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329762, 0.010785, 0.944002,
		0.548942, -0.811327, 0.201028,
		0.768062, 0.584494, 0.261625,
		40.998093, 29.753151, 28.508896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584797, 29.137259, 28.912889>,  <40.460449, 29.344006, 28.325758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584797, 29.137259, 28.912889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.772713, 29.490335, 28.907879>,  <40.885460, 29.702181, 28.904873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.772713, 29.490335, 28.907879>,  <40.584797, 29.137259, 28.912889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772713, 29.490335, 28.907879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404268, 0.227733, 0.885836,
		0.784773, -0.411088, 0.463829,
		0.469786, 0.882692, -0.012529,
		40.913647, 29.755142, 28.904119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.148033, 28.534801, 34.424816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884235, 28.756157, 34.221313>,  <41.725956, 28.888969, 34.099213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884235, 28.756157, 34.221313>,  <42.148033, 28.534801, 34.424816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884235, 28.756157, 34.221313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167462, 0.551633, 0.817103,
		0.732822, 0.624070, -0.271125,
		-0.659491, 0.553388, -0.508757,
		41.686390, 28.922173, 34.068687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391182, 29.171125, 34.621941>,  <42.148033, 28.534801, 34.424816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391182, 29.171125, 34.621941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.011589, 29.194284, 34.497959>,  <41.783833, 29.208179, 34.423569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.011589, 29.194284, 34.497959>,  <42.391182, 29.171125, 34.621941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011589, 29.194284, 34.497959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185167, 0.693322, 0.696433,
		0.255223, 0.718299, -0.647231,
		-0.948986, 0.057900, -0.309957,
		41.726894, 29.211655, 34.404972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346062, 29.807440, 34.653706>,  <42.391182, 29.171125, 34.621941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346062, 29.807440, 34.653706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970268, 29.671186, 34.639088>,  <41.744793, 29.589434, 34.630318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970268, 29.671186, 34.639088>,  <42.346062, 29.807440, 34.653706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970268, 29.671186, 34.639088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266828, 0.660652, 0.701670,
		-0.214872, 0.668959, -0.711564,
		-0.939485, -0.340635, -0.036542,
		41.688423, 29.568996, 34.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880985, 30.349430, 34.524040>,  <42.346062, 29.807440, 34.653706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880985, 30.349430, 34.524040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638607, 30.089218, 34.707188>,  <41.493179, 29.933090, 34.817078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638607, 30.089218, 34.707188>,  <41.880985, 30.349430, 34.524040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638607, 30.089218, 34.707188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348345, 0.734430, 0.582467,
		-0.715185, 0.193446, -0.671632,
		-0.605943, -0.650532, 0.457867,
		41.456825, 29.894058, 34.844547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431961, 30.739666, 34.755424>,  <41.880985, 30.349430, 34.524040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431961, 30.739666, 34.755424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330013, 30.414762, 34.965294>,  <41.268845, 30.219820, 35.091213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330013, 30.414762, 34.965294>,  <41.431961, 30.739666, 34.755424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330013, 30.414762, 34.965294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495065, 0.575693, 0.650760,
		-0.830633, -0.093885, -0.548848,
		-0.254871, -0.812258, 0.524669,
		41.253551, 30.171085, 35.122696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732910, 30.690256, 34.740513>,  <41.431961, 30.739666, 34.755424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732910, 30.690256, 34.740513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849220, 30.472584, 35.055298>,  <40.919006, 30.341980, 35.244171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849220, 30.472584, 35.055298>,  <40.732910, 30.690256, 34.740513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849220, 30.472584, 35.055298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599636, 0.537290, 0.593091,
		-0.745579, -0.644348, -0.170082,
		0.290773, -0.544183, 0.786966,
		40.936451, 30.309328, 35.291389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109337, 30.547012, 35.080128>,  <40.732910, 30.690256, 34.740513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109337, 30.547012, 35.080128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395649, 30.461559, 35.346066>,  <40.567436, 30.410288, 35.505627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395649, 30.461559, 35.346066>,  <40.109337, 30.547012, 35.080128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395649, 30.461559, 35.346066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513986, 0.483329, 0.708669,
		-0.472735, -0.848972, 0.236153,
		0.715780, -0.213633, 0.664846,
		40.610382, 30.397470, 35.545521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776718, 30.352621, 35.611347>,  <40.109337, 30.547012, 35.080128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776718, 30.352621, 35.611347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125481, 30.476482, 35.763084>,  <40.334736, 30.550800, 35.854126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125481, 30.476482, 35.763084>,  <39.776718, 30.352621, 35.611347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125481, 30.476482, 35.763084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488080, 0.486978, 0.724314,
		0.039556, -0.816680, 0.575733,
		0.871902, 0.309655, 0.379342,
		40.387051, 30.569380, 35.876888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638550, 30.333742, 36.371750>,  <39.776718, 30.352621, 35.611347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638550, 30.333742, 36.371750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962597, 30.564487, 36.329926>,  <40.157024, 30.702934, 36.304829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962597, 30.564487, 36.329926>,  <39.638550, 30.333742, 36.371750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962597, 30.564487, 36.329926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345476, 0.613836, 0.709825,
		0.473657, -0.538920, 0.696573,
		0.810120, 0.576863, -0.104564,
		40.205631, 30.737547, 36.298557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851116, 30.476248, 37.073357>,  <39.638550, 30.333742, 36.371750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851116, 30.476248, 37.073357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.027763, 30.748079, 36.839043>,  <40.133751, 30.911179, 36.698456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.027763, 30.748079, 36.839043>,  <39.851116, 30.476248, 37.073357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027763, 30.748079, 36.839043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356941, 0.732086, 0.580210,
		0.823144, -0.047142, 0.565873,
		0.441619, 0.679579, -0.585785,
		40.160248, 30.951954, 36.663307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271530, 30.706680, 37.514233>,  <39.851116, 30.476248, 37.073357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271530, 30.706680, 37.514233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.227093, 30.991888, 37.237316>,  <40.200428, 31.163013, 37.071167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.227093, 30.991888, 37.237316>,  <40.271530, 30.706680, 37.514233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227093, 30.991888, 37.237316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202590, 0.665723, 0.718171,
		0.972941, 0.220038, 0.070490,
		-0.111098, 0.713019, -0.692287,
		40.193764, 31.205793, 37.029629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696236, 31.223989, 37.697899>,  <40.271530, 30.706680, 37.514233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696236, 31.223989, 37.697899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427822, 31.384359, 37.448429>,  <40.266773, 31.480581, 37.298748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427822, 31.384359, 37.448429>,  <40.696236, 31.223989, 37.697899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427822, 31.384359, 37.448429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233559, 0.684048, 0.691034,
		0.703676, 0.609374, -0.365381,
		-0.671036, 0.400926, -0.623673,
		40.226513, 31.504637, 37.261326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704571, 31.900309, 37.797745>,  <40.696236, 31.223989, 37.697899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704571, 31.900309, 37.797745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357994, 31.869909, 37.600361>,  <40.150047, 31.851669, 37.481930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357994, 31.869909, 37.600361>,  <40.704571, 31.900309, 37.797745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357994, 31.869909, 37.600361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400656, 0.695567, 0.596373,
		0.297907, 0.714430, -0.633120,
		-0.866445, -0.075999, -0.493455,
		40.098061, 31.847109, 37.452324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427464, 32.538052, 37.689720>,  <40.704571, 31.900309, 37.797745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427464, 32.538052, 37.689720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110619, 32.295376, 37.716515>,  <39.920513, 32.149769, 37.732594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110619, 32.295376, 37.716515>,  <40.427464, 32.538052, 37.689720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110619, 32.295376, 37.716515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423264, 0.625044, 0.655872,
		-0.439781, 0.491170, -0.751894,
		-0.792111, -0.606690, 0.066988,
		39.872986, 32.113369, 37.736610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041058, 32.597363, 38.006451>,  <40.427464, 32.538052, 37.689720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041058, 32.597363, 38.006451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431210, 32.660156, 37.944500>,  <41.665302, 32.697834, 37.907330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431210, 32.660156, 37.944500>,  <41.041058, 32.597363, 38.006451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431210, 32.660156, 37.944500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211807, 0.862438, -0.459716,
		0.061406, 0.481203, 0.874455,
		0.975380, 0.156986, -0.154881,
		41.723824, 32.707253, 37.898037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124866, 33.362827, 38.081696>,  <41.041058, 32.597363, 38.006451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124866, 33.362827, 38.081696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.417362, 33.214466, 37.852707>,  <41.592861, 33.125450, 37.715313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.417362, 33.214466, 37.852707>,  <41.124866, 33.362827, 38.081696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417362, 33.214466, 37.852707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032235, 0.857102, -0.514138,
		0.681359, 0.357504, 0.638702,
		0.731239, -0.370901, -0.572470,
		41.636734, 33.103195, 37.680965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624355, 33.900822, 37.919495>,  <41.124866, 33.362827, 38.081696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624355, 33.900822, 37.919495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701233, 33.632866, 37.632633>,  <41.747360, 33.472092, 37.460518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701233, 33.632866, 37.632633>,  <41.624355, 33.900822, 37.919495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701233, 33.632866, 37.632633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173643, 0.742458, -0.646996,
		0.965872, -0.000176, 0.259022,
		0.192199, -0.669892, -0.717150,
		41.758892, 33.431900, 37.417488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234634, 34.191818, 37.613758>,  <41.624355, 33.900822, 37.919495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234634, 34.191818, 37.613758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074673, 33.925514, 37.361778>,  <41.978695, 33.765732, 37.210590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074673, 33.925514, 37.361778>,  <42.234634, 34.191818, 37.613758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074673, 33.925514, 37.361778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211310, 0.601816, -0.770172,
		0.891867, -0.441108, -0.099985,
		-0.399902, -0.665763, -0.629950,
		41.954700, 33.725784, 37.172794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721199, 34.023621, 37.075680>,  <42.234634, 34.191818, 37.613758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721199, 34.023621, 37.075680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354652, 33.962646, 36.927608>,  <42.134724, 33.926060, 36.838764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354652, 33.962646, 36.927608>,  <42.721199, 34.023621, 37.075680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354652, 33.962646, 36.927608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240984, 0.528337, -0.814118,
		0.319682, -0.835238, -0.447415,
		-0.916368, -0.152439, -0.370178,
		42.079742, 33.916916, 36.816555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897491, 33.782993, 36.470562>,  <42.721199, 34.023621, 37.075680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897491, 33.782993, 36.470562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510021, 33.871830, 36.426140>,  <42.277538, 33.925133, 36.399487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510021, 33.871830, 36.426140>,  <42.897491, 33.782993, 36.470562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510021, 33.871830, 36.426140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163478, 0.233778, -0.958448,
		-0.186905, -0.946584, -0.262764,
		-0.968680, 0.222094, -0.111052,
		42.219418, 33.938457, 36.392826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586212, 33.400688, 35.898617>,  <42.897491, 33.782993, 36.470562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586212, 33.400688, 35.898617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343349, 33.715946, 35.939011>,  <42.197632, 33.905102, 35.963245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343349, 33.715946, 35.939011>,  <42.586212, 33.400688, 35.898617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343349, 33.715946, 35.939011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004221, 0.123885, -0.992288,
		-0.794573, -0.602898, -0.071890,
		-0.607154, 0.788141, 0.100981,
		42.161201, 33.952389, 35.969303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308350, 33.408173, 35.289753>,  <42.586212, 33.400688, 35.898617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308350, 33.408173, 35.289753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.214394, 33.774765, 35.419296>,  <42.158020, 33.994720, 35.497021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.214394, 33.774765, 35.419296>,  <42.308350, 33.408173, 35.289753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214394, 33.774765, 35.419296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112307, 0.356534, -0.927508,
		-0.965513, -0.181489, -0.186673,
		-0.234888, 0.916485, 0.323855,
		42.143929, 34.049709, 35.516453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963974, 33.541573, 34.779427>,  <42.308350, 33.408173, 35.289753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963974, 33.541573, 34.779427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032246, 33.898235, 34.947147>,  <42.073208, 34.112232, 35.047779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032246, 33.898235, 34.947147>,  <41.963974, 33.541573, 34.779427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032246, 33.898235, 34.947147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252331, 0.371805, -0.893359,
		-0.952469, 0.258283, -0.161533,
		0.170680, 0.891656, 0.419306,
		42.083450, 34.165733, 35.072941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351566, 34.006325, 34.496029>,  <41.963974, 33.541573, 34.779427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351566, 34.006325, 34.496029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675472, 34.215927, 34.601635>,  <41.869816, 34.341686, 34.664997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675472, 34.215927, 34.601635>,  <41.351566, 34.006325, 34.496029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675472, 34.215927, 34.601635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024502, 0.479757, -0.877059,
		-0.586244, 0.703742, 0.401329,
		0.809764, 0.524004, 0.264012,
		41.918400, 34.373127, 34.680840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263233, 34.634979, 34.197323>,  <41.351566, 34.006325, 34.496029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263233, 34.634979, 34.197323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.656567, 34.625771, 34.269463>,  <41.892567, 34.620243, 34.312744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.656567, 34.625771, 34.269463>,  <41.263233, 34.634979, 34.197323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656567, 34.625771, 34.269463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172376, 0.433474, -0.884526,
		-0.057809, 0.900872, 0.430218,
		0.983333, -0.023026, 0.180347,
		41.951565, 34.618862, 34.323566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525364, 35.276646, 34.138435>,  <41.263233, 34.634979, 34.197323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525364, 35.276646, 34.138435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863335, 35.069595, 34.084534>,  <42.066116, 34.945366, 34.052193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863335, 35.069595, 34.084534>,  <41.525364, 35.276646, 34.138435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863335, 35.069595, 34.084534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220035, 0.565998, -0.794501,
		0.487525, 0.641645, 0.592124,
		0.844928, -0.517627, -0.134754,
		42.116814, 34.914307, 34.044109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060806, 35.766541, 33.920139>,  <41.525364, 35.276646, 34.138435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060806, 35.766541, 33.920139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189301, 35.415462, 33.777893>,  <42.266399, 35.204815, 33.692547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189301, 35.415462, 33.777893>,  <42.060806, 35.766541, 33.920139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189301, 35.415462, 33.777893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065743, 0.395278, -0.916206,
		0.944713, 0.270943, 0.184682,
		0.321240, -0.877693, -0.355611,
		42.285671, 35.152153, 33.671211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323826, 35.946648, 33.174805>,  <42.060806, 35.766541, 33.920139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323826, 35.946648, 33.174805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292812, 35.548656, 33.200104>,  <42.274204, 35.309860, 33.215282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292812, 35.548656, 33.200104>,  <42.323826, 35.946648, 33.174805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292812, 35.548656, 33.200104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040445, -0.066529, -0.996965,
		0.996169, -0.074740, 0.045400,
		-0.077533, -0.994981, 0.063251,
		42.269554, 35.250160, 33.219078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512398, 36.686356, 33.270325>,  <42.323826, 35.946648, 33.174805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512398, 36.686356, 33.270325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393684, 36.964741, 33.008774>,  <42.322456, 37.131771, 32.851845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393684, 36.964741, 33.008774>,  <42.512398, 36.686356, 33.270325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393684, 36.964741, 33.008774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735608, 0.270010, 0.621269,
		0.608934, 0.665379, 0.431821,
		-0.296784, 0.695963, -0.653877,
		42.304649, 37.173531, 32.812611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375580, 37.239918, 33.672771>,  <42.512398, 36.686356, 33.270325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375580, 37.239918, 33.672771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169735, 37.281498, 33.332333>,  <42.046227, 37.306446, 33.128071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169735, 37.281498, 33.332333>,  <42.375580, 37.239918, 33.672771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169735, 37.281498, 33.332333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816893, 0.242130, 0.523506,
		0.260495, 0.964659, -0.039686,
		-0.514614, 0.103951, -0.851097,
		42.015350, 37.312683, 33.077003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992607, 37.891083, 33.709911>,  <42.375580, 37.239918, 33.672771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992607, 37.891083, 33.709911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789265, 37.698612, 33.424244>,  <41.667259, 37.583130, 33.252842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789265, 37.698612, 33.424244>,  <41.992607, 37.891083, 33.709911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789265, 37.698612, 33.424244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860938, 0.302157, 0.409251,
		0.018871, 0.822905, -0.567866,
		-0.508359, -0.481175, -0.714172,
		41.636757, 37.554260, 33.209991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483852, 38.290413, 33.544704>,  <41.992607, 37.891083, 33.709911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483852, 38.290413, 33.544704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371159, 37.927750, 33.419106>,  <41.303543, 37.710152, 33.343746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371159, 37.927750, 33.419106>,  <41.483852, 38.290413, 33.544704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371159, 37.927750, 33.419106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942694, 0.200587, 0.266633,
		-0.178762, 0.371123, -0.911215,
		-0.281731, -0.906660, -0.313998,
		41.286640, 37.655750, 33.324905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898296, 38.425785, 33.051785>,  <41.483852, 38.290413, 33.544704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898296, 38.425785, 33.051785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884438, 38.058220, 33.208954>,  <40.876122, 37.837681, 33.303257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884438, 38.058220, 33.208954>,  <40.898296, 38.425785, 33.051785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884438, 38.058220, 33.208954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885844, 0.210258, 0.413608,
		-0.462687, -0.333742, -0.821302,
		-0.034647, -0.918917, 0.392927,
		40.874043, 37.782543, 33.326832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258892, 38.162540, 32.907101>,  <40.898296, 38.425785, 33.051785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258892, 38.162540, 32.907101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387833, 37.908920, 33.188259>,  <40.465195, 37.756748, 33.356956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387833, 37.908920, 33.188259>,  <40.258892, 38.162540, 32.907101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387833, 37.908920, 33.188259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828827, 0.169677, 0.533156,
		-0.457316, -0.754444, -0.470826,
		0.322348, -0.634054, 0.702899,
		40.484535, 37.718704, 33.399128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846748, 37.673130, 32.996288>,  <40.258892, 38.162540, 32.907101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846748, 37.673130, 32.996288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019299, 37.696083, 33.356426>,  <40.122829, 37.709854, 33.572510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019299, 37.696083, 33.356426>,  <39.846748, 37.673130, 32.996288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019299, 37.696083, 33.356426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901958, 0.049277, 0.429003,
		-0.019756, -0.997136, 0.073001,
		0.431372, 0.057368, 0.900349,
		40.148708, 37.713299, 33.626530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342472, 37.404640, 33.340282>,  <39.846748, 37.673130, 32.996288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342472, 37.404640, 33.340282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590622, 37.555283, 33.615471>,  <39.739513, 37.645668, 33.780582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590622, 37.555283, 33.615471>,  <39.342472, 37.404640, 33.340282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590622, 37.555283, 33.615471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767405, 0.110360, 0.631593,
		0.161938, -0.919776, 0.357474,
		0.620375, 0.376607, 0.687970,
		39.776733, 37.668262, 33.821861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171391, 37.093197, 34.008648>,  <39.342472, 37.404640, 33.340282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171391, 37.093197, 34.008648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406567, 37.384933, 34.148590>,  <39.547672, 37.559975, 34.232555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406567, 37.384933, 34.148590>,  <39.171391, 37.093197, 34.008648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406567, 37.384933, 34.148590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611747, 0.117930, 0.782214,
		0.529240, -0.673914, 0.515506,
		0.587938, 0.729338, 0.349851,
		39.582947, 37.603733, 34.253544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193863, 37.028473, 34.671886>,  <39.171391, 37.093197, 34.008648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193863, 37.028473, 34.671886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.295620, 37.411030, 34.614475>,  <39.356674, 37.640564, 34.580029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.295620, 37.411030, 34.614475>,  <39.193863, 37.028473, 34.671886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295620, 37.411030, 34.614475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541412, 0.263818, 0.798294,
		0.801346, -0.125373, 0.584915,
		0.254396, 0.956390, -0.143531,
		39.371941, 37.697948, 34.571415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392200, 37.446449, 35.345657>,  <39.193863, 37.028473, 34.671886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392200, 37.446449, 35.345657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269699, 37.728313, 35.089638>,  <39.196198, 37.897434, 34.936028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269699, 37.728313, 35.089638>,  <39.392200, 37.446449, 35.345657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269699, 37.728313, 35.089638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563470, 0.407732, 0.718510,
		0.767275, 0.580692, 0.272188,
		-0.306253, 0.704665, -0.640044,
		39.177822, 37.939713, 34.897625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381966, 37.990448, 35.757931>,  <39.392200, 37.446449, 35.345657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381966, 37.990448, 35.757931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128441, 38.076809, 35.460831>,  <38.976326, 38.128624, 35.282570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128441, 38.076809, 35.460831>,  <39.381966, 37.990448, 35.757931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128441, 38.076809, 35.460831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678370, 0.306196, 0.667876,
		0.371621, 0.927163, -0.047609,
		-0.633808, 0.215900, -0.742748,
		38.938297, 38.141579, 35.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.883293, 36.106400, 29.937651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510124, 36.163063, 29.805233>,  <44.286224, 36.197060, 29.725782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510124, 36.163063, 29.805233>,  <44.883293, 36.106400, 29.937651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510124, 36.163063, 29.805233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244823, 0.424627, 0.871639,
		0.264044, 0.894218, -0.361462,
		-0.932921, 0.141657, -0.331045,
		44.230247, 36.205559, 29.705919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645126, 36.875721, 30.128195>,  <44.883293, 36.106400, 29.937651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645126, 36.875721, 30.128195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310764, 36.677483, 30.033831>,  <44.110149, 36.558540, 29.977213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310764, 36.677483, 30.033831>,  <44.645126, 36.875721, 30.128195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310764, 36.677483, 30.033831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468281, 0.419714, 0.777530,
		-0.286326, 0.760411, -0.582918,
		-0.835901, -0.495596, -0.235911,
		44.059994, 36.528805, 29.963057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134594, 37.342365, 30.057636>,  <44.645126, 36.875721, 30.128195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134594, 37.342365, 30.057636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931904, 37.007328, 30.139294>,  <43.810291, 36.806305, 30.188288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931904, 37.007328, 30.139294>,  <44.134594, 37.342365, 30.057636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931904, 37.007328, 30.139294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489678, 0.474520, 0.731468,
		-0.709540, 0.270688, -0.650600,
		-0.506722, -0.837591, 0.204142,
		43.779888, 36.756050, 30.200537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437054, 37.565845, 30.191742>,  <44.134594, 37.342365, 30.057636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437054, 37.565845, 30.191742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448402, 37.191689, 30.332731>,  <43.455212, 36.967194, 30.417324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448402, 37.191689, 30.332731>,  <43.437054, 37.565845, 30.191742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448402, 37.191689, 30.332731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545962, 0.280873, 0.789326,
		-0.837330, -0.214829, -0.502720,
		0.028369, -0.935392, 0.352472,
		43.456913, 36.911072, 30.438473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765263, 37.287628, 30.264572>,  <43.437054, 37.565845, 30.191742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765263, 37.287628, 30.264572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996620, 37.081547, 30.517561>,  <43.135437, 36.957897, 30.669355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996620, 37.081547, 30.517561>,  <42.765263, 37.287628, 30.264572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996620, 37.081547, 30.517561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672656, 0.137420, 0.727083,
		-0.461509, -0.845980, -0.267071,
		0.578397, -0.515202, 0.632473,
		43.170139, 36.926987, 30.707304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313969, 36.822533, 30.642639>,  <42.765263, 37.287628, 30.264572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313969, 36.822533, 30.642639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633610, 36.848232, 30.881742>,  <42.825394, 36.863651, 31.025204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633610, 36.848232, 30.881742>,  <42.313969, 36.822533, 30.642639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633610, 36.848232, 30.881742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598818, -0.003369, 0.800878,
		0.053475, -0.997928, 0.035786,
		0.799098, 0.064257, 0.597757,
		42.873341, 36.867508, 31.061069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227741, 36.386501, 31.215141>,  <42.313969, 36.822533, 30.642639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227741, 36.386501, 31.215141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507771, 36.627697, 31.368141>,  <42.675789, 36.772415, 31.459940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507771, 36.627697, 31.368141>,  <42.227741, 36.386501, 31.215141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507771, 36.627697, 31.368141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411203, -0.097501, 0.906314,
		0.583793, -0.791768, 0.179694,
		0.700070, 0.602991, 0.382498,
		42.717793, 36.808594, 31.482891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442749, 36.128876, 31.921989>,  <42.227741, 36.386501, 31.215141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442749, 36.128876, 31.921989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563530, 36.510170, 31.927120>,  <42.635998, 36.738945, 31.930199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563530, 36.510170, 31.927120>,  <42.442749, 36.128876, 31.921989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563530, 36.510170, 31.927120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470665, 0.137362, 0.871553,
		0.829035, -0.269204, 0.490132,
		0.301951, 0.953237, 0.012827,
		42.654114, 36.796143, 31.930967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557041, 36.273811, 32.570213>,  <42.442749, 36.128876, 31.921989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557041, 36.273811, 32.570213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506771, 36.647835, 32.437622>,  <42.476608, 36.872250, 32.358067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506771, 36.647835, 32.437622>,  <42.557041, 36.273811, 32.570213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506771, 36.647835, 32.437622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641905, 0.178122, 0.745809,
		0.756416, 0.306506, 0.577831,
		-0.125671, 0.935054, -0.331482,
		42.469070, 36.928352, 32.338177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953575, 35.685619, 32.777149>,  <42.557041, 36.273811, 32.570213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953575, 35.685619, 32.777149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666336, 35.408619, 32.804802>,  <42.493992, 35.242420, 32.821392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666336, 35.408619, 32.804802>,  <42.953575, 35.685619, 32.777149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666336, 35.408619, 32.804802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079760, -0.180575, -0.980322,
		0.691354, -0.698456, 0.184905,
		-0.718100, -0.692497, 0.069133,
		42.450905, 35.200871, 32.825542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064899, 35.295830, 32.289558>,  <42.953575, 35.685619, 32.777149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064899, 35.295830, 32.289558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703205, 35.146042, 32.371666>,  <42.486191, 35.056168, 32.420933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703205, 35.146042, 32.371666>,  <43.064899, 35.295830, 32.289558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703205, 35.146042, 32.371666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050375, -0.383791, -0.922045,
		0.424062, -0.844082, 0.328172,
		-0.904231, -0.374472, 0.205271,
		42.431934, 35.033699, 32.433247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097816, 34.728870, 31.984625>,  <43.064899, 35.295830, 32.289558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097816, 34.728870, 31.984625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702457, 34.781677, 32.014671>,  <42.465240, 34.813362, 32.032700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702457, 34.781677, 32.014671>,  <43.097816, 34.728870, 31.984625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702457, 34.781677, 32.014671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123569, -0.411304, -0.903084,
		-0.088330, -0.901887, 0.422845,
		-0.988397, 0.132020, 0.075114,
		42.405937, 34.821281, 32.037205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798397, 34.070496, 32.034939>,  <43.097816, 34.728870, 31.984625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798397, 34.070496, 32.034939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528847, 34.323914, 31.882879>,  <42.367115, 34.475964, 31.791645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528847, 34.323914, 31.882879>,  <42.798397, 34.070496, 32.034939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528847, 34.323914, 31.882879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020836, -0.498012, -0.866920,
		-0.738552, -0.592116, 0.322397,
		-0.673874, 0.633548, -0.380145,
		42.326683, 34.513977, 31.768835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468357, 33.663574, 31.682205>,  <42.798397, 34.070496, 32.034939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468357, 33.663574, 31.682205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334873, 34.011227, 31.536194>,  <42.254784, 34.219818, 31.448587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334873, 34.011227, 31.536194>,  <42.468357, 33.663574, 31.682205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334873, 34.011227, 31.536194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188963, -0.441039, -0.877369,
		-0.923542, -0.223813, 0.311414,
		-0.333712, 0.869133, -0.365026,
		42.234760, 34.271965, 31.426685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860394, 33.568974, 31.420839>,  <42.468357, 33.663574, 31.682205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860394, 33.568974, 31.420839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949982, 33.905750, 31.224487>,  <42.003735, 34.107819, 31.106676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949982, 33.905750, 31.224487>,  <41.860394, 33.568974, 31.420839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949982, 33.905750, 31.224487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167599, -0.462899, -0.870422,
		-0.960076, 0.277222, 0.037432,
		0.223973, 0.841945, -0.490880,
		42.017174, 34.158333, 31.077223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364315, 33.611183, 30.812551>,  <41.860394, 33.568974, 31.420839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364315, 33.611183, 30.812551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678650, 33.847759, 30.740263>,  <41.867252, 33.989704, 30.696890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678650, 33.847759, 30.740263>,  <41.364315, 33.611183, 30.812551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678650, 33.847759, 30.740263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164865, -0.481999, -0.860521,
		-0.596055, 0.646434, -0.476280,
		0.785836, 0.591439, -0.180723,
		41.914402, 34.025192, 30.686047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221298, 33.968090, 30.190287>,  <41.364315, 33.611183, 30.812551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221298, 33.968090, 30.190287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620758, 33.965343, 30.210907>,  <41.860432, 33.963696, 30.223280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620758, 33.965343, 30.210907>,  <41.221298, 33.968090, 30.190287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620758, 33.965343, 30.210907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041114, -0.502857, -0.863391,
		0.031851, 0.864342, -0.501894,
		0.998647, -0.006864, 0.051553,
		41.920353, 33.963284, 30.226374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453510, 34.142838, 29.435394>,  <41.221298, 33.968090, 30.190287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453510, 34.142838, 29.435394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789711, 34.025837, 29.617823>,  <41.991432, 33.955635, 29.727280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789711, 34.025837, 29.617823>,  <41.453510, 34.142838, 29.435394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789711, 34.025837, 29.617823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265945, -0.510649, -0.817625,
		0.472050, 0.808504, -0.351411,
		0.840501, -0.292504, 0.456069,
		42.041862, 33.938087, 29.754642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061321, 34.127995, 28.910360>,  <41.453510, 34.142838, 29.435394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061321, 34.127995, 28.910360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184395, 33.860886, 29.181480>,  <42.258240, 33.700623, 29.344152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184395, 33.860886, 29.181480>,  <42.061321, 34.127995, 28.910360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184395, 33.860886, 29.181480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488042, -0.500753, -0.714886,
		0.816790, 0.550754, 0.171826,
		0.307683, -0.667770, 0.677801,
		42.276699, 33.660553, 29.384821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834194, 34.018322, 28.793705>,  <42.061321, 34.127995, 28.910360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834194, 34.018322, 28.793705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696793, 33.698608, 28.990942>,  <42.614349, 33.506779, 29.109285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696793, 33.698608, 28.990942>,  <42.834194, 34.018322, 28.793705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696793, 33.698608, 28.990942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613077, -0.588582, -0.526981,
		0.711435, 0.121283, 0.692207,
		-0.343507, -0.799288, 0.493094,
		42.593742, 33.458820, 29.138870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452858, 33.704529, 28.963511>,  <42.834194, 34.018322, 28.793705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452858, 33.704529, 28.963511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154797, 33.437813, 28.968382>,  <42.975960, 33.277782, 28.971306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154797, 33.437813, 28.968382>,  <43.452858, 33.704529, 28.963511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154797, 33.437813, 28.968382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506539, -0.577760, -0.640009,
		0.433786, -0.470733, 0.768271,
		-0.745150, -0.666786, 0.012180,
		42.931252, 33.237778, 28.972036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818867, 33.090229, 29.183422>,  <43.452858, 33.704529, 28.963511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818867, 33.090229, 29.183422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473740, 32.954163, 29.033848>,  <43.266663, 32.872524, 28.944103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473740, 32.954163, 29.033848>,  <43.818867, 33.090229, 29.183422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473740, 32.954163, 29.033848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504504, -0.626077, -0.594561,
		-0.031865, -0.701653, 0.711806,
		-0.862821, -0.340163, -0.373936,
		43.214893, 32.852112, 28.921667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778160, 32.399780, 29.155006>,  <43.818867, 33.090229, 29.183422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778160, 32.399780, 29.155006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475899, 32.445251, 28.896992>,  <43.294544, 32.472534, 28.742184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475899, 32.445251, 28.896992>,  <43.778160, 32.399780, 29.155006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475899, 32.445251, 28.896992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483872, -0.566843, -0.666751,
		-0.441431, -0.815944, 0.373327,
		-0.755649, 0.113682, -0.645035,
		43.249203, 32.479355, 28.703482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.216721, 32.196781, 26.553370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.503754, 32.446083, 26.677713>,  <40.675972, 32.595665, 26.752319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.503754, 32.446083, 26.677713>,  <40.216721, 32.196781, 26.553370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503754, 32.446083, 26.677713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424131, 0.037014, 0.904844,
		0.552440, -0.781144, 0.290902,
		0.717581, 0.623253, 0.310860,
		40.719028, 32.633060, 26.770971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404739, 31.937677, 27.186584>,  <40.216721, 32.196781, 26.553370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404739, 31.937677, 27.186584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.509647, 32.323647, 27.191240>,  <40.572594, 32.555229, 27.194033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.509647, 32.323647, 27.191240>,  <40.404739, 31.937677, 27.186584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509647, 32.323647, 27.191240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326146, 0.077285, 0.942155,
		0.908208, -0.250897, 0.334976,
		0.262273, 0.964924, 0.011638,
		40.588329, 32.613125, 27.194731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663723, 31.941488, 27.795799>,  <40.404739, 31.937677, 27.186584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663723, 31.941488, 27.795799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614159, 32.327312, 27.702620>,  <40.584419, 32.558807, 27.646711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614159, 32.327312, 27.702620>,  <40.663723, 31.941488, 27.795799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614159, 32.327312, 27.702620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382384, 0.170210, 0.908191,
		0.915657, 0.201613, 0.347741,
		-0.123914, 0.964562, -0.232948,
		40.576984, 32.616680, 27.632734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949802, 32.235039, 28.450077>,  <40.663723, 31.941488, 27.795799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949802, 32.235039, 28.450077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.736496, 32.514957, 28.259958>,  <40.608513, 32.682907, 28.145887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.736496, 32.514957, 28.259958>,  <40.949802, 32.235039, 28.450077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736496, 32.514957, 28.259958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159678, 0.468486, 0.868921,
		0.830738, 0.539265, -0.138088,
		-0.533271, 0.699796, -0.475297,
		40.576515, 32.724895, 28.117369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207428, 32.864414, 28.729940>,  <40.949802, 32.235039, 28.450077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207428, 32.864414, 28.729940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.844540, 32.932487, 28.576059>,  <40.626808, 32.973331, 28.483730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.844540, 32.932487, 28.576059>,  <41.207428, 32.864414, 28.729940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844540, 32.932487, 28.576059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273890, 0.455152, 0.847243,
		0.319285, 0.873999, -0.366310,
		-0.907216, 0.170183, -0.384703,
		40.572376, 32.983543, 28.460648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989967, 33.540306, 28.953833>,  <41.207428, 32.864414, 28.729940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989967, 33.540306, 28.953833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640900, 33.371231, 28.856031>,  <40.431458, 33.269787, 28.797350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640900, 33.371231, 28.856031>,  <40.989967, 33.540306, 28.953833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640900, 33.371231, 28.856031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437926, 0.455934, 0.774819,
		-0.216030, 0.783235, -0.582987,
		-0.872669, -0.422689, -0.244504,
		40.379097, 33.244423, 28.782681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437595, 34.117584, 29.103090>,  <40.989967, 33.540306, 28.953833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437595, 34.117584, 29.103090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.239601, 33.771088, 29.075920>,  <40.120804, 33.563190, 29.059618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.239601, 33.771088, 29.075920>,  <40.437595, 34.117584, 29.103090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239601, 33.771088, 29.075920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541822, 0.246598, 0.803503,
		-0.679280, 0.434523, -0.591412,
		-0.494982, -0.866244, -0.067925,
		40.091106, 33.511215, 29.055542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703140, 34.220524, 29.176361>,  <40.437595, 34.117584, 29.103090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703140, 34.220524, 29.176361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791267, 33.845753, 29.284901>,  <39.844143, 33.620892, 29.350025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791267, 33.845753, 29.284901>,  <39.703140, 34.220524, 29.176361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791267, 33.845753, 29.284901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627438, 0.076875, 0.774862,
		-0.746849, -0.340968, -0.570927,
		0.220313, -0.936927, 0.271351,
		39.857361, 33.564674, 29.366306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119598, 34.075462, 29.492062>,  <39.703140, 34.220524, 29.176361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119598, 34.075462, 29.492062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376297, 33.789257, 29.602478>,  <39.530315, 33.617535, 29.668728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376297, 33.789257, 29.602478>,  <39.119598, 34.075462, 29.492062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376297, 33.789257, 29.602478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416968, -0.023441, 0.908619,
		-0.643658, -0.698206, -0.313390,
		0.641749, -0.715513, 0.276041,
		39.568821, 33.574604, 29.685291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744659, 33.475105, 29.740664>,  <39.119598, 34.075462, 29.492062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744659, 33.475105, 29.740664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.096851, 33.428310, 29.924435>,  <39.308167, 33.400234, 30.034697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.096851, 33.428310, 29.924435>,  <38.744659, 33.475105, 29.740664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096851, 33.428310, 29.924435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473940, -0.241417, 0.846817,
		0.011846, -0.963344, -0.268008,
		0.880477, -0.116988, 0.459428,
		39.360996, 33.393215, 30.062263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710144, 32.875282, 29.980652>,  <38.744659, 33.475105, 29.740664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710144, 32.875282, 29.980652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997547, 33.033428, 30.209539>,  <39.169987, 33.128315, 30.346872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997547, 33.033428, 30.209539>,  <38.710144, 32.875282, 29.980652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997547, 33.033428, 30.209539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529331, -0.222850, 0.818625,
		0.451178, -0.891079, 0.049162,
		0.718503, 0.395369, 0.572221,
		39.213097, 33.152039, 30.381207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656479, 32.411938, 30.397858>,  <38.710144, 32.875282, 29.980652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656479, 32.411938, 30.397858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865871, 32.716835, 30.550144>,  <38.991508, 32.899773, 30.641516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865871, 32.716835, 30.550144>,  <38.656479, 32.411938, 30.397858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865871, 32.716835, 30.550144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398322, -0.176062, 0.900190,
		0.753195, -0.622884, 0.211453,
		0.523485, 0.762245, 0.380718,
		39.022919, 32.945507, 30.664360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977261, 32.139759, 31.043444>,  <38.656479, 32.411938, 30.397858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977261, 32.139759, 31.043444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987545, 32.539257, 31.060598>,  <38.993713, 32.778957, 31.070890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987545, 32.539257, 31.060598>,  <38.977261, 32.139759, 31.043444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987545, 32.539257, 31.060598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499100, -0.024348, 0.866202,
		0.866163, -0.043672, 0.497850,
		0.025707, 0.998749, 0.042886,
		38.995258, 32.838882, 31.073463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188202, 32.377632, 31.785788>,  <38.977261, 32.139759, 31.043444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188202, 32.377632, 31.785788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959335, 32.635429, 31.582905>,  <38.822014, 32.790108, 31.461176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959335, 32.635429, 31.582905>,  <39.188202, 32.377632, 31.785788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959335, 32.635429, 31.582905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510025, 0.204697, 0.835448,
		0.642262, 0.736703, 0.211586,
		-0.572166, 0.644491, -0.507206,
		38.787685, 32.828777, 31.430742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802849, 32.115868, 32.264362>,  <39.188202, 32.377632, 31.785788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802849, 32.115868, 32.264362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725864, 31.750185, 32.407017>,  <39.679672, 31.530777, 32.492611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725864, 31.750185, 32.407017>,  <39.802849, 32.115868, 32.264362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725864, 31.750185, 32.407017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421359, -0.405212, -0.811332,
		0.886237, -0.005877, 0.463195,
		-0.192460, -0.914204, 0.356638,
		39.668125, 31.475924, 32.514008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473755, 31.818285, 32.311111>,  <39.802849, 32.115868, 32.264362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473755, 31.818285, 32.311111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221657, 31.508276, 32.292656>,  <40.070396, 31.322271, 32.281582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221657, 31.508276, 32.292656>,  <40.473755, 31.818285, 32.311111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221657, 31.508276, 32.292656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534513, -0.390029, -0.749782,
		0.563101, -0.497211, 0.660074,
		-0.630248, -0.775021, -0.046140,
		40.032581, 31.275770, 32.278812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868107, 31.236561, 32.202023>,  <40.473755, 31.818285, 32.311111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868107, 31.236561, 32.202023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.508194, 31.134300, 32.060581>,  <40.292248, 31.072943, 31.975718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.508194, 31.134300, 32.060581>,  <40.868107, 31.236561, 32.202023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508194, 31.134300, 32.060581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422614, -0.308941, -0.852029,
		0.108581, -0.916077, 0.386022,
		-0.899782, -0.255653, -0.353601,
		40.238258, 31.057604, 31.954500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898819, 30.497889, 32.012547>,  <40.868107, 31.236561, 32.202023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898819, 30.497889, 32.012547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582253, 30.660604, 31.830036>,  <40.392315, 30.758234, 31.720530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582253, 30.660604, 31.830036>,  <40.898819, 30.497889, 32.012547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582253, 30.660604, 31.830036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347287, -0.315052, -0.883252,
		-0.503049, -0.857475, 0.108063,
		-0.791413, 0.406790, -0.456276,
		40.344830, 30.782640, 31.693153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659050, 30.012835, 31.583719>,  <40.898819, 30.497889, 32.012547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659050, 30.012835, 31.583719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518471, 30.354877, 31.431263>,  <40.434124, 30.560104, 31.339788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518471, 30.354877, 31.431263>,  <40.659050, 30.012835, 31.583719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518471, 30.354877, 31.431263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286953, -0.289127, -0.913271,
		-0.891145, -0.430341, -0.143762,
		-0.351452, 0.855109, -0.381141,
		40.413036, 30.611410, 31.316921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262154, 29.772045, 30.935015>,  <40.659050, 30.012835, 31.583719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262154, 29.772045, 30.935015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356144, 30.159615, 30.904097>,  <40.412537, 30.392157, 30.885546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356144, 30.159615, 30.904097>,  <40.262154, 29.772045, 30.935015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356144, 30.159615, 30.904097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219547, -0.130373, -0.966851,
		-0.946882, 0.210216, -0.243359,
		0.234975, 0.968923, -0.077296,
		40.426636, 30.450291, 30.880907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000217, 29.958860, 30.290756>,  <40.262154, 29.772045, 30.935015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000217, 29.958860, 30.290756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.263260, 30.246611, 30.380251>,  <40.421085, 30.419260, 30.433949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.263260, 30.246611, 30.380251>,  <40.000217, 29.958860, 30.290756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263260, 30.246611, 30.380251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361828, -0.041095, -0.931338,
		-0.660787, 0.693405, -0.287315,
		0.657602, 0.719375, 0.223738,
		40.460541, 30.462423, 30.447372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907803, 30.412107, 29.789164>,  <40.000217, 29.958860, 30.290756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907803, 30.412107, 29.789164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279282, 30.462305, 29.928747>,  <40.502171, 30.492424, 30.012497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279282, 30.462305, 29.928747>,  <39.907803, 30.412107, 29.789164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279282, 30.462305, 29.928747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353674, -0.016760, -0.935218,
		-0.111517, 0.991952, -0.059950,
		0.928697, 0.125496, 0.348959,
		40.557892, 30.499954, 30.033436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223549, 30.796764, 29.294615>,  <39.907803, 30.412107, 29.789164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223549, 30.796764, 29.294615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518269, 30.601534, 29.481766>,  <40.695099, 30.484396, 29.594057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518269, 30.601534, 29.481766>,  <40.223549, 30.796764, 29.294615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518269, 30.601534, 29.481766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443790, -0.172954, -0.879282,
		0.510080, 0.855492, 0.089172,
		0.736796, -0.488078, 0.467880,
		40.739307, 30.455111, 29.622129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786514, 30.993326, 28.880564>,  <40.223549, 30.796764, 29.294615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786514, 30.993326, 28.880564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.905235, 30.669874, 29.083750>,  <40.976467, 30.475803, 29.205662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.905235, 30.669874, 29.083750>,  <40.786514, 30.993326, 28.880564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905235, 30.669874, 29.083750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435111, -0.358991, -0.825714,
		0.850050, 0.466096, 0.245293,
		0.296804, -0.808629, 0.507964,
		40.994278, 30.427286, 29.236139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556828, 30.886850, 28.770163>,  <40.786514, 30.993326, 28.880564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556828, 30.886850, 28.770163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.393074, 30.528080, 28.837017>,  <41.294823, 30.312819, 28.877131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.393074, 30.528080, 28.837017>,  <41.556828, 30.886850, 28.770163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393074, 30.528080, 28.837017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491941, -0.371280, -0.787493,
		0.768376, -0.240163, 0.593229,
		-0.409381, -0.896924, 0.167136,
		41.270260, 30.259003, 28.887157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071003, 30.478210, 28.655180>,  <41.556828, 30.886850, 28.770163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071003, 30.478210, 28.655180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.756615, 30.231230, 28.642496>,  <41.567982, 30.083042, 28.634886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.756615, 30.231230, 28.642496>,  <42.071003, 30.478210, 28.655180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756615, 30.231230, 28.642496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399035, -0.467430, -0.788848,
		0.472254, -0.632663, 0.613770,
		-0.785969, -0.617452, -0.031709,
		41.520824, 30.045994, 28.632984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357399, 29.725716, 28.616610>,  <42.071003, 30.478210, 28.655180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357399, 29.725716, 28.616610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.995796, 29.757517, 28.448582>,  <41.778835, 29.776598, 28.347765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.995796, 29.757517, 28.448582>,  <42.357399, 29.725716, 28.616610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995796, 29.757517, 28.448582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361248, -0.383438, -0.849985,
		-0.228648, -0.920138, 0.317909,
		-0.904002, 0.079504, -0.420071,
		41.724594, 29.781368, 28.322561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153255, 29.088112, 28.218315>,  <42.357399, 29.725716, 28.616610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153255, 29.088112, 28.218315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.903240, 29.358156, 28.061575>,  <41.753231, 29.520184, 27.967531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.903240, 29.358156, 28.061575>,  <42.153255, 29.088112, 28.218315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903240, 29.358156, 28.061575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342279, -0.214125, -0.914875,
		-0.701548, -0.705957, -0.097240,
		-0.625041, 0.675112, -0.391853,
		41.715729, 29.560690, 27.944019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215904, 28.332150, 28.123894>,  <42.153255, 29.088112, 28.218315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215904, 28.332150, 28.123894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.590675, 28.308270, 28.261646>,  <42.815536, 28.293941, 28.344297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.590675, 28.308270, 28.261646>,  <42.215904, 28.332150, 28.123894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590675, 28.308270, 28.261646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349222, -0.119276, 0.929418,
		-0.014409, -0.991065, -0.132601,
		0.936929, -0.059699, 0.344383,
		42.871754, 28.290359, 28.364962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059887, 27.863300, 28.617611>,  <42.215904, 28.332150, 28.123894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059887, 27.863300, 28.617611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.425831, 28.005495, 28.694197>,  <42.645397, 28.090813, 28.740149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.425831, 28.005495, 28.694197>,  <42.059887, 27.863300, 28.617611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425831, 28.005495, 28.694197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197056, -0.020786, 0.980172,
		0.352421, -0.934449, 0.051035,
		0.914860, 0.355490, 0.191464,
		42.700291, 28.112143, 28.751637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340179, 27.366318, 29.136202>,  <42.059887, 27.863300, 28.617611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340179, 27.366318, 29.136202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.527946, 27.717842, 29.170462>,  <42.640606, 27.928757, 29.191017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.527946, 27.717842, 29.170462>,  <42.340179, 27.366318, 29.136202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527946, 27.717842, 29.170462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054343, -0.068062, 0.996200,
		0.881302, -0.472289, 0.015808,
		0.469418, 0.878812, 0.085649,
		42.668774, 27.981485, 29.196156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727940, 27.212746, 29.743248>,  <42.340179, 27.366318, 29.136202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727940, 27.212746, 29.743248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.730797, 27.609198, 29.690170>,  <42.732510, 27.847069, 29.658323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.730797, 27.609198, 29.690170>,  <42.727940, 27.212746, 29.743248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730797, 27.609198, 29.690170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066633, 0.132876, 0.988890,
		0.997752, 0.001780, 0.066991,
		0.007141, 0.991131, -0.132696,
		42.732941, 27.906536, 29.650362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201099, 27.445051, 30.242208>,  <42.727940, 27.212746, 29.743248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201099, 27.445051, 30.242208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.946381, 27.749701, 30.194168>,  <42.793549, 27.932489, 30.165344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.946381, 27.749701, 30.194168>,  <43.201099, 27.445051, 30.242208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946381, 27.749701, 30.194168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068523, 0.099247, 0.992701,
		0.767984, 0.640374, -0.011010,
		-0.636793, 0.761624, -0.120100,
		42.755344, 27.978188, 30.158138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284096, 27.850657, 30.873013>,  <43.201099, 27.445051, 30.242208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284096, 27.850657, 30.873013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.951290, 28.005014, 30.713598>,  <42.751606, 28.097630, 30.617949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.951290, 28.005014, 30.713598>,  <43.284096, 27.850657, 30.873013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951290, 28.005014, 30.713598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388504, 0.107493, 0.915156,
		0.395994, 0.916259, 0.060486,
		-0.832018, 0.385895, -0.398537,
		42.701683, 28.120783, 30.594038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219475, 28.582190, 31.152990>,  <43.284096, 27.850657, 30.873013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219475, 28.582190, 31.152990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855045, 28.461126, 31.041025>,  <42.636387, 28.388489, 30.973846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855045, 28.461126, 31.041025>,  <43.219475, 28.582190, 31.152990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855045, 28.461126, 31.041025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377899, 0.341770, 0.860457,
		-0.164758, 0.889714, -0.425750,
		-0.911069, -0.302658, -0.279913,
		42.581726, 28.370329, 30.957052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733112, 29.222303, 31.315231>,  <43.219475, 28.582190, 31.152990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733112, 29.222303, 31.315231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.509792, 28.893509, 31.270260>,  <42.375801, 28.696232, 31.243277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.509792, 28.893509, 31.270260>,  <42.733112, 29.222303, 31.315231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509792, 28.893509, 31.270260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383419, 0.135462, 0.913586,
		-0.735727, 0.553160, -0.390794,
		-0.558297, -0.821988, -0.112429,
		42.342304, 28.646912, 31.236532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937084, 29.316921, 31.483427>,  <42.733112, 29.222303, 31.315231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937084, 29.316921, 31.483427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.041153, 28.937681, 31.556553>,  <42.103596, 28.710138, 31.600428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.041153, 28.937681, 31.556553>,  <41.937084, 29.316921, 31.483427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041153, 28.937681, 31.556553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504262, 0.028048, 0.863095,
		-0.823426, -0.316740, -0.470792,
		0.260172, -0.948098, 0.182815,
		42.119205, 28.653252, 31.611397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344883, 28.937885, 31.740042>,  <41.937084, 29.316921, 31.483427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344883, 28.937885, 31.740042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.676025, 28.753696, 31.868177>,  <41.874710, 28.643183, 31.945059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.676025, 28.753696, 31.868177>,  <41.344883, 28.937885, 31.740042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676025, 28.753696, 31.868177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353169, 0.015811, 0.935426,
		-0.435804, -0.887533, -0.149536,
		0.827857, -0.460473, 0.320340,
		41.924381, 28.615555, 31.964279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156368, 28.306971, 32.053814>,  <41.344883, 28.937885, 31.740042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156368, 28.306971, 32.053814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507999, 28.402155, 32.219025>,  <41.718979, 28.459267, 32.318150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507999, 28.402155, 32.219025>,  <41.156368, 28.306971, 32.053814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507999, 28.402155, 32.219025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426775, 0.006980, 0.904331,
		0.212315, -0.971249, 0.107693,
		0.879082, 0.237964, 0.413023,
		41.771725, 28.473543, 32.342930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080845, 28.002600, 32.659168>,  <41.156368, 28.306971, 32.053814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080845, 28.002600, 32.659168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401928, 28.236345, 32.706814>,  <41.594578, 28.376593, 32.735401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401928, 28.236345, 32.706814>,  <41.080845, 28.002600, 32.659168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401928, 28.236345, 32.706814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266947, 0.173452, 0.947973,
		0.533298, -0.792739, 0.295224,
		0.802703, 0.584362, 0.119117,
		41.642738, 28.411654, 32.742550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277199, 27.965416, 33.431885>,  <41.080845, 28.002600, 32.659168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277199, 27.965416, 33.431885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538223, 28.246569, 33.318665>,  <41.694839, 28.415260, 33.250732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538223, 28.246569, 33.318665>,  <41.277199, 27.965416, 33.431885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538223, 28.246569, 33.318665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063410, 0.321577, 0.944758,
		0.755075, -0.634463, 0.165281,
		0.652565, 0.702883, -0.283046,
		41.733994, 28.457434, 33.233749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621334, 28.032000, 34.019550>,  <41.277199, 27.965416, 33.431885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621334, 28.032000, 34.019550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620235, 28.385666, 33.832684>,  <41.619576, 28.597866, 33.720566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620235, 28.385666, 33.832684>,  <41.621334, 28.032000, 34.019550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620235, 28.385666, 33.832684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045383, 0.466574, 0.883317,
		0.998966, 0.023629, 0.038844,
		-0.002748, 0.884167, -0.467164,
		41.619411, 28.650915, 33.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.561722, 31.665407, 28.830658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.421078, 31.932585, 28.568293>,  <43.336689, 32.092892, 28.410873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.421078, 31.932585, 28.568293>,  <43.561722, 31.665407, 28.830658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421078, 31.932585, 28.568293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448898, -0.494543, -0.744256,
		-0.821497, -0.556128, -0.125950,
		-0.351614, 0.667943, -0.655911,
		43.315594, 32.132969, 28.371519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253395, 31.250166, 28.161097>,  <43.561722, 31.665407, 28.830658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253395, 31.250166, 28.161097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346428, 31.625858, 28.060101>,  <43.402248, 31.851274, 27.999504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346428, 31.625858, 28.060101>,  <43.253395, 31.250166, 28.161097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346428, 31.625858, 28.060101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491090, -0.337494, -0.803074,
		-0.839486, 0.062784, -0.539742,
		0.232580, 0.939231, -0.252489,
		43.416203, 31.907627, 27.984354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109417, 31.293964, 27.377441>,  <43.253395, 31.250166, 28.161097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109417, 31.293964, 27.377441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.365501, 31.582598, 27.482849>,  <43.519154, 31.755777, 27.546095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.365501, 31.582598, 27.482849>,  <43.109417, 31.293964, 27.377441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365501, 31.582598, 27.482849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628214, -0.294356, -0.720210,
		-0.442122, 0.626636, -0.641759,
		0.640215, 0.721583, 0.263520,
		43.557568, 31.799072, 27.561905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218990, 31.702135, 26.816111>,  <43.109417, 31.293964, 27.377441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218990, 31.702135, 26.816111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531586, 31.768669, 27.056644>,  <43.719143, 31.808590, 27.200964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531586, 31.768669, 27.056644>,  <43.218990, 31.702135, 26.816111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531586, 31.768669, 27.056644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618616, -0.331923, -0.712139,
		0.081143, 0.928526, -0.362292,
		0.781492, 0.166335, 0.601334,
		43.766033, 31.818569, 27.237045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636047, 31.901489, 26.324280>,  <43.218990, 31.702135, 26.816111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636047, 31.901489, 26.324280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.873604, 31.828938, 26.637814>,  <44.016136, 31.785406, 26.825933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.873604, 31.828938, 26.637814>,  <43.636047, 31.901489, 26.324280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873604, 31.828938, 26.637814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771774, -0.146806, -0.618718,
		0.227296, 0.972393, 0.052798,
		0.593887, -0.181380, 0.783837,
		44.051769, 31.774523, 26.872965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255035, 32.338997, 26.204189>,  <43.636047, 31.901489, 26.324280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255035, 32.338997, 26.204189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.327656, 32.049988, 26.471024>,  <44.371227, 31.876583, 26.631124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.327656, 32.049988, 26.471024>,  <44.255035, 32.338997, 26.204189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327656, 32.049988, 26.471024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839471, -0.239445, -0.487807,
		0.512181, 0.648558, 0.563066,
		0.181548, -0.722523, 0.667084,
		44.382118, 31.833231, 26.671148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904507, 32.410172, 26.393328>,  <44.255035, 32.338997, 26.204189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904507, 32.410172, 26.393328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.818245, 32.028973, 26.478447>,  <44.766487, 31.800253, 26.529518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.818245, 32.028973, 26.478447>,  <44.904507, 32.410172, 26.393328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818245, 32.028973, 26.478447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872247, -0.285974, -0.396743,
		0.438951, 0.100051, 0.892923,
		-0.215658, -0.953000, 0.212798,
		44.753548, 31.743073, 26.542286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544411, 32.091759, 26.749315>,  <44.904507, 32.410172, 26.393328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544411, 32.091759, 26.749315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.316559, 31.776363, 26.656528>,  <45.179848, 31.587128, 26.600857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.316559, 31.776363, 26.656528>,  <45.544411, 32.091759, 26.749315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316559, 31.776363, 26.656528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759501, -0.397117, -0.515224,
		0.314129, -0.469667, 0.825067,
		-0.569633, -0.788486, -0.231967,
		45.145668, 31.539818, 26.586939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004517, 31.454218, 26.736254>,  <45.544411, 32.091759, 26.749315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004517, 31.454218, 26.736254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.677708, 31.361071, 26.525257>,  <45.481621, 31.305182, 26.398659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.677708, 31.361071, 26.525257>,  <46.004517, 31.454218, 26.736254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677708, 31.361071, 26.525257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562540, -0.522752, -0.640530,
		-0.126587, -0.820062, 0.558099,
		-0.817022, -0.232871, -0.527492,
		45.432602, 31.291210, 26.367010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247520, 30.767200, 26.556688>,  <46.004517, 31.454218, 26.736254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247520, 30.767200, 26.556688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.947788, 30.883682, 26.318796>,  <45.767948, 30.953571, 26.176062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.947788, 30.883682, 26.318796>,  <46.247520, 30.767200, 26.556688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947788, 30.883682, 26.318796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452531, -0.430496, -0.780954,
		-0.483445, -0.854326, 0.190806,
		-0.749331, 0.291203, -0.594731,
		45.722988, 30.971045, 26.140377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033905, 30.160988, 26.218674>,  <46.247520, 30.767200, 26.556688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033905, 30.160988, 26.218674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.897938, 30.462328, 25.993490>,  <45.816357, 30.643131, 25.858379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.897938, 30.462328, 25.993490>,  <46.033905, 30.160988, 26.218674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897938, 30.462328, 25.993490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302548, -0.479183, -0.823922,
		-0.890460, -0.450389, -0.065040,
		-0.339920, 0.753348, -0.562958,
		45.795963, 30.688332, 25.824602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735901, 29.832663, 25.671658>,  <46.033905, 30.160988, 26.218674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735901, 29.832663, 25.671658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.800705, 30.203285, 25.535868>,  <45.839588, 30.425659, 25.454393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.800705, 30.203285, 25.535868>,  <45.735901, 29.832663, 25.671658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800705, 30.203285, 25.535868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409086, -0.376128, -0.831370,
		-0.897999, -0.004187, -0.439977,
		0.162007, 0.926558, -0.339475,
		45.849308, 30.481253, 25.434025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461376, 29.910572, 24.935398>,  <45.735901, 29.832663, 25.671658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461376, 29.910572, 24.935398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.792660, 30.127386, 24.992344>,  <45.991428, 30.257475, 25.026512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.792660, 30.127386, 24.992344>,  <45.461376, 29.910572, 24.935398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792660, 30.127386, 24.992344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413191, -0.418981, -0.808535,
		-0.378606, 0.728460, -0.570967,
		0.828210, 0.542034, 0.142364,
		46.041122, 30.289997, 25.035053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372337, 30.235147, 24.271738>,  <45.461376, 29.910572, 24.935398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372337, 30.235147, 24.271738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.585423, 30.074947, 23.973526>,  <45.713272, 29.978827, 23.794600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.585423, 30.074947, 23.973526>,  <45.372337, 30.235147, 24.271738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585423, 30.074947, 23.973526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467805, -0.594760, 0.653773,
		-0.705249, -0.697036, -0.129480,
		0.532713, -0.400502, -0.745531,
		45.745235, 29.954796, 23.749866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231506, 29.497717, 24.267193>,  <45.372337, 30.235147, 24.271738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231506, 29.497717, 24.267193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.589588, 29.552107, 24.097431>,  <45.804436, 29.584742, 23.995573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.589588, 29.552107, 24.097431>,  <45.231506, 29.497717, 24.267193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589588, 29.552107, 24.097431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388862, -0.703542, 0.594824,
		-0.217706, -0.697524, -0.682689,
		0.895204, 0.135976, -0.424406,
		45.858150, 29.592899, 23.970110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043739, 28.874498, 23.813118>,  <45.231506, 29.497717, 24.267193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043739, 28.874498, 23.813118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.997662, 28.479527, 23.769831>,  <44.970013, 28.242544, 23.743858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.997662, 28.479527, 23.769831>,  <45.043739, 28.874498, 23.813118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997662, 28.479527, 23.769831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701094, 0.003644, 0.713060,
		-0.703703, 0.158013, -0.692701,
		-0.115197, -0.987431, -0.108218,
		44.963104, 28.183298, 23.737366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342617, 28.707565, 23.807377>,  <45.043739, 28.874498, 23.813118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342617, 28.707565, 23.807377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.531860, 28.370901, 23.911507>,  <44.645409, 28.168901, 23.973986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.531860, 28.370901, 23.911507>,  <44.342617, 28.707565, 23.807377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531860, 28.370901, 23.911507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518160, -0.026856, 0.854862,
		-0.712514, -0.539335, -0.448822,
		0.473111, -0.841663, 0.260327,
		44.673794, 28.118402, 23.989605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796734, 28.218636, 24.022070>,  <44.342617, 28.707565, 23.807377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796734, 28.218636, 24.022070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.138306, 28.101509, 24.194143>,  <44.343250, 28.031233, 24.297386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.138306, 28.101509, 24.194143>,  <43.796734, 28.218636, 24.022070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138306, 28.101509, 24.194143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445312, 0.016535, 0.895223,
		-0.269248, -0.956026, -0.116274,
		0.853933, -0.292815, 0.430182,
		44.394485, 28.013664, 24.323198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573280, 27.795904, 24.657799>,  <43.796734, 28.218636, 24.022070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573280, 27.795904, 24.657799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.964149, 27.875729, 24.686920>,  <44.198673, 27.923624, 24.704393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.964149, 27.875729, 24.686920>,  <43.573280, 27.795904, 24.657799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964149, 27.875729, 24.686920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078125, 0.018909, 0.996764,
		0.197541, -0.979702, 0.034069,
		0.977177, 0.199564, 0.072804,
		44.257301, 27.935596, 24.708761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793423, 27.241543, 25.015387>,  <43.573280, 27.795904, 24.657799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793423, 27.241543, 25.015387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.060875, 27.533884, 25.070221>,  <44.221344, 27.709288, 25.103121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.060875, 27.533884, 25.070221>,  <43.793423, 27.241543, 25.015387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060875, 27.533884, 25.070221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044457, -0.223316, 0.973732,
		0.742266, -0.644971, -0.181806,
		0.668629, 0.730851, 0.137086,
		44.261463, 27.753139, 25.111347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142815, 26.906494, 25.429770>,  <43.793423, 27.241543, 25.015387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142815, 26.906494, 25.429770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.242088, 27.293770, 25.442503>,  <44.301651, 27.526136, 25.450142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.242088, 27.293770, 25.442503>,  <44.142815, 26.906494, 25.429770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242088, 27.293770, 25.442503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041388, -0.043428, 0.998199,
		0.967829, -0.246416, -0.050849,
		0.248181, 0.968190, 0.031832,
		44.316544, 27.584227, 25.452053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721058, 26.968821, 26.008615>,  <44.142815, 26.906494, 25.429770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721058, 26.968821, 26.008615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.529812, 27.312634, 25.936373>,  <44.415066, 27.518921, 25.893028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.529812, 27.312634, 25.936373>,  <44.721058, 26.968821, 26.008615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529812, 27.312634, 25.936373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177459, 0.106852, 0.978310,
		0.860185, 0.499790, 0.101444,
		-0.478110, 0.859530, -0.180605,
		44.386379, 27.570492, 25.882191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047710, 27.554699, 26.388235>,  <44.721058, 26.968821, 26.008615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047710, 27.554699, 26.388235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.673027, 27.684099, 26.334673>,  <44.448219, 27.761740, 26.302536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.673027, 27.684099, 26.334673>,  <45.047710, 27.554699, 26.388235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673027, 27.684099, 26.334673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074780, 0.188774, 0.979169,
		0.342039, 0.927207, -0.152634,
		-0.936706, 0.323500, -0.133905,
		44.392014, 27.781149, 26.294502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898373, 28.089750, 26.782780>,  <45.047710, 27.554699, 26.388235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898373, 28.089750, 26.782780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.508179, 28.021463, 26.727238>,  <44.274063, 27.980492, 26.693913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.508179, 28.021463, 26.727238>,  <44.898373, 28.089750, 26.782780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508179, 28.021463, 26.727238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188923, 0.326150, 0.926247,
		-0.112837, 0.929776, -0.350407,
		-0.975487, -0.170715, -0.138855,
		44.215534, 27.970249, 26.685581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533386, 28.576303, 27.186390>,  <44.898373, 28.089750, 26.782780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533386, 28.576303, 27.186390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.204735, 28.364883, 27.101017>,  <44.007542, 28.238031, 27.049793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.204735, 28.364883, 27.101017>,  <44.533386, 28.576303, 27.186390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204735, 28.364883, 27.101017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362607, 0.195745, 0.911153,
		-0.439812, 0.826025, -0.352487,
		-0.821633, -0.528551, -0.213431,
		43.958244, 28.206318, 27.036987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965958, 28.982574, 27.343750>,  <44.533386, 28.576303, 27.186390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965958, 28.982574, 27.343750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.802769, 28.617378, 27.342758>,  <43.704853, 28.398260, 27.342163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.802769, 28.617378, 27.342758>,  <43.965958, 28.982574, 27.343750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802769, 28.617378, 27.342758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407231, 0.179541, 0.895504,
		-0.817141, 0.366354, -0.445046,
		-0.407975, -0.912989, -0.002481,
		43.680378, 28.343481, 27.342014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332893, 29.077221, 27.620289>,  <43.965958, 28.982574, 27.343750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332893, 29.077221, 27.620289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.393826, 28.684910, 27.669073>,  <43.430386, 28.449524, 27.698343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.393826, 28.684910, 27.669073>,  <43.332893, 29.077221, 27.620289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393826, 28.684910, 27.669073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429629, 0.045417, 0.901863,
		-0.890064, -0.189780, -0.414452,
		0.152333, -0.980776, 0.121959,
		43.439526, 28.390676, 27.705662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643150, 28.727753, 27.673672>,  <43.332893, 29.077221, 27.620289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643150, 28.727753, 27.673672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.936962, 28.526775, 27.856108>,  <43.113251, 28.406189, 27.965569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.936962, 28.526775, 27.856108>,  <42.643150, 28.727753, 27.673672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936962, 28.526775, 27.856108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561696, -0.073075, 0.824110,
		-0.380738, -0.861518, -0.335895,
		0.734531, -0.502441, 0.456089,
		43.157322, 28.376043, 27.992935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921265, 28.828159, 27.560886>,  <42.643150, 28.727753, 27.673672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921265, 28.828159, 27.560886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.844761, 29.219931, 27.535141>,  <41.798859, 29.454992, 27.519693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.844761, 29.219931, 27.535141>,  <41.921265, 28.828159, 27.560886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844761, 29.219931, 27.535141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284442, -0.007455, -0.958664,
		-0.939422, -0.201660, -0.277164,
		-0.191258, 0.979427, -0.064364,
		41.787384, 29.513760, 27.515831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677521, 28.850054, 26.885466>,  <41.921265, 28.828159, 27.560886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677521, 28.850054, 26.885466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743397, 29.234488, 26.974182>,  <41.782925, 29.465147, 27.027412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743397, 29.234488, 26.974182>,  <41.677521, 28.850054, 26.885466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743397, 29.234488, 26.974182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305431, 0.164119, -0.937964,
		-0.937864, 0.222219, -0.266515,
		0.164693, 0.961085, 0.221794,
		41.792805, 29.522814, 27.040720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446857, 29.255136, 26.302956>,  <41.677521, 28.850054, 26.885466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446857, 29.255136, 26.302956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.680573, 29.524639, 26.483915>,  <41.820801, 29.686340, 26.592491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.680573, 29.524639, 26.483915>,  <41.446857, 29.255136, 26.302956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680573, 29.524639, 26.483915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318255, 0.322569, -0.891439,
		-0.746540, 0.664834, -0.025953,
		0.584287, 0.673754, 0.452397,
		41.855858, 29.726765, 26.619635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285332, 29.854317, 26.059765>,  <41.446857, 29.255136, 26.302956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285332, 29.854317, 26.059765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662533, 29.893997, 26.186829>,  <41.888855, 29.917807, 26.263067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662533, 29.893997, 26.186829>,  <41.285332, 29.854317, 26.059765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662533, 29.893997, 26.186829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252569, 0.408205, -0.877256,
		-0.216697, 0.907484, 0.359882,
		0.943001, 0.099204, 0.317658,
		41.945435, 29.923758, 26.282125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487747, 30.358295, 25.600931>,  <41.285332, 29.854317, 26.059765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487747, 30.358295, 25.600931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.842651, 30.246878, 25.748003>,  <42.055592, 30.180027, 25.836246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.842651, 30.246878, 25.748003>,  <41.487747, 30.358295, 25.600931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842651, 30.246878, 25.748003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439832, 0.270649, -0.856328,
		0.139013, 0.921500, 0.362648,
		0.887256, -0.278544, 0.367681,
		42.108829, 30.163315, 25.858307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824718, 30.877432, 25.437059>,  <41.487747, 30.358295, 25.600931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824718, 30.877432, 25.437059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.072899, 30.568003, 25.488642>,  <42.221806, 30.382345, 25.519592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.072899, 30.568003, 25.488642>,  <41.824718, 30.877432, 25.437059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072899, 30.568003, 25.488642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379080, 0.151875, -0.912816,
		0.686543, 0.615240, 0.387476,
		0.620449, -0.773572, 0.128957,
		42.259033, 30.335932, 25.527328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519314, 31.019968, 25.216442>,  <41.824718, 30.877432, 25.437059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519314, 31.019968, 25.216442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547577, 30.620968, 25.217033>,  <42.564537, 30.381569, 25.217388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547577, 30.620968, 25.217033>,  <42.519314, 31.019968, 25.216442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547577, 30.620968, 25.217033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336529, 0.022444, -0.941405,
		0.939018, 0.067018, 0.337274,
		0.070661, -0.997499, 0.001478,
		42.568775, 30.321718, 25.217476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949150, 31.605188, 24.981976>,  <42.519314, 31.019968, 25.216442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949150, 31.605188, 24.981976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647449, 31.780153, 24.786110>,  <42.466427, 31.885132, 24.668591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647449, 31.780153, 24.786110>,  <42.949150, 31.605188, 24.981976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647449, 31.780153, 24.786110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379398, 0.318313, 0.868754,
		0.535869, 0.841040, -0.074136,
		-0.754255, 0.437412, -0.489663,
		42.421173, 31.911377, 24.639212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934650, 32.239063, 25.349270>,  <42.949150, 31.605188, 24.981976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934650, 32.239063, 25.349270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.601608, 32.187401, 25.133833>,  <42.401783, 32.156403, 25.004570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.601608, 32.187401, 25.133833>,  <42.934650, 32.239063, 25.349270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601608, 32.187401, 25.133833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545909, 0.355570, 0.758653,
		0.093523, 0.925683, -0.366558,
		-0.832608, -0.129156, -0.538593,
		42.351826, 32.148655, 24.972256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601727, 32.896244, 25.331978>,  <42.934650, 32.239063, 25.349270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601727, 32.896244, 25.331978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.314163, 32.632912, 25.242739>,  <42.141624, 32.474915, 25.189196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.314163, 32.632912, 25.242739>,  <42.601727, 32.896244, 25.331978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314163, 32.632912, 25.242739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579436, 0.390292, 0.715491,
		-0.383954, 0.643645, -0.662043,
		-0.718912, -0.658327, -0.223097,
		42.098488, 32.435413, 25.175810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019142, 33.306751, 25.304333>,  <42.601727, 32.896244, 25.331978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019142, 33.306751, 25.304333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862766, 32.941017, 25.346575>,  <41.768940, 32.721577, 25.371920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862766, 32.941017, 25.346575>,  <42.019142, 33.306751, 25.304333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862766, 32.941017, 25.346575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642974, 0.353395, 0.679482,
		-0.658595, 0.197739, -0.726053,
		-0.390944, -0.914337, 0.105603,
		41.745483, 32.666718, 25.378256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265915, 33.446156, 25.489260>,  <42.019142, 33.306751, 25.304333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265915, 33.446156, 25.489260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.271645, 33.058109, 25.586145>,  <41.275082, 32.825283, 25.644278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.271645, 33.058109, 25.586145>,  <41.265915, 33.446156, 25.489260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271645, 33.058109, 25.586145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672965, 0.169807, 0.719920,
		-0.739536, -0.173318, -0.650421,
		0.014328, -0.970117, 0.242215,
		41.275944, 32.767075, 25.658810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505188, 33.140690, 25.563122>,  <41.265915, 33.446156, 25.489260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505188, 33.140690, 25.563122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.772247, 32.930195, 25.773766>,  <40.932484, 32.803898, 25.900152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.772247, 32.930195, 25.773766>,  <40.505188, 33.140690, 25.563122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772247, 32.930195, 25.773766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473304, 0.245970, 0.845861,
		-0.574655, -0.813986, -0.084849,
		0.667648, -0.526238, 0.526611,
		40.972542, 32.772324, 25.931749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171322, 32.730961, 26.035492>,  <40.505188, 33.140690, 25.563122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171322, 32.730961, 26.035492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.529568, 32.739292, 26.213226>,  <40.744514, 32.744289, 26.319868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.529568, 32.739292, 26.213226>,  <40.171322, 32.730961, 26.035492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529568, 32.739292, 26.213226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444825, 0.042467, 0.894610,
		-0.000247, -0.998881, 0.047294,
		0.895618, 0.020817, 0.444337,
		40.798252, 32.745541, 26.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.756142, 33.789646, 23.665426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.727859, 33.471962, 23.906834>,  <46.710892, 33.281353, 24.051678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.727859, 33.471962, 23.906834>,  <46.756142, 33.789646, 23.665426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727859, 33.471962, 23.906834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699587, 0.470766, 0.537548,
		-0.711041, -0.384206, -0.588903,
		-0.070707, -0.794207, 0.603519,
		46.706646, 33.233700, 24.087889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077305, 33.797100, 23.775429>,  <46.756142, 33.789646, 23.665426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077305, 33.797100, 23.775429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.198269, 33.568764, 24.080765>,  <46.270847, 33.431763, 24.263968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.198269, 33.568764, 24.080765>,  <46.077305, 33.797100, 23.775429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198269, 33.568764, 24.080765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671382, 0.440903, 0.595693,
		-0.676604, -0.692638, -0.249917,
		0.302411, -0.570838, 0.763342,
		46.288994, 33.397511, 24.309767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509022, 33.428673, 24.036682>,  <46.077305, 33.797100, 23.775429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509022, 33.428673, 24.036682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.764839, 33.445724, 24.343712>,  <45.918327, 33.455956, 24.527929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.764839, 33.445724, 24.343712>,  <45.509022, 33.428673, 24.036682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764839, 33.445724, 24.343712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738294, 0.312349, 0.597795,
		-0.214269, -0.949010, 0.231231,
		0.639539, 0.042628, 0.767576,
		45.956699, 33.458511, 24.573984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242996, 33.099846, 24.712528>,  <45.509022, 33.428673, 24.036682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242996, 33.099846, 24.712528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.518162, 33.366322, 24.827744>,  <45.683262, 33.526207, 24.896872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.518162, 33.366322, 24.827744>,  <45.242996, 33.099846, 24.712528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518162, 33.366322, 24.827744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574957, 0.257997, 0.776442,
		0.442947, -0.699733, 0.560511,
		0.687912, 0.666192, 0.288037,
		45.724537, 33.566177, 24.914154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172333, 32.961430, 25.434769>,  <45.242996, 33.099846, 24.712528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172333, 32.961430, 25.434769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.357616, 33.312389, 25.384800>,  <45.468788, 33.522964, 25.354818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.357616, 33.312389, 25.384800>,  <45.172333, 32.961430, 25.434769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357616, 33.312389, 25.384800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400336, 0.332909, 0.853758,
		0.790675, -0.345458, 0.505461,
		0.463210, 0.877400, -0.124923,
		45.496578, 33.575611, 25.347322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566433, 33.129982, 26.218033>,  <45.172333, 32.961430, 25.434769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566433, 33.129982, 26.218033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.545845, 33.467781, 26.004801>,  <45.533493, 33.670460, 25.876862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.545845, 33.467781, 26.004801>,  <45.566433, 33.129982, 26.218033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545845, 33.467781, 26.004801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275069, 0.501154, 0.820476,
		0.960046, 0.188864, 0.206501,
		-0.051470, 0.844497, -0.533082,
		45.530403, 33.721130, 25.844877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771130, 33.612785, 26.739342>,  <45.566433, 33.129982, 26.218033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771130, 33.612785, 26.739342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.612720, 33.828999, 26.442427>,  <45.517673, 33.958725, 26.264278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.612720, 33.828999, 26.442427>,  <45.771130, 33.612785, 26.739342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612720, 33.828999, 26.442427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439517, 0.598178, 0.670081,
		0.806218, 0.591618, 0.000677,
		-0.396027, 0.540529, -0.742288,
		45.493912, 33.991158, 26.219740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881111, 34.314526, 26.865873>,  <45.771130, 33.612785, 26.739342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881111, 34.314526, 26.865873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.571571, 34.342575, 26.614082>,  <45.385849, 34.359406, 26.463009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.571571, 34.342575, 26.614082>,  <45.881111, 34.314526, 26.865873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571571, 34.342575, 26.614082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429856, 0.671771, 0.603281,
		0.465168, 0.737432, -0.489706,
		-0.773849, 0.070124, -0.629476,
		45.339417, 34.363613, 26.425240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771286, 35.039242, 26.867121>,  <45.881111, 34.314526, 26.865873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771286, 35.039242, 26.867121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.431988, 34.861176, 26.752357>,  <45.228409, 34.754337, 26.683500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.431988, 34.861176, 26.752357>,  <45.771286, 35.039242, 26.867121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431988, 34.861176, 26.752357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522204, 0.612748, 0.593163,
		-0.088252, 0.652970, -0.752225,
		-0.848242, -0.445163, -0.286907,
		45.177517, 34.727627, 26.666285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387569, 35.589993, 26.688402>,  <45.771286, 35.039242, 26.867121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387569, 35.589993, 26.688402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.125546, 35.290104, 26.725933>,  <44.968330, 35.110168, 26.748451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.125546, 35.290104, 26.725933>,  <45.387569, 35.589993, 26.688402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125546, 35.290104, 26.725933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583340, 0.580750, 0.567841,
		-0.480215, 0.317239, -0.817773,
		-0.655064, -0.749726, 0.093827,
		44.929028, 35.065186, 26.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647480, 35.842876, 26.600565>,  <45.387569, 35.589993, 26.688402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647480, 35.842876, 26.600565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.644783, 35.509598, 26.821741>,  <44.643166, 35.309631, 26.954447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.644783, 35.509598, 26.821741>,  <44.647480, 35.842876, 26.600565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644783, 35.509598, 26.821741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520719, 0.474991, 0.709391,
		-0.853702, -0.283145, -0.437062,
		-0.006740, -0.833195, 0.552939,
		44.642761, 35.259640, 26.987623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975685, 35.767300, 26.802141>,  <44.647480, 35.842876, 26.600565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975685, 35.767300, 26.802141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.193661, 35.568424, 27.072205>,  <44.324448, 35.449097, 27.234241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.193661, 35.568424, 27.072205>,  <43.975685, 35.767300, 26.802141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193661, 35.568424, 27.072205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564382, 0.377992, 0.733890,
		-0.620089, -0.780974, -0.074623,
		0.544943, -0.497193, 0.675157,
		44.357143, 35.419266, 27.274752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527115, 35.273304, 26.395407>,  <43.975685, 35.767300, 26.802141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527115, 35.273304, 26.395407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.321339, 35.460762, 26.108149>,  <43.197872, 35.573235, 25.935795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.321339, 35.460762, 26.108149>,  <43.527115, 35.273304, 26.395407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321339, 35.460762, 26.108149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713676, -0.230311, -0.661531,
		-0.475417, -0.852838, -0.215977,
		-0.514437, 0.468641, -0.718144,
		43.167007, 35.601353, 25.892706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649040, 34.822468, 25.766455>,  <43.527115, 35.273304, 26.395407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649040, 34.822468, 25.766455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.510212, 35.175934, 25.640802>,  <43.426914, 35.388012, 25.565411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.510212, 35.175934, 25.640802>,  <43.649040, 34.822468, 25.766455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510212, 35.175934, 25.640802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657611, -0.009505, -0.753298,
		-0.668649, -0.468021, -0.577810,
		-0.347067, 0.883666, -0.314132,
		43.406094, 35.441032, 25.546562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481491, 34.779320, 25.044958>,  <43.649040, 34.822468, 25.766455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481491, 34.779320, 25.044958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.516979, 35.173126, 25.105438>,  <43.538273, 35.409409, 25.141726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.516979, 35.173126, 25.105438>,  <43.481491, 34.779320, 25.044958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516979, 35.173126, 25.105438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541693, 0.079695, -0.836790,
		-0.835881, 0.156146, -0.526233,
		0.088723, 0.984514, 0.151199,
		43.543594, 35.468479, 25.150799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302025, 35.089428, 24.378836>,  <43.481491, 34.779320, 25.044958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302025, 35.089428, 24.378836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.520432, 35.351646, 24.587500>,  <43.651474, 35.508976, 24.712698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.520432, 35.351646, 24.587500>,  <43.302025, 35.089428, 24.378836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520432, 35.351646, 24.587500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541164, 0.199354, -0.816945,
		-0.639538, 0.728369, -0.245906,
		0.546015, 0.655543, 0.521662,
		43.684235, 35.548309, 24.743998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202988, 35.613972, 23.971497>,  <43.302025, 35.089428, 24.378836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202988, 35.613972, 23.971497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.529240, 35.670322, 24.195963>,  <43.724991, 35.704132, 24.330643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.529240, 35.670322, 24.195963>,  <43.202988, 35.613972, 23.971497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529240, 35.670322, 24.195963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542142, 0.152658, -0.826303,
		-0.202074, 0.978186, 0.048136,
		0.815627, 0.140878, 0.561164,
		43.773930, 35.712585, 24.364313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570610, 36.255474, 23.733957>,  <43.202988, 35.613972, 23.971497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570610, 36.255474, 23.733957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.842854, 36.015167, 23.901693>,  <44.006199, 35.870983, 24.002335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.842854, 36.015167, 23.901693>,  <43.570610, 36.255474, 23.733957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842854, 36.015167, 23.901693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561961, 0.060846, -0.824923,
		0.470070, 0.797106, 0.379019,
		0.680613, -0.600766, 0.419341,
		44.047039, 35.834938, 24.027496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087029, 36.359230, 23.321501>,  <43.570610, 36.255474, 23.733957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087029, 36.359230, 23.321501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.222317, 36.051193, 23.537857>,  <44.303490, 35.866371, 23.667671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.222317, 36.051193, 23.537857>,  <44.087029, 36.359230, 23.321501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222317, 36.051193, 23.537857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651615, -0.223046, -0.725016,
		0.678975, 0.597665, 0.426368,
		0.338216, -0.770096, 0.540890,
		44.323780, 35.820164, 23.700125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894382, 36.422718, 23.316801>,  <44.087029, 36.359230, 23.321501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894382, 36.422718, 23.316801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.763855, 36.053711, 23.399246>,  <44.685539, 35.832306, 23.448713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.763855, 36.053711, 23.399246>,  <44.894382, 36.422718, 23.316801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763855, 36.053711, 23.399246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581455, -0.367816, -0.725687,
		0.745268, -0.116963, 0.656427,
		-0.326323, -0.922514, 0.206112,
		44.665958, 35.776958, 23.461081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467525, 35.993614, 23.022615>,  <44.894382, 36.422718, 23.316801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467525, 35.993614, 23.022615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.159813, 35.745007, 23.081842>,  <44.975185, 35.595844, 23.117378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.159813, 35.745007, 23.081842>,  <45.467525, 35.993614, 23.022615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159813, 35.745007, 23.081842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344976, -0.599123, -0.722525,
		0.537772, -0.504745, 0.675303,
		-0.769281, -0.621517, 0.148067,
		44.929028, 35.558552, 23.126263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779331, 35.375393, 23.002289>,  <45.467525, 35.993614, 23.022615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779331, 35.375393, 23.002289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.396049, 35.286499, 22.930229>,  <45.166080, 35.233162, 22.886993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.396049, 35.286499, 22.930229>,  <45.779331, 35.375393, 23.002289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396049, 35.286499, 22.930229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285465, -0.701507, -0.652992,
		0.018738, -0.677127, 0.735627,
		-0.958206, -0.222232, -0.180151,
		45.108589, 35.219830, 22.876184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625980, 34.646931, 22.936457>,  <45.779331, 35.375393, 23.002289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625980, 34.646931, 22.936457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.297913, 34.785477, 22.754311>,  <45.101074, 34.868607, 22.645023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.297913, 34.785477, 22.754311>,  <45.625980, 34.646931, 22.936457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297913, 34.785477, 22.754311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143404, -0.646052, -0.749702,
		-0.553861, -0.680181, 0.480200,
		-0.820167, 0.346368, -0.455363,
		45.051861, 34.889389, 22.617702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106869, 34.075428, 22.739498>,  <45.625980, 34.646931, 22.936457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106869, 34.075428, 22.739498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.035103, 34.391457, 22.505032>,  <44.992043, 34.581074, 22.364351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.035103, 34.391457, 22.505032>,  <45.106869, 34.075428, 22.739498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035103, 34.391457, 22.505032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072219, -0.583650, -0.808788,
		-0.981119, -0.187442, 0.047658,
		-0.179416, 0.790075, -0.586167,
		44.981277, 34.628479, 22.329182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585220, 33.796501, 22.352051>,  <45.106869, 34.075428, 22.739498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585220, 33.796501, 22.352051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.718941, 34.118305, 22.155682>,  <44.799171, 34.311390, 22.037861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.718941, 34.118305, 22.155682>,  <44.585220, 33.796501, 22.352051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718941, 34.118305, 22.155682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224207, -0.573823, -0.787692,
		-0.915409, 0.153258, -0.372207,
		0.334301, 0.804512, -0.490921,
		44.819229, 34.359657, 22.008406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330536, 33.208736, 22.620884>,  <44.585220, 33.796501, 22.352051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330536, 33.208736, 22.620884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.245159, 32.935410, 22.341595>,  <44.193932, 32.771412, 22.174021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.245159, 32.935410, 22.341595>,  <44.330536, 33.208736, 22.620884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245159, 32.935410, 22.341595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951048, -0.018170, 0.308507,
		-0.223495, 0.729894, -0.645991,
		-0.213440, -0.683319, -0.698225,
		44.181126, 32.730415, 22.132128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655483, 33.342823, 22.491566>,  <44.330536, 33.208736, 22.620884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655483, 33.342823, 22.491566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.730640, 32.966339, 22.379267>,  <43.775734, 32.740448, 22.311888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.730640, 32.966339, 22.379267>,  <43.655483, 33.342823, 22.491566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730640, 32.966339, 22.379267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758536, -0.320640, 0.567286,
		-0.623954, 0.106367, -0.774188,
		0.187896, -0.941210, -0.280748,
		43.787010, 32.683975, 22.295042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080173, 33.022621, 22.203690>,  <43.655483, 33.342823, 22.491566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080173, 33.022621, 22.203690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.296921, 32.712082, 22.332479>,  <43.426968, 32.525761, 22.409754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.296921, 32.712082, 22.332479>,  <43.080173, 33.022621, 22.203690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296921, 32.712082, 22.332479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738981, -0.257601, 0.622534,
		-0.400362, -0.575261, -0.713291,
		0.541864, -0.776348, 0.321974,
		43.459480, 32.479179, 22.429071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559410, 32.551167, 22.313845>,  <43.080173, 33.022621, 22.203690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559410, 32.551167, 22.313845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.874462, 32.416592, 22.520321>,  <43.063492, 32.335846, 22.644207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.874462, 32.416592, 22.520321>,  <42.559410, 32.551167, 22.313845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874462, 32.416592, 22.520321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615378, -0.387625, 0.686336,
		-0.030818, -0.858230, -0.512339,
		0.787629, -0.336434, 0.516190,
		43.110752, 32.315662, 22.675179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313965, 31.898336, 22.574570>,  <42.559410, 32.551167, 22.313845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313965, 31.898336, 22.574570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.621090, 31.978441, 22.817997>,  <42.805367, 32.026505, 22.964054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.621090, 31.978441, 22.817997>,  <42.313965, 31.898336, 22.574570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621090, 31.978441, 22.817997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582112, -0.178683, 0.793232,
		0.267594, -0.963311, -0.020621,
		0.767814, 0.200261, 0.608570,
		42.851433, 32.038521, 23.000568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343132, 31.415333, 23.026064>,  <42.313965, 31.898336, 22.574570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343132, 31.415333, 23.026064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555202, 31.683208, 23.234076>,  <42.682446, 31.843933, 23.358883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555202, 31.683208, 23.234076>,  <42.343132, 31.415333, 23.026064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555202, 31.683208, 23.234076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505313, -0.242944, 0.828032,
		0.680862, -0.701779, 0.209601,
		0.530174, 0.669690, 0.520029,
		42.714256, 31.884115, 23.390085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389565, 31.079430, 23.775503>,  <42.343132, 31.415333, 23.026064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389565, 31.079430, 23.775503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489792, 31.465672, 23.803280>,  <42.549927, 31.697416, 23.819946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489792, 31.465672, 23.803280>,  <42.389565, 31.079430, 23.775503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489792, 31.465672, 23.803280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386052, 0.033880, 0.921854,
		0.887795, -0.257793, 0.381263,
		0.250565, 0.965606, 0.069443,
		42.564960, 31.755354, 23.824114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707314, 31.206568, 24.437056>,  <42.389565, 31.079430, 23.775503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707314, 31.206568, 24.437056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.553623, 31.560572, 24.331890>,  <42.461411, 31.772974, 24.268791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.553623, 31.560572, 24.331890>,  <42.707314, 31.206568, 24.437056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553623, 31.560572, 24.331890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342663, 0.127732, 0.930735,
		0.857293, 0.447705, 0.254182,
		-0.384228, 0.885011, -0.262915,
		42.438354, 31.826075, 24.253016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194302, 30.900845, 24.985638>,  <42.707314, 31.206568, 24.437056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194302, 30.900845, 24.985638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.009014, 30.547718, 24.954502>,  <42.897842, 30.335842, 24.935820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.009014, 30.547718, 24.954502>,  <43.194302, 30.900845, 24.985638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009014, 30.547718, 24.954502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610625, -0.254272, -0.749989,
		0.642310, -0.394943, 0.656855,
		-0.463222, -0.882817, -0.077840,
		42.870049, 30.282873, 24.931150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612324, 30.464844, 24.896093>,  <43.194302, 30.900845, 24.985638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612324, 30.464844, 24.896093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.306488, 30.260351, 24.739098>,  <43.122986, 30.137655, 24.644899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.306488, 30.260351, 24.739098>,  <43.612324, 30.464844, 24.896093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306488, 30.260351, 24.739098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552534, -0.206381, -0.807535,
		0.331835, -0.834295, 0.440269,
		-0.764586, -0.511232, -0.392492,
		43.077114, 30.106981, 24.621349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871895, 29.928209, 24.590427>,  <43.612324, 30.464844, 24.896093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871895, 29.928209, 24.590427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.521576, 29.908764, 24.398336>,  <43.311386, 29.897097, 24.283083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.521576, 29.908764, 24.398336>,  <43.871895, 29.928209, 24.590427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521576, 29.908764, 24.398336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476124, -0.250431, -0.842965,
		-0.079285, -0.966913, 0.242473,
		-0.875797, -0.048612, -0.480226,
		43.258839, 29.894180, 24.254269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755966, 29.287373, 24.372883>,  <43.871895, 29.928209, 24.590427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755966, 29.287373, 24.372883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.535408, 29.513866, 24.127823>,  <43.403072, 29.649763, 23.980787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.535408, 29.513866, 24.127823>,  <43.755966, 29.287373, 24.372883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535408, 29.513866, 24.127823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539439, -0.318192, -0.779589,
		-0.636370, -0.760352, -0.129998,
		-0.551397, 0.566233, -0.612651,
		43.369987, 29.683737, 23.944027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573463, 28.894640, 23.808540>,  <43.755966, 29.287373, 24.372883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573463, 28.894640, 23.808540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.489346, 29.238413, 23.622141>,  <43.438873, 29.444675, 23.510302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.489346, 29.238413, 23.622141>,  <43.573463, 28.894640, 23.808540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489346, 29.238413, 23.622141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534722, -0.297924, -0.790767,
		-0.818442, -0.415474, -0.396905,
		-0.210296, 0.859431, -0.465997,
		43.426258, 29.496243, 23.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348160, 28.737671, 23.145769>,  <43.573463, 28.894640, 23.808540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348160, 28.737671, 23.145769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.481998, 29.113865, 23.122000>,  <43.562302, 29.339581, 23.107738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.481998, 29.113865, 23.122000>,  <43.348160, 28.737671, 23.145769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481998, 29.113865, 23.122000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464712, -0.219533, -0.857816,
		-0.819809, 0.259409, -0.510510,
		0.334599, 0.940485, -0.059424,
		43.582378, 29.396011, 23.104172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374416, 28.769693, 22.415195>,  <43.348160, 28.737671, 23.145769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374416, 28.769693, 22.415195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.577015, 29.089314, 22.544796>,  <43.698574, 29.281086, 22.622557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.577015, 29.089314, 22.544796>,  <43.374416, 28.769693, 22.415195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577015, 29.089314, 22.544796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664039, -0.121790, -0.737712,
		-0.550010, 0.588799, -0.592288,
		0.506499, 0.799051, 0.324000,
		43.728966, 29.329029, 22.641996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433010, 29.215193, 21.871023>,  <43.374416, 28.769693, 22.415195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433010, 29.215193, 21.871023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.739906, 29.333870, 22.098465>,  <43.924046, 29.405075, 22.234930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.739906, 29.333870, 22.098465>,  <43.433010, 29.215193, 21.871023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739906, 29.333870, 22.098465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611364, -0.070388, -0.788213,
		-0.193832, 0.952376, -0.235391,
		0.767244, 0.296691, 0.568605,
		43.970081, 29.422876, 22.269047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760086, 29.881561, 21.609564>,  <43.433010, 29.215193, 21.871023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760086, 29.881561, 21.609564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.025925, 29.650249, 21.798838>,  <44.185429, 29.511461, 21.912401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.025925, 29.650249, 21.798838>,  <43.760086, 29.881561, 21.609564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025925, 29.650249, 21.798838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471892, -0.166165, -0.865856,
		0.579335, 0.798736, 0.162454,
		0.664597, -0.578281, 0.473183,
		44.225304, 29.476765, 21.940792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.313126, 34.052593, 36.111168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.657345, 33.943924, 36.283516>,  <38.863876, 33.878723, 36.386925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.657345, 33.943924, 36.283516>,  <38.313126, 34.052593, 36.111168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657345, 33.943924, 36.283516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071978, -0.772547, -0.630865,
		0.504254, 0.573904, -0.645261,
		0.860551, -0.271672, 0.430868,
		38.915508, 33.862423, 36.412777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914120, 34.215878, 35.731110>,  <38.313126, 34.052593, 36.111168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914120, 34.215878, 35.731110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907047, 33.880291, 35.948669>,  <38.902802, 33.678940, 36.079205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907047, 33.880291, 35.948669>,  <38.914120, 34.215878, 35.731110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907047, 33.880291, 35.948669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236311, -0.532079, -0.813049,
		0.971517, 0.114152, 0.207665,
		-0.017683, -0.838964, 0.543899,
		38.901741, 33.628601, 36.111839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430271, 33.905853, 35.559093>,  <38.914120, 34.215878, 35.731110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430271, 33.905853, 35.559093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240044, 33.605949, 35.743137>,  <39.125908, 33.426006, 35.853565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240044, 33.605949, 35.743137>,  <39.430271, 33.905853, 35.559093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240044, 33.605949, 35.743137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277309, -0.624148, -0.730437,
		0.834826, -0.219781, 0.504739,
		-0.475568, -0.749757, 0.460108,
		39.097374, 33.381023, 35.881168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840710, 33.240295, 35.432789>,  <39.430271, 33.905853, 35.559093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840710, 33.240295, 35.432789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498474, 33.074780, 35.557213>,  <39.293133, 32.975471, 35.631866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498474, 33.074780, 35.557213>,  <39.840710, 33.240295, 35.432789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498474, 33.074780, 35.557213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032941, -0.643189, -0.764999,
		0.516614, -0.644274, 0.563933,
		-0.855584, -0.413786, 0.311057,
		39.241798, 32.950645, 35.650532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004635, 32.562378, 35.448387>,  <39.840710, 33.240295, 35.432789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004635, 32.562378, 35.448387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605175, 32.582714, 35.452583>,  <39.365498, 32.594917, 35.455101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605175, 32.582714, 35.452583>,  <40.004635, 32.562378, 35.448387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605175, 32.582714, 35.452583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041953, -0.671418, -0.739891,
		-0.030573, -0.739333, 0.672646,
		-0.998652, 0.050840, 0.010490,
		39.305580, 32.597965, 35.455730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771366, 31.891239, 35.461102>,  <40.004635, 32.562378, 35.448387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771366, 31.891239, 35.461102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.493919, 32.120869, 35.287048>,  <39.327454, 32.258648, 35.182617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.493919, 32.120869, 35.287048>,  <39.771366, 31.891239, 35.461102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493919, 32.120869, 35.287048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022690, -0.586348, -0.809741,
		-0.719990, -0.571520, 0.393673,
		-0.693613, 0.574073, -0.435133,
		39.285835, 32.293091, 35.156509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278389, 31.362923, 35.216122>,  <39.771366, 31.891239, 35.461102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278389, 31.362923, 35.216122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.224426, 31.713196, 35.030659>,  <39.192047, 31.923361, 34.919380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.224426, 31.713196, 35.030659>,  <39.278389, 31.362923, 35.216122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224426, 31.713196, 35.030659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077528, -0.457169, -0.885995,
		-0.987820, -0.155476, -0.006213,
		-0.134911, 0.875685, -0.463654,
		39.183952, 31.975901, 34.891563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762131, 31.256908, 34.726864>,  <39.278389, 31.362923, 35.216122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762131, 31.256908, 34.726864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.898926, 31.599722, 34.572701>,  <38.981003, 31.805410, 34.480202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.898926, 31.599722, 34.572701>,  <38.762131, 31.256908, 34.726864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898926, 31.599722, 34.572701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276307, -0.483715, -0.830466,
		-0.898163, 0.177522, -0.402230,
		0.341991, 0.857033, -0.385405,
		39.001522, 31.856833, 34.457081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379658, 31.444218, 34.124271>,  <38.762131, 31.256908, 34.726864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379658, 31.444218, 34.124271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.689667, 31.687426, 34.055393>,  <38.875671, 31.833349, 34.014065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.689667, 31.687426, 34.055393>,  <38.379658, 31.444218, 34.124271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689667, 31.687426, 34.055393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150333, -0.442065, -0.884295,
		-0.613789, 0.659464, -0.434017,
		0.775024, 0.608018, -0.172195,
		38.922173, 31.869831, 34.003735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337048, 31.713497, 33.508644>,  <38.379658, 31.444218, 34.124271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337048, 31.713497, 33.508644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732662, 31.735651, 33.563396>,  <38.970032, 31.748943, 33.596249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732662, 31.735651, 33.563396>,  <38.337048, 31.713497, 33.508644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732662, 31.735651, 33.563396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146601, -0.257651, -0.955052,
		-0.017630, 0.964649, -0.262946,
		0.989039, 0.055386, 0.136877,
		39.029373, 31.752266, 33.604458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564880, 31.938456, 32.910530>,  <38.337048, 31.713497, 33.508644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564880, 31.938456, 32.910530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903419, 31.789991, 33.063339>,  <39.106541, 31.700912, 33.155025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903419, 31.789991, 33.063339>,  <38.564880, 31.938456, 32.910530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903419, 31.789991, 33.063339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342298, -0.170504, -0.923992,
		0.408084, 0.912781, -0.017258,
		0.846345, -0.371159, 0.382023,
		39.157322, 31.678644, 33.177948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148922, 32.242233, 32.559402>,  <38.564880, 31.938456, 32.910530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148922, 32.242233, 32.559402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283714, 31.898254, 32.712734>,  <39.364590, 31.691868, 32.804733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283714, 31.898254, 32.712734>,  <39.148922, 32.242233, 32.559402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283714, 31.898254, 32.712734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361000, -0.258016, -0.896162,
		0.869554, 0.440371, 0.223493,
		0.336979, -0.859942, 0.383333,
		39.384808, 31.640272, 32.827736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084778, 32.948551, 32.731415>,  <39.148922, 32.242233, 32.559402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084778, 32.948551, 32.731415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918304, 33.098843, 32.400208>,  <38.818420, 33.189018, 32.201481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918304, 33.098843, 32.400208>,  <39.084778, 32.948551, 32.731415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918304, 33.098843, 32.400208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740725, 0.388058, 0.548396,
		0.527367, 0.841570, 0.116806,
		-0.416186, 0.375727, -0.828021,
		38.793449, 33.211559, 32.151802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161209, 33.712551, 32.715847>,  <39.084778, 32.948551, 32.731415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161209, 33.712551, 32.715847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846939, 33.580986, 32.506268>,  <38.658375, 33.502048, 32.380520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846939, 33.580986, 32.506268>,  <39.161209, 33.712551, 32.715847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846939, 33.580986, 32.506268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549980, 0.759155, 0.348146,
		0.283251, 0.561694, -0.777347,
		-0.785678, -0.328913, -0.523952,
		38.611237, 33.482311, 32.349083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889194, 34.351959, 32.360264>,  <39.161209, 33.712551, 32.715847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889194, 34.351959, 32.360264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588165, 34.090004, 32.387840>,  <38.407547, 33.932831, 32.404385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588165, 34.090004, 32.387840>,  <38.889194, 34.351959, 32.360264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588165, 34.090004, 32.387840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599878, 0.724982, 0.338448,
		-0.271628, 0.213350, -0.938456,
		-0.752572, -0.654891, 0.068941,
		38.362392, 33.893536, 32.408524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397831, 34.720863, 32.255043>,  <38.889194, 34.351959, 32.360264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397831, 34.720863, 32.255043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.195324, 34.410686, 32.405983>,  <38.073822, 34.224583, 32.496548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.195324, 34.410686, 32.405983>,  <38.397831, 34.720863, 32.255043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195324, 34.410686, 32.405983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714220, 0.622245, 0.320471,
		-0.483309, -0.107268, -0.868853,
		-0.506263, -0.775438, 0.377349,
		38.043446, 34.178055, 32.519188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732944, 34.906937, 31.994387>,  <38.397831, 34.720863, 32.255043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732944, 34.906937, 31.994387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680679, 34.649696, 32.296207>,  <37.649323, 34.495354, 32.477299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680679, 34.649696, 32.296207>,  <37.732944, 34.906937, 31.994387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680679, 34.649696, 32.296207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650958, 0.629691, 0.423961,
		-0.747784, -0.435788, -0.500907,
		-0.130659, -0.643100, 0.754553,
		37.641483, 34.456768, 32.522572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024193, 34.938221, 32.138016>,  <37.732944, 34.906937, 31.994387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024193, 34.938221, 32.138016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.160198, 34.796005, 32.486267>,  <37.241802, 34.710678, 32.695217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.160198, 34.796005, 32.486267>,  <37.024193, 34.938221, 32.138016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160198, 34.796005, 32.486267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671064, 0.556854, 0.489476,
		-0.658838, -0.750671, -0.049253,
		0.340009, -0.355537, 0.870625,
		37.262199, 34.689342, 32.747456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514477, 35.145954, 32.602875>,  <37.024193, 34.938221, 32.138016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514477, 35.145954, 32.602875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819519, 35.024570, 32.831383>,  <37.002544, 34.951740, 32.968487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819519, 35.024570, 32.831383>,  <36.514477, 35.145954, 32.602875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819519, 35.024570, 32.831383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360433, 0.533995, 0.764812,
		-0.537147, -0.789151, 0.297848,
		0.762601, -0.303462, 0.571270,
		37.048298, 34.933533, 33.002766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258804, 34.742966, 33.269978>,  <36.514477, 35.145954, 32.602875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258804, 34.742966, 33.269978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603661, 34.944370, 33.292557>,  <36.810574, 35.065212, 33.306107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603661, 34.944370, 33.292557>,  <36.258804, 34.742966, 33.269978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603661, 34.944370, 33.292557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363023, 0.536152, 0.762073,
		0.353446, -0.677509, 0.645025,
		0.862143, 0.503511, 0.056450,
		36.862305, 35.095425, 33.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515289, 34.682755, 33.948994>,  <36.258804, 34.742966, 33.269978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515289, 34.682755, 33.948994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.678162, 35.017376, 33.802361>,  <36.775887, 35.218147, 33.714378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.678162, 35.017376, 33.802361>,  <36.515289, 34.682755, 33.948994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678162, 35.017376, 33.802361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418627, 0.527662, 0.739138,
		0.811759, -0.147504, 0.565058,
		0.407185, 0.836550, -0.366585,
		36.800316, 35.268341, 33.692387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128841, 35.294029, 34.312664>,  <36.515289, 34.682755, 33.948994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128841, 35.294029, 34.312664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399670, 35.513100, 34.116039>,  <36.562164, 35.644543, 33.998062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399670, 35.513100, 34.116039>,  <36.128841, 35.294029, 34.312664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399670, 35.513100, 34.116039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394399, 0.833972, 0.385928,
		0.621312, -0.067427, 0.780657,
		0.677067, 0.547672, -0.491564,
		36.602791, 35.677402, 33.968571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340973, 35.771790, 34.738407>,  <36.128841, 35.294029, 34.312664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340973, 35.771790, 34.738407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439716, 35.920647, 34.380508>,  <36.498962, 36.009960, 34.165768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439716, 35.920647, 34.380508>,  <36.340973, 35.771790, 34.738407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439716, 35.920647, 34.380508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315342, 0.903917, 0.288953,
		0.916309, 0.210823, 0.340487,
		0.246854, 0.372140, -0.894749,
		36.513775, 36.032288, 34.112083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726654, 36.435375, 34.871048>,  <36.340973, 35.771790, 34.738407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726654, 36.435375, 34.871048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601387, 36.477184, 34.493477>,  <36.526226, 36.502270, 34.266933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601387, 36.477184, 34.493477>,  <36.726654, 36.435375, 34.871048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601387, 36.477184, 34.493477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311104, 0.927792, 0.205952,
		0.897296, 0.358158, -0.258038,
		-0.313169, 0.104523, -0.943928,
		36.507435, 36.508541, 34.210297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890629, 37.183796, 34.602009>,  <36.726654, 36.435375, 34.871048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890629, 37.183796, 34.602009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594440, 37.040436, 34.374588>,  <36.416729, 36.954418, 34.238136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594440, 37.040436, 34.374588>,  <36.890629, 37.183796, 34.602009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594440, 37.040436, 34.374588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476641, 0.876443, 0.068276,
		0.473834, 0.321552, -0.819808,
		-0.740469, -0.358403, -0.568554,
		36.372299, 36.932915, 34.204021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764656, 37.711319, 34.157906>,  <36.890629, 37.183796, 34.602009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764656, 37.711319, 34.157906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437462, 37.481934, 34.139851>,  <36.241146, 37.344303, 34.129017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437462, 37.481934, 34.139851>,  <36.764656, 37.711319, 34.157906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437462, 37.481934, 34.139851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573702, 0.807570, 0.136737,
		-0.041962, 0.137745, -0.989579,
		-0.817988, -0.573461, -0.045137,
		36.192066, 37.309895, 34.126308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079697, 38.253574, 34.583195>,  <36.764656, 37.711319, 34.157906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079697, 38.253574, 34.583195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232151, 38.616444, 34.511887>,  <37.323624, 38.834164, 34.469101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232151, 38.616444, 34.511887>,  <37.079697, 38.253574, 34.583195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232151, 38.616444, 34.511887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137435, -0.135091, -0.981255,
		-0.914248, 0.398489, 0.073189,
		0.381132, 0.907170, -0.178273,
		37.346489, 38.888596, 34.458405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667931, 38.403687, 34.009457>,  <37.079697, 38.253574, 34.583195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667931, 38.403687, 34.009457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990673, 38.638054, 34.039597>,  <37.184319, 38.778675, 34.057682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990673, 38.638054, 34.039597>,  <36.667931, 38.403687, 34.009457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990673, 38.638054, 34.039597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123971, -0.043226, -0.991344,
		-0.577592, 0.809214, -0.107514,
		0.806857, 0.585922, 0.075353,
		37.232731, 38.813831, 34.062202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642036, 39.053898, 33.615536>,  <36.667931, 38.403687, 34.009457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642036, 39.053898, 33.615536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021713, 38.935020, 33.656933>,  <37.249519, 38.863693, 33.681770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021713, 38.935020, 33.656933>,  <36.642036, 39.053898, 33.615536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021713, 38.935020, 33.656933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129822, 0.070228, -0.989047,
		0.286669, 0.952231, 0.105242,
		0.949193, -0.297192, 0.103488,
		37.306473, 38.845863, 33.687981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010769, 39.238220, 32.963531>,  <36.642036, 39.053898, 33.615536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010769, 39.238220, 32.963531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237106, 38.947418, 33.119114>,  <37.372910, 38.772938, 33.212463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237106, 38.947418, 33.119114>,  <37.010769, 39.238220, 32.963531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237106, 38.947418, 33.119114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417902, -0.153774, -0.895384,
		0.710760, 0.669191, 0.216805,
		0.565844, -0.727006, 0.388952,
		37.406860, 38.729317, 33.235798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695297, 39.398388, 32.632473>,  <37.010769, 39.238220, 32.963531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695297, 39.398388, 32.632473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687370, 39.019550, 32.760616>,  <37.682613, 38.792248, 32.837502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687370, 39.019550, 32.760616>,  <37.695297, 39.398388, 32.632473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687370, 39.019550, 32.760616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439200, -0.296094, -0.848194,
		0.898171, 0.123895, 0.421828,
		-0.019813, -0.947089, 0.320358,
		37.681427, 38.735424, 32.856724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308270, 39.167900, 32.447090>,  <37.695297, 39.398388, 32.632473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308270, 39.167900, 32.447090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114479, 38.823059, 32.506496>,  <37.998203, 38.616154, 32.542141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114479, 38.823059, 32.506496>,  <38.308270, 39.167900, 32.447090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114479, 38.823059, 32.506496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471862, -0.400486, -0.785466,
		0.736634, -0.310459, 0.600821,
		-0.484475, -0.862106, 0.148518,
		37.969135, 38.564426, 32.551052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818123, 38.616997, 32.498432>,  <38.308270, 39.167900, 32.447090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818123, 38.616997, 32.498432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.469036, 38.453537, 32.391571>,  <38.259586, 38.355461, 32.327454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.469036, 38.453537, 32.391571>,  <38.818123, 38.616997, 32.498432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469036, 38.453537, 32.391571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457401, -0.492981, -0.740104,
		0.170744, -0.768097, 0.617150,
		-0.872715, -0.408654, -0.267154,
		38.207222, 38.330940, 32.311424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893009, 37.859314, 32.476791>,  <38.818123, 38.616997, 32.498432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893009, 37.859314, 32.476791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579563, 37.963455, 32.251167>,  <38.391495, 38.025940, 32.115791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579563, 37.963455, 32.251167>,  <38.893009, 37.859314, 32.476791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579563, 37.963455, 32.251167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318549, -0.611114, -0.724615,
		-0.533360, -0.747500, 0.395944,
		-0.783616, 0.260353, -0.564059,
		38.344479, 38.041561, 32.081951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723701, 37.282730, 32.176731>,  <38.893009, 37.859314, 32.476791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723701, 37.282730, 32.176731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518009, 37.541378, 31.951357>,  <38.394596, 37.696568, 31.816133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518009, 37.541378, 31.951357>,  <38.723701, 37.282730, 32.176731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518009, 37.541378, 31.951357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229762, -0.529071, -0.816880,
		-0.826305, -0.549517, 0.123494,
		-0.514227, 0.646618, -0.563432,
		38.363739, 37.735363, 31.782328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322193, 36.878754, 31.460283>,  <38.723701, 37.282730, 32.176731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322193, 36.878754, 31.460283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406303, 37.265911, 31.405191>,  <38.456768, 37.498207, 31.372137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406303, 37.265911, 31.405191>,  <38.322193, 36.878754, 31.460283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406303, 37.265911, 31.405191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323017, -0.201749, -0.924639,
		-0.922737, 0.149941, -0.355069,
		0.210276, 0.967892, -0.137728,
		38.469387, 37.556278, 31.363873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237823, 36.998825, 30.711002>,  <38.322193, 36.878754, 31.460283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237823, 36.998825, 30.711002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.416206, 37.337811, 30.826193>,  <38.523235, 37.541203, 30.895308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.416206, 37.337811, 30.826193>,  <38.237823, 36.998825, 30.711002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416206, 37.337811, 30.826193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442012, 0.071253, -0.894175,
		-0.778299, 0.526052, -0.342813,
		0.445956, 0.847462, 0.287977,
		38.549992, 37.592049, 30.912586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115898, 37.535595, 30.214445>,  <38.237823, 36.998825, 30.711002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115898, 37.535595, 30.214445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460911, 37.618778, 30.398966>,  <38.667919, 37.668690, 30.509678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460911, 37.618778, 30.398966>,  <38.115898, 37.535595, 30.214445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460911, 37.618778, 30.398966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494560, -0.153642, -0.855456,
		-0.107023, 0.965996, -0.235368,
		0.862529, 0.207957, 0.461300,
		38.719669, 37.681164, 30.537355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453915, 37.829414, 29.645611>,  <38.115898, 37.535595, 30.214445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453915, 37.829414, 29.645611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733471, 37.753597, 29.921474>,  <38.901203, 37.708107, 30.086992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733471, 37.753597, 29.921474>,  <38.453915, 37.829414, 29.645611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733471, 37.753597, 29.921474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618156, -0.324960, -0.715740,
		0.359773, 0.926539, -0.109945,
		0.698889, -0.189541, 0.689658,
		38.943138, 37.696735, 30.128372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096813, 38.136734, 29.392563>,  <38.453915, 37.829414, 29.645611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096813, 38.136734, 29.392563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.201103, 37.851418, 29.652790>,  <39.263676, 37.680229, 29.808928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.201103, 37.851418, 29.652790>,  <39.096813, 38.136734, 29.392563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201103, 37.851418, 29.652790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567531, -0.431898, -0.700980,
		0.780983, 0.551978, 0.292210,
		0.260721, -0.713291, 0.650569,
		39.279320, 37.637428, 29.847961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750851, 38.147671, 29.433294>,  <39.096813, 38.136734, 29.392563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750851, 38.147671, 29.433294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.677067, 37.764431, 29.520947>,  <39.632797, 37.534489, 29.573538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.677067, 37.764431, 29.520947>,  <39.750851, 38.147671, 29.433294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677067, 37.764431, 29.520947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552173, -0.285468, -0.783335,
		0.813069, -0.023492, 0.581694,
		-0.184457, -0.958100, 0.219133,
		39.621731, 37.477001, 29.586687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337803, 37.881035, 29.283131>,  <39.750851, 38.147671, 29.433294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337803, 37.881035, 29.283131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082893, 37.574474, 29.315432>,  <39.929947, 37.390537, 29.334812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082893, 37.574474, 29.315432>,  <40.337803, 37.881035, 29.283131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082893, 37.574474, 29.315432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460476, -0.462713, -0.757535,
		0.617939, -0.445569, 0.647780,
		-0.637270, -0.766398, 0.080754,
		39.891712, 37.344555, 29.339659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831272, 37.228073, 29.301420>,  <40.337803, 37.881035, 29.283131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831272, 37.228073, 29.301420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471905, 37.111092, 29.170387>,  <40.256283, 37.040901, 29.091768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471905, 37.111092, 29.170387>,  <40.831272, 37.228073, 29.301420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471905, 37.111092, 29.170387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437847, -0.539493, -0.719192,
		0.033604, -0.789568, 0.612742,
		-0.898421, -0.292455, -0.327581,
		40.202377, 37.023354, 29.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889702, 36.538654, 29.321472>,  <40.831272, 37.228073, 29.301420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889702, 36.538654, 29.321472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581161, 36.609882, 29.077076>,  <40.396038, 36.652618, 28.930437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581161, 36.609882, 29.077076>,  <40.889702, 36.538654, 29.321472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581161, 36.609882, 29.077076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452931, -0.520825, -0.723598,
		-0.447074, -0.834884, 0.321082,
		-0.771348, 0.178074, -0.610992,
		40.349758, 36.663303, 28.893778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880447, 35.915085, 28.951323>,  <40.889702, 36.538654, 29.321472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880447, 35.915085, 28.951323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.680309, 36.185795, 28.735310>,  <40.560226, 36.348221, 28.605701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.680309, 36.185795, 28.735310>,  <40.880447, 35.915085, 28.951323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680309, 36.185795, 28.735310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349722, -0.412606, -0.841101,
		-0.792056, -0.609698, -0.030239,
		-0.500341, 0.676775, -0.540032,
		40.530209, 36.388828, 28.573299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711082, 35.628448, 28.315378>,  <40.880447, 35.915085, 28.951323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711082, 35.628448, 28.315378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.658745, 36.014877, 28.226316>,  <40.627342, 36.246735, 28.172878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.658745, 36.014877, 28.226316>,  <40.711082, 35.628448, 28.315378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658745, 36.014877, 28.226316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539430, -0.119057, -0.833571,
		-0.831802, -0.229175, -0.505553,
		-0.130844, 0.966077, -0.222656,
		40.619492, 36.304699, 28.159519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228943, 35.777779, 27.803865>,  <40.711082, 35.628448, 28.315378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228943, 35.777779, 27.803865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.454136, 36.108288, 27.796692>,  <40.589252, 36.306595, 27.792387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.454136, 36.108288, 27.796692>,  <40.228943, 35.777779, 27.803865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454136, 36.108288, 27.796692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360066, -0.264751, -0.894572,
		-0.743909, 0.497172, -0.446564,
		0.562985, 0.826273, -0.017936,
		40.623032, 36.356171, 27.791311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222115, 36.055676, 27.053255>,  <40.228943, 35.777779, 27.803865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222115, 36.055676, 27.053255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.538868, 36.227173, 27.227196>,  <40.728920, 36.330070, 27.331560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.538868, 36.227173, 27.227196>,  <40.222115, 36.055676, 27.053255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538868, 36.227173, 27.227196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562962, -0.236620, -0.791887,
		-0.236620, 0.871890, -0.428742,
		0.791887, 0.428742, 0.434851,
		40.776436, 36.355797, 27.357651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556629, 36.330338, 26.454012>,  <40.222115, 36.055676, 27.053255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556629, 36.330338, 26.454012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.827560, 36.346310, 26.747852>,  <40.990120, 36.355892, 26.924156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.827560, 36.346310, 26.747852>,  <40.556629, 36.330338, 26.454012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827560, 36.346310, 26.747852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704826, -0.321378, -0.632405,
		0.210833, 0.946109, -0.245820,
		0.677325, 0.039929, 0.734599,
		41.030758, 36.358288, 26.968231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109776, 36.862591, 26.250603>,  <40.556629, 36.330338, 26.454012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109776, 36.862591, 26.250603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.259079, 36.614899, 26.526930>,  <41.348663, 36.466282, 26.692726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.259079, 36.614899, 26.526930>,  <41.109776, 36.862591, 26.250603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259079, 36.614899, 26.526930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777330, -0.197702, -0.597220,
		0.506393, 0.759913, 0.407552,
		0.373262, -0.619230, 0.690818,
		41.371059, 36.429131, 26.734175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752903, 37.078186, 26.246485>,  <41.109776, 36.862591, 26.250603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752903, 37.078186, 26.246485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.750462, 36.719837, 26.424189>,  <41.748997, 36.504826, 26.530811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.750462, 36.719837, 26.424189>,  <41.752903, 37.078186, 26.246485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750462, 36.719837, 26.424189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816532, -0.260930, -0.514967,
		0.577268, 0.359612, 0.733103,
		-0.006101, -0.895877, 0.444261,
		41.748631, 36.451073, 26.557467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442924, 36.877659, 26.234438>,  <41.752903, 37.078186, 26.246485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442924, 36.877659, 26.234438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.259304, 36.533268, 26.322067>,  <42.149132, 36.326633, 26.374645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.259304, 36.533268, 26.322067>,  <42.442924, 36.877659, 26.234438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259304, 36.533268, 26.322067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731138, -0.506200, -0.457382,
		0.504690, -0.049789, 0.861864,
		-0.459048, -0.860978, 0.219071,
		42.121590, 36.274975, 26.387789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825211, 36.513783, 26.831213>,  <42.442924, 36.877659, 26.234438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825211, 36.513783, 26.831213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644676, 36.267937, 26.572432>,  <42.536354, 36.120430, 26.417164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644676, 36.267937, 26.572432>,  <42.825211, 36.513783, 26.831213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644676, 36.267937, 26.572432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891881, -0.334306, -0.304611,
		-0.029062, -0.714486, 0.699045,
		-0.451336, -0.614612, -0.646952,
		42.509274, 36.083553, 26.378345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241806, 35.826561, 26.743484>,  <42.825211, 36.513783, 26.831213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241806, 35.826561, 26.743484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.053871, 35.841469, 26.390697>,  <42.941113, 35.850414, 26.179026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.053871, 35.841469, 26.390697>,  <43.241806, 35.826561, 26.743484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053871, 35.841469, 26.390697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849320, -0.253288, -0.463143,
		-0.240649, -0.966673, 0.087357,
		-0.469834, 0.037261, -0.881967,
		42.912922, 35.852650, 26.126106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510761, 35.638245, 27.436382>,  <43.241806, 35.826561, 26.743484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510761, 35.638245, 27.436382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867741, 35.552475, 27.595156>,  <44.081928, 35.501015, 27.690420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867741, 35.552475, 27.595156>,  <43.510761, 35.638245, 27.436382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867741, 35.552475, 27.595156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327967, 0.295807, 0.897182,
		-0.309792, -0.930871, 0.193670,
		0.892450, -0.214422, 0.396933,
		44.135475, 35.488148, 27.714235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324986, 35.516342, 28.149031>,  <43.510761, 35.638245, 27.436382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324986, 35.516342, 28.149031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.723480, 35.551025, 28.148645>,  <43.962578, 35.571835, 28.148415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.723480, 35.551025, 28.148645>,  <43.324986, 35.516342, 28.149031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723480, 35.551025, 28.148645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021511, 0.257862, 0.965942,
		0.084003, -0.962283, 0.258756,
		0.996233, 0.086709, -0.000962,
		44.022350, 35.577038, 28.148357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552444, 35.079376, 28.734964>,  <43.324986, 35.516342, 28.149031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552444, 35.079376, 28.734964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.807831, 35.378952, 28.664017>,  <43.961063, 35.558697, 28.621449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.807831, 35.378952, 28.664017>,  <43.552444, 35.079376, 28.734964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807831, 35.378952, 28.664017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114053, 0.319973, 0.940537,
		0.761154, -0.580269, 0.289710,
		0.638464, 0.748936, -0.177367,
		43.999371, 35.603634, 28.610807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013855, 35.048298, 29.323488>,  <43.552444, 35.079376, 28.734964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013855, 35.048298, 29.323488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042019, 35.408932, 29.152752>,  <44.058918, 35.625313, 29.050310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042019, 35.408932, 29.152752>,  <44.013855, 35.048298, 29.323488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042019, 35.408932, 29.152752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153473, 0.432597, 0.888429,
		0.985641, 0.002953, 0.168828,
		0.070411, 0.901583, -0.426839,
		44.063141, 35.679405, 29.024700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566219, 35.394905, 29.676348>,  <44.013855, 35.048298, 29.323488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566219, 35.394905, 29.676348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.351952, 35.684063, 29.501772>,  <44.223392, 35.857559, 29.397026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.351952, 35.684063, 29.501772>,  <44.566219, 35.394905, 29.676348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351952, 35.684063, 29.501772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156874, 0.422658, 0.892609,
		0.829728, 0.546610, -0.113001,
		-0.535669, 0.722896, -0.436440,
		44.191250, 35.900932, 29.370840>
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
