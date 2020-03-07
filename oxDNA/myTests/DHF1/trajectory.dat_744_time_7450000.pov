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
	<4.194384, 2.435839, 2.158806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.022079, 2.778925, 2.046541>,  <3.918697, 2.984776, 1.979182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.022079, 2.778925, 2.046541>,  <4.194384, 2.435839, 2.158806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.022079, 2.778925, 2.046541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008856, 0.306961, 0.951681,
		0.902422, 0.412433, -0.124631,
		-0.430762, 0.857714, -0.280661,
		3.892851, 3.036239, 1.962343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.473685, 2.968473, 2.550208>,  <4.194384, 2.435839, 2.158806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.473685, 2.968473, 2.550208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.121326, 3.118114, 2.434231>,  <3.909911, 3.207900, 2.364645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.121326, 3.118114, 2.434231>,  <4.473685, 2.968473, 2.550208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.121326, 3.118114, 2.434231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106960, 0.439396, 0.891903,
		0.461065, 0.816687, -0.347048,
		-0.880897, 0.374104, -0.289943,
		3.857058, 3.230346, 2.347248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.347587, 3.748405, 2.671062>,  <4.473685, 2.968473, 2.550208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.347587, 3.748405, 2.671062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.993793, 3.570169, 2.726397>,  <3.781517, 3.463228, 2.759597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.993793, 3.570169, 2.726397>,  <4.347587, 3.748405, 2.671062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.993793, 3.570169, 2.726397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087702, 0.449993, 0.888715,
		-0.458253, 0.773922, -0.437091,
		-0.884484, -0.445590, 0.138336,
		3.728448, 3.436492, 2.767898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.754140, 4.201157, 2.684221>,  <4.347587, 3.748405, 2.671062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.754140, 4.201157, 2.684221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.737576, 3.861290, 2.894497>,  <3.727637, 3.657370, 3.020663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.737576, 3.861290, 2.894497>,  <3.754140, 4.201157, 2.684221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.737576, 3.861290, 2.894497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038762, 0.527113, 0.848911,
		-0.998390, 0.014778, -0.054764,
		-0.041412, -0.849667, 0.525691,
		3.725152, 3.606390, 3.052204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.296379, 4.401468, 3.223447>,  <3.754140, 4.201157, 2.684221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.296379, 4.401468, 3.223447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459469, 4.069489, 3.375734>,  <3.557323, 3.870301, 3.467107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459469, 4.069489, 3.375734>,  <3.296379, 4.401468, 3.223447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.459469, 4.069489, 3.375734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118488, 0.461512, 0.879186,
		-0.905385, -0.313354, 0.286508,
		0.407724, -0.829949, 0.380717,
		3.581786, 3.820504, 3.489949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.948945, 4.262904, 3.807466>,  <3.296379, 4.401468, 3.223447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.948945, 4.262904, 3.807466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.293701, 4.064466, 3.849483>,  <3.500555, 3.945404, 3.874694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.293701, 4.064466, 3.849483>,  <2.948945, 4.262904, 3.807466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.293701, 4.064466, 3.849483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065266, 0.313950, 0.947194,
		-0.502875, -0.809522, 0.302969,
		0.861891, -0.496094, 0.105043,
		3.552269, 3.915638, 3.880996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.897728, 4.064367, 4.474621>,  <2.948945, 4.262904, 3.807466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.897728, 4.064367, 4.474621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290401, 4.021873, 4.411360>,  <3.526005, 3.996377, 4.373403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290401, 4.021873, 4.411360>,  <2.897728, 4.064367, 4.474621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.290401, 4.021873, 4.411360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185537, 0.344429, 0.920296,
		-0.043295, -0.932782, 0.357830,
		0.981683, -0.106235, -0.158154,
		3.584906, 3.990003, 4.363914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.258478, 3.757425, 5.037830>,  <2.897728, 4.064367, 4.474621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.258478, 3.757425, 5.037830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.545429, 3.942297, 4.829309>,  <3.717600, 4.053220, 4.704197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.545429, 3.942297, 4.829309>,  <3.258478, 3.757425, 5.037830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.545429, 3.942297, 4.829309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290311, 0.481889, 0.826742,
		0.633314, -0.744427, 0.211521,
		0.717379, 0.462181, -0.521302,
		3.760643, 4.080951, 4.672919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.779969, 5.110828, 5.565042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.128792, 5.190029, 5.386017>,  <4.338085, 5.237550, 5.278602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.128792, 5.190029, 5.386017>,  <3.779969, 5.110828, 5.565042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.128792, 5.190029, 5.386017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215395, -0.665891, -0.714279,
		-0.439458, 0.719294, -0.538046,
		0.872056, 0.198003, -0.447563,
		4.390409, 5.249430, 5.251748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.684654, 5.318102, 4.795928>,  <3.779969, 5.110828, 5.565042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.684654, 5.318102, 4.795928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044212, 5.160793, 4.873205>,  <4.259947, 5.066408, 4.919571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044212, 5.160793, 4.873205>,  <3.684654, 5.318102, 4.795928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.044212, 5.160793, 4.873205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162586, -0.708812, -0.686405,
		0.406882, 0.585595, -0.701088,
		0.898895, -0.393273, 0.193193,
		4.313881, 5.042811, 4.931163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.349087, 5.176702, 4.243624>,  <3.684654, 5.318102, 4.795928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.349087, 5.176702, 4.243624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.275757, 4.881836, 4.503771>,  <4.231759, 4.704916, 4.659859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.275757, 4.881836, 4.503771>,  <4.349087, 5.176702, 4.243624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.275757, 4.881836, 4.503771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091423, -0.671497, -0.735346,
		0.978792, -0.075350, 0.190497,
		-0.183326, -0.737167, 0.650367,
		4.220759, 4.660686, 4.698881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.861350, 4.675756, 4.322169>,  <4.349087, 5.176702, 4.243624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.861350, 4.675756, 4.322169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.515320, 4.492374, 4.403622>,  <4.307702, 4.382346, 4.452493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.515320, 4.492374, 4.403622>,  <4.861350, 4.675756, 4.322169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.515320, 4.492374, 4.403622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166050, -0.644744, -0.746145,
		0.473362, -0.611658, 0.633879,
		-0.865075, -0.458453, 0.203632,
		4.255797, 4.354838, 4.464711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.843065, 3.975298, 4.099867>,  <4.861350, 4.675756, 4.322169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.843065, 3.975298, 4.099867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.454239, 3.971722, 4.193684>,  <4.220943, 3.969576, 4.249973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.454239, 3.971722, 4.193684>,  <4.843065, 3.975298, 4.099867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.454239, 3.971722, 4.193684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158482, -0.712074, -0.683984,
		0.173125, -0.702047, 0.690766,
		-0.972065, -0.008941, 0.234540,
		4.162619, 3.969039, 4.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.679223, 3.258686, 4.126371>,  <4.843065, 3.975298, 4.099867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.679223, 3.258686, 4.126371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.334579, 3.447651, 4.052122>,  <4.127793, 3.561030, 4.007573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.334579, 3.447651, 4.052122>,  <4.679223, 3.258686, 4.126371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.334579, 3.447651, 4.052122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189939, -0.639227, -0.745193,
		-0.470693, -0.606808, 0.640493,
		-0.861610, 0.472412, -0.185623,
		4.076097, 3.589375, 3.996435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.136948, 2.756437, 3.973819>,  <4.679223, 3.258686, 4.126371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.136948, 2.756437, 3.973819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.938011, 3.068035, 3.821075>,  <3.818649, 3.254994, 3.729429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.938011, 3.068035, 3.821075>,  <4.136948, 2.756437, 3.973819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.938011, 3.068035, 3.821075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230950, -0.543154, -0.807246,
		-0.836250, -0.313286, 0.450042,
		-0.497341, 0.778997, -0.381859,
		3.788809, 3.301734, 3.706518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.330223, 2.567521, 3.690664>,  <4.136948, 2.756437, 3.973819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.330223, 2.567521, 3.690664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.495590, 2.888332, 3.518229>,  <3.594810, 3.080819, 3.414767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.495590, 2.888332, 3.518229>,  <3.330223, 2.567521, 3.690664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.495590, 2.888332, 3.518229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148446, -0.407741, -0.900950,
		-0.898359, 0.436463, -0.049509,
		0.413418, 0.802027, -0.431089,
		3.619616, 3.128941, 3.388902>
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
