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
	<5.472962, 1.410787, 1.257298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.123093, 1.245644, 1.155716>,  <4.913171, 1.146557, 1.094767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.123093, 1.245644, 1.155716>,  <5.472962, 1.410787, 1.257298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.123093, 1.245644, 1.155716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130620, -0.303779, 0.943746,
		-0.466780, 0.858642, 0.211780,
		-0.874674, -0.412859, -0.253954,
		4.860691, 1.121786, 1.079530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.776720, 1.644575, 1.614112>,  <5.472962, 1.410787, 1.257298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.776720, 1.644575, 1.614112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784218, 1.254677, 1.525101>,  <4.788717, 1.020738, 1.471694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784218, 1.254677, 1.525101>,  <4.776720, 1.644575, 1.614112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.784218, 1.254677, 1.525101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191119, -0.221958, 0.956142,
		-0.981388, 0.024606, -0.190453,
		0.018746, -0.974746, -0.222530,
		4.789842, 0.962253, 1.458342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.084898, 1.384386, 1.787807>,  <4.776720, 1.644575, 1.614112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.084898, 1.384386, 1.787807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361046, 1.095268, 1.775429>,  <4.526735, 0.921798, 1.768002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361046, 1.095268, 1.775429>,  <4.084898, 1.384386, 1.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361046, 1.095268, 1.775429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278501, -0.304998, 0.910721,
		-0.667702, -0.620116, -0.411860,
		0.690370, -0.722794, -0.030945,
		4.568157, 0.878430, 1.766145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.642151, 0.947589, 1.879540>,  <4.084898, 1.384386, 1.787807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.642151, 0.947589, 1.879540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.019859, 0.890587, 1.998230>,  <4.246484, 0.856385, 2.069444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.019859, 0.890587, 1.998230>,  <3.642151, 0.947589, 1.879540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.019859, 0.890587, 1.998230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320790, -0.196263, 0.926593,
		-0.073810, -0.970141, -0.231040,
		0.944270, -0.142507, 0.296726,
		4.303140, 0.847835, 2.087248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.612735, 0.269101, 2.119417>,  <3.642151, 0.947589, 1.879540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.612735, 0.269101, 2.119417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.938217, 0.445572, 2.270807>,  <4.133507, 0.551455, 2.361641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.938217, 0.445572, 2.270807>,  <3.612735, 0.269101, 2.119417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.938217, 0.445572, 2.270807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287034, -0.261226, 0.921614,
		0.505463, -0.858559, -0.085928,
		0.813707, 0.441178, 0.378476,
		4.182329, 0.577925, 2.384350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.790502, -0.224790, 2.574820>,  <3.612735, 0.269101, 2.119417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.790502, -0.224790, 2.574820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.977310, 0.105625, 2.701029>,  <4.089395, 0.303874, 2.776754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.977310, 0.105625, 2.701029>,  <3.790502, -0.224790, 2.574820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.977310, 0.105625, 2.701029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356289, -0.150789, 0.922129,
		0.809290, -0.543070, 0.223886,
		0.467021, 0.826038, 0.315522,
		4.117416, 0.353436, 2.795686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.215680, -0.493315, 3.086654>,  <3.790502, -0.224790, 2.574820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.215680, -0.493315, 3.086654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.145164, -0.105366, 3.153906>,  <4.102855, 0.127404, 3.194257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.145164, -0.105366, 3.153906>,  <4.215680, -0.493315, 3.086654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.145164, -0.105366, 3.153906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163232, -0.197243, 0.966670,
		0.970710, 0.142970, 0.193087,
		-0.176289, 0.969874, 0.168129,
		4.092278, 0.185596, 3.204345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.672750, -0.249808, 3.537888>,  <4.215680, -0.493315, 3.086654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.672750, -0.249808, 3.537888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.346420, -0.019608, 3.560625>,  <4.150623, 0.118513, 3.574267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.346420, -0.019608, 3.560625>,  <4.672750, -0.249808, 3.537888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.346420, -0.019608, 3.560625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029147, -0.057247, 0.997934,
		0.577567, 0.815795, 0.029929,
		-0.815823, 0.575501, 0.056842,
		4.101673, 0.153043, 3.577678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.037682, 0.001599, 4.789981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.732101, 0.259399, 4.802616>,  <3.548753, 0.414080, 4.810197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.732101, 0.259399, 4.802616>,  <4.037682, 0.001599, 4.789981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.732101, 0.259399, 4.802616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256032, 0.347689, -0.901976,
		-0.592307, -0.680977, -0.430630,
		-0.763950, 0.644502, 0.031586,
		3.502916, 0.452750, 4.812092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.667770, -0.004050, 4.182195>,  <4.037682, 0.001599, 4.789981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.667770, -0.004050, 4.182195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676819, 0.369827, 4.324089>,  <3.682248, 0.594154, 4.409225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676819, 0.369827, 4.324089>,  <3.667770, -0.004050, 4.182195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.676819, 0.369827, 4.324089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348537, 0.325192, -0.879074,
		-0.937022, 0.143525, -0.318419,
		0.022622, 0.934693, 0.354736,
		3.683605, 0.650235, 4.430510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095058, 0.505800, 3.858773>,  <3.667770, -0.004050, 4.182195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095058, 0.505800, 3.858773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.453033, 0.640251, 3.976147>,  <3.667819, 0.720922, 4.046571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.453033, 0.640251, 3.976147>,  <3.095058, 0.505800, 3.858773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.453033, 0.640251, 3.976147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226428, 0.224546, -0.947792,
		-0.384470, 0.914656, 0.124846,
		0.894938, 0.336129, 0.293435,
		3.721515, 0.741090, 4.064177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.290908, 1.158179, 3.558331>,  <3.095058, 0.505800, 3.858773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.290908, 1.158179, 3.558331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607010, 0.922489, 3.625637>,  <3.796671, 0.781075, 3.666020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607010, 0.922489, 3.625637>,  <3.290908, 1.158179, 3.558331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.607010, 0.922489, 3.625637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322202, 0.165978, -0.932007,
		0.521233, 0.790738, 0.321014,
		0.790255, -0.589224, 0.168264,
		3.844086, 0.745722, 3.676116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.806512, 1.443818, 3.219235>,  <3.290908, 1.158179, 3.558331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.806512, 1.443818, 3.219235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.943909, 1.069870, 3.255085>,  <4.026347, 0.845501, 3.276595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.943909, 1.069870, 3.255085>,  <3.806512, 1.443818, 3.219235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.943909, 1.069870, 3.255085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510820, 0.105897, -0.853140,
		0.788084, 0.338828, 0.513925,
		0.343491, -0.934869, 0.089625,
		4.046956, 0.789409, 3.281972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.593532, 1.451071, 3.191250>,  <3.806512, 1.443818, 3.219235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.593532, 1.451071, 3.191250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.453026, 1.093941, 3.078484>,  <4.368722, 0.879663, 3.010824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.453026, 1.093941, 3.078484>,  <4.593532, 1.451071, 3.191250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.453026, 1.093941, 3.078484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678437, -0.035210, -0.733815,
		0.645242, -0.449025, 0.618093,
		-0.351264, -0.892825, -0.281916,
		4.347647, 0.826093, 2.993909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.164040, 1.126123, 3.057564>,  <4.593532, 1.451071, 3.191250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.164040, 1.126123, 3.057564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.861069, 0.973091, 2.845928>,  <4.679286, 0.881272, 2.718946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.861069, 0.973091, 2.845928>,  <5.164040, 1.126123, 3.057564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.861069, 0.973091, 2.845928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588801, -0.050034, -0.806728,
		0.282166, -0.922566, 0.263162,
		-0.757427, -0.382581, -0.529090,
		4.633841, 0.858317, 2.687201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.475585, 0.592705, 2.653620>,  <5.164040, 1.126123, 3.057564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.475585, 0.592705, 2.653620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.138130, 0.723938, 2.483612>,  <4.935658, 0.802678, 2.381608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.138130, 0.723938, 2.483612>,  <5.475585, 0.592705, 2.653620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.138130, 0.723938, 2.483612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504229, 0.212137, -0.837109,
		-0.184478, -0.920522, -0.344395,
		-0.843636, 0.328082, -0.425019,
		4.885039, 0.822362, 2.356106>
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
