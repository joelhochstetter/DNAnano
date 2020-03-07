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
	<4.251645, 0.626846, 2.480336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.104107, 0.719833, 2.840317>,  <4.015584, 0.775626, 3.056305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.104107, 0.719833, 2.840317>,  <4.251645, 0.626846, 2.480336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.104107, 0.719833, 2.840317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895985, -0.346543, -0.277703,
		0.247315, -0.908772, 0.336108,
		-0.368845, 0.232468, 0.899951,
		3.993454, 0.789574, 3.110302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.821485, 0.139834, 2.739413>,  <4.251645, 0.626846, 2.480336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.821485, 0.139834, 2.739413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708492, 0.494675, 2.885429>,  <3.640697, 0.707579, 2.973039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708492, 0.494675, 2.885429>,  <3.821485, 0.139834, 2.739413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.708492, 0.494675, 2.885429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922576, -0.146989, -0.356718,
		-0.262788, -0.437545, 0.859940,
		-0.282482, 0.887101, 0.365041,
		3.623748, 0.760805, 2.994942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.203465, 0.032516, 3.154482>,  <3.821485, 0.139834, 2.739413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.203465, 0.032516, 3.154482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.214485, 0.409012, 3.019836>,  <3.221097, 0.634909, 2.939049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.214485, 0.409012, 3.019836>,  <3.203465, 0.032516, 3.154482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.214485, 0.409012, 3.019836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948710, -0.081475, -0.305468,
		-0.314945, 0.327764, 0.890719,
		0.027550, 0.941240, -0.336613,
		3.222750, 0.691384, 2.918853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.577490, 0.262626, 3.257272>,  <3.203465, 0.032516, 3.154482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.577490, 0.262626, 3.257272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.725292, 0.496964, 2.968758>,  <2.813973, 0.637566, 2.795649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.725292, 0.496964, 2.968758>,  <2.577490, 0.262626, 3.257272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.725292, 0.496964, 2.968758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913395, 0.086307, -0.397820,
		-0.170808, 0.805815, 0.566997,
		0.369505, 0.585843, -0.721286,
		2.836144, 0.672717, 2.752372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.165834, 0.943367, 3.143608>,  <2.577490, 0.262626, 3.257272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.165834, 0.943367, 3.143608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.317333, 0.781708, 2.810570>,  <2.408233, 0.684712, 2.610747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.317333, 0.781708, 2.810570>,  <2.165834, 0.943367, 3.143608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.317333, 0.781708, 2.810570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921408, -0.080166, -0.380236,
		0.086926, 0.911174, -0.402747,
		0.378748, -0.404147, -0.832595,
		2.430958, 0.660464, 2.560791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.738166, 1.132786, 2.432745>,  <2.165834, 0.943367, 3.143608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.738166, 1.132786, 2.432745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.902531, 0.786224, 2.319260>,  <2.001150, 0.578287, 2.251168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.902531, 0.786224, 2.319260>,  <1.738166, 1.132786, 2.432745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.902531, 0.786224, 2.319260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773636, -0.166738, -0.611299,
		0.482326, 0.470682, -0.738796,
		0.410912, -0.866405, -0.283715,
		2.025804, 0.526303, 2.234145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.754232, 1.073706, 1.665741>,  <1.738166, 1.132786, 2.432745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.754232, 1.073706, 1.665741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770634, 0.703491, 1.816315>,  <1.780475, 0.481363, 1.906659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770634, 0.703491, 1.816315>,  <1.754232, 1.073706, 1.665741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.770634, 0.703491, 1.816315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708364, -0.292632, -0.642330,
		0.704655, -0.240313, -0.667616,
		0.041005, -0.925536, 0.376433,
		1.782935, 0.425830, 1.929245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.553350, 0.624906, 1.094708>,  <1.754232, 1.073706, 1.665741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.553350, 0.624906, 1.094708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551220, 0.357086, 1.391808>,  <1.549942, 0.196394, 1.570067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551220, 0.357086, 1.391808>,  <1.553350, 0.624906, 1.094708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.551220, 0.357086, 1.391808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750456, -0.488220, -0.445485,
		0.660899, -0.559772, -0.499868,
		-0.005325, -0.669550, 0.742748,
		1.549623, 0.156221, 1.614632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.260323, 5.132300, 0.808790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.156885, 4.896805, 1.115128>,  <0.094822, 4.755507, 1.298930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.156885, 4.896805, 1.115128>,  <0.260323, 5.132300, 0.808790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.156885, 4.896805, 1.115128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926590, 0.072926, 0.368934,
		-0.273056, 0.805028, 0.526660,
		-0.258595, -0.588738, 0.765844,
		0.079307, 4.720183, 1.344881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.502617, 5.381732, 1.413075>,  <0.260323, 5.132300, 0.808790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.502617, 5.381732, 1.413075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.454132, 4.993454, 1.496078>,  <0.425041, 4.760487, 1.545880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.454132, 4.993454, 1.496078>,  <0.502617, 5.381732, 1.413075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.454132, 4.993454, 1.496078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943265, -0.047537, 0.328621,
		-0.309127, 0.235568, 0.921384,
		-0.121213, -0.970695, 0.207508,
		0.417768, 4.702246, 1.558331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.593345, 5.172944, 2.195047>,  <0.502617, 5.381732, 1.413075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.593345, 5.172944, 2.195047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.708599, 4.924744, 1.903305>,  <0.777752, 4.775824, 1.728260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.708599, 4.924744, 1.903305>,  <0.593345, 5.172944, 2.195047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.708599, 4.924744, 1.903305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926838, -0.010760, 0.375308,
		-0.240726, -0.784133, 0.572002,
		0.288136, -0.620499, -0.729354,
		0.795040, 4.738594, 1.684499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.907349, 4.548587, 2.533136>,  <0.593345, 5.172944, 2.195047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.907349, 4.548587, 2.533136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.056324, 4.667496, 2.181473>,  <1.145709, 4.738841, 1.970475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.056324, 4.667496, 2.181473>,  <0.907349, 4.548587, 2.533136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.056324, 4.667496, 2.181473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883681, 0.175835, 0.433810,
		0.283546, -0.938463, -0.197205,
		0.372438, 0.297271, -0.879158,
		1.168056, 4.756677, 1.917725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.565547, 4.263870, 2.568562>,  <0.907349, 4.548587, 2.533136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.565547, 4.263870, 2.568562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.567270, 4.541092, 2.280212>,  <1.568304, 4.707425, 2.107203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.567270, 4.541092, 2.280212>,  <1.565547, 4.263870, 2.568562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.567270, 4.541092, 2.280212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880186, 0.339511, 0.331670,
		0.474610, -0.635931, -0.608553,
		0.004309, 0.693054, -0.720873,
		1.568563, 4.749008, 2.063951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.245333, 4.252928, 2.310481>,  <1.565547, 4.263870, 2.568562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.245333, 4.252928, 2.310481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083977, 4.594116, 2.177986>,  <1.987163, 4.798829, 2.098489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083977, 4.594116, 2.177986>,  <2.245333, 4.252928, 2.310481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.083977, 4.594116, 2.177986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858215, 0.478252, 0.186392,
		0.317401, -0.209084, -0.924954,
		-0.403390, 0.852970, -0.331237,
		1.962960, 4.850008, 2.078615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.664663, 4.489053, 1.805220>,  <2.245333, 4.252928, 2.310481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.664663, 4.489053, 1.805220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.471445, 4.799774, 1.966835>,  <2.355515, 4.986207, 2.063804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.471445, 4.799774, 1.966835>,  <2.664663, 4.489053, 1.805220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.471445, 4.799774, 1.966835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871838, 0.469408, 0.139836,
		-0.081034, 0.419803, -0.903991,
		-0.483044, 0.776802, 0.404038,
		2.326532, 5.032815, 2.088046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.938017, 5.121015, 1.541401>,  <2.664663, 4.489053, 1.805220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.938017, 5.121015, 1.541401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757481, 5.237656, 1.878746>,  <2.649159, 5.307640, 2.081153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757481, 5.237656, 1.878746>,  <2.938017, 5.121015, 1.541401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.757481, 5.237656, 1.878746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710776, 0.688897, 0.142192,
		-0.539526, 0.663619, -0.518190,
		-0.451341, 0.291601, 0.843362,
		2.622078, 5.325136, 2.131755>
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
