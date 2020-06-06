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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.977538, 14.901670, 14.968457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.354495, 15.034795, 14.981935>,  <4.580668, 15.114669, 14.990021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.354495, 15.034795, 14.981935>,  <3.977538, 14.901670, 14.968457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.354495, 15.034795, 14.981935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310522, -0.907817, 0.281860,
		0.124394, -0.255159, -0.958864,
		0.942392, 0.332810, 0.033694,
		4.637212, 15.134638, 14.992043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.346809, 14.402585, 14.806065>,  <3.977538, 14.901670, 14.968457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.346809, 14.402585, 14.806065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.593378, 14.637500, 15.015872>,  <4.741319, 14.778448, 15.141756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.593378, 14.637500, 15.015872>,  <4.346809, 14.402585, 14.806065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.593378, 14.637500, 15.015872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428308, -0.809040, 0.402501,
		0.660739, -0.023455, -0.750249,
		0.616422, 0.587286, 0.524518,
		4.778304, 14.813685, 15.173227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.963370, 14.417080, 14.519781>,  <4.346809, 14.402585, 14.806065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.963370, 14.417080, 14.519781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.004096, 14.476402, 14.913256>,  <5.028531, 14.511995, 15.149341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.004096, 14.476402, 14.913256>,  <4.963370, 14.417080, 14.519781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.004096, 14.476402, 14.913256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368118, -0.924250, 0.101244,
		0.924188, 0.351805, -0.148695,
		0.101813, 0.148305, 0.983687,
		5.034639, 14.520894, 15.208362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.638968, 14.178349, 14.224720>,  <4.963370, 14.417080, 14.519781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.638968, 14.178349, 14.224720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.008862, 14.255576, 14.355921>,  <6.230800, 14.301913, 14.434641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.008862, 14.255576, 14.355921>,  <5.638968, 14.178349, 14.224720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.008862, 14.255576, 14.355921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168172, 0.565829, -0.807190,
		-0.341437, 0.801599, 0.490775,
		0.924738, 0.193070, 0.328001,
		6.286284, 14.313498, 14.454321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.624533, 14.929817, 14.192702>,  <5.638968, 14.178349, 14.224720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.624533, 14.929817, 14.192702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.978262, 14.743986, 14.174197>,  <6.190500, 14.632487, 14.163095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.978262, 14.743986, 14.174197>,  <5.624533, 14.929817, 14.192702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.978262, 14.743986, 14.174197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204311, 0.474182, -0.856393,
		0.419798, 0.747876, 0.514249,
		0.884323, -0.464579, -0.046262,
		6.243559, 14.604612, 14.160318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.109669, 15.372576, 13.977591>,  <5.624533, 14.929817, 14.192702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.109669, 15.372576, 13.977591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.235309, 15.006796, 13.875515>,  <6.310693, 14.787328, 13.814270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.235309, 15.006796, 13.875515>,  <6.109669, 15.372576, 13.977591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.235309, 15.006796, 13.875515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261281, 0.341674, -0.902769,
		0.912729, 0.216884, 0.346249,
		0.314100, -0.914451, -0.255188,
		6.329539, 14.732461, 13.798959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.646875, 15.669452, 13.652698>,  <6.109669, 15.372576, 13.977591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.646875, 15.669452, 13.652698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.606020, 15.284287, 13.552802>,  <6.581507, 15.053188, 13.492865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.606020, 15.284287, 13.552802>,  <6.646875, 15.669452, 13.652698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.606020, 15.284287, 13.552802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462367, 0.176333, -0.868979,
		0.880787, -0.204226, 0.427208,
		-0.102138, -0.962911, -0.249739,
		6.575378, 14.995414, 13.477880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.275944, 15.372811, 13.533573>,  <6.646875, 15.669452, 13.652698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.275944, 15.372811, 13.533573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983130, 15.201559, 13.321600>,  <6.807442, 15.098807, 13.194416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983130, 15.201559, 13.321600>,  <7.275944, 15.372811, 13.533573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.983130, 15.201559, 13.321600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398907, 0.361205, -0.842855,
		0.552267, -0.828393, -0.093630,
		-0.732035, -0.428131, -0.529933,
		6.763520, 15.073120, 13.162621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.638521, 15.129165, 12.889849>,  <7.275944, 15.372811, 13.533573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.638521, 15.129165, 12.889849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.248241, 15.122620, 12.802449>,  <7.014073, 15.118692, 12.750010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.248241, 15.122620, 12.802449>,  <7.638521, 15.129165, 12.889849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.248241, 15.122620, 12.802449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207464, 0.251810, -0.945278,
		0.070487, -0.967638, -0.242297,
		-0.975700, -0.016362, -0.218500,
		6.955531, 15.117711, 12.736899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.608032, 14.739830, 12.229241>,  <7.638521, 15.129165, 12.889849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.608032, 14.739830, 12.229241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.277923, 14.964039, 12.256784>,  <7.079858, 15.098564, 12.273310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.277923, 14.964039, 12.256784>,  <7.608032, 14.739830, 12.229241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.277923, 14.964039, 12.256784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151169, 0.336740, -0.929384,
		-0.544127, -0.756585, -0.362636,
		-0.825272, 0.560522, 0.068857,
		7.030341, 15.132195, 12.277442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.460703, 14.814909, 11.478316>,  <7.608032, 14.739830, 12.229241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.460703, 14.814909, 11.478316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.223021, 15.073410, 11.669847>,  <7.080411, 15.228511, 11.784766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.223021, 15.073410, 11.669847>,  <7.460703, 14.814909, 11.478316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.223021, 15.073410, 11.669847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087683, 0.539730, -0.837259,
		-0.799519, -0.539490, -0.264045,
		-0.594206, 0.646253, 0.478829,
		7.044759, 15.267285, 11.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.828460, 14.885599, 11.114932>,  <7.460703, 14.814909, 11.478316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.828460, 14.885599, 11.114932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.871522, 15.211815, 11.342372>,  <6.897360, 15.407544, 11.478836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.871522, 15.211815, 11.342372>,  <6.828460, 14.885599, 11.114932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.871522, 15.211815, 11.342372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085141, 0.562259, -0.822567,
		-0.990536, 0.136966, -0.008905,
		0.107657, 0.815540, 0.568599,
		6.903820, 15.456477, 11.512952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.410009, 15.378289, 10.877422>,  <6.828460, 14.885599, 11.114932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.410009, 15.378289, 10.877422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.687260, 15.572178, 11.090821>,  <6.853610, 15.688511, 11.218861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.687260, 15.572178, 11.090821>,  <6.410009, 15.378289, 10.877422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.687260, 15.572178, 11.090821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175656, 0.604233, -0.777205,
		-0.699086, 0.632413, 0.333666,
		0.693126, 0.484723, 0.533498,
		6.895197, 15.717595, 11.250871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.250734, 16.006063, 10.587016>,  <6.410009, 15.378289, 10.877422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.250734, 16.006063, 10.587016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.592150, 16.044371, 10.791877>,  <6.796999, 16.067354, 10.914793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.592150, 16.044371, 10.791877>,  <6.250734, 16.006063, 10.587016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.592150, 16.044371, 10.791877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410421, 0.481967, -0.774120,
		-0.320975, 0.870940, 0.372073,
		0.853539, 0.095767, 0.512152,
		6.848212, 16.073101, 10.945522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.413785, 16.700281, 10.812063>,  <6.250734, 16.006063, 10.587016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.413785, 16.700281, 10.812063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.767529, 16.518503, 10.769390>,  <6.979776, 16.409435, 10.743786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.767529, 16.518503, 10.769390>,  <6.413785, 16.700281, 10.812063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.767529, 16.518503, 10.769390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219606, 0.606707, -0.763989,
		0.411917, 0.652216, 0.636348,
		0.884363, -0.454446, -0.106682,
		7.032838, 16.382170, 10.737386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.957671, 17.274261, 10.799603>,  <6.413785, 16.700281, 10.812063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.957671, 17.274261, 10.799603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.134725, 16.952082, 10.641958>,  <7.240958, 16.758774, 10.547371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.134725, 16.952082, 10.641958>,  <6.957671, 17.274261, 10.799603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.134725, 16.952082, 10.641958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221624, 0.524145, -0.822287,
		0.868882, 0.276629, 0.410512,
		0.442636, -0.805449, -0.394112,
		7.267516, 16.710447, 10.523725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.714474, 17.448793, 10.622482>,  <6.957671, 17.274261, 10.799603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.714474, 17.448793, 10.622482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.616675, 17.121506, 10.414352>,  <7.557995, 16.925133, 10.289474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.616675, 17.121506, 10.414352>,  <7.714474, 17.448793, 10.622482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.616675, 17.121506, 10.414352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392532, 0.407155, -0.824708,
		0.886645, -0.405883, 0.221630,
		-0.244497, -0.818220, -0.520324,
		7.543325, 16.876040, 10.258255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.293544, 17.302483, 10.269141>,  <7.714474, 17.448793, 10.622482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.293544, 17.302483, 10.269141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.989245, 17.141222, 10.065679>,  <7.806665, 17.044466, 9.943601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.989245, 17.141222, 10.065679>,  <8.293544, 17.302483, 10.269141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.989245, 17.141222, 10.065679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443763, 0.248825, -0.860907,
		0.473642, -0.880656, -0.010390,
		-0.760748, -0.403151, -0.508656,
		7.761021, 17.020277, 9.913082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.609824, 17.019915, 9.766022>,  <8.293544, 17.302483, 10.269141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.609824, 17.019915, 9.766022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.235731, 17.048954, 9.627419>,  <8.011275, 17.066378, 9.544256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.235731, 17.048954, 9.627419>,  <8.609824, 17.019915, 9.766022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.235731, 17.048954, 9.627419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353998, 0.178174, -0.918118,
		-0.004917, -0.981317, -0.192334,
		-0.935234, 0.072600, -0.346508,
		7.955161, 17.070734, 9.523466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.623844, 16.662815, 9.129889>,  <8.609824, 17.019915, 9.766022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.623844, 16.662815, 9.129889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.297860, 16.893450, 9.106615>,  <8.102269, 17.031832, 9.092650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.297860, 16.893450, 9.106615>,  <8.623844, 16.662815, 9.129889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.297860, 16.893450, 9.106615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330935, 0.380610, -0.863492,
		-0.475733, -0.722968, -0.500995,
		-0.814961, 0.576588, -0.058187,
		8.053372, 17.066425, 9.089159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.532104, 16.757311, 8.470939>,  <8.623844, 16.662815, 9.129889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.532104, 16.757311, 8.470939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.273054, 17.030636, 8.605799>,  <8.117624, 17.194632, 8.686714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.273054, 17.030636, 8.605799>,  <8.532104, 16.757311, 8.470939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.273054, 17.030636, 8.605799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069505, 0.493608, -0.866902,
		-0.758784, -0.537992, -0.367166,
		-0.647623, 0.683312, 0.337149,
		8.078767, 17.235630, 8.706944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.023056, 16.948112, 7.905571>,  <8.532104, 16.757311, 8.470939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.023056, 16.948112, 7.905571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078472, 17.267017, 8.140579>,  <8.111722, 17.458361, 8.281584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078472, 17.267017, 8.140579>,  <8.023056, 16.948112, 7.905571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.078472, 17.267017, 8.140579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240860, 0.548304, -0.800843,
		-0.960621, 0.252458, -0.116067,
		0.138539, 0.797263, 0.587519,
		8.120034, 17.506197, 8.316835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.825467, 17.555567, 7.494043>,  <8.023056, 16.948112, 7.905571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.825467, 17.555567, 7.494043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.003037, 17.749695, 7.795345>,  <8.109580, 17.866173, 7.976127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.003037, 17.749695, 7.795345>,  <7.825467, 17.555567, 7.494043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.003037, 17.749695, 7.795345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177543, 0.776321, -0.604817,
		-0.878298, 0.402229, 0.258464,
		0.443926, 0.485321, 0.753255,
		8.136215, 17.895290, 8.021322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.577191, 18.240490, 7.525866>,  <7.825467, 17.555567, 7.494043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.577191, 18.240490, 7.525866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.939168, 18.224455, 7.695322>,  <8.156355, 18.214834, 7.796996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.939168, 18.224455, 7.695322>,  <7.577191, 18.240490, 7.525866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.939168, 18.224455, 7.695322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323872, 0.710636, -0.624583,
		-0.276016, 0.702417, 0.656069,
		0.904943, -0.040088, 0.423640,
		8.210651, 18.212429, 7.822414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.739032, 18.982061, 7.498832>,  <7.577191, 18.240490, 7.525866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.739032, 18.982061, 7.498832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.085573, 18.790852, 7.556694>,  <8.293498, 18.676126, 7.591411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.085573, 18.790852, 7.556694>,  <7.739032, 18.982061, 7.498832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.085573, 18.790852, 7.556694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462382, 0.658228, -0.594086,
		0.188772, 0.581575, 0.791288,
		0.866353, -0.478024, 0.144655,
		8.345479, 18.647444, 7.600090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.277666, 19.382889, 7.782150>,  <7.739032, 18.982061, 7.498832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.277666, 19.382889, 7.782150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.434575, 19.101954, 7.544547>,  <8.528720, 18.933393, 7.401984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.434575, 19.101954, 7.544547>,  <8.277666, 19.382889, 7.782150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.434575, 19.101954, 7.544547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523447, 0.701453, -0.483701,
		0.756390, -0.121190, 0.642796,
		0.392272, -0.702336, -0.594009,
		8.552257, 18.891253, 7.366344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.821483, 19.669596, 7.558815>,  <8.277666, 19.382889, 7.782150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.821483, 19.669596, 7.558815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.885674, 19.365131, 7.307457>,  <8.924190, 19.182453, 7.156642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.885674, 19.365131, 7.307457>,  <8.821483, 19.669596, 7.558815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.885674, 19.365131, 7.307457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660965, 0.555697, -0.504308,
		0.733057, -0.334415, 0.592279,
		0.160480, -0.761162, -0.628394,
		8.933819, 19.136784, 7.118939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.563353, 19.436937, 7.455935>,  <8.821483, 19.669596, 7.558815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.563353, 19.436937, 7.455935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375660, 19.380529, 7.107238>,  <9.263044, 19.346685, 6.898020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375660, 19.380529, 7.107238>,  <9.563353, 19.436937, 7.455935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.375660, 19.380529, 7.107238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764890, 0.428437, -0.481024,
		0.441319, -0.892500, -0.093176,
		-0.469234, -0.141015, -0.871742,
		9.234890, 19.338224, 6.845716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928926, 19.017164, 6.894946>,  <9.563353, 19.436937, 7.455935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928926, 19.017164, 6.894946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.683839, 19.300430, 6.754615>,  <9.536787, 19.470390, 6.670417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.683839, 19.300430, 6.754615>,  <9.928926, 19.017164, 6.894946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.683839, 19.300430, 6.754615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787441, 0.509297, -0.347208,
		-0.067207, -0.488994, -0.869694,
		-0.612716, 0.708167, -0.350826,
		9.500024, 19.512880, 6.649367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.649749, 18.972898, 6.712651>,  <9.928926, 19.017164, 6.894946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.649749, 18.972898, 6.712651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.041761, 18.894852, 6.697334>,  <11.276969, 18.848022, 6.688144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.041761, 18.894852, 6.697334>,  <10.649749, 18.972898, 6.712651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.041761, 18.894852, 6.697334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172670, 0.739618, 0.650499,
		-0.098603, -0.644122, 0.758541,
		0.980032, -0.195119, -0.038292,
		11.335771, 18.836317, 6.685846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.870005, 18.769732, 7.373279>,  <10.649749, 18.972898, 6.712651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.870005, 18.769732, 7.373279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174966, 18.943378, 7.181328>,  <11.357943, 19.047567, 7.066157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174966, 18.943378, 7.181328>,  <10.870005, 18.769732, 7.373279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174966, 18.943378, 7.181328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111808, 0.642051, 0.758465,
		0.637346, -0.631924, 0.440979,
		0.762424, 0.434099, -0.479863,
		11.403687, 19.073614, 7.037364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.338774, 18.710855, 7.890520>,  <10.870005, 18.769732, 7.373279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.338774, 18.710855, 7.890520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.391610, 19.009699, 7.629941>,  <11.423312, 19.189005, 7.473594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.391610, 19.009699, 7.629941>,  <11.338774, 18.710855, 7.890520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.391610, 19.009699, 7.629941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280278, 0.602235, 0.747501,
		0.950787, -0.281324, -0.129848,
		0.132091, 0.747108, -0.651446,
		11.431237, 19.233831, 7.434507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560163, 18.000553, 7.704127>,  <11.338774, 18.710855, 7.890520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560163, 18.000553, 7.704127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635207, 17.995579, 8.096993>,  <11.680233, 17.992594, 8.332713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635207, 17.995579, 8.096993>,  <11.560163, 18.000553, 7.704127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.635207, 17.995579, 8.096993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807953, -0.570589, 0.147107,
		0.558583, -0.821142, -0.117096,
		0.187610, -0.012436, 0.982165,
		11.691490, 17.991848, 8.391643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.710623, 17.271841, 7.908144>,  <11.560163, 18.000553, 7.704127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.710623, 17.271841, 7.908144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551271, 17.519281, 8.179033>,  <11.455661, 17.667746, 8.341567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551271, 17.519281, 8.179033>,  <11.710623, 17.271841, 7.908144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551271, 17.519281, 8.179033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679889, -0.694754, 0.234665,
		0.615667, -0.366950, 0.697354,
		-0.398379, 0.618599, 0.677222,
		11.431758, 17.704861, 8.382200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491302, 16.807320, 8.404314>,  <11.710623, 17.271841, 7.908144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491302, 16.807320, 8.404314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300171, 17.144650, 8.502690>,  <11.185492, 17.347048, 8.561716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300171, 17.144650, 8.502690>,  <11.491302, 16.807320, 8.404314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.300171, 17.144650, 8.502690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559739, -0.508066, 0.654646,
		0.677032, 0.175146, 0.714809,
		-0.477829, 0.843323, 0.245941,
		11.156822, 17.397646, 8.576472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492067, 16.877136, 9.137628>,  <11.491302, 16.807320, 8.404314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492067, 16.877136, 9.137628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182975, 17.076777, 8.980765>,  <10.997519, 17.196560, 8.886648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182975, 17.076777, 8.980765>,  <11.492067, 16.877136, 9.137628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.182975, 17.076777, 8.980765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604573, -0.390553, 0.694234,
		0.193333, 0.773543, 0.603535,
		-0.772731, 0.499099, -0.392156,
		10.951156, 17.226505, 8.863118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.345542, 17.442459, 9.588087>,  <11.492067, 16.877136, 9.137628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.345542, 17.442459, 9.588087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028751, 17.310614, 9.382514>,  <10.838677, 17.231506, 9.259170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028751, 17.310614, 9.382514>,  <11.345542, 17.442459, 9.588087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028751, 17.310614, 9.382514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449357, -0.255187, 0.856129,
		-0.413341, 0.908974, 0.053987,
		-0.791976, -0.329614, -0.513934,
		10.791159, 17.211729, 9.228333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728093, 17.566032, 9.981117>,  <11.345542, 17.442459, 9.588087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728093, 17.566032, 9.981117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.629834, 17.273163, 9.727006>,  <10.570879, 17.097441, 9.574539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.629834, 17.273163, 9.727006>,  <10.728093, 17.566032, 9.981117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.629834, 17.273163, 9.727006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414896, -0.512882, 0.751541,
		-0.876082, 0.448188, -0.177788,
		-0.245647, -0.732174, -0.635278,
		10.556140, 17.053511, 9.536423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.230527, 17.382214, 10.311790>,  <10.728093, 17.566032, 9.981117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.230527, 17.382214, 10.311790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.288347, 17.087399, 10.047705>,  <10.323039, 16.910509, 9.889254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.288347, 17.087399, 10.047705>,  <10.230527, 17.382214, 10.311790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.288347, 17.087399, 10.047705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506999, -0.628150, 0.590237,
		-0.849739, 0.249409, -0.464476,
		0.144550, -0.737037, -0.660214,
		10.331713, 16.866287, 9.849641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.646638, 17.079971, 10.161531>,  <10.230527, 17.382214, 10.311790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.646638, 17.079971, 10.161531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.912076, 16.790621, 10.085249>,  <10.071339, 16.617010, 10.039479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.912076, 16.790621, 10.085249>,  <9.646638, 17.079971, 10.161531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.912076, 16.790621, 10.085249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558532, -0.648669, 0.516982,
		-0.497676, -0.236553, -0.834483,
		0.663597, -0.723375, -0.190705,
		10.111155, 16.573608, 10.028037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.302365, 16.506359, 9.900559>,  <9.646638, 17.079971, 10.161531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.302365, 16.506359, 9.900559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641120, 16.344839, 10.038966>,  <9.844373, 16.247927, 10.122010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641120, 16.344839, 10.038966>,  <9.302365, 16.506359, 9.900559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641120, 16.344839, 10.038966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531413, -0.618661, 0.578669,
		-0.019599, -0.673946, -0.738521,
		0.846886, -0.403801, 0.346018,
		9.895185, 16.223698, 10.142772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.190978, 15.764497, 9.995987>,  <9.302365, 16.506359, 9.900559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.190978, 15.764497, 9.995987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.494220, 15.852889, 10.241407>,  <9.676165, 15.905925, 10.388659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.494220, 15.852889, 10.241407>,  <9.190978, 15.764497, 9.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.494220, 15.852889, 10.241407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374176, -0.623164, 0.686774,
		0.534108, -0.750223, -0.389737,
		0.758104, 0.220981, 0.613552,
		9.721651, 15.919184, 10.425473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.313564, 15.129444, 10.354283>,  <9.190978, 15.764497, 9.995987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.313564, 15.129444, 10.354283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.512898, 15.397502, 10.574308>,  <9.632499, 15.558336, 10.706324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.512898, 15.397502, 10.574308>,  <9.313564, 15.129444, 10.354283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.512898, 15.397502, 10.574308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164000, -0.550136, 0.818813,
		0.851331, -0.498254, -0.164249,
		0.498336, 0.670144, 0.550061,
		9.662399, 15.598545, 10.739326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.843153, 14.712667, 10.583879>,  <9.313564, 15.129444, 10.354283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.843153, 14.712667, 10.583879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.804940, 15.029008, 10.825681>,  <9.782013, 15.218813, 10.970761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.804940, 15.029008, 10.825681>,  <9.843153, 14.712667, 10.583879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.804940, 15.029008, 10.825681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103620, -0.596081, 0.796210,
		0.990018, 0.138703, -0.025004,
		-0.095532, 0.790853, 0.604504,
		9.776280, 15.266264, 11.007031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.395006, 14.681937, 11.257016>,  <9.843153, 14.712667, 10.583879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.395006, 14.681937, 11.257016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084460, 14.922202, 11.333397>,  <9.898132, 15.066360, 11.379226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084460, 14.922202, 11.333397>,  <10.395006, 14.681937, 11.257016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084460, 14.922202, 11.333397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113610, -0.431364, 0.894996,
		0.619960, 0.673150, 0.403137,
		-0.776365, 0.600662, 0.190952,
		9.851551, 15.102401, 11.390682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.443395, 14.762731, 12.003058>,  <10.395006, 14.681937, 11.257016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.443395, 14.762731, 12.003058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.073219, 14.901788, 11.942782>,  <9.851114, 14.985222, 11.906617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.073219, 14.901788, 11.942782>,  <10.443395, 14.762731, 12.003058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.073219, 14.901788, 11.942782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319321, -0.501515, 0.804063,
		0.203954, 0.792229, 0.575132,
		-0.925439, 0.347643, -0.150689,
		9.795588, 15.006081, 11.897575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.271493, 14.885957, 12.722791>,  <10.443395, 14.762731, 12.003058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.271493, 14.885957, 12.722791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.941198, 14.877876, 12.497313>,  <9.743021, 14.873028, 12.362027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.941198, 14.877876, 12.497313>,  <10.271493, 14.885957, 12.722791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.941198, 14.877876, 12.497313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517987, -0.368407, 0.771988,
		-0.223263, 0.929445, 0.293744,
		-0.825738, -0.020201, -0.563693,
		9.693477, 14.871816, 12.328206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.765099, 15.240480, 13.058031>,  <10.271493, 14.885957, 12.722791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.765099, 15.240480, 13.058031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556918, 15.009207, 12.806687>,  <9.432010, 14.870442, 12.655881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556918, 15.009207, 12.806687>,  <9.765099, 15.240480, 13.058031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556918, 15.009207, 12.806687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469806, -0.420592, 0.776134,
		-0.713030, 0.699147, -0.052736,
		-0.520452, -0.578183, -0.628359,
		9.400783, 14.835752, 12.618179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.137942, 15.328566, 13.353173>,  <9.765099, 15.240480, 13.058031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.137942, 15.328566, 13.353173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.159542, 14.996819, 13.130739>,  <9.172503, 14.797771, 12.997278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.159542, 14.996819, 13.130739>,  <9.137942, 15.328566, 13.353173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.159542, 14.996819, 13.130739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408075, -0.526601, 0.745766,
		-0.911350, 0.186653, -0.366881,
		0.054000, -0.829369, -0.556086,
		9.175742, 14.748008, 12.963913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.611716, 15.027837, 13.559694>,  <9.137942, 15.328566, 13.353173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.611716, 15.027837, 13.559694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.805092, 14.733595, 13.369885>,  <8.921117, 14.557050, 13.256001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.805092, 14.733595, 13.369885>,  <8.611716, 15.027837, 13.559694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.805092, 14.733595, 13.369885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210129, -0.623744, 0.752854,
		-0.849784, -0.264247, -0.456114,
		0.483438, -0.735606, -0.474522,
		8.950124, 14.512913, 13.227529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.080547, 14.462613, 13.316927>,  <8.611716, 15.027837, 13.559694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.080547, 14.462613, 13.316927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455400, 14.330968, 13.363355>,  <8.680311, 14.251981, 13.391212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455400, 14.330968, 13.363355>,  <8.080547, 14.462613, 13.316927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.455400, 14.330968, 13.363355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310615, -0.635018, 0.707298,
		-0.159074, -0.698883, -0.697322,
		0.937131, -0.329112, 0.116069,
		8.736539, 14.232234, 13.398175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.988438, 13.806606, 13.220669>,  <8.080547, 14.462613, 13.316927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.988438, 13.806606, 13.220669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.313301, 13.857124, 13.448510>,  <8.508219, 13.887435, 13.585216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.313301, 13.857124, 13.448510>,  <7.988438, 13.806606, 13.220669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.313301, 13.857124, 13.448510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442669, -0.502576, 0.742604,
		0.380057, -0.855258, -0.352264,
		0.812158, 0.126295, 0.569604,
		8.556949, 13.895013, 13.619391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.980860, 13.249978, 13.586561>,  <7.988438, 13.806606, 13.220669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.980860, 13.249978, 13.586561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.257943, 13.464872, 13.779033>,  <8.424193, 13.593809, 13.894516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.257943, 13.464872, 13.779033>,  <7.980860, 13.249978, 13.586561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.257943, 13.464872, 13.779033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203131, -0.494835, 0.844912,
		0.692022, -0.683019, -0.233646,
		0.692707, 0.537236, 0.481179,
		8.465755, 13.626043, 13.923387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.429319, 12.722504, 13.840493>,  <7.980860, 13.249978, 13.586561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.429319, 12.722504, 13.840493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464005, 13.055808, 14.058908>,  <8.484816, 13.255791, 14.189958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464005, 13.055808, 14.058908>,  <8.429319, 12.722504, 13.840493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.464005, 13.055808, 14.058908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192980, -0.523673, 0.829774,
		0.977364, -0.177326, 0.115394,
		0.086712, 0.833260, 0.546039,
		8.490018, 13.305786, 14.222720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.701388, 12.477921, 14.427299>,  <8.429319, 12.722504, 13.840493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.701388, 12.477921, 14.427299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.536455, 12.824797, 14.538985>,  <8.437495, 13.032923, 14.605997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.536455, 12.824797, 14.538985>,  <8.701388, 12.477921, 14.427299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.536455, 12.824797, 14.538985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401100, -0.447982, 0.799018,
		0.817985, 0.217469, 0.532549,
		-0.412334, 0.867190, 0.279216,
		8.412755, 13.084953, 14.622750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.990518, 12.643791, 15.073037>,  <8.701388, 12.477921, 14.427299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.990518, 12.643791, 15.073037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.627724, 12.811789, 15.060504>,  <8.410048, 12.912587, 15.052984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.627724, 12.811789, 15.060504>,  <8.990518, 12.643791, 15.073037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.627724, 12.811789, 15.060504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148068, -0.248339, 0.957290,
		0.394275, 0.872888, 0.287427,
		-0.906986, 0.419994, -0.031333,
		8.355628, 12.937787, 15.051104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.746814, 13.044815, 15.713010>,  <8.990518, 12.643791, 15.073037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.746814, 13.044815, 15.713010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.387780, 12.977730, 15.549932>,  <8.172359, 12.937479, 15.452085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.387780, 12.977730, 15.549932>,  <8.746814, 13.044815, 15.713010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.387780, 12.977730, 15.549932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395339, -0.102977, 0.912744,
		-0.195062, 0.980443, 0.026127,
		-0.897584, -0.167713, -0.407695,
		8.118505, 12.927416, 15.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.421355, 13.154053, 15.977998>,  <8.746814, 13.044815, 15.713010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.421355, 13.154053, 15.977998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.747435, 12.922754, 15.991157>,  <9.943082, 12.783975, 15.999052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.747435, 12.922754, 15.991157>,  <9.421355, 13.154053, 15.977998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.747435, 12.922754, 15.991157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531348, 0.769266, 0.354822,
		-0.230481, -0.271771, 0.934355,
		0.815198, -0.578247, 0.032896,
		9.991994, 12.749280, 16.001026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.829344, 13.138683, 16.677046>,  <9.421355, 13.154053, 15.977998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.829344, 13.138683, 16.677046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089931, 12.966752, 16.426977>,  <10.246284, 12.863593, 16.276936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089931, 12.966752, 16.426977>,  <9.829344, 13.138683, 16.677046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.089931, 12.966752, 16.426977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720962, 0.607317, 0.333736,
		0.236227, -0.668142, 0.705537,
		0.651468, -0.429828, -0.625169,
		10.285372, 12.837804, 16.239426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.454453, 12.883480, 17.059671>,  <9.829344, 13.138683, 16.677046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.454453, 12.883480, 17.059671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.497002, 13.050039, 16.698496>,  <10.522531, 13.149975, 16.481791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.497002, 13.050039, 16.698496>,  <10.454453, 12.883480, 17.059671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.497002, 13.050039, 16.698496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593178, 0.702229, 0.393719,
		0.798013, -0.577483, -0.172301,
		0.106372, 0.416399, -0.902938,
		10.528913, 13.174959, 16.427614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.182179, 12.824547, 16.858667>,  <10.454453, 12.883480, 17.059671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.182179, 12.824547, 16.858667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.023273, 13.147789, 16.684704>,  <10.927928, 13.341734, 16.580326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.023273, 13.147789, 16.684704>,  <11.182179, 12.824547, 16.858667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.023273, 13.147789, 16.684704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699150, 0.573490, 0.426965,
		0.594448, -0.134447, -0.792815,
		-0.397267, 0.808105, -0.434909,
		10.904093, 13.390221, 16.554232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.695688, 13.095155, 16.416815>,  <11.182179, 12.824547, 16.858667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.695688, 13.095155, 16.416815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.424382, 13.366778, 16.529127>,  <11.261599, 13.529753, 16.596514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.424382, 13.366778, 16.529127>,  <11.695688, 13.095155, 16.416815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.424382, 13.366778, 16.529127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707582, 0.500499, 0.498828,
		0.198204, 0.537011, -0.819960,
		-0.678265, 0.679058, 0.280779,
		11.220902, 13.570496, 16.613361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090956, 13.660816, 16.254097>,  <11.695688, 13.095155, 16.416815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090956, 13.660816, 16.254097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795092, 13.817605, 16.472916>,  <11.617573, 13.911678, 16.604206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795092, 13.817605, 16.472916>,  <12.090956, 13.660816, 16.254097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795092, 13.817605, 16.472916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578758, 0.785307, 0.219846,
		-0.343425, 0.479219, -0.807718,
		-0.739661, 0.391972, 0.547046,
		11.573194, 13.935197, 16.637030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.984012, 14.334633, 16.046961>,  <12.090956, 13.660816, 16.254097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.984012, 14.334633, 16.046961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.877853, 14.277422, 16.428350>,  <11.814158, 14.243095, 16.657185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.877853, 14.277422, 16.428350>,  <11.984012, 14.334633, 16.046961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877853, 14.277422, 16.428350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392962, 0.887020, 0.242438,
		-0.880424, 0.439020, -0.179208,
		-0.265396, -0.143026, 0.953472,
		11.798235, 14.234514, 16.714392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558061, 14.946456, 16.369921>,  <11.984012, 14.334633, 16.046961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558061, 14.946456, 16.369921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743141, 14.754994, 16.668396>,  <11.854190, 14.640118, 16.847481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743141, 14.754994, 16.668396>,  <11.558061, 14.946456, 16.369921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743141, 14.754994, 16.668396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262049, 0.877945, 0.400677,
		-0.846899, 0.010144, 0.531658,
		0.462702, -0.478653, 0.746189,
		11.881951, 14.611399, 16.892252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.385509, 15.299862, 17.087543>,  <11.558061, 14.946456, 16.369921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.385509, 15.299862, 17.087543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726958, 15.111953, 17.177559>,  <11.931828, 14.999207, 17.231567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726958, 15.111953, 17.177559>,  <11.385509, 15.299862, 17.087543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726958, 15.111953, 17.177559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379489, 0.856803, 0.349107,
		-0.356815, -0.212606, 0.909660,
		0.853622, -0.469773, 0.225039,
		11.983045, 14.971021, 17.245071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.609151, 15.639605, 17.705803>,  <11.385509, 15.299862, 17.087543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.609151, 15.639605, 17.705803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.934455, 15.418019, 17.634546>,  <12.129637, 15.285068, 17.591793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.934455, 15.418019, 17.634546>,  <11.609151, 15.639605, 17.705803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.934455, 15.418019, 17.634546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573234, 0.710039, 0.408958,
		-0.100062, -0.434705, 0.894997,
		0.813259, -0.553964, -0.178140,
		12.178432, 15.251830, 17.581104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979437, 15.549734, 18.381811>,  <11.609151, 15.639605, 17.705803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979437, 15.549734, 18.381811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244964, 15.483780, 18.090014>,  <12.404280, 15.444207, 17.914936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244964, 15.483780, 18.090014>,  <11.979437, 15.549734, 18.381811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.244964, 15.483780, 18.090014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642595, 0.624788, 0.443521,
		0.382648, -0.763185, 0.520700,
		0.663816, -0.164887, -0.729493,
		12.444109, 15.434314, 17.871166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.635955, 15.371670, 18.653639>,  <11.979437, 15.549734, 18.381811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.635955, 15.371670, 18.653639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722695, 15.513897, 18.289980>,  <12.774739, 15.599234, 18.071785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722695, 15.513897, 18.289980>,  <12.635955, 15.371670, 18.653639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.722695, 15.513897, 18.289980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745623, 0.540788, 0.389351,
		0.630096, -0.762312, -0.147850,
		0.216851, 0.355569, -0.909146,
		12.787750, 15.620567, 18.017237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396165, 15.496673, 18.680698>,  <12.635955, 15.371670, 18.653639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396165, 15.496673, 18.680698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285580, 15.698947, 18.353809>,  <13.219229, 15.820312, 18.157677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285580, 15.698947, 18.353809>,  <13.396165, 15.496673, 18.680698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285580, 15.698947, 18.353809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633762, 0.735183, 0.240523,
		0.722435, -0.451428, -0.523736,
		-0.276463, 0.505687, -0.817220,
		13.202641, 15.850653, 18.108643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.043969, 15.645755, 18.211084>,  <13.396165, 15.496673, 18.680698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.043969, 15.645755, 18.211084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.750627, 15.903797, 18.125267>,  <13.574621, 16.058622, 18.073776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.750627, 15.903797, 18.125267>,  <14.043969, 15.645755, 18.211084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.750627, 15.903797, 18.125267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627260, 0.763753, 0.152402,
		0.262173, -0.022809, -0.964751,
		-0.733356, 0.645105, -0.214543,
		13.530620, 16.097328, 18.060904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432997, 16.160677, 17.950796>,  <14.043969, 15.645755, 18.211084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432997, 16.160677, 17.950796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.086028, 16.355429, 17.991838>,  <13.877847, 16.472281, 18.016464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.086028, 16.355429, 17.991838>,  <14.432997, 16.160677, 17.950796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.086028, 16.355429, 17.991838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496926, 0.837133, 0.228634,
		0.025424, 0.249309, -0.968090,
		-0.867421, 0.486882, 0.102605,
		13.825802, 16.501493, 18.022619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490477, 16.875521, 17.609921>,  <14.432997, 16.160677, 17.950796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490477, 16.875521, 17.609921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.217977, 16.847736, 17.901419>,  <14.054477, 16.831066, 18.076319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.217977, 16.847736, 17.901419>,  <14.490477, 16.875521, 17.609921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.217977, 16.847736, 17.901419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374101, 0.822650, 0.428130,
		-0.629242, 0.564289, -0.534446,
		-0.681251, -0.069461, 0.728747,
		14.013601, 16.826899, 18.120043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391192, 17.531067, 17.745945>,  <14.490477, 16.875521, 17.609921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.391192, 17.531067, 17.745945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.264744, 17.325457, 18.064905>,  <14.188874, 17.202091, 18.256281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.264744, 17.325457, 18.064905>,  <14.391192, 17.531067, 17.745945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.264744, 17.325457, 18.064905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267196, 0.758241, 0.594708,
		-0.910315, 0.401062, -0.102351,
		-0.316122, -0.514024, 0.797400,
		14.169908, 17.171249, 18.304125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222972, 18.088535, 18.163733>,  <14.391192, 17.531067, 17.745945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222972, 18.088535, 18.163733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183997, 17.779507, 18.414696>,  <14.160612, 17.594090, 18.565273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183997, 17.779507, 18.414696>,  <14.222972, 18.088535, 18.163733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.183997, 17.779507, 18.414696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015405, 0.629160, 0.777123,
		-0.995122, 0.085386, -0.049403,
		-0.097438, -0.772571, 0.627407,
		14.154766, 17.547735, 18.602919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850356, 18.402674, 18.725843>,  <14.222972, 18.088535, 18.163733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850356, 18.402674, 18.725843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047689, 18.087803, 18.873884>,  <14.166090, 17.898880, 18.962708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047689, 18.087803, 18.873884>,  <13.850356, 18.402674, 18.725843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.047689, 18.087803, 18.873884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160733, 0.500651, 0.850596,
		-0.854860, -0.360141, 0.373514,
		0.493334, -0.787177, 0.370100,
		14.195690, 17.851650, 18.984915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612774, 18.381897, 19.463528>,  <13.850356, 18.402674, 18.725843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612774, 18.381897, 19.463528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949341, 18.166662, 19.443596>,  <14.151280, 18.037521, 19.431637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949341, 18.166662, 19.443596>,  <13.612774, 18.381897, 19.463528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.949341, 18.166662, 19.443596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374120, 0.513511, 0.772231,
		-0.389938, -0.668410, 0.633385,
		0.841417, -0.538084, -0.049828,
		14.201766, 18.005238, 19.428648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.686162, 18.143888, 20.129551>,  <13.612774, 18.381897, 19.463528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.686162, 18.143888, 20.129551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046120, 18.165051, 19.956396>,  <14.262094, 18.177748, 19.852503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046120, 18.165051, 19.956396>,  <13.686162, 18.143888, 20.129551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046120, 18.165051, 19.956396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351572, 0.499332, 0.791874,
		0.258048, -0.864794, 0.430746,
		0.899894, 0.052904, -0.432889,
		14.316088, 18.180922, 19.826529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.170451, 17.941759, 20.662334>,  <13.686162, 18.143888, 20.129551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.170451, 17.941759, 20.662334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390543, 18.126118, 20.383818>,  <14.522598, 18.236732, 20.216707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390543, 18.126118, 20.383818>,  <14.170451, 17.941759, 20.662334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390543, 18.126118, 20.383818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406043, 0.580957, 0.705420,
		0.729641, -0.670867, 0.132516,
		0.550229, 0.460897, -0.696292,
		14.555612, 18.264387, 20.174931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723399, 18.119625, 21.080175>,  <14.170451, 17.941759, 20.662334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723399, 18.119625, 21.080175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779815, 18.357418, 20.763517>,  <14.813664, 18.500093, 20.573523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779815, 18.357418, 20.763517>,  <14.723399, 18.119625, 21.080175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.779815, 18.357418, 20.763517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228713, 0.758441, 0.610294,
		0.963223, -0.267134, -0.028996,
		0.141039, 0.594480, -0.791644,
		14.822126, 18.535763, 20.526024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395531, 18.420002, 21.119413>,  <14.723399, 18.119625, 21.080175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395531, 18.420002, 21.119413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.174986, 18.664381, 20.892172>,  <15.042659, 18.811008, 20.755827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.174986, 18.664381, 20.892172>,  <15.395531, 18.420002, 21.119413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.174986, 18.664381, 20.892172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471391, 0.789984, 0.392065,
		0.688324, -0.051629, -0.723564,
		-0.551362, 0.610949, -0.568103,
		15.009578, 18.847666, 20.721741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741944, 18.998081, 21.112755>,  <15.395531, 18.420002, 21.119413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741944, 18.998081, 21.112755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393807, 19.139107, 20.975231>,  <15.184925, 19.223722, 20.892717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393807, 19.139107, 20.975231>,  <15.741944, 18.998081, 21.112755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393807, 19.139107, 20.975231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219995, 0.902991, 0.369066,
		0.440577, 0.245576, -0.863472,
		-0.870341, 0.352562, -0.343811,
		15.132705, 19.244875, 20.872087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939793, 19.642164, 20.810791>,  <15.741944, 18.998081, 21.112755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939793, 19.642164, 20.810791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.559945, 19.620834, 20.934324>,  <15.332036, 19.608036, 21.008444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.559945, 19.620834, 20.934324>,  <15.939793, 19.642164, 20.810791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.559945, 19.620834, 20.934324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144720, 0.799453, 0.583036,
		-0.277989, 0.598357, -0.751459,
		-0.949620, -0.053326, 0.308834,
		15.275059, 19.604836, 21.026974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735862, 20.399153, 20.959929>,  <15.939793, 19.642164, 20.810791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735862, 20.399153, 20.959929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.479089, 20.141907, 21.126936>,  <15.325025, 19.987558, 21.227140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.479089, 20.141907, 21.126936>,  <15.735862, 20.399153, 20.959929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.479089, 20.141907, 21.126936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034637, 0.568289, 0.822100,
		-0.765978, 0.513272, -0.387079,
		-0.641933, -0.643117, 0.417519,
		15.286509, 19.948971, 21.252192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.332364, 20.838730, 21.316031>,  <15.735862, 20.399153, 20.959929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.332364, 20.838730, 21.316031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.262942, 20.480995, 21.480972>,  <15.221289, 20.266354, 21.579937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.262942, 20.480995, 21.480972>,  <15.332364, 20.838730, 21.316031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262942, 20.480995, 21.480972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084607, 0.403621, 0.911006,
		-0.981183, 0.192998, 0.005617,
		-0.173555, -0.894339, 0.412355,
		15.210876, 20.212694, 21.604679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793466, 20.931677, 21.814112>,  <15.332364, 20.838730, 21.316031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.793466, 20.931677, 21.814112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000003, 20.603693, 21.912952>,  <15.123925, 20.406902, 21.972258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000003, 20.603693, 21.912952>,  <14.793466, 20.931677, 21.814112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.000003, 20.603693, 21.912952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101087, 0.344881, 0.933187,
		-0.850395, -0.456866, 0.260964,
		0.516343, -0.819958, 0.247102,
		15.154905, 20.357706, 21.987083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.448330, 20.651215, 22.380474>,  <14.793466, 20.931677, 21.814112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.448330, 20.651215, 22.380474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823976, 20.515804, 22.404015>,  <15.049363, 20.434557, 22.418139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823976, 20.515804, 22.404015>,  <14.448330, 20.651215, 22.380474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823976, 20.515804, 22.404015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013920, 0.208615, 0.977899,
		-0.343323, -0.917540, 0.200626,
		0.939114, -0.338527, 0.058850,
		15.105710, 20.414246, 22.421669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.505997, 20.372478, 23.074125>,  <14.448330, 20.651215, 22.380474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.505997, 20.372478, 23.074125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.880355, 20.401051, 22.936142>,  <15.104970, 20.418194, 22.853352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.880355, 20.401051, 22.936142>,  <14.505997, 20.372478, 23.074125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.880355, 20.401051, 22.936142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340613, 0.066400, 0.937856,
		0.089905, -0.995232, 0.037810,
		0.935895, 0.071440, -0.344959,
		15.161123, 20.422480, 22.832655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989910, 19.982435, 23.531082>,  <14.505997, 20.372478, 23.074125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989910, 19.982435, 23.531082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247005, 20.235929, 23.358912>,  <15.401261, 20.388027, 23.255610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247005, 20.235929, 23.358912>,  <14.989910, 19.982435, 23.531082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247005, 20.235929, 23.358912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404376, 0.196553, 0.893223,
		0.650671, -0.748161, -0.129937,
		0.642735, 0.633737, -0.430429,
		15.439825, 20.426050, 23.229782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602715, 19.784533, 23.861460>,  <14.989910, 19.982435, 23.531082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.602715, 19.784533, 23.861460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703406, 20.129498, 23.685787>,  <15.763822, 20.336475, 23.580383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703406, 20.129498, 23.685787>,  <15.602715, 19.784533, 23.861460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703406, 20.129498, 23.685787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526538, 0.258711, 0.809831,
		0.812028, -0.435103, -0.388967,
		0.251730, 0.862412, -0.439179,
		15.778925, 20.388222, 23.554033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378569, 20.001713, 24.010845>,  <15.602715, 19.784533, 23.861460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378569, 20.001713, 24.010845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.181154, 20.334724, 23.910192>,  <16.062706, 20.534531, 23.849800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.181154, 20.334724, 23.910192>,  <16.378569, 20.001713, 24.010845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181154, 20.334724, 23.910192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373783, 0.464276, 0.802953,
		0.785308, 0.302230, -0.540322,
		-0.493535, 0.832529, -0.251632,
		16.033094, 20.584482, 23.834703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842825, 20.561800, 24.071802>,  <16.378569, 20.001713, 24.010845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842825, 20.561800, 24.071802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470476, 20.707928, 24.070013>,  <16.247066, 20.795605, 24.068939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470476, 20.707928, 24.070013>,  <16.842825, 20.561800, 24.071802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470476, 20.707928, 24.070013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244874, 0.632955, 0.734442,
		0.271138, 0.682575, -0.678657,
		-0.930871, 0.365320, -0.004474,
		16.191216, 20.817524, 24.068670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873690, 21.295191, 24.124765>,  <16.842825, 20.561800, 24.071802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.873690, 21.295191, 24.124765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526030, 21.158028, 24.267309>,  <16.317434, 21.075729, 24.352835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526030, 21.158028, 24.267309>,  <16.873690, 21.295191, 24.124765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526030, 21.158028, 24.267309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024849, 0.689381, 0.723972,
		-0.493924, 0.638095, -0.590655,
		-0.869150, -0.342910, 0.356358,
		16.265285, 21.055155, 24.374216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533346, 21.998774, 24.341515>,  <16.873690, 21.295191, 24.124765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533346, 21.998774, 24.341515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342865, 21.710293, 24.542751>,  <16.228577, 21.537205, 24.663494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342865, 21.710293, 24.542751>,  <16.533346, 21.998774, 24.341515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342865, 21.710293, 24.542751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168291, 0.486803, 0.857147,
		-0.863081, 0.492843, -0.110446,
		-0.476204, -0.721200, 0.503091,
		16.200005, 21.493933, 24.693678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029249, 22.378004, 24.723747>,  <16.533346, 21.998774, 24.341515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029249, 22.378004, 24.723747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037029, 22.020992, 24.903976>,  <16.041697, 21.806786, 25.012114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037029, 22.020992, 24.903976>,  <16.029249, 22.378004, 24.723747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037029, 22.020992, 24.903976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084456, 0.450512, 0.888766,
		-0.996237, 0.020767, 0.084142,
		0.019450, -0.892529, 0.450571,
		16.042864, 21.753233, 25.039148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.488010, 22.388056, 25.280376>,  <16.029249, 22.378004, 24.723747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.488010, 22.388056, 25.280376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.747767, 22.099251, 25.375862>,  <15.903622, 21.925968, 25.433153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.747767, 22.099251, 25.375862>,  <15.488010, 22.388056, 25.280376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747767, 22.099251, 25.375862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047047, 0.351452, 0.935023,
		-0.758997, -0.595966, 0.262199,
		0.649393, -0.722015, 0.238713,
		15.942585, 21.882647, 25.447475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289500, 22.177267, 25.952120>,  <15.488010, 22.388056, 25.280376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.289500, 22.177267, 25.952120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660633, 22.028412, 25.942001>,  <15.883313, 21.939098, 25.935930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660633, 22.028412, 25.942001>,  <15.289500, 22.177267, 25.952120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660633, 22.028412, 25.942001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141502, 0.288429, 0.946988,
		-0.345114, -0.882225, 0.320273,
		0.927832, -0.372138, -0.025296,
		15.938983, 21.916771, 25.934412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495094, 21.942728, 26.651419>,  <15.289500, 22.177267, 25.952120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495094, 21.942728, 26.651419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850208, 22.004951, 26.478148>,  <16.063276, 22.042286, 26.374186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850208, 22.004951, 26.478148>,  <15.495094, 21.942728, 26.651419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850208, 22.004951, 26.478148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361127, 0.348075, 0.865119,
		0.285353, -0.924471, 0.252839,
		0.887784, 0.155557, -0.433176,
		16.116543, 22.051619, 26.348194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971341, 21.750315, 27.084246>,  <15.495094, 21.942728, 26.651419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971341, 21.750315, 27.084246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.184752, 21.986904, 26.842417>,  <16.312798, 22.128859, 26.697319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.184752, 21.986904, 26.842417>,  <15.971341, 21.750315, 27.084246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.184752, 21.986904, 26.842417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403527, 0.450196, 0.796549,
		0.743314, -0.668941, 0.001516,
		0.533527, 0.591474, -0.604572,
		16.344809, 22.164347, 26.661045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.658079, 21.718723, 27.323818>,  <15.971341, 21.750315, 27.084246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.658079, 21.718723, 27.323818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.629345, 22.048403, 27.099129>,  <16.612104, 22.246210, 26.964315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.629345, 22.048403, 27.099129>,  <16.658079, 21.718723, 27.323818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.629345, 22.048403, 27.099129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506177, 0.515393, 0.691488,
		0.859433, -0.234658, -0.454215,
		-0.071836, 0.824200, -0.561724,
		16.607794, 22.295662, 26.930611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306757, 22.037960, 27.310696>,  <16.658079, 21.718723, 27.323818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306757, 22.037960, 27.310696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043819, 22.325506, 27.220247>,  <16.886057, 22.498034, 27.165979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043819, 22.325506, 27.220247>,  <17.306757, 22.037960, 27.310696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043819, 22.325506, 27.220247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382731, 0.576944, 0.721563,
		0.649166, 0.387772, -0.654383,
		-0.657344, 0.718866, -0.226120,
		16.846617, 22.541166, 27.152411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649307, 22.643969, 27.195776>,  <17.306757, 22.037960, 27.310696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649307, 22.643969, 27.195776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286232, 22.762611, 27.314520>,  <17.068386, 22.833797, 27.385767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286232, 22.762611, 27.314520>,  <17.649307, 22.643969, 27.195776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286232, 22.762611, 27.314520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419242, 0.609983, 0.672426,
		0.018366, 0.734810, -0.678024,
		-0.907689, 0.296606, 0.296860,
		17.013926, 22.851593, 27.403578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777212, 23.270325, 27.257580>,  <17.649307, 22.643969, 27.195776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777212, 23.270325, 27.257580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.435951, 23.213594, 27.458384>,  <17.231194, 23.179556, 27.578865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.435951, 23.213594, 27.458384>,  <17.777212, 23.270325, 27.257580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.435951, 23.213594, 27.458384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361552, 0.532945, 0.765016,
		-0.376043, 0.834179, -0.403406,
		-0.853154, -0.141826, 0.502010,
		17.180004, 23.171047, 27.608986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684122, 23.886499, 27.616009>,  <17.777212, 23.270325, 27.257580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684122, 23.886499, 27.616009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.435566, 23.633486, 27.800951>,  <17.286432, 23.481678, 27.911917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.435566, 23.633486, 27.800951>,  <17.684122, 23.886499, 27.616009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.435566, 23.633486, 27.800951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088063, 0.529991, 0.843418,
		-0.778535, 0.564810, -0.273629,
		-0.621392, -0.632534, 0.462356,
		17.249149, 23.443726, 27.939657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108274, 24.272173, 27.916704>,  <17.684122, 23.886499, 27.616009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108274, 24.272173, 27.916704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.119751, 23.924507, 28.114178>,  <17.126637, 23.715908, 28.232662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.119751, 23.924507, 28.114178>,  <17.108274, 24.272173, 27.916704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.119751, 23.924507, 28.114178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124183, 0.486964, 0.864549,
		-0.991844, -0.086113, -0.093964,
		0.028692, -0.869167, 0.493686,
		17.128359, 23.663757, 28.262283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481064, 24.235792, 28.327469>,  <17.108274, 24.272173, 27.916704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481064, 24.235792, 28.327469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.797514, 24.033876, 28.465633>,  <16.987385, 23.912727, 28.548532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.797514, 24.033876, 28.465633>,  <16.481064, 24.235792, 28.327469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.797514, 24.033876, 28.465633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123076, 0.421791, 0.898301,
		-0.599143, -0.753181, 0.271562,
		0.791126, -0.504788, 0.345411,
		17.034851, 23.882441, 28.569256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267738, 23.849827, 28.998657>,  <16.481064, 24.235792, 28.327469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267738, 23.849827, 28.998657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658791, 23.930815, 28.975882>,  <16.893423, 23.979408, 28.962215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658791, 23.930815, 28.975882>,  <16.267738, 23.849827, 28.998657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658791, 23.930815, 28.975882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004043, 0.288771, 0.957390,
		0.210283, -0.935745, 0.283131,
		0.977632, 0.202467, -0.056940,
		16.952080, 23.991556, 28.958799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.593319, 23.336361, 29.386734>,  <16.267738, 23.849827, 28.998657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.593319, 23.336361, 29.386734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770807, 23.694426, 29.369785>,  <16.877300, 23.909266, 29.359617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770807, 23.694426, 29.369785>,  <16.593319, 23.336361, 29.386734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770807, 23.694426, 29.369785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017598, 0.038567, 0.999101,
		0.895994, -0.444065, 0.001360,
		0.443718, 0.895164, -0.042371,
		16.903923, 23.962975, 29.357075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298601, 23.376925, 29.647669>,  <16.593319, 23.336361, 29.386734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298601, 23.376925, 29.647669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050165, 23.682877, 29.716022>,  <16.901104, 23.866447, 29.757034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050165, 23.682877, 29.716022>,  <17.298601, 23.376925, 29.647669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050165, 23.682877, 29.716022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041889, -0.185330, 0.981783,
		0.782619, 0.616934, 0.083067,
		-0.621090, 0.764883, 0.170885,
		16.863838, 23.912342, 29.767288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569828, 24.051876, 29.992390>,  <17.298601, 23.376925, 29.647669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569828, 24.051876, 29.992390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.185768, 23.972063, 30.070669>,  <16.955332, 23.924175, 30.117638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.185768, 23.972063, 30.070669>,  <17.569828, 24.051876, 29.992390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.185768, 23.972063, 30.070669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210058, -0.053315, 0.976234,
		-0.184356, 0.978440, 0.093103,
		-0.960150, -0.199532, 0.195700,
		16.897722, 23.912203, 30.129379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637064, 24.591501, 29.418003>,  <17.569828, 24.051876, 29.992390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637064, 24.591501, 29.418003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.934244, 24.371914, 29.571184>,  <18.112553, 24.240162, 29.663094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.934244, 24.371914, 29.571184>,  <17.637064, 24.591501, 29.418003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.934244, 24.371914, 29.571184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474009, -0.835466, -0.278049,
		0.472586, 0.025054, -0.880928,
		0.742952, -0.548971, 0.382954,
		18.157129, 24.207222, 29.686069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878025, 24.001284, 28.886755>,  <17.637064, 24.591501, 29.418003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878025, 24.001284, 28.886755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973351, 23.874475, 29.253950>,  <18.030546, 23.798391, 29.474268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973351, 23.874475, 29.253950>,  <17.878025, 24.001284, 28.886755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973351, 23.874475, 29.253950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423753, -0.884445, -0.195425,
		0.873865, -0.342429, -0.345113,
		0.238314, -0.317018, 0.917990,
		18.044846, 23.779369, 29.529346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.155785, 23.332937, 28.871059>,  <17.878025, 24.001284, 28.886755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.155785, 23.332937, 28.871059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038145, 23.342800, 29.253242>,  <17.967562, 23.348719, 29.482552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038145, 23.342800, 29.253242>,  <18.155785, 23.332937, 28.871059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038145, 23.342800, 29.253242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225742, -0.973176, -0.044370,
		0.928734, -0.228736, 0.291775,
		-0.294097, 0.024657, 0.955457,
		17.949915, 23.350197, 29.539879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.379684, 22.816896, 29.259577>,  <18.155785, 23.332937, 28.871059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.379684, 22.816896, 29.259577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059654, 22.906572, 29.482151>,  <17.867636, 22.960377, 29.615696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059654, 22.906572, 29.482151>,  <18.379684, 22.816896, 29.259577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059654, 22.906572, 29.482151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269551, -0.962986, 0.000412,
		0.535933, -0.149658, 0.830890,
		-0.800074, 0.224188, 0.556436,
		17.819632, 22.973829, 29.649082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354656, 22.512209, 29.864239>,  <18.379684, 22.816896, 29.259577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354656, 22.512209, 29.864239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.991581, 22.574024, 29.708176>,  <17.773735, 22.611113, 29.614538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.991581, 22.574024, 29.708176>,  <18.354656, 22.512209, 29.864239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.991581, 22.574024, 29.708176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135925, -0.987872, -0.075058,
		-0.397024, -0.015097, 0.917684,
		-0.907688, 0.154536, -0.390156,
		17.719275, 22.620384, 29.591129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.829891, 22.260153, 30.342129>,  <18.354656, 22.512209, 29.864239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.829891, 22.260153, 30.342129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725016, 22.234795, 29.956957>,  <17.662090, 22.219580, 29.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725016, 22.234795, 29.956957>,  <17.829891, 22.260153, 30.342129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725016, 22.234795, 29.956957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094908, -0.991308, 0.091105,
		-0.960338, 0.115277, 0.253893,
		-0.262189, -0.063395, -0.962932,
		17.646358, 22.215776, 29.668077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177393, 21.796541, 30.240129>,  <17.829891, 22.260153, 30.342129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177393, 21.796541, 30.240129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404070, 21.819384, 29.911350>,  <17.540075, 21.833090, 29.714083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404070, 21.819384, 29.911350>,  <17.177393, 21.796541, 30.240129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404070, 21.819384, 29.911350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041677, -0.994331, -0.097818,
		-0.822874, 0.089689, -0.561100,
		0.566692, 0.057107, -0.821948,
		17.574078, 21.836515, 29.664766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911926, 21.331778, 29.770601>,  <17.177393, 21.796541, 30.240129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911926, 21.331778, 29.770601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.258801, 21.390139, 29.580149>,  <17.466925, 21.425156, 29.465878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.258801, 21.390139, 29.580149>,  <16.911926, 21.331778, 29.770601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258801, 21.390139, 29.580149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022976, -0.943377, -0.330926,
		-0.497453, 0.297914, -0.814731,
		0.867187, 0.145900, -0.476131,
		17.518957, 21.433908, 29.437309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766674, 20.928362, 29.158298>,  <16.911926, 21.331778, 29.770601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766674, 20.928362, 29.158298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.160671, 20.997101, 29.164719>,  <17.397070, 21.038343, 29.168571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.160671, 20.997101, 29.164719>,  <16.766674, 20.928362, 29.158298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160671, 20.997101, 29.164719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155817, -0.845393, -0.510913,
		-0.074229, 0.505747, -0.859483,
		0.984993, 0.171846, 0.016051,
		17.456169, 21.048655, 29.169535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067669, 21.044651, 28.501757>,  <16.766674, 20.928362, 29.158298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.067669, 21.044651, 28.501757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.351292, 20.880899, 28.731417>,  <17.521465, 20.782648, 28.869213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.351292, 20.880899, 28.731417>,  <17.067669, 21.044651, 28.501757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351292, 20.880899, 28.731417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134466, -0.720782, -0.679994,
		0.692211, 0.559359, -0.456028,
		0.709058, -0.409379, 0.574148,
		17.564009, 20.758085, 28.903662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620518, 20.854044, 28.004101>,  <17.067669, 21.044651, 28.501757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620518, 20.854044, 28.004101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635193, 20.650013, 28.347839>,  <17.643999, 20.527594, 28.554083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635193, 20.650013, 28.347839>,  <17.620518, 20.854044, 28.004101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635193, 20.650013, 28.347839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230214, -0.832481, -0.503961,
		0.972448, 0.216323, 0.086884,
		0.036690, -0.510078, 0.859345,
		17.646200, 20.496990, 28.605642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688208, 20.172571, 27.838469>,  <17.620518, 20.854044, 28.004101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688208, 20.172571, 27.838469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667997, 20.085154, 28.228275>,  <17.655872, 20.032703, 28.462160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667997, 20.085154, 28.228275>,  <17.688208, 20.172571, 27.838469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667997, 20.085154, 28.228275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015420, -0.975819, -0.218036,
		0.998604, 0.004011, 0.052672,
		-0.050523, -0.218543, 0.974519,
		17.652840, 20.019590, 28.520632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303532, 19.836802, 28.083197>,  <17.688208, 20.172571, 27.838469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303532, 19.836802, 28.083197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.999409, 19.721024, 28.315800>,  <17.816935, 19.651558, 28.455362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.999409, 19.721024, 28.315800>,  <18.303532, 19.836802, 28.083197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999409, 19.721024, 28.315800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154282, -0.950083, -0.271180,
		0.630974, -0.116464, 0.767012,
		-0.760308, -0.289444, 0.581510,
		17.771317, 19.634190, 28.490253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585773, 19.361160, 28.452265>,  <18.303532, 19.836802, 28.083197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585773, 19.361160, 28.452265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191898, 19.291889, 28.444225>,  <17.955574, 19.250326, 28.439402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191898, 19.291889, 28.444225>,  <18.585773, 19.361160, 28.452265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191898, 19.291889, 28.444225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173924, -0.967829, -0.181817,
		0.012036, -0.182528, 0.983127,
		-0.984686, -0.173177, -0.020098,
		17.896492, 19.239937, 28.438196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611671, 18.733227, 28.667820>,  <18.585773, 19.361160, 28.452265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.611671, 18.733227, 28.667820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.231258, 18.777044, 28.552208>,  <18.003010, 18.803335, 28.482841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.231258, 18.777044, 28.552208>,  <18.611671, 18.733227, 28.667820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231258, 18.777044, 28.552208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060994, -0.983216, -0.171947,
		-0.303013, -0.145899, 0.941752,
		-0.951033, 0.109543, -0.289028,
		17.945950, 18.809908, 28.465500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328373, 18.035088, 28.897099>,  <18.611671, 18.733227, 28.667820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328373, 18.035088, 28.897099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074375, 18.196356, 28.633512>,  <17.921976, 18.293118, 28.475361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074375, 18.196356, 28.633512>,  <18.328373, 18.035088, 28.897099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074375, 18.196356, 28.633512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274856, -0.915103, -0.295027,
		-0.721966, -0.006221, 0.691901,
		-0.634996, 0.403172, -0.658963,
		17.883877, 18.317307, 28.435823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575468, 17.683121, 28.956226>,  <18.328373, 18.035088, 28.897099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575468, 17.683121, 28.956226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573668, 17.823854, 28.581806>,  <17.572588, 17.908295, 28.357153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573668, 17.823854, 28.581806>,  <17.575468, 17.683121, 28.956226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573668, 17.823854, 28.581806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264475, -0.903149, -0.338193,
		-0.964382, 0.246040, 0.097116,
		-0.004501, 0.351832, -0.936052,
		17.572317, 17.929403, 28.300991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898720, 17.469910, 28.727289>,  <17.575468, 17.683121, 28.956226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898720, 17.469910, 28.727289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096643, 17.570820, 28.394657>,  <17.215397, 17.631367, 28.195078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096643, 17.570820, 28.394657>,  <16.898720, 17.469910, 28.727289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096643, 17.570820, 28.394657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435350, -0.756227, -0.488459,
		-0.752088, 0.603720, -0.264358,
		0.494807, 0.252276, -0.831579,
		17.245085, 17.646503, 28.145184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384312, 17.504831, 28.267967>,  <16.898720, 17.469910, 28.727289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384312, 17.504831, 28.267967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716391, 17.461521, 28.049225>,  <16.915638, 17.435535, 27.917980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716391, 17.461521, 28.049225>,  <16.384312, 17.504831, 28.267967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716391, 17.461521, 28.049225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492812, -0.601099, -0.629139,
		-0.260594, 0.791806, -0.552389,
		0.830197, -0.108274, -0.546855,
		16.965450, 17.429039, 27.885168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204254, 17.627808, 27.500578>,  <16.384312, 17.504831, 28.267967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204254, 17.627808, 27.500578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535536, 17.403830, 27.491280>,  <16.734304, 17.269442, 27.485701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535536, 17.403830, 27.491280>,  <16.204254, 17.627808, 27.500578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535536, 17.403830, 27.491280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359146, -0.498450, -0.789026,
		0.430226, 0.661822, -0.613920,
		0.828203, -0.559946, -0.023245,
		16.783997, 17.235846, 27.484306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451588, 17.688824, 26.844837>,  <16.204254, 17.627808, 27.500578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.451588, 17.688824, 26.844837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650328, 17.370113, 26.982407>,  <16.769573, 17.178886, 27.064949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650328, 17.370113, 26.982407>,  <16.451588, 17.688824, 26.844837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650328, 17.370113, 26.982407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249917, -0.510881, -0.822522,
		0.831071, 0.322719, -0.452961,
		0.496853, -0.796777, 0.343926,
		16.799383, 17.131081, 27.085585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778494, 17.362999, 26.294266>,  <16.451588, 17.688824, 26.844837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778494, 17.362999, 26.294266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738211, 17.058615, 26.550638>,  <16.714041, 16.875984, 26.704462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738211, 17.058615, 26.550638>,  <16.778494, 17.362999, 26.294266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738211, 17.058615, 26.550638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500180, -0.518154, -0.693784,
		0.860045, -0.390451, -0.328435,
		-0.100709, -0.760963, 0.640932,
		16.707998, 16.830326, 26.742918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971790, 16.741220, 25.991739>,  <16.778494, 17.362999, 26.294266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971790, 16.741220, 25.991739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.730297, 16.601267, 26.278259>,  <16.585402, 16.517294, 26.450171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.730297, 16.601267, 26.278259>,  <16.971790, 16.741220, 25.991739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730297, 16.601267, 26.278259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507864, -0.523785, -0.683903,
		0.614474, -0.776679, 0.138534,
		-0.603735, -0.349884, 0.716300,
		16.549177, 16.496302, 26.493149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.991268, 16.038628, 25.831423>,  <16.971790, 16.741220, 25.991739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.991268, 16.038628, 25.831423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.672073, 16.048508, 26.072290>,  <16.480556, 16.054436, 26.216810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.672073, 16.048508, 26.072290>,  <16.991268, 16.038628, 25.831423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.672073, 16.048508, 26.072290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504718, -0.573421, -0.645328,
		0.329356, -0.818889, 0.470049,
		-0.797988, 0.024699, 0.602167,
		16.432676, 16.055918, 26.252941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759340, 15.320230, 26.087875>,  <16.991268, 16.038628, 25.831423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759340, 15.320230, 26.087875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.456106, 15.579556, 26.059601>,  <16.274166, 15.735152, 26.042635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.456106, 15.579556, 26.059601>,  <16.759340, 15.320230, 26.087875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456106, 15.579556, 26.059601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541128, -0.685811, -0.486666,
		-0.363991, -0.330683, 0.870724,
		-0.758084, 0.648315, -0.070687,
		16.228682, 15.774051, 26.038395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209179, 14.931639, 26.282158>,  <16.759340, 15.320230, 26.087875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209179, 14.931639, 26.282158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065447, 15.258076, 26.101105>,  <15.979208, 15.453938, 25.992474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065447, 15.258076, 26.101105>,  <16.209179, 14.931639, 26.282158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065447, 15.258076, 26.101105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591501, -0.574324, -0.565932,
		-0.721810, 0.064376, 0.689091,
		-0.359329, 0.816093, -0.452631,
		15.957648, 15.502904, 25.965315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.498341, 14.735968, 26.072012>,  <16.209179, 14.931639, 26.282158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.498341, 14.735968, 26.072012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567310, 15.064285, 25.854179>,  <15.608692, 15.261276, 25.723480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567310, 15.064285, 25.854179>,  <15.498341, 14.735968, 26.072012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567310, 15.064285, 25.854179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467760, -0.418320, -0.778594,
		-0.866874, 0.388981, 0.311806,
		0.172424, 0.820794, -0.544580,
		15.619038, 15.310523, 25.690805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850218, 14.943558, 25.867752>,  <15.498341, 14.735968, 26.072012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850218, 14.943558, 25.867752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.127587, 15.085302, 25.616804>,  <15.294009, 15.170349, 25.466236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.127587, 15.085302, 25.616804>,  <14.850218, 14.943558, 25.867752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.127587, 15.085302, 25.616804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597351, -0.204156, -0.775559,
		-0.402909, 0.912551, 0.070111,
		0.693424, 0.354361, -0.627369,
		15.335614, 15.191610, 25.428593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543316, 15.485070, 25.426655>,  <14.850218, 14.943558, 25.867752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543316, 15.485070, 25.426655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.860127, 15.337075, 25.232418>,  <15.050214, 15.248279, 25.115875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.860127, 15.337075, 25.232418>,  <14.543316, 15.485070, 25.426655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.860127, 15.337075, 25.232418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595624, -0.293891, -0.747570,
		0.133880, 0.881327, -0.453143,
		0.792028, -0.369987, -0.485593,
		15.097736, 15.226079, 25.086740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367115, 15.600824, 24.793709>,  <14.543316, 15.485070, 25.426655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367115, 15.600824, 24.793709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693161, 15.394188, 24.688848>,  <14.888788, 15.270206, 24.625933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693161, 15.394188, 24.688848>,  <14.367115, 15.600824, 24.793709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693161, 15.394188, 24.688848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417311, -0.209753, -0.884226,
		0.401796, 0.830144, -0.386551,
		0.815115, -0.516590, -0.262150,
		14.937696, 15.239211, 24.610203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633231, 15.939141, 24.208689>,  <14.367115, 15.600824, 24.793709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633231, 15.939141, 24.208689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.769543, 15.563601, 24.188986>,  <14.851330, 15.338276, 24.177164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.769543, 15.563601, 24.188986>,  <14.633231, 15.939141, 24.208689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769543, 15.563601, 24.188986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239745, -0.036120, -0.970164,
		0.909061, 0.342422, -0.237394,
		0.340780, -0.938852, -0.049258,
		14.871777, 15.281945, 24.174208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082328, 15.864487, 23.617527>,  <14.633231, 15.939141, 24.208689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082328, 15.864487, 23.617527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.942733, 15.497935, 23.695972>,  <14.858975, 15.278005, 23.743040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.942733, 15.497935, 23.695972>,  <15.082328, 15.864487, 23.617527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.942733, 15.497935, 23.695972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329927, -0.075725, -0.940964,
		0.877129, -0.393088, -0.275911,
		-0.348988, -0.916377, 0.196111,
		14.838037, 15.223022, 23.754807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.307687, 15.374499, 23.071054>,  <15.082328, 15.864487, 23.617527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.307687, 15.374499, 23.071054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002489, 15.171809, 23.231588>,  <14.819370, 15.050196, 23.327909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002489, 15.171809, 23.231588>,  <15.307687, 15.374499, 23.071054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.002489, 15.171809, 23.231588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284039, -0.294898, -0.912336,
		0.580656, -0.810102, 0.081076,
		-0.762994, -0.506725, 0.401335,
		14.773591, 15.019792, 23.351988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180409, 15.104144, 22.498577>,  <15.307687, 15.374499, 23.071054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180409, 15.104144, 22.498577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889243, 14.975549, 22.740828>,  <14.714543, 14.898392, 22.886177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889243, 14.975549, 22.740828>,  <15.180409, 15.104144, 22.498577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889243, 14.975549, 22.740828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459791, -0.426377, -0.778970,
		0.508655, -0.845487, 0.162550,
		-0.727917, -0.321488, 0.605626,
		14.670868, 14.879103, 22.922516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112324, 14.391365, 22.544704>,  <15.180409, 15.104144, 22.498577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112324, 14.391365, 22.544704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752488, 14.551694, 22.614079>,  <14.536587, 14.647891, 22.655703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752488, 14.551694, 22.614079>,  <15.112324, 14.391365, 22.544704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752488, 14.551694, 22.614079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360880, -0.458552, -0.812093,
		-0.245974, -0.793141, 0.557157,
		-0.899590, 0.400821, 0.173437,
		14.482612, 14.671941, 22.666109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633380, 13.954237, 22.263538>,  <15.112324, 14.391365, 22.544704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633380, 13.954237, 22.263538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386494, 14.264340, 22.317234>,  <14.238362, 14.450402, 22.349451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386494, 14.264340, 22.317234>,  <14.633380, 13.954237, 22.263538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386494, 14.264340, 22.317234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458211, -0.215485, -0.862327,
		-0.639600, -0.593751, 0.488233,
		-0.617215, 0.775258, 0.134239,
		14.201329, 14.496918, 22.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970457, 13.718614, 22.271418>,  <14.633380, 13.954237, 22.263538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970457, 13.718614, 22.271418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.914672, 14.106924, 22.193296>,  <13.881201, 14.339911, 22.146423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.914672, 14.106924, 22.193296>,  <13.970457, 13.718614, 22.271418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.914672, 14.106924, 22.193296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690031, -0.236734, -0.683969,
		-0.710217, 0.039379, 0.702881,
		-0.139462, 0.970776, -0.195305,
		13.872833, 14.398157, 22.134705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.269999, 13.835420, 22.315331>,  <13.970457, 13.718614, 22.271418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.269999, 13.835420, 22.315331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394759, 14.142431, 22.091326>,  <13.469616, 14.326638, 21.956923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394759, 14.142431, 22.091326>,  <13.269999, 13.835420, 22.315331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.394759, 14.142431, 22.091326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763081, -0.148800, -0.628940,
		-0.566061, 0.623503, 0.539277,
		0.311902, 0.767530, -0.560013,
		13.488330, 14.372690, 21.923323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705695, 14.285452, 22.057180>,  <13.269999, 13.835420, 22.315331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705695, 14.285452, 22.057180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999573, 14.371510, 21.799828>,  <13.175900, 14.423144, 21.645416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999573, 14.371510, 21.799828>,  <12.705695, 14.285452, 22.057180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.999573, 14.371510, 21.799828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628473, -0.141243, -0.764900,
		-0.255436, 0.966314, 0.031442,
		0.734693, 0.215143, -0.643381,
		13.219980, 14.436052, 21.606813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.438716, 14.746029, 21.683271>,  <12.705695, 14.285452, 22.057180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.438716, 14.746029, 21.683271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.736227, 14.616124, 21.449579>,  <12.914734, 14.538181, 21.309364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.736227, 14.616124, 21.449579>,  <12.438716, 14.746029, 21.683271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.736227, 14.616124, 21.449579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613974, 0.013613, -0.789209,
		0.264257, 0.945698, -0.189270,
		0.743777, -0.324761, -0.584231,
		12.959360, 14.518696, 21.274309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433580, 15.146499, 21.095711>,  <12.438716, 14.746029, 21.683271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433580, 15.146499, 21.095711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.647736, 14.827456, 20.984585>,  <12.776229, 14.636029, 20.917910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.647736, 14.827456, 20.984585>,  <12.433580, 15.146499, 21.095711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.647736, 14.827456, 20.984585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532910, -0.063821, -0.843761,
		0.655261, 0.599790, -0.459223,
		0.535388, -0.797608, -0.277815,
		12.808352, 14.588173, 20.901241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687498, 15.334383, 20.416353>,  <12.433580, 15.146499, 21.095711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687498, 15.334383, 20.416353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.740861, 14.940505, 20.461212>,  <12.772879, 14.704178, 20.488127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.740861, 14.940505, 20.461212>,  <12.687498, 15.334383, 20.416353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.740861, 14.940505, 20.461212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358865, -0.153475, -0.920685,
		0.923806, 0.082580, -0.373848,
		0.133406, -0.984696, 0.112146,
		12.780883, 14.645096, 20.494856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999299, 15.067737, 19.816154>,  <12.687498, 15.334383, 20.416353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999299, 15.067737, 19.816154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832192, 14.744002, 19.981295>,  <12.731929, 14.549762, 20.080379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832192, 14.744002, 19.981295>,  <12.999299, 15.067737, 19.816154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.832192, 14.744002, 19.981295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426169, -0.226756, -0.875764,
		0.802404, -0.541809, -0.250182,
		-0.417766, -0.809336, 0.412852,
		12.706862, 14.501202, 20.105150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224917, 14.401943, 19.513750>,  <12.999299, 15.067737, 19.816154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.224917, 14.401943, 19.513750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845983, 14.338292, 19.624912>,  <12.618622, 14.300101, 19.691610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845983, 14.338292, 19.624912>,  <13.224917, 14.401943, 19.513750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845983, 14.338292, 19.624912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198985, -0.387452, -0.900159,
		0.250915, -0.908053, 0.335384,
		-0.947337, -0.159127, 0.277906,
		12.561782, 14.290554, 19.708284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.908019, 13.965184, 18.915470>,  <13.224917, 14.401943, 19.513750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.908019, 13.965184, 18.915470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574445, 14.028160, 19.127041>,  <12.374300, 14.065946, 19.253983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574445, 14.028160, 19.127041>,  <12.908019, 13.965184, 18.915470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574445, 14.028160, 19.127041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544685, -0.388873, -0.743032,
		0.088703, -0.907739, 0.410050,
		-0.833936, 0.157439, 0.528926,
		12.324264, 14.075392, 19.285719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.328835, 13.347382, 18.893330>,  <12.908019, 13.965184, 18.915470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.328835, 13.347382, 18.893330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.630435, 13.085268, 18.911615>,  <13.811395, 12.928000, 18.922586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.630435, 13.085268, 18.911615>,  <13.328835, 13.347382, 18.893330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.630435, 13.085268, 18.911615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580918, 0.697681, 0.419256,
		-0.306627, -0.289561, 0.906716,
		0.753999, -0.655283, 0.045716,
		13.856634, 12.888683, 18.925331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.497988, 13.297597, 19.649353>,  <13.328835, 13.347382, 18.893330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.497988, 13.297597, 19.649353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804925, 13.193563, 19.414904>,  <13.989087, 13.131144, 19.274235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804925, 13.193563, 19.414904>,  <13.497988, 13.297597, 19.649353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804925, 13.193563, 19.414904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609435, 0.580079, 0.540460,
		0.199432, -0.771922, 0.603624,
		0.767343, -0.260085, -0.586123,
		14.035128, 13.115539, 19.239067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058326, 13.234296, 20.189243>,  <13.497988, 13.297597, 19.649353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058326, 13.234296, 20.189243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236289, 13.270961, 19.832893>,  <14.343067, 13.292960, 19.619083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236289, 13.270961, 19.832893>,  <14.058326, 13.234296, 20.189243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236289, 13.270961, 19.832893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617383, 0.689214, 0.379238,
		0.648764, -0.718736, 0.250046,
		0.444907, 0.091662, -0.890874,
		14.369761, 13.298459, 19.565632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819441, 13.046349, 20.363214>,  <14.058326, 13.234296, 20.189243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819441, 13.046349, 20.363214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798243, 13.239182, 20.013405>,  <14.785523, 13.354881, 19.803520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798243, 13.239182, 20.013405>,  <14.819441, 13.046349, 20.363214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798243, 13.239182, 20.013405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799136, 0.545622, 0.252349,
		0.598811, -0.685488, -0.414164,
		-0.052995, 0.482082, -0.874522,
		14.782344, 13.383806, 19.751049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407112, 12.906471, 20.028345>,  <14.819441, 13.046349, 20.363214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407112, 12.906471, 20.028345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276311, 13.252584, 19.876368>,  <15.197830, 13.460251, 19.785181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276311, 13.252584, 19.876368>,  <15.407112, 12.906471, 20.028345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276311, 13.252584, 19.876368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832519, 0.454019, 0.317457,
		0.447192, -0.212502, -0.868828,
		-0.327004, 0.865280, -0.379946,
		15.178209, 13.512168, 19.762384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.996140, 13.269867, 19.940485>,  <15.407112, 12.906471, 20.028345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.996140, 13.269867, 19.940485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728570, 13.566694, 19.923168>,  <15.568027, 13.744790, 19.912777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728570, 13.566694, 19.923168>,  <15.996140, 13.269867, 19.940485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728570, 13.566694, 19.923168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702164, 0.649922, 0.290803,
		0.243932, 0.164127, -0.955803,
		-0.668926, 0.742067, -0.043293,
		15.527892, 13.789314, 19.910181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218254, 13.748943, 19.480459>,  <15.996140, 13.269867, 19.940485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218254, 13.748943, 19.480459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.974489, 13.945624, 19.729246>,  <15.828230, 14.063633, 19.878519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.974489, 13.945624, 19.729246>,  <16.218254, 13.748943, 19.480459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.974489, 13.945624, 19.729246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750537, 0.610622, 0.252654,
		-0.255556, 0.620780, -0.741163,
		-0.609413, 0.491704, 0.621967,
		15.791665, 14.093136, 19.915836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.315010, 14.467490, 19.421732>,  <16.218254, 13.748943, 19.480459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.315010, 14.467490, 19.421732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.149021, 14.456064, 19.785486>,  <16.049427, 14.449208, 20.003738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.149021, 14.456064, 19.785486>,  <16.315010, 14.467490, 19.421732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149021, 14.456064, 19.785486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703268, 0.624067, 0.340520,
		-0.577244, 0.780848, -0.238882,
		-0.414973, -0.028565, 0.909385,
		16.024529, 14.447495, 20.058302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448668, 15.168205, 19.747356>,  <16.315010, 14.467490, 19.421732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448668, 15.168205, 19.747356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343626, 14.941931, 20.060032>,  <16.280602, 14.806166, 20.247637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343626, 14.941931, 20.060032>,  <16.448668, 15.168205, 19.747356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343626, 14.941931, 20.060032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623628, 0.518681, 0.584858,
		-0.736293, 0.641069, 0.216570,
		-0.262604, -0.565686, 0.781690,
		16.264845, 14.772225, 20.294538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231771, 15.649060, 20.356833>,  <16.448668, 15.168205, 19.747356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231771, 15.649060, 20.356833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331949, 15.299090, 20.522619>,  <16.392056, 15.089108, 20.622091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331949, 15.299090, 20.522619>,  <16.231771, 15.649060, 20.356833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331949, 15.299090, 20.522619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569274, 0.479364, 0.667935,
		-0.783075, 0.068665, 0.618126,
		0.250444, -0.874926, 0.414467,
		16.407082, 15.036613, 20.646959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033216, 15.669407, 21.123207>,  <16.231771, 15.649060, 20.356833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033216, 15.669407, 21.123207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311537, 15.386689, 21.072134>,  <16.478529, 15.217058, 21.041491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311537, 15.386689, 21.072134>,  <16.033216, 15.669407, 21.123207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311537, 15.386689, 21.072134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379071, 0.210387, 0.901134,
		-0.610054, -0.675410, 0.414313,
		0.695800, -0.706795, -0.127681,
		16.520277, 15.174651, 21.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025154, 15.279737, 21.639236>,  <16.033216, 15.669407, 21.123207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025154, 15.279737, 21.639236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395370, 15.208205, 21.505732>,  <16.617500, 15.165286, 21.425629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395370, 15.208205, 21.505732>,  <16.025154, 15.279737, 21.639236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.395370, 15.208205, 21.505732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343004, 0.022595, 0.939062,
		-0.160394, -0.983620, 0.082253,
		0.925539, -0.178833, -0.333761,
		16.673033, 15.154555, 21.405603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287264, 14.837704, 22.105431>,  <16.025154, 15.279737, 21.639236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287264, 14.837704, 22.105431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.629185, 14.954572, 21.933872>,  <16.834337, 15.024693, 21.830936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.629185, 14.954572, 21.933872>,  <16.287264, 14.837704, 22.105431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.629185, 14.954572, 21.933872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432245, 0.056525, 0.899983,
		0.287191, -0.954695, -0.077971,
		0.854801, 0.292170, -0.428896,
		16.885626, 15.042223, 21.805204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714678, 14.545961, 22.580572>,  <16.287264, 14.837704, 22.105431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714678, 14.545961, 22.580572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939552, 14.802167, 22.371309>,  <17.074476, 14.955890, 22.245752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939552, 14.802167, 22.371309>,  <16.714678, 14.545961, 22.580572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939552, 14.802167, 22.371309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638671, 0.065633, 0.766675,
		0.525402, -0.765137, -0.372180,
		0.562184, 0.640513, -0.523155,
		17.108208, 14.994321, 22.214363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419210, 14.344459, 22.645081>,  <16.714678, 14.545961, 22.580572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.419210, 14.344459, 22.645081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.428574, 14.732157, 22.547089>,  <17.434191, 14.964776, 22.488293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.428574, 14.732157, 22.547089>,  <17.419210, 14.344459, 22.645081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428574, 14.732157, 22.547089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686325, 0.162600, 0.708887,
		0.726919, -0.184729, -0.661411,
		0.023406, 0.969245, -0.244981,
		17.435596, 15.022930, 22.473595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111736, 14.436434, 22.804098>,  <17.419210, 14.344459, 22.645081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111736, 14.436434, 22.804098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917921, 14.786320, 22.800156>,  <17.801632, 14.996251, 22.797791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917921, 14.786320, 22.800156>,  <18.111736, 14.436434, 22.804098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917921, 14.786320, 22.800156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644777, 0.364737, 0.671736,
		0.591173, 0.319127, -0.740725,
		-0.484539, 0.874714, -0.009857,
		17.772560, 15.048734, 22.797199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635231, 15.020604, 22.744793>,  <18.111736, 14.436434, 22.804098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635231, 15.020604, 22.744793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.321722, 15.205558, 22.910637>,  <18.133615, 15.316530, 23.010143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.321722, 15.205558, 22.910637>,  <18.635231, 15.020604, 22.744793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.321722, 15.205558, 22.910637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593352, 0.360378, 0.719765,
		0.183392, 0.810141, -0.556811,
		-0.783773, 0.462384, 0.414608,
		18.086590, 15.344274, 23.035019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802427, 15.704924, 23.060144>,  <18.635231, 15.020604, 22.744793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802427, 15.704924, 23.060144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.456734, 15.658404, 23.255932>,  <18.249317, 15.630493, 23.373404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.456734, 15.658404, 23.255932>,  <18.802427, 15.704924, 23.060144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456734, 15.658404, 23.255932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468281, 0.169665, 0.867137,
		-0.183892, 0.978616, -0.092170,
		-0.864232, -0.116298, 0.489467,
		18.197464, 15.623515, 23.402773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891785, 16.172632, 23.636995>,  <18.802427, 15.704924, 23.060144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891785, 16.172632, 23.636995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.552462, 15.979626, 23.724226>,  <18.348867, 15.863822, 23.776566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.552462, 15.979626, 23.724226>,  <18.891785, 16.172632, 23.636995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.552462, 15.979626, 23.724226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094993, 0.266491, 0.959145,
		-0.520917, 0.834364, -0.180230,
		-0.848305, -0.482514, 0.218078,
		18.297970, 15.834871, 23.789650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497803, 16.675423, 23.919807>,  <18.891785, 16.172632, 23.636995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497803, 16.675423, 23.919807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.416042, 16.311272, 24.063715>,  <18.366985, 16.092781, 24.150059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.416042, 16.311272, 24.063715>,  <18.497803, 16.675423, 23.919807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.416042, 16.311272, 24.063715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067457, 0.353553, 0.932979,
		-0.976560, 0.214973, -0.010856,
		-0.204403, -0.910378, 0.359767,
		18.354721, 16.038158, 24.171644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093323, 16.731707, 24.525093>,  <18.497803, 16.675423, 23.919807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.093323, 16.731707, 24.525093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228794, 16.358099, 24.570530>,  <18.310078, 16.133934, 24.597792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228794, 16.358099, 24.570530>,  <18.093323, 16.731707, 24.525093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228794, 16.358099, 24.570530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250044, 0.205731, 0.946125,
		-0.907069, -0.292029, 0.303223,
		0.338679, -0.934020, 0.113592,
		18.330399, 16.077892, 24.604607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937708, 16.564648, 25.188976>,  <18.093323, 16.731707, 24.525093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937708, 16.564648, 25.188976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227587, 16.299356, 25.114208>,  <18.401514, 16.140181, 25.069347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227587, 16.299356, 25.114208>,  <17.937708, 16.564648, 25.188976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227587, 16.299356, 25.114208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429765, 0.223001, 0.874970,
		-0.538622, -0.714421, 0.446641,
		0.724699, -0.663229, -0.186920,
		18.444996, 16.100388, 25.058132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935078, 16.033377, 25.755650>,  <17.937708, 16.564648, 25.188976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935078, 16.033377, 25.755650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305552, 16.022690, 25.605200>,  <18.527836, 16.016277, 25.514931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305552, 16.022690, 25.605200>,  <17.935078, 16.033377, 25.755650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305552, 16.022690, 25.605200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375881, 0.144646, 0.915309,
		0.029951, -0.989123, 0.144011,
		0.926184, -0.026717, -0.376125,
		18.583406, 16.014675, 25.492363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313215, 15.629186, 26.258854>,  <17.935078, 16.033377, 25.755650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313215, 15.629186, 26.258854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571764, 15.828956, 26.028107>,  <18.726894, 15.948817, 25.889658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571764, 15.828956, 26.028107>,  <18.313215, 15.629186, 26.258854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.571764, 15.828956, 26.028107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606450, 0.122553, 0.785620,
		0.463055, -0.857645, -0.223661,
		0.646373, 0.499425, -0.576868,
		18.765676, 15.978783, 25.855047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993704, 15.289500, 26.362778>,  <18.313215, 15.629186, 26.258854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993704, 15.289500, 26.362778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039095, 15.673244, 26.259430>,  <19.066330, 15.903489, 26.197420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039095, 15.673244, 26.259430>,  <18.993704, 15.289500, 26.362778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.039095, 15.673244, 26.259430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713075, 0.102441, 0.693563,
		0.691842, -0.262942, -0.672470,
		0.113479, 0.959358, -0.258371,
		19.073139, 15.961051, 26.181919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680170, 15.375168, 26.501272>,  <18.993704, 15.289500, 26.362778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680170, 15.375168, 26.501272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530220, 15.745701, 26.486435>,  <19.440250, 15.968020, 26.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530220, 15.745701, 26.486435>,  <19.680170, 15.375168, 26.501272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.530220, 15.745701, 26.486435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644472, 0.289156, 0.707845,
		0.666426, 0.241448, -0.705393,
		-0.374877, 0.926332, -0.037094,
		19.417757, 16.023600, 26.475307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.311264, 15.803865, 26.389957>,  <19.680170, 15.375168, 26.501272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.311264, 15.803865, 26.389957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006769, 16.023003, 26.528746>,  <19.824072, 16.154486, 26.612019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006769, 16.023003, 26.528746>,  <20.311264, 15.803865, 26.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006769, 16.023003, 26.528746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633086, 0.511967, 0.580595,
		0.140437, 0.661633, -0.736559,
		-0.761235, 0.547843, 0.346972,
		19.778399, 16.187355, 26.632837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.554949, 16.484838, 26.365894>,  <20.311264, 15.803865, 26.389957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.554949, 16.484838, 26.365894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251148, 16.518513, 26.623909>,  <20.068869, 16.538717, 26.778717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251148, 16.518513, 26.623909>,  <20.554949, 16.484838, 26.365894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251148, 16.518513, 26.623909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587085, 0.515766, 0.623952,
		-0.280158, 0.852583, -0.441151,
		-0.759502, 0.084188, 0.645035,
		20.023298, 16.543770, 26.817419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657135, 17.165695, 26.666718>,  <20.554949, 16.484838, 26.365894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657135, 17.165695, 26.666718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423773, 16.974863, 26.929634>,  <20.283756, 16.860365, 27.087385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423773, 16.974863, 26.929634>,  <20.657135, 17.165695, 26.666718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423773, 16.974863, 26.929634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366434, 0.567629, 0.737241,
		-0.724820, 0.670965, -0.156340,
		-0.583406, -0.477078, 0.657293,
		20.248751, 16.831739, 27.126822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291771, 17.716568, 27.049799>,  <20.657135, 17.165695, 26.666718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291771, 17.716568, 27.049799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273830, 17.382069, 27.268404>,  <20.263067, 17.181368, 27.399567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273830, 17.382069, 27.268404>,  <20.291771, 17.716568, 27.049799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.273830, 17.382069, 27.268404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507514, 0.452135, 0.733487,
		-0.860475, 0.310260, 0.404130,
		-0.044850, -0.836249, 0.546512,
		20.260376, 17.131193, 27.432358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123100, 17.960760, 27.707930>,  <20.291771, 17.716568, 27.049799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123100, 17.960760, 27.707930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.257360, 17.588966, 27.769121>,  <20.337915, 17.365891, 27.805836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.257360, 17.588966, 27.769121>,  <20.123100, 17.960760, 27.707930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.257360, 17.588966, 27.769121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682627, 0.351915, 0.640450,
		-0.649122, -0.110539, 0.752610,
		0.335649, -0.929482, 0.152978,
		20.358055, 17.310122, 27.815014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.245697, 17.862015, 28.495388>,  <20.123100, 17.960760, 27.707930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.245697, 17.862015, 28.495388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.471764, 17.637598, 28.253456>,  <20.607403, 17.502949, 28.108297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.471764, 17.637598, 28.253456>,  <20.245697, 17.862015, 28.495388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.471764, 17.637598, 28.253456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791377, 0.575801, 0.205366,
		0.233045, -0.594716, 0.769417,
		0.565166, -0.561040, -0.604832,
		20.641314, 17.469286, 28.072006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881367, 18.514490, 28.817202>,  <20.245697, 17.862015, 28.495388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.881367, 18.514490, 28.817202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163687, 18.754944, 28.667278>,  <20.333078, 18.899216, 28.577324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163687, 18.754944, 28.667278>,  <19.881367, 18.514490, 28.817202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163687, 18.754944, 28.667278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057459, 0.575918, 0.815486,
		0.706075, -0.554035, 0.441024,
		0.705802, 0.601135, -0.374808,
		20.375427, 18.935284, 28.554836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.472372, 18.677246, 29.299829>,  <19.881367, 18.514490, 28.817202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.472372, 18.677246, 29.299829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482246, 18.989124, 29.049561>,  <20.488171, 19.176250, 28.899399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482246, 18.989124, 29.049561>,  <20.472372, 18.677246, 29.299829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482246, 18.989124, 29.049561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116484, 0.623843, 0.772820,
		0.992886, 0.053803, 0.106222,
		0.024686, 0.779695, -0.625672,
		20.489653, 19.223032, 28.861858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114599, 19.223501, 29.486942>,  <20.472372, 18.677246, 29.299829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114599, 19.223501, 29.486942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809738, 19.407423, 29.304644>,  <20.626822, 19.517776, 29.195265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809738, 19.407423, 29.304644>,  <21.114599, 19.223501, 29.486942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809738, 19.407423, 29.304644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056371, 0.748426, 0.660818,
		0.644940, 0.477953, -0.596334,
		-0.762151, 0.459804, -0.455747,
		20.581093, 19.545364, 29.167919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.424606, 19.908310, 29.289797>,  <21.114599, 19.223501, 29.486942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.424606, 19.908310, 29.289797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037395, 19.920622, 29.389374>,  <20.805069, 19.928009, 29.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037395, 19.920622, 29.389374>,  <21.424606, 19.908310, 29.289797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.037395, 19.920622, 29.389374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171951, 0.803999, 0.569226,
		-0.182630, 0.593834, -0.783586,
		-0.968028, 0.030781, 0.248945,
		20.746986, 19.929855, 29.464058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.347446, 20.476934, 29.600866>,  <21.424606, 19.908310, 29.289797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.347446, 20.476934, 29.600866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960115, 20.393057, 29.655079>,  <20.727716, 20.342731, 29.687607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960115, 20.393057, 29.655079>,  <21.347446, 20.476934, 29.600866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960115, 20.393057, 29.655079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098007, 0.818481, 0.566112,
		-0.229640, 0.534899, -0.813110,
		-0.968328, -0.209693, 0.135532,
		20.669617, 20.330149, 29.695738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966272, 20.902096, 29.208214>,  <21.347446, 20.476934, 29.600866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966272, 20.902096, 29.208214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803755, 20.763102, 29.546251>,  <20.706244, 20.679705, 29.749073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803755, 20.763102, 29.546251>,  <20.966272, 20.902096, 29.208214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803755, 20.763102, 29.546251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013510, 0.922483, 0.385802,
		-0.913643, 0.168166, -0.370105,
		-0.406294, -0.347485, 0.845092,
		20.681866, 20.658855, 29.799778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.738375, 21.285599, 29.030897>,  <20.966272, 20.902096, 29.208214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.738375, 21.285599, 29.030897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.786928, 21.549849, 28.734562>,  <21.816061, 21.708399, 28.556761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.786928, 21.549849, 28.734562>,  <21.738375, 21.285599, 29.030897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786928, 21.549849, 28.734562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602294, -0.544237, -0.583994,
		-0.788992, 0.517089, 0.331828,
		0.121384, 0.660625, -0.740838,
		21.823343, 21.748035, 28.512310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093643, 21.360323, 28.656544>,  <21.738375, 21.285599, 29.030897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093643, 21.360323, 28.656544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.348490, 21.486496, 28.375237>,  <21.501398, 21.562199, 28.206451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.348490, 21.486496, 28.375237>,  <21.093643, 21.360323, 28.656544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.348490, 21.486496, 28.375237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626859, -0.318851, -0.710902,
		-0.448479, 0.893777, -0.005413,
		0.637114, 0.315431, -0.703270,
		21.539623, 21.581125, 28.164255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736887, 21.658842, 28.116711>,  <21.093643, 21.360323, 28.656544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736887, 21.658842, 28.116711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.073101, 21.587048, 27.912247>,  <21.274830, 21.543970, 27.789568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.073101, 21.587048, 27.912247>,  <20.736887, 21.658842, 28.116711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073101, 21.587048, 27.912247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540076, -0.203395, -0.816669,
		0.042615, 0.962504, -0.267897,
		0.840537, -0.179487, -0.511158,
		21.325262, 21.533201, 27.758900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.442244, 21.717100, 27.529289>,  <20.736887, 21.658842, 28.116711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.442244, 21.717100, 27.529289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800602, 21.552094, 27.463324>,  <21.015617, 21.453089, 27.423744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800602, 21.552094, 27.463324>,  <20.442244, 21.717100, 27.529289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800602, 21.552094, 27.463324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368208, -0.481776, -0.795182,
		0.248575, 0.773125, -0.583515,
		0.895898, -0.412517, -0.164913,
		21.069372, 21.428339, 27.413849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633465, 21.812063, 26.793798>,  <20.442244, 21.717100, 27.529289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.633465, 21.812063, 26.793798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836569, 21.493149, 26.924347>,  <20.958431, 21.301800, 27.002676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836569, 21.493149, 26.924347>,  <20.633465, 21.812063, 26.793798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.836569, 21.493149, 26.924347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380989, -0.547595, -0.744974,
		0.772676, 0.253924, -0.581803,
		0.507759, -0.797284, 0.326371,
		20.988897, 21.253963, 27.022259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.092224, 21.578415, 26.140163>,  <20.633465, 21.812063, 26.793798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.092224, 21.578415, 26.140163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.047142, 21.284853, 26.408098>,  <21.020092, 21.108717, 26.568859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.047142, 21.284853, 26.408098>,  <21.092224, 21.578415, 26.140163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.047142, 21.284853, 26.408098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364512, -0.596596, -0.714986,
		0.924353, -0.324747, -0.200277,
		-0.112705, -0.733902, 0.669839,
		21.013330, 21.064682, 26.609051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446264, 20.994476, 25.858137>,  <21.092224, 21.578415, 26.140163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446264, 20.994476, 25.858137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.178972, 20.849623, 26.118084>,  <21.018597, 20.762711, 26.274052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.178972, 20.849623, 26.118084>,  <21.446264, 20.994476, 25.858137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.178972, 20.849623, 26.118084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301299, -0.666948, -0.681468,
		0.680210, -0.651182, 0.336565,
		-0.668231, -0.362135, 0.649865,
		20.978502, 20.740982, 26.313044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.645403, 20.335768, 25.853001>,  <21.446264, 20.994476, 25.858137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.645403, 20.335768, 25.853001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262199, 20.351168, 25.966656>,  <21.032276, 20.360407, 26.034849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262199, 20.351168, 25.966656>,  <21.645403, 20.335768, 25.853001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262199, 20.351168, 25.966656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219411, -0.736378, -0.640005,
		0.184591, -0.675474, 0.713905,
		-0.958011, 0.038500, 0.284136,
		20.974796, 20.362717, 26.051897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453169, 19.607145, 26.045555>,  <21.645403, 20.335768, 25.853001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453169, 19.607145, 26.045555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107912, 19.796001, 25.973927>,  <20.900757, 19.909315, 25.930950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107912, 19.796001, 25.973927>,  <21.453169, 19.607145, 26.045555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107912, 19.796001, 25.973927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277554, -0.739847, -0.612854,
		-0.421837, -0.479279, 0.769639,
		-0.863144, 0.472141, -0.179069,
		20.848969, 19.937643, 25.920206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956118, 19.116358, 26.054325>,  <21.453169, 19.607145, 26.045555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956118, 19.116358, 26.054325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.755442, 19.419842, 25.888111>,  <20.635036, 19.601933, 25.788382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.755442, 19.419842, 25.888111>,  <20.956118, 19.116358, 26.054325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755442, 19.419842, 25.888111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565606, -0.651157, -0.506048,
		-0.654520, -0.018851, 0.755809,
		-0.501690, 0.758708, -0.415534,
		20.604935, 19.647453, 25.763451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197651, 18.865225, 26.013466>,  <20.956118, 19.116358, 26.054325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197651, 18.865225, 26.013466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275162, 19.144808, 25.738102>,  <20.321669, 19.312557, 25.572884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275162, 19.144808, 25.738102>,  <20.197651, 18.865225, 26.013466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275162, 19.144808, 25.738102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263411, -0.638876, -0.722809,
		-0.945021, 0.321400, 0.060313,
		0.193778, 0.698956, -0.688411,
		20.333296, 19.354494, 25.531578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638321, 18.787477, 25.575027>,  <20.197651, 18.865225, 26.013466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638321, 18.787477, 25.575027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915911, 18.988113, 25.368414>,  <20.082464, 19.108494, 25.244446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915911, 18.988113, 25.368414>,  <19.638321, 18.787477, 25.575027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915911, 18.988113, 25.368414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436510, -0.277425, -0.855859,
		-0.572588, 0.819418, 0.026422,
		0.693976, 0.501588, -0.516535,
		20.124104, 19.138590, 25.213453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.350277, 19.208843, 25.003456>,  <19.638321, 18.787477, 25.575027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.350277, 19.208843, 25.003456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.727493, 19.193113, 24.871317>,  <19.953823, 19.183676, 24.792034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.727493, 19.193113, 24.871317>,  <19.350277, 19.208843, 25.003456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.727493, 19.193113, 24.871317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331756, -0.185144, -0.925019,
		-0.024786, 0.981924, -0.187644,
		0.943039, -0.039325, -0.330349,
		20.010405, 19.181316, 24.772213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.386578, 19.562130, 24.254381>,  <19.350277, 19.208843, 25.003456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.386578, 19.562130, 24.254381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702017, 19.324566, 24.318111>,  <19.891281, 19.182028, 24.356350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702017, 19.324566, 24.318111>,  <19.386578, 19.562130, 24.254381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702017, 19.324566, 24.318111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095420, -0.374156, -0.922444,
		0.607460, 0.712235, -0.351730,
		0.788599, -0.593909, 0.159324,
		19.938597, 19.146393, 24.365908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.975662, 19.725418, 23.640377>,  <19.386578, 19.562130, 24.254381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.975662, 19.725418, 23.640377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.010208, 19.366261, 23.813040>,  <20.030935, 19.150766, 23.916637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.010208, 19.366261, 23.813040>,  <19.975662, 19.725418, 23.640377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010208, 19.366261, 23.813040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107758, -0.422316, -0.900021,
		0.990419, 0.124243, 0.060283,
		0.086363, -0.897893, 0.431658,
		20.036118, 19.096893, 23.942537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.226873, 19.319578, 23.009489>,  <19.975662, 19.725418, 23.640377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.226873, 19.319578, 23.009489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175365, 19.047716, 23.298346>,  <20.144461, 18.884600, 23.471661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175365, 19.047716, 23.298346>,  <20.226873, 19.319578, 23.009489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175365, 19.047716, 23.298346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107932, -0.714274, -0.691494,
		0.985783, -0.166987, 0.018622,
		-0.128772, -0.679653, 0.722143,
		20.136734, 18.843821, 23.514988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.795073, 18.725801, 22.906776>,  <20.226873, 19.319578, 23.009489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.795073, 18.725801, 22.906776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486973, 18.567722, 23.106991>,  <20.302113, 18.472874, 23.227119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486973, 18.567722, 23.106991>,  <20.795073, 18.725801, 22.906776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.486973, 18.567722, 23.106991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021120, -0.768616, -0.639362,
		0.637395, -0.503039, 0.583678,
		-0.770248, -0.395199, 0.500536,
		20.255898, 18.449163, 23.257151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.880306, 17.939167, 22.930305>,  <20.795073, 18.725801, 22.906776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.880306, 17.939167, 22.930305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494230, 17.960381, 23.032751>,  <20.262585, 17.973108, 23.094219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494230, 17.960381, 23.032751>,  <20.880306, 17.939167, 22.930305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494230, 17.960381, 23.032751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214216, -0.722120, -0.657764,
		0.150063, -0.689732, 0.708344,
		-0.965190, 0.053032, 0.256115,
		20.204674, 17.976290, 23.109585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.594131, 17.210999, 22.947027>,  <20.880306, 17.939167, 22.930305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.594131, 17.210999, 22.947027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275497, 17.443773, 22.881536>,  <20.084318, 17.583437, 22.842243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275497, 17.443773, 22.881536>,  <20.594131, 17.210999, 22.947027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275497, 17.443773, 22.881536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315808, -0.631523, -0.708127,
		-0.515479, -0.512378, 0.686841,
		-0.796584, 0.581934, -0.163724,
		20.036522, 17.618353, 22.832418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972620, 16.770023, 22.957516>,  <20.594131, 17.210999, 22.947027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972620, 16.770023, 22.957516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848440, 17.104681, 22.777006>,  <19.773932, 17.305475, 22.668699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848440, 17.104681, 22.777006>,  <19.972620, 16.770023, 22.957516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848440, 17.104681, 22.777006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412595, -0.546279, -0.728934,
		-0.856380, -0.040102, 0.514786,
		-0.310449, 0.836643, -0.451277,
		19.755306, 17.355675, 22.641623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186428, 16.776819, 22.887173>,  <19.972620, 16.770023, 22.957516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186428, 16.776819, 22.887173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.341366, 17.016912, 22.607264>,  <19.434328, 17.160969, 22.439318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.341366, 17.016912, 22.607264>,  <19.186428, 16.776819, 22.887173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.341366, 17.016912, 22.607264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401142, -0.573685, -0.714122,
		-0.830090, 0.557321, 0.018564,
		0.387345, 0.600232, -0.699775,
		19.457569, 17.196981, 22.397331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656021, 16.855843, 22.420662>,  <19.186428, 16.776819, 22.887173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656021, 16.855843, 22.420662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.956427, 16.974627, 22.184767>,  <19.136671, 17.045897, 22.043230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.956427, 16.974627, 22.184767>,  <18.656021, 16.855843, 22.420662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956427, 16.974627, 22.184767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401476, -0.503713, -0.764912,
		-0.524207, 0.811226, -0.259074,
		0.751015, 0.296960, -0.589738,
		19.181732, 17.063715, 22.007845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317745, 17.133028, 21.763809>,  <18.656021, 16.855843, 22.420662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317745, 17.133028, 21.763809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691633, 17.021538, 21.675619>,  <18.915966, 16.954643, 21.622705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691633, 17.021538, 21.675619>,  <18.317745, 17.133028, 21.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691633, 17.021538, 21.675619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348803, -0.600701, -0.719371,
		0.068067, 0.749313, -0.658708,
		0.934721, -0.278725, -0.220474,
		18.972050, 16.937920, 21.609476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309002, 17.163223, 21.024773>,  <18.317745, 17.133028, 21.763809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309002, 17.163223, 21.024773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618982, 16.934282, 21.132002>,  <18.804970, 16.796917, 21.196339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618982, 16.934282, 21.132002>,  <18.309002, 17.163223, 21.024773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618982, 16.934282, 21.132002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153785, -0.582163, -0.798396,
		0.613027, 0.577492, -0.539167,
		0.774950, -0.572354, 0.268072,
		18.851467, 16.762575, 21.212423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.560385, 17.000874, 20.381426>,  <18.309002, 17.163223, 21.024773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.560385, 17.000874, 20.381426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.708132, 16.746334, 20.652313>,  <18.796780, 16.593611, 20.814846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.708132, 16.746334, 20.652313>,  <18.560385, 17.000874, 20.381426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.708132, 16.746334, 20.652313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020759, -0.734223, -0.678591,
		0.929052, 0.236590, -0.284408,
		0.369367, -0.636350, 0.677220,
		18.818941, 16.555429, 20.855480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221663, 16.857325, 20.126825>,  <18.560385, 17.000874, 20.381426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221663, 16.857325, 20.126825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132402, 16.563894, 20.383596>,  <19.078846, 16.387836, 20.537659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132402, 16.563894, 20.383596>,  <19.221663, 16.857325, 20.126825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.132402, 16.563894, 20.383596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019838, -0.661817, -0.749403,
		0.974582, -0.154494, 0.162237,
		-0.223149, -0.733574, 0.641930,
		19.065458, 16.343822, 20.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800695, 16.396420, 20.135834>,  <19.221663, 16.857325, 20.126825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800695, 16.396420, 20.135834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467545, 16.201517, 20.240826>,  <19.267654, 16.084576, 20.303822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467545, 16.201517, 20.240826>,  <19.800695, 16.396420, 20.135834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467545, 16.201517, 20.240826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120321, -0.622323, -0.773458,
		0.540221, -0.612613, 0.576946,
		-0.832877, -0.487257, 0.262482,
		19.217682, 16.055340, 20.319571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021896, 15.746337, 20.110985>,  <19.800695, 16.396420, 20.135834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021896, 15.746337, 20.110985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.623526, 15.712883, 20.097517>,  <19.384502, 15.692810, 20.089437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.623526, 15.712883, 20.097517>,  <20.021896, 15.746337, 20.110985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.623526, 15.712883, 20.097517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081181, -0.669454, -0.738404,
		0.039218, -0.738130, 0.673518,
		-0.995927, -0.083636, -0.033667,
		19.324747, 15.687793, 20.087418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921906, 15.051705, 20.031855>,  <20.021896, 15.746337, 20.110985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921906, 15.051705, 20.031855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.548296, 15.165432, 19.945353>,  <19.324131, 15.233668, 19.893452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.548296, 15.165432, 19.945353>,  <19.921906, 15.051705, 20.031855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.548296, 15.165432, 19.945353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042214, -0.689001, -0.723531,
		-0.354710, -0.666665, 0.655545,
		-0.934023, 0.284316, -0.216253,
		19.268089, 15.250727, 19.880476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492294, 14.429916, 20.223522>,  <19.921906, 15.051705, 20.031855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492294, 14.429916, 20.223522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.320398, 14.659969, 19.945084>,  <19.217260, 14.798000, 19.778021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.320398, 14.659969, 19.945084>,  <19.492294, 14.429916, 20.223522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.320398, 14.659969, 19.945084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018394, -0.765174, -0.643561,
		-0.902766, -0.289367, 0.318245,
		-0.429738, 0.575132, -0.696096,
		19.191477, 14.832509, 19.736256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005514, 14.018052, 19.986183>,  <19.492294, 14.429916, 20.223522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.005514, 14.018052, 19.986183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072216, 14.280079, 19.691408>,  <19.112238, 14.437295, 19.514544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072216, 14.280079, 19.691408>,  <19.005514, 14.018052, 19.986183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072216, 14.280079, 19.691408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001487, -0.747571, -0.664181,
		-0.985997, 0.109659, -0.125635,
		0.166755, 0.655067, -0.736939,
		19.122242, 14.476599, 19.470325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590979, 13.771459, 19.511919>,  <19.005514, 14.018052, 19.986183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590979, 13.771459, 19.511919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.820704, 14.027862, 19.308245>,  <18.958538, 14.181704, 19.186039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.820704, 14.027862, 19.308245>,  <18.590979, 13.771459, 19.511919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.820704, 14.027862, 19.308245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116559, -0.551630, -0.825905,
		-0.810295, 0.533679, -0.242094,
		0.574314, 0.641008, -0.509188,
		18.992998, 14.220164, 19.155489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151987, 13.970012, 18.897766>,  <18.590979, 13.771459, 19.511919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.151987, 13.970012, 18.897766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.540245, 14.026748, 18.820068>,  <18.773199, 14.060789, 18.773449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.540245, 14.026748, 18.820068>,  <18.151987, 13.970012, 18.897766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.540245, 14.026748, 18.820068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112694, -0.445269, -0.888277,
		-0.212485, 0.884091, -0.416213,
		0.970644, 0.141841, -0.194244,
		18.831438, 14.069300, 18.761795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153877, 14.083911, 18.146885>,  <18.151987, 13.970012, 18.897766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153877, 14.083911, 18.146885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.529684, 14.006424, 18.259865>,  <18.755169, 13.959931, 18.327654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.529684, 14.006424, 18.259865>,  <18.153877, 14.083911, 18.146885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529684, 14.006424, 18.259865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098581, -0.636829, -0.764677,
		0.328005, 0.746272, -0.579216,
		0.939518, -0.193718, 0.282451,
		18.811539, 13.948308, 18.344601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.584627, 14.413597, 17.776670>,  <18.153877, 14.083911, 18.146885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.584627, 14.413597, 17.776670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795122, 14.098290, 17.904240>,  <18.921419, 13.909106, 17.980782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795122, 14.098290, 17.904240>,  <18.584627, 14.413597, 17.776670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795122, 14.098290, 17.904240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130704, -0.295616, -0.946323,
		0.840234, 0.539673, -0.052534,
		0.526235, -0.788266, 0.318924,
		18.952993, 13.861811, 17.999916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246820, 14.432459, 17.483992>,  <18.584627, 14.413597, 17.776670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246820, 14.432459, 17.483992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206656, 14.047575, 17.585239>,  <19.182556, 13.816645, 17.645988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206656, 14.047575, 17.585239>,  <19.246820, 14.432459, 17.483992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206656, 14.047575, 17.585239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262791, -0.271019, -0.926007,
		0.959614, -0.026464, 0.280073,
		-0.100411, -0.962210, 0.253119,
		19.176533, 13.758912, 17.661175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798178, 14.081554, 17.158382>,  <19.246820, 14.432459, 17.483992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798178, 14.081554, 17.158382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.556787, 13.779647, 17.261255>,  <19.411953, 13.598502, 17.322979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.556787, 13.779647, 17.261255>,  <19.798178, 14.081554, 17.158382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.556787, 13.779647, 17.261255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207719, -0.460203, -0.863172,
		0.769851, -0.467481, 0.434500,
		-0.603475, -0.754768, 0.257183,
		19.375746, 13.553217, 17.338409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241486, 13.487783, 16.979675>,  <19.798178, 14.081554, 17.158382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241486, 13.487783, 16.979675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.877039, 13.325197, 17.006968>,  <19.658371, 13.227646, 17.023342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.877039, 13.325197, 17.006968>,  <20.241486, 13.487783, 16.979675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877039, 13.325197, 17.006968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205697, -0.591900, -0.779322,
		0.357154, -0.696017, 0.622898,
		-0.911115, -0.406466, 0.068231,
		19.603704, 13.203258, 17.027437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352385, 12.860818, 17.151278>,  <20.241486, 13.487783, 16.979675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352385, 12.860818, 17.151278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.994209, 12.870923, 16.973490>,  <19.779305, 12.876987, 16.866817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.994209, 12.870923, 16.973490>,  <20.352385, 12.860818, 17.151278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994209, 12.870923, 16.973490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297137, -0.709548, -0.638945,
		-0.331516, -0.704204, 0.627849,
		-0.895437, 0.025263, -0.444472,
		19.725578, 12.878502, 16.840149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.208929, 12.176684, 17.011303>,  <20.352385, 12.860818, 17.151278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.208929, 12.176684, 17.011303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938873, 12.369687, 16.788099>,  <19.776840, 12.485489, 16.654177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938873, 12.369687, 16.788099>,  <20.208929, 12.176684, 17.011303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938873, 12.369687, 16.788099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103254, -0.687173, -0.719119,
		-0.730430, -0.543121, 0.414115,
		-0.675137, 0.482507, -0.558011,
		19.736332, 12.514440, 16.620695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520515, 11.800258, 16.817743>,  <20.208929, 12.176684, 17.011303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520515, 11.800258, 16.817743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640686, 12.050637, 16.529873>,  <19.712788, 12.200865, 16.357151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640686, 12.050637, 16.529873>,  <19.520515, 11.800258, 16.817743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640686, 12.050637, 16.529873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197905, -0.779019, -0.594948,
		-0.933047, 0.036311, -0.357916,
		0.300427, 0.625948, -0.719675,
		19.730814, 12.238421, 16.313971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215267, 11.704426, 16.192141>,  <19.520515, 11.800258, 16.817743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215267, 11.704426, 16.192141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.564480, 11.876727, 16.100695>,  <19.774008, 11.980108, 16.045828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.564480, 11.876727, 16.100695>,  <19.215267, 11.704426, 16.192141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564480, 11.876727, 16.100695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192991, -0.735707, -0.649222,
		-0.447847, 0.522672, -0.725429,
		0.873034, 0.430753, -0.228614,
		19.826389, 12.005953, 16.032110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255526, 11.754225, 15.494672>,  <19.215267, 11.704426, 16.192141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.255526, 11.754225, 15.494672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628916, 11.767452, 15.637519>,  <19.852949, 11.775389, 15.723228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628916, 11.767452, 15.637519>,  <19.255526, 11.754225, 15.494672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628916, 11.767452, 15.637519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274668, -0.706199, -0.652564,
		0.230617, 0.707240, -0.668301,
		0.933474, 0.033068, 0.357118,
		19.908958, 11.777372, 15.744655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775833, 11.910254, 14.974996>,  <19.255526, 11.754225, 15.494672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775833, 11.910254, 14.974996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987265, 11.691422, 15.234628>,  <20.114124, 11.560122, 15.390408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987265, 11.691422, 15.234628>,  <19.775833, 11.910254, 14.974996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987265, 11.691422, 15.234628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391454, -0.521387, -0.758234,
		0.753238, 0.654872, -0.061438,
		0.528579, -0.547081, 0.649081,
		20.145838, 11.527297, 15.429352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.589220, 11.751126, 14.814452>,  <19.775833, 11.910254, 14.974996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.589220, 11.751126, 14.814452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.421284, 11.450164, 15.017477>,  <20.320522, 11.269587, 15.139292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.421284, 11.450164, 15.017477>,  <20.589220, 11.751126, 14.814452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.421284, 11.450164, 15.017477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503256, -0.658383, -0.559701,
		0.755292, 0.020447, 0.655069,
		-0.419842, -0.752405, 0.507561,
		20.295330, 11.224442, 15.169745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964079, 11.680190, 14.220704>,  <20.589220, 11.751126, 14.814452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964079, 11.680190, 14.220704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343016, 11.552629, 14.209079>,  <21.570377, 11.476091, 14.202104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343016, 11.552629, 14.209079>,  <20.964079, 11.680190, 14.220704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.343016, 11.552629, 14.209079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303888, 0.923920, -0.232431,
		0.100974, 0.211360, 0.972178,
		0.947342, -0.318903, -0.029062,
		21.627218, 11.456958, 14.200360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453421, 11.955722, 14.725366>,  <20.964079, 11.680190, 14.220704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453421, 11.955722, 14.725366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634996, 11.883205, 14.376408>,  <21.743942, 11.839696, 14.167033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634996, 11.883205, 14.376408>,  <21.453421, 11.955722, 14.725366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.634996, 11.883205, 14.376408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085251, 0.983428, -0.160005,
		0.886945, -0.001740, 0.461871,
		0.453939, -0.181290, -0.872395,
		21.771177, 11.828818, 14.114689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165894, 12.410777, 14.620934>,  <21.453421, 11.955722, 14.725366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165894, 12.410777, 14.620934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.970793, 12.303277, 14.288700>,  <21.853733, 12.238777, 14.089359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.970793, 12.303277, 14.288700>,  <22.165894, 12.410777, 14.620934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.970793, 12.303277, 14.288700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145621, 0.963151, -0.226130,
		0.860751, 0.010655, -0.508915,
		-0.487752, -0.268750, -0.830585,
		21.824467, 12.222652, 14.039525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875443, 12.685388, 14.800644>,  <22.165894, 12.410777, 14.620934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.875443, 12.685388, 14.800644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.187870, 12.574436, 14.576862>,  <23.375326, 12.507865, 14.442594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.187870, 12.574436, 14.576862>,  <22.875443, 12.685388, 14.800644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.187870, 12.574436, 14.576862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184580, 0.753335, -0.631202,
		0.596539, 0.596277, 0.537210,
		0.781071, -0.277379, -0.559455,
		23.422192, 12.491222, 14.409026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.201120, 13.339724, 14.545218>,  <22.875443, 12.685388, 14.800644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.201120, 13.339724, 14.545218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349028, 13.065706, 14.294145>,  <23.437773, 12.901296, 14.143501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349028, 13.065706, 14.294145>,  <23.201120, 13.339724, 14.545218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.349028, 13.065706, 14.294145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001108, 0.675888, -0.737003,
		0.929123, 0.271826, 0.250683,
		0.369770, -0.685044, -0.627682,
		23.459959, 12.860193, 14.105840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588013, 13.733201, 14.035113>,  <23.201120, 13.339724, 14.545218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588013, 13.733201, 14.035113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.587090, 13.366595, 13.875115>,  <23.586536, 13.146632, 13.779117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.587090, 13.366595, 13.875115>,  <23.588013, 13.733201, 14.035113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.587090, 13.366595, 13.875115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055797, 0.399491, -0.915038,
		0.998440, 0.020207, -0.052061,
		-0.002308, -0.916515, -0.399995,
		23.586397, 13.091640, 13.755117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133654, 13.662169, 13.537488>,  <23.588013, 13.733201, 14.035113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.133654, 13.662169, 13.537488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847443, 13.410074, 13.416943>,  <23.675716, 13.258818, 13.344615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847443, 13.410074, 13.416943>,  <24.133654, 13.662169, 13.537488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.847443, 13.410074, 13.416943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001305, 0.430188, -0.902739,
		0.698582, -0.646328, -0.306989,
		-0.715529, -0.630237, -0.301365,
		23.632784, 13.221004, 13.326533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287579, 13.550740, 12.881600>,  <24.133654, 13.662169, 13.537488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287579, 13.550740, 12.881600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.907427, 13.426345, 12.884769>,  <23.679335, 13.351707, 12.886671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.907427, 13.426345, 12.884769>,  <24.287579, 13.550740, 12.881600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.907427, 13.426345, 12.884769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137438, 0.396889, -0.907519,
		0.279080, -0.863578, -0.419937,
		-0.950382, -0.310986, 0.007924,
		23.622313, 13.333049, 12.887146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238483, 13.365997, 12.197109>,  <24.287579, 13.550740, 12.881600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238483, 13.365997, 12.197109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.863506, 13.373217, 12.336179>,  <23.638521, 13.377548, 12.419621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.863506, 13.373217, 12.336179>,  <24.238483, 13.365997, 12.197109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.863506, 13.373217, 12.336179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332417, 0.250347, -0.909299,
		-0.103451, -0.967988, -0.228686,
		-0.937442, 0.018049, 0.347674,
		23.582273, 13.378632, 12.440481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.770670, 12.871264, 11.812843>,  <24.238483, 13.365997, 12.197109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.770670, 12.871264, 11.812843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.557518, 13.172066, 11.968036>,  <23.429626, 13.352547, 12.061152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.557518, 13.172066, 11.968036>,  <23.770670, 12.871264, 11.812843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.557518, 13.172066, 11.968036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346636, 0.224274, -0.910793,
		-0.771935, -0.619831, 0.141161,
		-0.532879, 0.752005, 0.387981,
		23.397654, 13.397667, 12.084430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075327, 12.820553, 11.535835>,  <23.770670, 12.871264, 11.812843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075327, 12.820553, 11.535835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123329, 13.200338, 11.651848>,  <23.152130, 13.428209, 11.721456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123329, 13.200338, 11.651848>,  <23.075327, 12.820553, 11.535835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123329, 13.200338, 11.651848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374048, 0.313857, -0.872687,
		-0.919612, -0.003757, 0.392810,
		0.120007, 0.949463, 0.290032,
		23.159330, 13.485177, 11.738857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.386066, 13.156308, 11.435533>,  <23.075327, 12.820553, 11.535835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.386066, 13.156308, 11.435533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655643, 13.450747, 11.460708>,  <22.817390, 13.627410, 11.475813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655643, 13.450747, 11.460708>,  <22.386066, 13.156308, 11.435533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.655643, 13.450747, 11.460708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372674, 0.412289, -0.831344,
		-0.637898, 0.536823, 0.552184,
		0.673944, 0.736097, 0.062938,
		22.857826, 13.671576, 11.479589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052050, 13.677921, 11.147306>,  <22.386066, 13.156308, 11.435533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052050, 13.677921, 11.147306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437904, 13.783224, 11.142067>,  <22.669416, 13.846406, 11.138924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437904, 13.783224, 11.142067>,  <22.052050, 13.677921, 11.147306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.437904, 13.783224, 11.142067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150737, 0.510205, -0.846740,
		-0.216228, 0.818771, 0.531846,
		0.964637, 0.263258, -0.013099,
		22.727295, 13.862202, 11.138138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.066835, 14.398926, 10.839520>,  <22.052050, 13.677921, 11.147306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.066835, 14.398926, 10.839520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.426878, 14.229527, 10.798613>,  <22.642904, 14.127887, 10.774069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.426878, 14.229527, 10.798613>,  <22.066835, 14.398926, 10.839520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.426878, 14.229527, 10.798613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115372, 0.458054, -0.881406,
		0.420118, 0.781560, 0.461157,
		0.900106, -0.423499, -0.102267,
		22.696909, 14.102477, 10.767933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705034, 14.915607, 10.760192>,  <22.066835, 14.398926, 10.839520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705034, 14.915607, 10.760192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832560, 14.578748, 10.586229>,  <22.909075, 14.376632, 10.481852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832560, 14.578748, 10.586229>,  <22.705034, 14.915607, 10.760192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.832560, 14.578748, 10.586229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099486, 0.486049, -0.868250,
		0.942582, 0.233543, 0.238741,
		0.318814, -0.842148, -0.434907,
		22.928204, 14.326103, 10.455757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329557, 15.127207, 10.297113>,  <22.705034, 14.915607, 10.760192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329557, 15.127207, 10.297113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251184, 14.753654, 10.177462>,  <23.204161, 14.529523, 10.105671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251184, 14.753654, 10.177462>,  <23.329557, 15.127207, 10.297113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.251184, 14.753654, 10.177462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005525, 0.303985, -0.952661,
		0.980601, -0.188312, -0.054402,
		-0.195934, -0.933880, -0.299129,
		23.192404, 14.473491, 10.087723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.932695, 14.883920, 9.924220>,  <23.329557, 15.127207, 10.297113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.932695, 14.883920, 9.924220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.610231, 14.677373, 9.808656>,  <23.416752, 14.553445, 9.739317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.610231, 14.677373, 9.808656>,  <23.932695, 14.883920, 9.924220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.610231, 14.677373, 9.808656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265501, 0.120680, -0.956528,
		0.528785, -0.847822, 0.039809,
		-0.806161, -0.516367, -0.288911,
		23.368383, 14.522463, 9.721982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.187113, 14.373078, 9.354465>,  <23.932695, 14.883920, 9.924220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.187113, 14.373078, 9.354465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.797964, 14.462534, 9.330780>,  <23.564474, 14.516208, 9.316569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.797964, 14.462534, 9.330780>,  <24.187113, 14.373078, 9.354465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.797964, 14.462534, 9.330780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131457, 0.323787, -0.936953,
		-0.190368, -0.919319, -0.344402,
		-0.972871, 0.223640, -0.059212,
		23.506104, 14.529626, 9.313016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.917025, 13.951639, 8.763368>,  <24.187113, 14.373078, 9.354465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.917025, 13.951639, 8.763368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.653746, 14.248556, 8.813611>,  <23.495779, 14.426706, 8.843757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.653746, 14.248556, 8.813611>,  <23.917025, 13.951639, 8.763368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.653746, 14.248556, 8.813611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129451, 0.052769, -0.990181,
		-0.741632, -0.667994, 0.061358,
		-0.658197, 0.742293, 0.125608,
		23.456285, 14.471244, 8.851294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.484478, 13.876500, 8.197656>,  <23.917025, 13.951639, 8.763368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.484478, 13.876500, 8.197656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.369755, 14.240200, 8.318326>,  <23.300920, 14.458420, 8.390728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.369755, 14.240200, 8.318326>,  <23.484478, 13.876500, 8.197656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.369755, 14.240200, 8.318326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191809, 0.254025, -0.947988,
		-0.938590, -0.329754, 0.101546,
		-0.286808, 0.909249, 0.301675,
		23.283712, 14.512975, 8.408829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.944960, 14.048474, 7.786281>,  <23.484478, 13.876500, 8.197656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.944960, 14.048474, 7.786281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106918, 14.383389, 7.933253>,  <23.204094, 14.584339, 8.021437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106918, 14.383389, 7.933253>,  <22.944960, 14.048474, 7.786281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.106918, 14.383389, 7.933253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187259, 0.317394, -0.929621,
		-0.894982, 0.445206, -0.028278,
		0.404897, 0.837289, 0.367430,
		23.228388, 14.634576, 8.043483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.542252, 14.564267, 7.509581>,  <22.944960, 14.048474, 7.786281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.542252, 14.564267, 7.509581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.900429, 14.709909, 7.612039>,  <23.115335, 14.797295, 7.673513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.900429, 14.709909, 7.612039>,  <22.542252, 14.564267, 7.509581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.900429, 14.709909, 7.612039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129531, 0.337389, -0.932411,
		-0.425916, 0.868099, 0.254950,
		0.895443, 0.364105, 0.256145,
		23.169062, 14.819140, 7.688882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.553211, 15.122282, 7.126569>,  <22.542252, 14.564267, 7.509581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.553211, 15.122282, 7.126569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.932247, 15.087441, 7.249526>,  <23.159668, 15.066537, 7.323300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.932247, 15.087441, 7.249526>,  <22.553211, 15.122282, 7.126569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.932247, 15.087441, 7.249526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319301, 0.224709, -0.920626,
		0.011114, 0.970525, 0.240743,
		0.947588, -0.087102, 0.307393,
		23.216524, 15.061311, 7.341744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922758, 15.725650, 6.804152>,  <22.553211, 15.122282, 7.126569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922758, 15.725650, 6.804152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.169807, 15.418324, 6.871361>,  <23.318037, 15.233928, 6.911686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.169807, 15.418324, 6.871361>,  <22.922758, 15.725650, 6.804152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.169807, 15.418324, 6.871361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455221, 0.175018, -0.873008,
		0.641339, 0.615677, 0.457849,
		0.617623, -0.768316, 0.168023,
		23.355095, 15.187829, 6.921768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.429457, 16.255083, 6.939243>,  <22.922758, 15.725650, 6.804152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.429457, 16.255083, 6.939243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.693003, 16.154085, 6.655796>,  <23.851131, 16.093487, 6.485727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.693003, 16.154085, 6.655796>,  <23.429457, 16.255083, 6.939243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.693003, 16.154085, 6.655796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041360, 0.952721, -0.301019,
		0.751122, 0.169023, 0.638159,
		0.658867, -0.252496, -0.708619,
		23.890663, 16.078337, 6.443210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.073084, 16.684786, 6.889591>,  <23.429457, 16.255083, 6.939243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.073084, 16.684786, 6.889591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.096106, 16.572943, 6.506236>,  <24.109919, 16.505836, 6.276223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.096106, 16.572943, 6.506236>,  <24.073084, 16.684786, 6.889591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.096106, 16.572943, 6.506236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223864, 0.939147, -0.260551,
		0.972919, -0.199552, 0.116648,
		0.057556, -0.279609, -0.958387,
		24.113373, 16.489059, 6.218720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718988, 16.802118, 6.705216>,  <24.073084, 16.684786, 6.889591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718988, 16.802118, 6.705216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469442, 16.850130, 6.396312>,  <24.319715, 16.878937, 6.210969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469442, 16.850130, 6.396312>,  <24.718988, 16.802118, 6.705216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469442, 16.850130, 6.396312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311302, 0.944528, -0.104678,
		0.716857, -0.305711, -0.626624,
		-0.623865, 0.120030, -0.772260,
		24.282284, 16.886139, 6.164634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369667, 17.154457, 6.823549>,  <24.718988, 16.802118, 6.705216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369667, 17.154457, 6.823549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257349, 17.204594, 7.204168>,  <25.189959, 17.234676, 7.432539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257349, 17.204594, 7.204168>,  <25.369667, 17.154457, 6.823549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257349, 17.204594, 7.204168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145948, -0.974329, 0.171413,
		0.948605, 0.187009, 0.255295,
		-0.280797, 0.125344, 0.951547,
		25.173109, 17.242197, 7.489632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987215, 16.921900, 7.403463>,  <25.369667, 17.154457, 6.823549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987215, 16.921900, 7.403463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611666, 16.878056, 7.534001>,  <25.386335, 16.851749, 7.612324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611666, 16.878056, 7.534001>,  <25.987215, 16.921900, 7.403463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611666, 16.878056, 7.534001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196203, -0.949304, 0.245614,
		0.282878, 0.294631, 0.912783,
		-0.938874, -0.109612, 0.326345,
		25.330004, 16.845173, 7.631905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045359, 16.649733, 8.067142>,  <25.987215, 16.921900, 7.403463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045359, 16.649733, 8.067142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673992, 16.557297, 7.950771>,  <25.451172, 16.501835, 7.880948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673992, 16.557297, 7.950771>,  <26.045359, 16.649733, 8.067142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673992, 16.557297, 7.950771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115458, -0.923716, 0.365265,
		-0.353145, 0.305528, 0.884274,
		-0.928417, -0.231088, -0.290930,
		25.395468, 16.487970, 7.863492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664278, 16.482094, 8.719582>,  <26.045359, 16.649733, 8.067142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664278, 16.482094, 8.719582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576862, 16.307228, 8.370611>,  <25.524414, 16.202309, 8.161229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576862, 16.307228, 8.370611>,  <25.664278, 16.482094, 8.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576862, 16.307228, 8.370611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044994, -0.888572, 0.456526,
		-0.974791, 0.139022, 0.174517,
		-0.218538, -0.437165, -0.872426,
		25.511301, 16.176079, 8.108883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048965, 15.993616, 8.805414>,  <25.664278, 16.482094, 8.719582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048965, 15.993616, 8.805414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351816, 15.915380, 8.556095>,  <25.533527, 15.868438, 8.406504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351816, 15.915380, 8.556095>,  <25.048965, 15.993616, 8.805414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351816, 15.915380, 8.556095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130116, -0.889857, 0.437292,
		-0.640176, -0.412188, -0.648287,
		0.757129, -0.195591, -0.623298,
		25.578955, 15.856702, 8.369106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304588, 15.396615, 9.101680>,  <25.048965, 15.993616, 8.805414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304588, 15.396615, 9.101680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480534, 15.356800, 8.744667>,  <25.586100, 15.332911, 8.530459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480534, 15.356800, 8.744667>,  <25.304588, 15.396615, 9.101680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480534, 15.356800, 8.744667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222488, -0.950779, 0.215681,
		-0.870069, -0.293448, -0.396065,
		0.439862, -0.099537, -0.892532,
		25.612492, 15.326939, 8.476908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104115, 14.846539, 8.688335>,  <25.304588, 15.396615, 9.101680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104115, 14.846539, 8.688335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494822, 14.930102, 8.669205>,  <25.729246, 14.980240, 8.657726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494822, 14.930102, 8.669205>,  <25.104115, 14.846539, 8.688335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494822, 14.930102, 8.669205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212928, -0.920659, 0.327184,
		0.024320, -0.329765, -0.943750,
		0.976765, 0.208908, -0.047826,
		25.787851, 14.992775, 8.654857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513899, 14.248219, 8.358695>,  <25.104115, 14.846539, 8.688335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513899, 14.248219, 8.358695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754124, 14.468940, 8.590156>,  <25.898258, 14.601373, 8.729033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754124, 14.468940, 8.590156>,  <25.513899, 14.248219, 8.358695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754124, 14.468940, 8.590156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441397, -0.832229, 0.335505,
		0.666704, 0.053924, -0.743370,
		0.600562, 0.551803, 0.578652,
		25.934292, 14.634480, 8.763751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233202, 13.986341, 8.264756>,  <25.513899, 14.248219, 8.358695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233202, 13.986341, 8.264756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213535, 14.190601, 8.608109>,  <26.201735, 14.313157, 8.814120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213535, 14.190601, 8.608109>,  <26.233202, 13.986341, 8.264756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213535, 14.190601, 8.608109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400739, -0.777127, 0.485265,
		0.914872, 0.367846, -0.166429,
		-0.049167, 0.510650, 0.858382,
		26.198786, 14.343797, 8.865623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832914, 13.681428, 8.627028>,  <26.233202, 13.986341, 8.264756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832914, 13.681428, 8.627028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650747, 13.880006, 8.922631>,  <26.541447, 13.999152, 9.099994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650747, 13.880006, 8.922631>,  <26.832914, 13.681428, 8.627028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650747, 13.880006, 8.922631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347857, -0.664876, 0.661011,
		0.819505, 0.558107, 0.130106,
		-0.455420, 0.496444, 0.739011,
		26.514122, 14.028939, 9.144335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328421, 13.704829, 9.269895>,  <26.832914, 13.681428, 8.627028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328421, 13.704829, 9.269895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959127, 13.747524, 9.417543>,  <26.737553, 13.773142, 9.506133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959127, 13.747524, 9.417543>,  <27.328421, 13.704829, 9.269895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959127, 13.747524, 9.417543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278270, -0.476723, 0.833847,
		0.264973, 0.872549, 0.410423,
		-0.923231, 0.106739, 0.369123,
		26.682158, 13.779546, 9.528280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405878, 13.964919, 9.968080>,  <27.328421, 13.704829, 9.269895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405878, 13.964919, 9.968080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040432, 13.804051, 9.944205>,  <26.821163, 13.707531, 9.929881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040432, 13.804051, 9.944205>,  <27.405878, 13.964919, 9.968080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040432, 13.804051, 9.944205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230080, -0.632448, 0.739644,
		-0.335211, 0.662019, 0.670347,
		-0.913618, -0.402170, -0.059686,
		26.766346, 13.683400, 9.926299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084505, 13.889286, 10.723679>,  <27.405878, 13.964919, 9.968080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084505, 13.889286, 10.723679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843803, 13.658233, 10.503050>,  <26.699383, 13.519601, 10.370672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843803, 13.658233, 10.503050>,  <27.084505, 13.889286, 10.723679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843803, 13.658233, 10.503050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059791, -0.721245, 0.690094,
		-0.796440, 0.382288, 0.468549,
		-0.601754, -0.577634, -0.551572,
		26.663277, 13.484942, 10.337579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666874, 13.622762, 11.124136>,  <27.084505, 13.889286, 10.723679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666874, 13.622762, 11.124136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664469, 13.353692, 10.828171>,  <26.663027, 13.192250, 10.650592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664469, 13.353692, 10.828171>,  <26.666874, 13.622762, 11.124136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664469, 13.353692, 10.828171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147421, -0.732439, 0.664681,
		-0.989056, -0.105084, 0.103569,
		-0.006011, -0.672675, -0.739914,
		26.662666, 13.151890, 10.606196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219345, 13.094931, 11.341402>,  <26.666874, 13.622762, 11.124136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219345, 13.094931, 11.341402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421511, 12.920715, 11.043446>,  <26.542810, 12.816186, 10.864672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421511, 12.920715, 11.043446>,  <26.219345, 13.094931, 11.341402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421511, 12.920715, 11.043446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066642, -0.840985, 0.536939,
		-0.860303, -0.321015, -0.396016,
		0.505409, -0.435539, -0.744895,
		26.573135, 12.790054, 10.819978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799330, 12.588896, 11.041660>,  <26.219345, 13.094931, 11.341402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799330, 12.588896, 11.041660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169699, 12.480976, 10.935925>,  <26.391920, 12.416224, 10.872485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169699, 12.480976, 10.935925>,  <25.799330, 12.588896, 11.041660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169699, 12.480976, 10.935925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113861, -0.866659, 0.485735,
		-0.360140, -0.419656, -0.833179,
		0.925924, -0.269799, -0.264336,
		26.447475, 12.400037, 10.856625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706831, 11.872437, 10.844072>,  <25.799330, 12.588896, 11.041660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706831, 11.872437, 10.844072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103508, 11.917378, 10.869112>,  <26.341515, 11.944343, 10.884135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103508, 11.917378, 10.869112>,  <25.706831, 11.872437, 10.844072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103508, 11.917378, 10.869112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080185, -0.920647, 0.382072,
		0.100557, -0.373879, -0.922010,
		0.991695, 0.112352, 0.062598,
		26.401016, 11.951084, 10.887892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951401, 11.117679, 10.781189>,  <25.706831, 11.872437, 10.844072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951401, 11.117679, 10.781189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256790, 11.332225, 10.925088>,  <26.440023, 11.460953, 11.011427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256790, 11.332225, 10.925088>,  <25.951401, 11.117679, 10.781189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256790, 11.332225, 10.925088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244473, -0.755590, 0.607714,
		0.597779, -0.376025, -0.708001,
		0.763474, 0.536366, 0.359748,
		26.485832, 11.493134, 11.033012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563324, 10.659562, 10.725801>,  <25.951401, 11.117679, 10.781189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563324, 10.659562, 10.725801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608116, 10.945571, 11.001831>,  <26.634991, 11.117176, 11.167449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608116, 10.945571, 11.001831>,  <26.563324, 10.659562, 10.725801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608116, 10.945571, 11.001831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136732, -0.698924, 0.702004,
		0.984259, 0.015746, -0.176031,
		0.111978, 0.715023, 0.690075,
		26.641710, 11.160078, 11.208854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180008, 10.574396, 11.109705>,  <26.563324, 10.659562, 10.725801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180008, 10.574396, 11.109705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924503, 10.775511, 11.342665>,  <26.771200, 10.896179, 11.482441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924503, 10.775511, 11.342665>,  <27.180008, 10.574396, 11.109705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924503, 10.775511, 11.342665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141729, -0.667105, 0.731357,
		0.756239, 0.549706, 0.354861,
		-0.638761, 0.502786, 0.582400,
		26.732876, 10.926347, 11.517385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544298, 10.418264, 11.679050>,  <27.180008, 10.574396, 11.109705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544298, 10.418264, 11.679050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187267, 10.565211, 11.783622>,  <26.973049, 10.653379, 11.846364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187267, 10.565211, 11.783622>,  <27.544298, 10.418264, 11.679050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187267, 10.565211, 11.783622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027253, -0.622698, 0.781987,
		0.450066, 0.690861, 0.565819,
		-0.892579, 0.367366, 0.261428,
		26.919493, 10.675421, 11.862050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691902, 10.602395, 12.346390>,  <27.544298, 10.418264, 11.679050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691902, 10.602395, 12.346390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357166, 10.414757, 12.233502>,  <27.156324, 10.302174, 12.165771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357166, 10.414757, 12.233502>,  <27.691902, 10.602395, 12.346390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357166, 10.414757, 12.233502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195253, -0.737365, 0.646659,
		-0.511443, 0.486047, 0.708650,
		-0.836841, -0.469095, -0.282218,
		27.106113, 10.274028, 12.148837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402260, 10.421841, 12.944736>,  <27.691902, 10.602395, 12.346390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402260, 10.421841, 12.944736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250486, 10.167713, 12.675694>,  <27.159422, 10.015237, 12.514268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250486, 10.167713, 12.675694>,  <27.402260, 10.421841, 12.944736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250486, 10.167713, 12.675694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200991, -0.766210, 0.610348,
		-0.903124, 0.096398, 0.418418,
		-0.379432, -0.635319, -0.672608,
		27.136656, 9.977118, 12.473911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486391, 11.142602, 13.229993>,  <27.402260, 10.421841, 12.944736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486391, 11.142602, 13.229993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386436, 11.227443, 12.852089>,  <27.326464, 11.278347, 12.625346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386436, 11.227443, 12.852089>,  <27.486391, 11.142602, 13.229993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386436, 11.227443, 12.852089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250147, 0.956732, 0.148627,
		0.935406, -0.199189, -0.292130,
		-0.249885, 0.212101, -0.944759,
		27.311470, 11.291073, 12.568661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889013, 11.690994, 13.387218>,  <27.486391, 11.142602, 13.229993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889013, 11.690994, 13.387218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202566, 11.939242, 13.394806>,  <27.390697, 12.088191, 13.399359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202566, 11.939242, 13.394806>,  <26.889013, 11.690994, 13.387218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202566, 11.939242, 13.394806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265255, 0.307097, 0.913964,
		0.561401, -0.721471, 0.405351,
		0.783881, 0.620622, 0.018969,
		27.437731, 12.125429, 13.400496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073690, 11.772778, 14.201457>,  <26.889013, 11.690994, 13.387218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073690, 11.772778, 14.201457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165710, 12.081957, 13.964939>,  <27.220922, 12.267465, 13.823029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165710, 12.081957, 13.964939>,  <27.073690, 11.772778, 14.201457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165710, 12.081957, 13.964939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301789, 0.634300, 0.711749,
		0.925202, 0.014707, 0.379189,
		0.230052, 0.772947, -0.591295,
		27.234726, 12.313841, 13.787551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435101, 12.279128, 14.666289>,  <27.073690, 11.772778, 14.201457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435101, 12.279128, 14.666289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248959, 12.458289, 14.360916>,  <27.137274, 12.565785, 14.177692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248959, 12.458289, 14.360916>,  <27.435101, 12.279128, 14.666289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248959, 12.458289, 14.360916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381315, 0.676924, 0.629581,
		0.798777, 0.584086, -0.144218,
		-0.465355, 0.447903, -0.763432,
		27.109352, 12.592660, 14.131886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767447, 12.985706, 14.579542>,  <27.435101, 12.279128, 14.666289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767447, 12.985706, 14.579542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374416, 12.938634, 14.522002>,  <27.138597, 12.910391, 14.487478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374416, 12.938634, 14.522002>,  <27.767447, 12.985706, 14.579542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374416, 12.938634, 14.522002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182868, 0.750342, 0.635253,
		0.033180, 0.650490, -0.758789,
		-0.982577, -0.117681, -0.143850,
		27.079643, 12.903330, 14.478848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395090, 13.678684, 14.253924>,  <27.767447, 12.985706, 14.579542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395090, 13.678684, 14.253924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203753, 13.433720, 14.505684>,  <27.088951, 13.286741, 14.656739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203753, 13.433720, 14.505684>,  <27.395090, 13.678684, 14.253924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203753, 13.433720, 14.505684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121361, 0.755935, 0.643299,
		-0.869747, 0.231333, -0.435919,
		-0.478342, -0.612411, 0.629398,
		27.060249, 13.249996, 14.694503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703218, 14.043823, 14.460273>,  <27.395090, 13.678684, 14.253924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703218, 14.043823, 14.460273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845461, 13.771001, 14.715880>,  <26.930807, 13.607307, 14.869245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845461, 13.771001, 14.715880>,  <26.703218, 14.043823, 14.460273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845461, 13.771001, 14.715880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051965, 0.697080, 0.715108,
		-0.933190, -0.221091, 0.283329,
		0.355606, -0.682055, 0.639019,
		26.952143, 13.566384, 14.907586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550354, 14.666004, 14.918236>,  <26.703218, 14.043823, 14.460273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550354, 14.666004, 14.918236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792833, 14.848979, 15.178474>,  <26.938320, 14.958764, 15.334618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792833, 14.848979, 15.178474>,  <26.550354, 14.666004, 14.918236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792833, 14.848979, 15.178474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647809, 0.758557, 0.070254,
		-0.461377, -0.464050, 0.756168,
		0.606197, 0.457438, 0.650596,
		26.974693, 14.986211, 15.373653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.705254, 20.471575, 20.746267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.342310, 20.428345, 20.908758>,  <18.124544, 20.402407, 21.006252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.342310, 20.428345, 20.908758>,  <18.705254, 20.471575, 20.746267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342310, 20.428345, 20.908758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189164, -0.758027, -0.624189,
		0.375388, -0.643207, 0.667359,
		-0.907359, -0.108073, 0.406226,
		18.070103, 20.395924, 21.030626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640871, 19.768988, 20.883507>,  <18.705254, 20.471575, 20.746267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640871, 19.768988, 20.883507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.267969, 19.913673, 20.886677>,  <18.044228, 20.000484, 20.888578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.267969, 19.913673, 20.886677>,  <18.640871, 19.768988, 20.883507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267969, 19.913673, 20.886677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316598, -0.804985, -0.501762,
		-0.175116, -0.470278, 0.864970,
		-0.932255, 0.361714, 0.007923,
		17.988293, 20.022188, 20.889053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133205, 19.148983, 21.100286>,  <18.640871, 19.768988, 20.883507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133205, 19.148983, 21.100286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.923187, 19.441538, 20.926207>,  <17.797176, 19.617071, 20.821758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.923187, 19.441538, 20.926207>,  <18.133205, 19.148983, 21.100286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923187, 19.441538, 20.926207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541716, -0.681588, -0.491916,
		-0.656406, -0.022527, 0.754071,
		-0.525047, 0.731389, -0.435196,
		17.765675, 19.660955, 20.795647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350790, 19.075447, 21.329811>,  <18.133205, 19.148983, 21.100286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350790, 19.075447, 21.329811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.391901, 19.271006, 20.983305>,  <17.416567, 19.388340, 20.775400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.391901, 19.271006, 20.983305>,  <17.350790, 19.075447, 21.329811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391901, 19.271006, 20.983305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710706, -0.573214, -0.407827,
		-0.695940, 0.657577, 0.288547,
		0.102778, 0.488896, -0.866267,
		17.422735, 19.417675, 20.723425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704365, 19.036863, 20.995035>,  <17.350790, 19.075447, 21.329811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704365, 19.036863, 20.995035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.960491, 19.125742, 20.700928>,  <17.114168, 19.179070, 20.524464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.960491, 19.125742, 20.700928>,  <16.704365, 19.036863, 20.995035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960491, 19.125742, 20.700928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537084, -0.554816, -0.635390,
		-0.549120, 0.801753, -0.235920,
		0.640318, 0.222196, -0.735269,
		17.152586, 19.192400, 20.480347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229202, 18.938929, 20.498753>,  <16.704365, 19.036863, 20.995035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229202, 18.938929, 20.498753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581886, 18.984863, 20.315712>,  <16.793497, 19.012424, 20.205887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581886, 18.984863, 20.315712>,  <16.229202, 18.938929, 20.498753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581886, 18.984863, 20.315712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356319, -0.473639, -0.805421,
		-0.309230, 0.873200, -0.376693,
		0.881710, 0.114837, -0.457602,
		16.846399, 19.019314, 20.178431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.048203, 19.189911, 19.867636>,  <16.229202, 18.938929, 20.498753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.048203, 19.189911, 19.867636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.416225, 19.037790, 19.829975>,  <16.637039, 18.946518, 19.807379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.416225, 19.037790, 19.829975>,  <16.048203, 19.189911, 19.867636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416225, 19.037790, 19.829975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319114, -0.588033, -0.743225,
		0.227286, 0.713855, -0.662384,
		0.920059, -0.380300, -0.094149,
		16.692244, 18.923700, 19.801731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145338, 19.237207, 19.221897>,  <16.048203, 19.189911, 19.867636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145338, 19.237207, 19.221897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449909, 18.984913, 19.281763>,  <16.632652, 18.833536, 19.317682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449909, 18.984913, 19.281763>,  <16.145338, 19.237207, 19.221897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449909, 18.984913, 19.281763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249860, -0.498588, -0.830048,
		0.598163, 0.594627, -0.537234,
		0.761427, -0.630737, 0.149664,
		16.678337, 18.795692, 19.326662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.546581, 19.200722, 18.564602>,  <16.145338, 19.237207, 19.221897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.546581, 19.200722, 18.564602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.601233, 18.864719, 18.774639>,  <16.634024, 18.663118, 18.900661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.601233, 18.864719, 18.774639>,  <16.546581, 19.200722, 18.564602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601233, 18.864719, 18.774639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318510, -0.539167, -0.779648,
		0.938022, -0.060727, -0.341214,
		0.136626, -0.840007, 0.525092,
		16.642220, 18.612717, 18.932167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871557, 18.661049, 18.131975>,  <16.546581, 19.200722, 18.564602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871557, 18.661049, 18.131975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.709976, 18.420862, 18.408022>,  <16.613028, 18.276751, 18.573650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.709976, 18.420862, 18.408022>,  <16.871557, 18.661049, 18.131975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709976, 18.420862, 18.408022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031441, -0.744848, -0.666493,
		0.914240, -0.290929, 0.282003,
		-0.403952, -0.600468, 0.690117,
		16.588791, 18.240723, 18.615057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305840, 18.071522, 18.211311>,  <16.871557, 18.661049, 18.131975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305840, 18.071522, 18.211311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.927689, 17.994797, 18.316740>,  <16.700798, 17.948763, 18.379997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.927689, 17.994797, 18.316740>,  <17.305840, 18.071522, 18.211311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927689, 17.994797, 18.316740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015021, -0.833333, -0.552567,
		0.325633, -0.518425, 0.790695,
		-0.945377, -0.191811, 0.263573,
		16.644075, 17.937254, 18.395811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334707, 17.373198, 18.325657>,  <17.305840, 18.071522, 18.211311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334707, 17.373198, 18.325657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.943871, 17.449600, 18.288118>,  <16.709368, 17.495441, 18.265596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.943871, 17.449600, 18.288118>,  <17.334707, 17.373198, 18.325657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943871, 17.449600, 18.288118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079629, -0.737072, -0.671107,
		-0.197354, -0.648261, 0.735397,
		-0.977093, 0.191005, -0.093844,
		16.650743, 17.506901, 18.259966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948509, 16.698648, 18.190506>,  <17.334707, 17.373198, 18.325657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948509, 16.698648, 18.190506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.673656, 16.971161, 18.089548>,  <16.508745, 17.134668, 18.028973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.673656, 16.971161, 18.089548>,  <16.948509, 16.698648, 18.190506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673656, 16.971161, 18.089548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375893, -0.630656, -0.678954,
		-0.621729, -0.371663, 0.689435,
		-0.687138, 0.681279, -0.252391,
		16.467516, 17.175545, 18.013828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256863, 16.368778, 18.163782>,  <16.948509, 16.698648, 18.190506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256863, 16.368778, 18.163782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.231157, 16.712460, 17.960749>,  <16.215734, 16.918669, 17.838928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.231157, 16.712460, 17.960749>,  <16.256863, 16.368778, 18.163782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231157, 16.712460, 17.960749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393271, -0.489279, -0.778425,
		-0.917174, 0.149592, 0.369343,
		-0.064265, 0.859203, -0.507584,
		16.211878, 16.970221, 17.808474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583682, 16.387068, 17.827782>,  <16.256863, 16.368778, 18.163782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583682, 16.387068, 17.827782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.833240, 16.616940, 17.615932>,  <15.982974, 16.754862, 17.488823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.833240, 16.616940, 17.615932>,  <15.583682, 16.387068, 17.827782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833240, 16.616940, 17.615932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270615, -0.476903, -0.836260,
		-0.733160, 0.665061, -0.142021,
		0.623894, 0.574679, -0.529622,
		16.020409, 16.789343, 17.457047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227145, 16.506935, 17.097033>,  <15.583682, 16.387068, 17.827782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227145, 16.506935, 17.097033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.598124, 16.635990, 17.021402>,  <15.820710, 16.713423, 16.976025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.598124, 16.635990, 17.021402>,  <15.227145, 16.506935, 17.097033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598124, 16.635990, 17.021402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025900, -0.448976, -0.893168,
		-0.373061, 0.833261, -0.408044,
		0.927445, 0.322638, -0.189077,
		15.876357, 16.732782, 16.964680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278478, 16.647329, 16.359549>,  <15.227145, 16.506935, 17.097033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278478, 16.647329, 16.359549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.662398, 16.587559, 16.454588>,  <15.892751, 16.551697, 16.511612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.662398, 16.587559, 16.454588>,  <15.278478, 16.647329, 16.359549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662398, 16.587559, 16.454588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111761, -0.573043, -0.811869,
		0.257468, 0.805787, -0.533308,
		0.959802, -0.149427, 0.237596,
		15.950339, 16.542730, 16.525867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635357, 16.810001, 15.681979>,  <15.278478, 16.647329, 16.359549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635357, 16.810001, 15.681979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.857783, 16.581646, 15.923599>,  <15.991240, 16.444633, 16.068571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.857783, 16.581646, 15.923599>,  <15.635357, 16.810001, 15.681979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857783, 16.581646, 15.923599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228212, -0.593966, -0.771442,
		0.799193, 0.566825, -0.200001,
		0.556067, -0.570888, 0.604050,
		16.024603, 16.410379, 16.104815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234119, 16.594036, 15.258817>,  <15.635357, 16.810001, 15.681979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234119, 16.594036, 15.258817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.249784, 16.313053, 15.543076>,  <16.259184, 16.144463, 15.713631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.249784, 16.313053, 15.543076>,  <16.234119, 16.594036, 15.258817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.249784, 16.313053, 15.543076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218164, -0.688024, -0.692118,
		0.975126, 0.182142, 0.126307,
		0.039161, -0.702458, 0.710647,
		16.261534, 16.102316, 15.756269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999729, 16.211042, 15.288427>,  <16.234119, 16.594036, 15.258817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999729, 16.211042, 15.288427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.718151, 15.984158, 15.459415>,  <16.549204, 15.848027, 15.562009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.718151, 15.984158, 15.459415>,  <16.999729, 16.211042, 15.288427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.718151, 15.984158, 15.459415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318032, -0.789876, -0.524358,
		0.635070, -0.233171, 0.736422,
		-0.703947, -0.567210, 0.427471,
		16.506968, 15.813994, 15.587657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357021, 15.591956, 15.582903>,  <16.999729, 16.211042, 15.288427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357021, 15.591956, 15.582903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.970455, 15.504794, 15.528413>,  <16.738516, 15.452497, 15.495719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.970455, 15.504794, 15.528413>,  <17.357021, 15.591956, 15.582903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970455, 15.504794, 15.528413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256818, -0.837880, -0.481665,
		-0.009184, -0.500474, 0.865703,
		-0.966416, -0.217905, -0.136226,
		16.680531, 15.439423, 15.487545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244663, 14.919369, 15.760328>,  <17.357021, 15.591956, 15.582903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244663, 14.919369, 15.760328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.924032, 14.979482, 15.528849>,  <16.731653, 15.015550, 15.389961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.924032, 14.979482, 15.528849>,  <17.244663, 14.919369, 15.760328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.924032, 14.979482, 15.528849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232484, -0.813386, -0.533249,
		-0.550843, -0.561977, 0.617053,
		-0.801576, 0.150282, -0.578698,
		16.683559, 15.024567, 15.355239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919355, 15.167467, 15.991917>,  <17.244663, 14.919369, 15.760328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919355, 15.167467, 15.991917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.289402, 15.145627, 15.841622>,  <18.511431, 15.132524, 15.751446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.289402, 15.145627, 15.841622>,  <17.919355, 15.167467, 15.991917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289402, 15.145627, 15.841622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343576, 0.541574, 0.767237,
		0.161597, -0.838878, 0.519779,
		0.925117, -0.054600, -0.375735,
		18.566936, 15.129247, 15.728902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284925, 15.132468, 16.578775>,  <17.919355, 15.167467, 15.991917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284925, 15.132468, 16.578775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.511745, 15.281773, 16.285072>,  <18.647837, 15.371355, 16.108850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.511745, 15.281773, 16.285072>,  <18.284925, 15.132468, 16.578775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511745, 15.281773, 16.285072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334512, 0.710250, 0.619393,
		0.752700, -0.596843, 0.277887,
		0.567049, 0.373260, -0.734256,
		18.681860, 15.393751, 16.064795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815739, 15.451352, 16.940241>,  <18.284925, 15.132468, 16.578775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815739, 15.451352, 16.940241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.893641, 15.584951, 16.571346>,  <18.940382, 15.665111, 16.350010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.893641, 15.584951, 16.571346>,  <18.815739, 15.451352, 16.940241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893641, 15.584951, 16.571346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555093, 0.737651, 0.384372,
		0.808666, -0.586785, -0.041737,
		0.194756, 0.333997, -0.922234,
		18.952068, 15.685150, 16.294676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499407, 15.477896, 16.907272>,  <18.815739, 15.451352, 16.940241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499407, 15.477896, 16.907272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.386248, 15.722861, 16.611998>,  <19.318352, 15.869841, 16.434834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.386248, 15.722861, 16.611998>,  <19.499407, 15.477896, 16.907272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386248, 15.722861, 16.611998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713534, 0.648687, 0.264716,
		0.640967, -0.451833, -0.620490,
		-0.282897, 0.612415, -0.738185,
		19.301378, 15.906586, 16.390541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134575, 15.817180, 16.583735>,  <19.499407, 15.477896, 16.907272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134575, 15.817180, 16.583735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.837336, 16.062918, 16.477615>,  <19.658991, 16.210360, 16.413944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.837336, 16.062918, 16.477615>,  <20.134575, 15.817180, 16.583735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.837336, 16.062918, 16.477615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561506, 0.788100, 0.252209,
		0.364026, 0.038449, -0.930595,
		-0.743099, 0.614345, -0.265300,
		19.614407, 16.247221, 16.398026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484262, 16.316900, 16.206833>,  <20.134575, 15.817180, 16.583735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484262, 16.316900, 16.206833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.132299, 16.480568, 16.303448>,  <19.921122, 16.578770, 16.361416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.132299, 16.480568, 16.303448>,  <20.484262, 16.316900, 16.206833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.132299, 16.480568, 16.303448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468231, 0.833105, 0.294443,
		-0.080746, 0.372177, -0.924643,
		-0.879909, 0.409171, 0.241535,
		19.868326, 16.603319, 16.375908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552887, 17.046900, 16.122263>,  <20.484262, 16.316900, 16.206833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552887, 17.046900, 16.122263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.237078, 17.011078, 16.365124>,  <20.047592, 16.989586, 16.510839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.237078, 17.011078, 16.365124>,  <20.552887, 17.046900, 16.122263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.237078, 17.011078, 16.365124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345338, 0.752988, 0.560134,
		-0.507339, 0.651912, -0.563576,
		-0.789524, -0.089554, 0.607151,
		20.000221, 16.984211, 16.547270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.311270, 17.760460, 16.322481>,  <20.552887, 17.046900, 16.122263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.311270, 17.760460, 16.322481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.181841, 17.519381, 16.614250>,  <20.104183, 17.374733, 16.789312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.181841, 17.519381, 16.614250>,  <20.311270, 17.760460, 16.322481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.181841, 17.519381, 16.614250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327599, 0.651857, 0.683931,
		-0.887683, 0.460258, -0.013479,
		-0.323570, -0.602698, 0.729423,
		20.084770, 17.338572, 16.833076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983089, 18.172789, 16.850954>,  <20.311270, 17.760460, 16.322481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983089, 18.172789, 16.850954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.083216, 17.837446, 17.044657>,  <20.143291, 17.636242, 17.160879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.083216, 17.837446, 17.044657>,  <19.983089, 18.172789, 16.850954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083216, 17.837446, 17.044657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233268, 0.537669, 0.810246,
		-0.939643, -0.089855, 0.330147,
		0.250315, -0.838354, 0.484257,
		20.158310, 17.585939, 17.189934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754404, 18.283430, 17.482134>,  <19.983089, 18.172789, 16.850954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754404, 18.283430, 17.482134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.003992, 17.973507, 17.522806>,  <20.153744, 17.787554, 17.547209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.003992, 17.973507, 17.522806>,  <19.754404, 18.283430, 17.482134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.003992, 17.973507, 17.522806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425673, 0.446117, 0.787262,
		-0.655337, -0.447944, 0.608177,
		0.623968, -0.774806, 0.101679,
		20.191183, 17.741064, 17.553310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768881, 18.099800, 18.166180>,  <19.754404, 18.283430, 17.482134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768881, 18.099800, 18.166180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.105837, 17.931747, 18.031202>,  <20.308010, 17.830915, 17.950216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.105837, 17.931747, 18.031202>,  <19.768881, 18.099800, 18.166180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105837, 17.931747, 18.031202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522015, 0.480851, 0.704473,
		-0.133711, -0.769593, 0.624379,
		0.842390, -0.420131, -0.337444,
		20.358555, 17.805708, 17.929970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879694, 17.583868, 18.566629>,  <19.768881, 18.099800, 18.166180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879694, 17.583868, 18.566629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.247957, 17.656593, 18.428450>,  <20.468914, 17.700228, 18.345543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.247957, 17.656593, 18.428450>,  <19.879694, 17.583868, 18.566629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247957, 17.656593, 18.428450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252296, 0.398147, 0.881944,
		0.297889, -0.899123, 0.320686,
		0.920657, 0.181814, -0.345448,
		20.524155, 17.711138, 18.324816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340389, 17.239815, 19.050875>,  <19.879694, 17.583868, 18.566629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340389, 17.239815, 19.050875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.531590, 17.531155, 18.854498>,  <20.646309, 17.705957, 18.736671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.531590, 17.531155, 18.854498>,  <20.340389, 17.239815, 19.050875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.531590, 17.531155, 18.854498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344799, 0.358472, 0.867532,
		0.807854, -0.583957, -0.079784,
		0.478001, 0.728349, -0.490940,
		20.674990, 17.749659, 18.707216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.005871, 17.228945, 19.293003>,  <20.340389, 17.239815, 19.050875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.005871, 17.228945, 19.293003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.976147, 17.591274, 19.126167>,  <20.958313, 17.808672, 19.026066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.976147, 17.591274, 19.126167>,  <21.005871, 17.228945, 19.293003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976147, 17.591274, 19.126167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387223, 0.411638, 0.824993,
		0.918987, -0.100201, -0.381344,
		-0.074310, 0.905822, -0.417090,
		20.953854, 17.863022, 19.001040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.612429, 17.629766, 19.465975>,  <21.005871, 17.228945, 19.293003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.612429, 17.629766, 19.465975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.352879, 17.909492, 19.346027>,  <21.197149, 18.077328, 19.274059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.352879, 17.909492, 19.346027>,  <21.612429, 17.629766, 19.465975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.352879, 17.909492, 19.346027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398630, 0.648118, 0.648874,
		0.648118, 0.301500, -0.699314,
		-0.648874, 0.699314, -0.299870,
		21.158216, 18.119287, 19.256065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.081572, 18.137497, 19.329071>,  <21.612429, 17.629766, 19.465975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.081572, 18.137497, 19.329071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.718792, 18.293497, 19.392750>,  <21.501123, 18.387096, 19.430958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.718792, 18.293497, 19.392750>,  <22.081572, 18.137497, 19.329071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.718792, 18.293497, 19.392750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411664, 0.740467, 0.531264,
		0.089312, 0.547366, -0.832114,
		-0.906949, 0.390000, 0.159199,
		21.446707, 18.410498, 19.440510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.205339, 18.853184, 19.233662>,  <22.081572, 18.137497, 19.329071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.205339, 18.853184, 19.233662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.866770, 18.802258, 19.440489>,  <21.663628, 18.771702, 19.564585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.866770, 18.802258, 19.440489>,  <22.205339, 18.853184, 19.233662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.866770, 18.802258, 19.440489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317931, 0.658126, 0.682489,
		-0.427185, 0.742066, -0.516576,
		-0.846424, -0.127313, 0.517067,
		21.612843, 18.764063, 19.595610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.950598, 19.468895, 19.329010>,  <22.205339, 18.853184, 19.233662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.950598, 19.468895, 19.329010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.814400, 19.235147, 19.623650>,  <21.732681, 19.094898, 19.800432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.814400, 19.235147, 19.623650>,  <21.950598, 19.468895, 19.329010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814400, 19.235147, 19.623650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041214, 0.773380, 0.632602,
		-0.939343, 0.245756, -0.239247,
		-0.340494, -0.584370, 0.736598,
		21.712252, 19.059837, 19.844629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.844492, 19.829018, 19.519077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.986036, 19.624144, 19.832113>,  <21.070963, 19.501219, 20.019936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.986036, 19.624144, 19.832113>,  <20.844492, 19.829018, 19.519077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.986036, 19.624144, 19.832113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179629, 0.783935, 0.594289,
		-0.917886, -0.350872, 0.185401,
		0.353862, -0.512187, 0.782590,
		21.092196, 19.470488, 20.066891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.240105, 19.825670, 20.131170>,  <20.844492, 19.829018, 19.519077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.240105, 19.825670, 20.131170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.602379, 19.737774, 20.276194>,  <20.819742, 19.685036, 20.363209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.602379, 19.737774, 20.276194>,  <20.240105, 19.825670, 20.131170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.602379, 19.737774, 20.276194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193287, 0.547117, 0.814434,
		-0.377328, -0.807699, 0.453042,
		0.905684, -0.219742, 0.362560,
		20.874084, 19.671852, 20.384962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.161333, 19.385836, 20.737886>,  <20.240105, 19.825670, 20.131170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.161333, 19.385836, 20.737886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.491920, 19.610373, 20.755064>,  <20.690273, 19.745094, 20.765371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.491920, 19.610373, 20.755064>,  <20.161333, 19.385836, 20.737886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.491920, 19.610373, 20.755064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430916, 0.581663, 0.689913,
		0.362297, -0.588698, 0.722617,
		0.826470, 0.561341, 0.042945,
		20.739861, 19.778774, 20.767948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.210133, 19.532167, 21.501127>,  <20.161333, 19.385836, 20.737886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.210133, 19.532167, 21.501127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.469795, 19.786673, 21.334387>,  <20.625593, 19.939377, 21.234343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.469795, 19.786673, 21.334387>,  <20.210133, 19.532167, 21.501127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.469795, 19.786673, 21.334387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207959, 0.675590, 0.707341,
		0.731678, -0.372484, 0.570879,
		0.649154, 0.636266, -0.416853,
		20.664541, 19.977552, 21.209332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696629, 19.775463, 22.045727>,  <20.210133, 19.532167, 21.501127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696629, 19.775463, 22.045727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.741638, 20.051357, 21.759621>,  <20.768644, 20.216894, 21.587957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.741638, 20.051357, 21.759621>,  <20.696629, 19.775463, 22.045727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741638, 20.051357, 21.759621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168371, 0.722663, 0.670380,
		0.979280, 0.044997, 0.197447,
		0.112523, 0.689735, -0.715266,
		20.775394, 20.258278, 21.545040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122919, 20.252214, 22.312679>,  <20.696629, 19.775463, 22.045727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122919, 20.252214, 22.312679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.944700, 20.450911, 22.014755>,  <20.837769, 20.570127, 21.836000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.944700, 20.450911, 22.014755>,  <21.122919, 20.252214, 22.312679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.944700, 20.450911, 22.014755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008274, 0.829627, 0.558258,
		0.895221, 0.254892, -0.365526,
		-0.445545, 0.496740, -0.744808,
		20.811037, 20.599932, 21.791313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.219709, 20.951651, 22.487984>,  <21.122919, 20.252214, 22.312679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.219709, 20.951651, 22.487984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.949961, 21.012802, 22.199026>,  <20.788111, 21.049494, 22.025652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.949961, 21.012802, 22.199026>,  <21.219709, 20.951651, 22.487984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.949961, 21.012802, 22.199026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327567, 0.814854, 0.478240,
		0.661757, 0.559144, -0.499436,
		-0.674372, 0.152880, -0.722392,
		20.747648, 21.058666, 21.982309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.340475, 21.628206, 22.190102>,  <21.219709, 20.951651, 22.487984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.340475, 21.628206, 22.190102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.955566, 21.524839, 22.156031>,  <20.724621, 21.462820, 22.135588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.955566, 21.524839, 22.156031>,  <21.340475, 21.628206, 22.190102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955566, 21.524839, 22.156031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259101, 0.774684, 0.576829,
		-0.083075, 0.577135, -0.812412,
		-0.962271, -0.258417, -0.085180,
		20.666885, 21.447315, 22.130476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057142, 22.298771, 21.907738>,  <21.340475, 21.628206, 22.190102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.057142, 22.298771, 21.907738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.805191, 22.054089, 22.099182>,  <20.654020, 21.907280, 22.214048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.805191, 22.054089, 22.099182>,  <21.057142, 22.298771, 21.907738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.805191, 22.054089, 22.099182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168704, 0.709258, 0.684465,
		-0.758150, 0.350386, -0.549943,
		-0.629879, -0.611705, 0.478613,
		20.616228, 21.870577, 22.242765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.561504, 22.650461, 22.088648>,  <21.057142, 22.298771, 21.907738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.561504, 22.650461, 22.088648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.514708, 22.342171, 22.339182>,  <20.486629, 22.157196, 22.489502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.514708, 22.342171, 22.339182>,  <20.561504, 22.650461, 22.088648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.514708, 22.342171, 22.339182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279025, 0.630772, 0.724066,
		-0.953130, -0.090052, -0.288848,
		-0.116994, -0.770725, 0.626335,
		20.479609, 22.110952, 22.527082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919106, 22.846096, 22.411127>,  <20.561504, 22.650461, 22.088648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919106, 22.846096, 22.411127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.116777, 22.573751, 22.627356>,  <20.235380, 22.410345, 22.757092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.116777, 22.573751, 22.627356>,  <19.919106, 22.846096, 22.411127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.116777, 22.573751, 22.627356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283047, 0.461913, 0.840548,
		-0.821992, -0.568389, 0.035553,
		0.494180, -0.680860, 0.540569,
		20.265032, 22.369493, 22.789526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478765, 22.784899, 23.055000>,  <19.919106, 22.846096, 22.411127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478765, 22.784899, 23.055000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.849449, 22.658049, 23.135641>,  <20.071859, 22.581938, 23.184025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.849449, 22.658049, 23.135641>,  <19.478765, 22.784899, 23.055000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849449, 22.658049, 23.135641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097861, 0.314310, 0.944263,
		-0.362818, -0.894784, 0.260239,
		0.926707, -0.317128, 0.201602,
		20.127460, 22.562910, 23.196121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345791, 22.429068, 23.734777>,  <19.478765, 22.784899, 23.055000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345791, 22.429068, 23.734777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.727020, 22.533646, 23.673727>,  <19.955759, 22.596392, 23.637096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.727020, 22.533646, 23.673727>,  <19.345791, 22.429068, 23.734777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.727020, 22.533646, 23.673727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026958, 0.428860, 0.902968,
		0.301529, -0.864712, 0.401688,
		0.953076, 0.261442, -0.152625,
		20.012943, 22.612080, 23.627939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595518, 22.425789, 24.391764>,  <19.345791, 22.429068, 23.734777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595518, 22.425789, 24.391764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.856911, 22.651201, 24.189617>,  <20.013746, 22.786449, 24.068329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.856911, 22.651201, 24.189617>,  <19.595518, 22.425789, 24.391764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.856911, 22.651201, 24.189617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107208, 0.592007, 0.798771,
		0.749313, -0.576160, 0.326449,
		0.653480, 0.563532, -0.505368,
		20.052954, 22.820261, 24.038008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044495, 22.477291, 24.913767>,  <19.595518, 22.425789, 24.391764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.044495, 22.477291, 24.913767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.183809, 22.730289, 24.637032>,  <20.267399, 22.882090, 24.470989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.183809, 22.730289, 24.637032>,  <20.044495, 22.477291, 24.913767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183809, 22.730289, 24.637032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344641, 0.599955, 0.721994,
		0.871733, -0.489898, -0.009028,
		0.348286, 0.632498, -0.691840,
		20.288296, 22.920038, 24.429480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.722830, 22.601471, 25.128727>,  <20.044495, 22.477291, 24.913767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.722830, 22.601471, 25.128727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.580647, 22.909561, 24.916914>,  <20.495337, 23.094416, 24.789827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.580647, 22.909561, 24.916914>,  <20.722830, 22.601471, 25.128727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.580647, 22.909561, 24.916914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225321, 0.620434, 0.751194,
		0.907127, 0.147704, -0.394086,
		-0.355458, 0.770225, -0.529531,
		20.474009, 23.140629, 24.758055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210886, 23.103407, 25.194828>,  <20.722830, 22.601471, 25.128727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210886, 23.103407, 25.194828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.882544, 23.296238, 25.072325>,  <20.685537, 23.411936, 24.998823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.882544, 23.296238, 25.072325>,  <21.210886, 23.103407, 25.194828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882544, 23.296238, 25.072325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034163, 0.576714, 0.816231,
		0.570111, 0.659547, -0.489869,
		-0.820857, 0.482078, -0.306259,
		20.636286, 23.440861, 24.980448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.353394, 23.776533, 25.363085>,  <21.210886, 23.103407, 25.194828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.353394, 23.776533, 25.363085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.956760, 23.761971, 25.313377>,  <20.718781, 23.753233, 25.283552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.956760, 23.761971, 25.313377>,  <21.353394, 23.776533, 25.363085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956760, 23.761971, 25.313377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118882, 0.636370, 0.762168,
		0.051335, 0.770524, -0.635340,
		-0.991580, -0.036405, -0.124269,
		20.659286, 23.751049, 25.276096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.125370, 24.453360, 25.089174>,  <21.353394, 23.776533, 25.363085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.125370, 24.453360, 25.089174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.843733, 24.256956, 25.294373>,  <20.674751, 24.139114, 25.417492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.843733, 24.256956, 25.294373>,  <21.125370, 24.453360, 25.089174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.843733, 24.256956, 25.294373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000143, 0.722318, 0.691561,
		-0.710109, 0.486996, -0.508508,
		-0.704092, -0.491010, 0.512994,
		20.632505, 24.109653, 25.448271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657839, 25.006586, 25.195988>,  <21.125370, 24.453360, 25.089174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657839, 25.006586, 25.195988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.605045, 24.707321, 25.456091>,  <20.573370, 24.527763, 25.612152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.605045, 24.707321, 25.456091>,  <20.657839, 25.006586, 25.195988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.605045, 24.707321, 25.456091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100816, 0.662726, 0.742045,
		-0.986112, 0.032382, -0.162896,
		-0.131984, -0.748161, 0.650257,
		20.565451, 24.482872, 25.651169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.377657, 25.319424, 25.724346>,  <20.657839, 25.006586, 25.195988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.377657, 25.319424, 25.724346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.431454, 24.971867, 25.914900>,  <20.463732, 24.763332, 26.029232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.431454, 24.971867, 25.914900>,  <20.377657, 25.319424, 25.724346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431454, 24.971867, 25.914900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021149, 0.483158, 0.875278,
		-0.990689, -0.107644, 0.083358,
		0.134493, -0.868891, 0.476383,
		20.471802, 24.711199, 26.057816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.009462, 25.340744, 26.373407>,  <20.377657, 25.319424, 25.724346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.009462, 25.340744, 26.373407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.252535, 25.028242, 26.430483>,  <20.398378, 24.840740, 26.464727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.252535, 25.028242, 26.430483>,  <20.009462, 25.340744, 26.373407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252535, 25.028242, 26.430483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163987, 0.299233, 0.939983,
		-0.777064, -0.547813, 0.309955,
		0.607683, -0.781256, 0.142689,
		20.434839, 24.793865, 26.473289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761698, 24.802240, 26.940022>,  <20.009462, 25.340744, 26.373407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761698, 24.802240, 26.940022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.160015, 24.786692, 26.906843>,  <20.399006, 24.777363, 26.886936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.160015, 24.786692, 26.906843>,  <19.761698, 24.802240, 26.940022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.160015, 24.786692, 26.906843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089798, 0.235340, 0.967756,
		-0.018101, -0.971135, 0.237841,
		0.995795, -0.038875, -0.082946,
		20.458754, 24.775030, 26.881960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688065, 25.551954, 27.227692>,  <19.761698, 24.802240, 26.940022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.688065, 25.551954, 27.227692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.855701, 25.832527, 27.458292>,  <19.956284, 26.000872, 27.596653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.855701, 25.832527, 27.458292>,  <19.688065, 25.551954, 27.227692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855701, 25.832527, 27.458292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487564, 0.709500, -0.508813,
		-0.765927, -0.067843, 0.639339,
		0.419092, 0.701432, 0.576503,
		19.981428, 26.042957, 27.631243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073143, 26.059845, 26.809296>,  <19.688065, 25.551954, 27.227692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073143, 26.059845, 26.809296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.696056, 26.167416, 26.730343>,  <18.469805, 26.231958, 26.682970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.696056, 26.167416, 26.730343>,  <19.073143, 26.059845, 26.809296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696056, 26.167416, 26.730343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148752, -0.868501, -0.472840,
		-0.298587, -0.416394, 0.858756,
		-0.942719, 0.268926, -0.197383,
		18.413240, 26.248093, 26.671127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731785, 25.373926, 26.795610>,  <19.073143, 26.059845, 26.809296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731785, 25.373926, 26.795610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.470381, 25.598820, 26.592901>,  <18.313540, 25.733757, 26.471275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.470381, 25.598820, 26.592901>,  <18.731785, 25.373926, 26.795610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.470381, 25.598820, 26.592901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387597, -0.823650, -0.413969,
		-0.650149, -0.074110, 0.756184,
		-0.653510, 0.562236, -0.506770,
		18.274328, 25.767490, 26.440870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084137, 25.152119, 26.902098>,  <18.731785, 25.373926, 26.795610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084137, 25.152119, 26.902098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.034986, 25.350723, 26.558382>,  <18.005495, 25.469885, 26.352152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.034986, 25.350723, 26.558382>,  <18.084137, 25.152119, 26.902098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034986, 25.350723, 26.558382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389719, -0.820438, -0.418331,
		-0.912700, 0.283479, 0.294312,
		-0.122877, 0.496509, -0.859290,
		17.998123, 25.499676, 26.300594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490410, 24.893818, 26.592724>,  <18.084137, 25.152119, 26.902098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.490410, 24.893818, 26.592724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.676968, 25.048653, 26.274569>,  <17.788902, 25.141554, 26.083675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.676968, 25.048653, 26.274569>,  <17.490410, 24.893818, 26.592724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.676968, 25.048653, 26.274569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231320, -0.814512, -0.532035,
		-0.853796, 0.432127, -0.290343,
		0.466394, 0.387087, -0.795386,
		17.816885, 25.164780, 26.035954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982025, 24.841990, 26.002398>,  <17.490410, 24.893818, 26.592724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982025, 24.841990, 26.002398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.362997, 24.836281, 25.880629>,  <17.591579, 24.832855, 25.807568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.362997, 24.836281, 25.880629>,  <16.982025, 24.841990, 26.002398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.362997, 24.836281, 25.880629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181208, -0.829661, -0.528039,
		-0.245033, 0.558084, -0.792780,
		0.952430, -0.014271, -0.304424,
		17.648726, 24.831999, 25.789301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992762, 24.548168, 25.390696>,  <16.982025, 24.841990, 26.002398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992762, 24.548168, 25.390696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.390394, 24.535599, 25.432297>,  <17.628973, 24.528057, 25.457258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.390394, 24.535599, 25.432297>,  <16.992762, 24.548168, 25.390696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390394, 24.535599, 25.432297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017207, -0.899652, -0.436269,
		0.107277, 0.435476, -0.893785,
		0.994080, -0.031422, 0.104005,
		17.688618, 24.526173, 25.463499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.127172, 24.203455, 24.834249>,  <16.992762, 24.548168, 25.390696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.127172, 24.203455, 24.834249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.473759, 24.177729, 25.032280>,  <17.681711, 24.162292, 25.151098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.473759, 24.177729, 25.032280>,  <17.127172, 24.203455, 24.834249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473759, 24.177729, 25.032280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156911, -0.906329, -0.392360,
		0.473937, 0.417649, -0.775212,
		0.866466, -0.064315, 0.495077,
		17.733698, 24.158434, 25.180803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641153, 24.195768, 24.346146>,  <17.127172, 24.203455, 24.834249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641153, 24.195768, 24.346146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.811468, 24.041122, 24.673372>,  <17.913656, 23.948336, 24.869709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.811468, 24.041122, 24.673372>,  <17.641153, 24.195768, 24.346146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.811468, 24.041122, 24.673372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257981, -0.814719, -0.519307,
		0.867267, 0.432160, -0.247157,
		0.425787, -0.386616, 0.818067,
		17.939205, 23.925138, 24.918793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361305, 24.008461, 24.181204>,  <17.641153, 24.195768, 24.346146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361305, 24.008461, 24.181204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.228708, 23.784058, 24.484619>,  <18.149151, 23.649416, 24.666668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.228708, 23.784058, 24.484619>,  <18.361305, 24.008461, 24.181204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228708, 23.784058, 24.484619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045784, -0.812617, -0.580997,
		0.942346, -0.157867, 0.295062,
		-0.331493, -0.561009, 0.758539,
		18.129261, 23.615755, 24.712181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.875530, 23.538651, 24.432037>,  <18.361305, 24.008461, 24.181204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.875530, 23.538651, 24.432037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.504246, 23.399246, 24.484129>,  <18.281475, 23.315603, 24.515383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.504246, 23.399246, 24.484129>,  <18.875530, 23.538651, 24.432037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504246, 23.399246, 24.484129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224034, -0.803030, -0.552224,
		0.297034, -0.483406, 0.823462,
		-0.928213, -0.348513, 0.130228,
		18.225782, 23.294693, 24.523197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009596, 22.950644, 24.387476>,  <18.875530, 23.538651, 24.432037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009596, 22.950644, 24.387476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.611752, 22.918745, 24.360979>,  <18.373045, 22.899607, 24.345081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.611752, 22.918745, 24.360979>,  <19.009596, 22.950644, 24.387476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611752, 22.918745, 24.360979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103488, -0.725938, -0.679929,
		0.006135, -0.683121, 0.730280,
		-0.994612, -0.079746, -0.066242,
		18.313368, 22.894821, 24.341106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894163, 22.317606, 24.487902>,  <19.009596, 22.950644, 24.387476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894163, 22.317606, 24.487902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.559109, 22.421944, 24.295933>,  <18.358076, 22.484547, 24.180752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.559109, 22.421944, 24.295933>,  <18.894163, 22.317606, 24.487902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559109, 22.421944, 24.295933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040688, -0.846374, -0.531032,
		-0.544708, -0.464339, 0.698342,
		-0.837638, 0.260843, -0.479920,
		18.307817, 22.500196, 24.151957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.385754, 21.754398, 24.566807>,  <18.894163, 22.317606, 24.487902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.385754, 21.754398, 24.566807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.297518, 21.988989, 24.255068>,  <18.244576, 22.129744, 24.068024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.297518, 21.988989, 24.255068>,  <18.385754, 21.754398, 24.566807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297518, 21.988989, 24.255068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069367, -0.787576, -0.612302,
		-0.972897, -0.189128, 0.133048,
		-0.220589, 0.586477, -0.779349,
		18.231340, 22.164932, 24.021263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953930, 21.288904, 24.097431>,  <18.385754, 21.754398, 24.566807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.953930, 21.288904, 24.097431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.054401, 21.585833, 23.848959>,  <18.114685, 21.763990, 23.699875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.054401, 21.585833, 23.848959>,  <17.953930, 21.288904, 24.097431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054401, 21.585833, 23.848959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062345, -0.628016, -0.775699,
		-0.965930, 0.233568, -0.111466,
		0.251181, 0.742322, -0.621181,
		18.129755, 21.808529, 23.662605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499884, 21.239399, 23.555653>,  <17.953930, 21.288904, 24.097431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499884, 21.239399, 23.555653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.787474, 21.463205, 23.390720>,  <17.960028, 21.597490, 23.291761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.787474, 21.463205, 23.390720>,  <17.499884, 21.239399, 23.555653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787474, 21.463205, 23.390720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125299, -0.479186, -0.868724,
		-0.683648, 0.676255, -0.274416,
		0.718975, 0.559517, -0.412329,
		18.003166, 21.631060, 23.267021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213116, 21.353981, 22.953369>,  <17.499884, 21.239399, 23.555653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213116, 21.353981, 22.953369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.603788, 21.424080, 22.903757>,  <17.838192, 21.466139, 22.873989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.603788, 21.424080, 22.903757>,  <17.213116, 21.353981, 22.953369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603788, 21.424080, 22.903757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020637, -0.498395, -0.866704,
		-0.213702, 0.849053, -0.483156,
		0.976681, 0.175245, -0.124030,
		17.896793, 21.476654, 22.866549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152050, 21.602062, 22.292345>,  <17.213116, 21.353981, 22.953369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152050, 21.602062, 22.292345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.523701, 21.464655, 22.347069>,  <17.746691, 21.382210, 22.379904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.523701, 21.464655, 22.347069>,  <17.152050, 21.602062, 22.292345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523701, 21.464655, 22.347069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029879, -0.299035, -0.953774,
		0.368550, 0.890266, -0.267578,
		0.929128, -0.343518, 0.136809,
		17.802439, 21.361599, 22.388111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561401, 21.902670, 21.740294>,  <17.152050, 21.602062, 22.292345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.561401, 21.902670, 21.740294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.763718, 21.591013, 21.888409>,  <17.885107, 21.404018, 21.977278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.763718, 21.591013, 21.888409>,  <17.561401, 21.902670, 21.740294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763718, 21.591013, 21.888409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025659, -0.415464, -0.909247,
		0.862274, 0.469391, -0.190147,
		0.505792, -0.779141, 0.370288,
		17.915455, 21.357271, 21.999495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125277, 21.824614, 21.287037>,  <17.561401, 21.902670, 21.740294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.125277, 21.824614, 21.287037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.056437, 21.472439, 21.463768>,  <18.015133, 21.261133, 21.569807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.056437, 21.472439, 21.463768>,  <18.125277, 21.824614, 21.287037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056437, 21.472439, 21.463768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085164, -0.433543, -0.897099,
		0.981391, -0.192019, -0.000368,
		-0.172101, -0.880437, 0.441829,
		18.004807, 21.208307, 21.596317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.470917, 21.338232, 20.896549>,  <18.125277, 21.824614, 21.287037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.470917, 21.338232, 20.896549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.200487, 21.118073, 21.092501>,  <18.038229, 20.985977, 21.210072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.200487, 21.118073, 21.092501>,  <18.470917, 21.338232, 20.896549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.200487, 21.118073, 21.092501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114097, -0.578624, -0.807575,
		0.727945, -0.601875, 0.328394,
		-0.676076, -0.550401, 0.489878,
		17.997663, 20.952951, 21.239464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.659840, 17.132040, 4.266623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570499, 16.837824, 4.010781>,  <24.516895, 16.661295, 3.857275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570499, 16.837824, 4.010781>,  <24.659840, 17.132040, 4.266623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570499, 16.837824, 4.010781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216799, -0.677233, 0.703102,
		-0.950323, 0.018371, 0.310724,
		-0.223349, -0.735539, -0.639607,
		24.503494, 16.617163, 3.818899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.052092, 16.619116, 4.551711>,  <24.659840, 17.132040, 4.266623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.052092, 16.619116, 4.551711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.284550, 16.443039, 4.277923>,  <24.424025, 16.337393, 4.113650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.284550, 16.443039, 4.277923>,  <24.052092, 16.619116, 4.551711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284550, 16.443039, 4.277923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271948, -0.687681, 0.673156,
		-0.767016, -0.577342, -0.279933,
		0.581146, -0.440194, -0.684470,
		24.458893, 16.310980, 4.072582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.859509, 15.971792, 4.427064>,  <24.052092, 16.619116, 4.551711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.859509, 15.971792, 4.427064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.251179, 16.035368, 4.376537>,  <24.486181, 16.073513, 4.346221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.251179, 16.035368, 4.376537>,  <23.859509, 15.971792, 4.427064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251179, 16.035368, 4.376537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196780, -0.589909, 0.783125,
		0.049954, -0.791673, -0.608900,
		0.979174, 0.158940, -0.126316,
		24.544931, 16.083050, 4.338642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342962, 15.509149, 4.738559>,  <23.859509, 15.971792, 4.427064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342962, 15.509149, 4.738559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.988836, 15.331675, 4.682898>,  <23.776361, 15.225190, 4.649501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.988836, 15.331675, 4.682898>,  <24.342962, 15.509149, 4.738559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.988836, 15.331675, 4.682898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024384, -0.343142, 0.938967,
		-0.464355, 0.827887, 0.314607,
		-0.885314, -0.443685, -0.139153,
		23.723242, 15.198569, 4.641152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.697395, 15.865549, 5.119680>,  <24.342962, 15.509149, 4.738559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.697395, 15.865549, 5.119680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.687742, 15.467584, 5.080564>,  <23.681952, 15.228805, 5.057094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.687742, 15.467584, 5.080564>,  <23.697395, 15.865549, 5.119680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.687742, 15.467584, 5.080564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054882, -0.096353, 0.993833,
		-0.998201, 0.029349, -0.052278,
		-0.024131, -0.994915, -0.097790,
		23.680504, 15.169109, 5.051227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063362, 15.520295, 5.401639>,  <23.697395, 15.865549, 5.119680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.063362, 15.520295, 5.401639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.369293, 15.265960, 5.443108>,  <23.552853, 15.113358, 5.467988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.369293, 15.265960, 5.443108>,  <23.063362, 15.520295, 5.401639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.369293, 15.265960, 5.443108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039343, 0.114521, 0.992641,
		-0.643034, -0.763277, 0.062573,
		0.764827, -0.635840, 0.103671,
		23.598742, 15.075208, 5.474209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.907917, 15.012200, 5.868912>,  <23.063362, 15.520295, 5.401639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.907917, 15.012200, 5.868912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.300776, 14.937451, 5.877519>,  <23.536491, 14.892602, 5.882683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.300776, 14.937451, 5.877519>,  <22.907917, 15.012200, 5.868912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.300776, 14.937451, 5.877519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012083, 0.051484, 0.998601,
		-0.187721, -0.981034, 0.048307,
		0.982148, -0.186875, 0.021518,
		23.595421, 14.881390, 5.883975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.174713, 14.606372, 6.464910>,  <22.907917, 15.012200, 5.868912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.174713, 14.606372, 6.464910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.493925, 14.832256, 6.380766>,  <23.685452, 14.967787, 6.330281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.493925, 14.832256, 6.380766>,  <23.174713, 14.606372, 6.464910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.493925, 14.832256, 6.380766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073302, 0.255515, 0.964022,
		0.598143, -0.784738, 0.162514,
		0.798030, 0.564711, -0.210358,
		23.733334, 15.001669, 6.317659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.826475, 14.226707, 6.651790>,  <23.174713, 14.606372, 6.464910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.826475, 14.226707, 6.651790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.858625, 14.623823, 6.687348>,  <23.877916, 14.862093, 6.708683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.858625, 14.623823, 6.687348>,  <23.826475, 14.226707, 6.651790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.858625, 14.623823, 6.687348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091935, -0.096186, 0.991108,
		0.992516, -0.071489, -0.099004,
		0.080376, 0.992793, 0.088894,
		23.882738, 14.921661, 6.714016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421335, 14.450025, 7.065995>,  <23.826475, 14.226707, 6.651790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421335, 14.450025, 7.065995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.115934, 14.707683, 7.084498>,  <23.932693, 14.862277, 7.095601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.115934, 14.707683, 7.084498>,  <24.421335, 14.450025, 7.065995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115934, 14.707683, 7.084498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003067, -0.068013, 0.997680,
		0.645796, 0.761874, 0.049952,
		-0.763504, 0.644144, 0.046259,
		23.886883, 14.900926, 7.098376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535128, 14.881725, 7.709716>,  <24.421335, 14.450025, 7.065995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535128, 14.881725, 7.709716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.147285, 14.873481, 7.612196>,  <23.914579, 14.868534, 7.553685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.147285, 14.873481, 7.612196>,  <24.535128, 14.881725, 7.709716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.147285, 14.873481, 7.612196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243946, 0.158012, 0.956829,
		0.018801, 0.987222, -0.158238,
		-0.969607, -0.020612, -0.243800,
		23.856403, 14.867297, 7.539056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.212269, 15.472424, 8.049264>,  <24.535128, 14.881725, 7.709716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.212269, 15.472424, 8.049264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.890678, 15.263870, 7.934874>,  <23.697725, 15.138738, 7.866239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.890678, 15.263870, 7.934874>,  <24.212269, 15.472424, 8.049264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.890678, 15.263870, 7.934874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435816, 0.189421, 0.879877,
		-0.404584, 0.832033, -0.379517,
		-0.803975, -0.521384, -0.285977,
		23.649487, 15.107455, 7.849081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.670687, 15.778152, 8.503319>,  <24.212269, 15.472424, 8.049264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.670687, 15.778152, 8.503319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.545179, 15.428129, 8.355902>,  <23.469875, 15.218115, 8.267451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.545179, 15.428129, 8.355902>,  <23.670687, 15.778152, 8.503319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.545179, 15.428129, 8.355902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356627, -0.251116, 0.899865,
		-0.879981, 0.413780, -0.233278,
		-0.313766, -0.875058, -0.368543,
		23.451050, 15.165611, 8.245338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.916016, 15.717722, 8.692214>,  <23.670687, 15.778152, 8.503319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.916016, 15.717722, 8.692214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.044096, 15.346661, 8.615342>,  <23.120943, 15.124024, 8.569219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.044096, 15.346661, 8.615342>,  <22.916016, 15.717722, 8.692214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044096, 15.346661, 8.615342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255423, -0.279885, 0.925432,
		-0.912268, -0.247234, -0.326562,
		0.320198, -0.927653, -0.192181,
		23.140156, 15.068365, 8.557688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.490002, 15.338132, 8.978622>,  <22.916016, 15.717722, 8.692214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.490002, 15.338132, 8.978622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.798567, 15.084718, 8.954769>,  <22.983706, 14.932670, 8.940457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.798567, 15.084718, 8.954769>,  <22.490002, 15.338132, 8.978622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.798567, 15.084718, 8.954769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224924, -0.359136, 0.905776,
		-0.595258, -0.685313, -0.419539,
		0.771412, -0.633536, -0.059635,
		23.029991, 14.894657, 8.936879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214104, 14.645547, 9.173405>,  <22.490002, 15.338132, 8.978622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214104, 14.645547, 9.173405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.612038, 14.614876, 9.200006>,  <22.850798, 14.596473, 9.215967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.612038, 14.614876, 9.200006>,  <22.214104, 14.645547, 9.173405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.612038, 14.614876, 9.200006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098152, -0.559845, 0.822764,
		-0.025857, -0.825042, -0.564480,
		0.994835, -0.076679, 0.066504,
		22.910488, 14.591872, 9.219957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.304714, 13.853874, 9.301664>,  <22.214104, 14.645547, 9.173405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.304714, 13.853874, 9.301664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.649464, 14.022761, 9.414024>,  <22.856314, 14.124093, 9.481441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.649464, 14.022761, 9.414024>,  <22.304714, 13.853874, 9.301664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.649464, 14.022761, 9.414024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131917, -0.348180, 0.928100,
		0.489664, -0.836961, -0.244389,
		0.861874, 0.422218, 0.280901,
		22.908026, 14.149426, 9.498295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758060, 13.332623, 9.670707>,  <22.304714, 13.853874, 9.301664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758060, 13.332623, 9.670707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.889933, 13.690364, 9.791667>,  <22.969057, 13.905008, 9.864244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.889933, 13.690364, 9.791667>,  <22.758060, 13.332623, 9.670707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.889933, 13.690364, 9.791667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143597, -0.364085, 0.920229,
		0.933108, -0.259958, -0.248458,
		0.329681, 0.894351, 0.302402,
		22.988836, 13.958669, 9.882387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.413086, 13.219908, 10.082634>,  <22.758060, 13.332623, 9.670707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.413086, 13.219908, 10.082634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.261683, 13.571681, 10.198101>,  <23.170841, 13.782745, 10.267381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.261683, 13.571681, 10.198101>,  <23.413086, 13.219908, 10.082634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.261683, 13.571681, 10.198101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192000, -0.230488, 0.953945,
		0.905466, 0.416499, -0.081610,
		-0.378507, 0.879434, 0.288667,
		23.148130, 13.835511, 10.284701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.853926, 13.556601, 10.600365>,  <23.413086, 13.219908, 10.082634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.853926, 13.556601, 10.600365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.499981, 13.736364, 10.649442>,  <23.287615, 13.844223, 10.678888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.499981, 13.736364, 10.649442>,  <23.853926, 13.556601, 10.600365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.499981, 13.736364, 10.649442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113249, -0.047955, 0.992409,
		0.451882, 0.892037, -0.008461,
		-0.884860, 0.449410, 0.122693,
		23.234524, 13.871187, 10.686250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980890, 14.189053, 11.092367>,  <23.853926, 13.556601, 10.600365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980890, 14.189053, 11.092367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592590, 14.093102, 11.096530>,  <23.359612, 14.035533, 11.099028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592590, 14.093102, 11.096530>,  <23.980890, 14.189053, 11.092367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.592590, 14.093102, 11.096530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075995, -0.265852, 0.961014,
		-0.227756, 0.933693, 0.276305,
		-0.970748, -0.239875, 0.010407,
		23.301367, 14.021140, 11.099652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.709698, 14.625277, 11.632957>,  <23.980890, 14.189053, 11.092367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.709698, 14.625277, 11.632957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.438810, 14.336513, 11.576079>,  <23.276278, 14.163254, 11.541953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.438810, 14.336513, 11.576079>,  <23.709698, 14.625277, 11.632957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.438810, 14.336513, 11.576079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190909, -0.359038, 0.913589,
		-0.710582, 0.591555, 0.380966,
		-0.677219, -0.721911, -0.142193,
		23.235645, 14.119940, 11.533422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.021374, 14.677495, 12.160134>,  <23.709698, 14.625277, 11.632957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.021374, 14.677495, 12.160134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088333, 14.308972, 12.019751>,  <23.128508, 14.087859, 11.935520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088333, 14.308972, 12.019751>,  <23.021374, 14.677495, 12.160134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088333, 14.308972, 12.019751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009611, -0.354441, 0.935029,
		-0.985843, -0.159893, -0.050477,
		0.167396, -0.921307, -0.350960,
		23.138552, 14.032580, 11.914463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630690, 14.220715, 12.663939>,  <23.021374, 14.677495, 12.160134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630690, 14.220715, 12.663939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.874807, 13.966663, 12.474560>,  <23.021278, 13.814233, 12.360931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.874807, 13.966663, 12.474560>,  <22.630690, 14.220715, 12.663939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.874807, 13.966663, 12.474560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107561, -0.525686, 0.843851,
		-0.784840, -0.565920, -0.252507,
		0.610292, -0.635128, -0.473450,
		23.057896, 13.776125, 12.332525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.348305, 13.438688, 12.810377>,  <22.630690, 14.220715, 12.663939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.348305, 13.438688, 12.810377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.732546, 13.426145, 12.699920>,  <22.963091, 13.418618, 12.633645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.732546, 13.426145, 12.699920>,  <22.348305, 13.438688, 12.810377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.732546, 13.426145, 12.699920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211732, -0.561045, 0.800249,
		-0.180024, -0.827191, -0.532302,
		0.960605, -0.031359, -0.276144,
		23.020727, 13.416737, 12.617077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422953, 12.869870, 13.022763>,  <22.348305, 13.438688, 12.810377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422953, 12.869870, 13.022763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.790077, 13.000046, 12.931801>,  <23.010351, 13.078151, 12.877223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.790077, 13.000046, 12.931801>,  <22.422953, 12.869870, 13.022763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.790077, 13.000046, 12.931801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385782, -0.595725, 0.704474,
		0.093792, -0.734303, -0.672311,
		0.917810, 0.325439, -0.227407,
		23.065420, 13.097677, 12.863579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.866047, 12.289733, 12.862703>,  <22.422953, 12.869870, 13.022763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.866047, 12.289733, 12.862703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.103905, 12.577088, 13.007101>,  <23.246618, 12.749501, 13.093740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.103905, 12.577088, 13.007101>,  <22.866047, 12.289733, 12.862703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.103905, 12.577088, 13.007101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223109, -0.578815, 0.784344,
		0.772413, -0.385864, -0.504467,
		0.594643, 0.718389, 0.360995,
		23.282297, 12.792605, 13.115399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445772, 11.915309, 13.196369>,  <22.866047, 12.289733, 12.862703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445772, 11.915309, 13.196369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.481256, 12.283742, 13.348022>,  <23.502546, 12.504802, 13.439013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.481256, 12.283742, 13.348022>,  <23.445772, 11.915309, 13.196369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.481256, 12.283742, 13.348022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128353, -0.388028, 0.912666,
		0.987753, -0.032300, -0.152646,
		0.088710, 0.921082, 0.379130,
		23.507870, 12.560066, 13.461761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.044949, 11.897192, 13.400317>,  <23.445772, 11.915309, 13.196369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.044949, 11.897192, 13.400317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.868660, 12.181850, 13.619159>,  <23.762886, 12.352646, 13.750463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.868660, 12.181850, 13.619159>,  <24.044949, 11.897192, 13.400317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.868660, 12.181850, 13.619159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233693, -0.497509, 0.835387,
		0.866690, 0.496029, 0.052957,
		-0.440723, 0.711646, 0.547105,
		23.736443, 12.395344, 13.783290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511087, 12.194229, 13.892317>,  <24.044949, 11.897192, 13.400317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511087, 12.194229, 13.892317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149422, 12.238472, 14.057363>,  <23.932423, 12.265018, 14.156390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149422, 12.238472, 14.057363>,  <24.511087, 12.194229, 13.892317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.149422, 12.238472, 14.057363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334193, -0.418482, 0.844504,
		0.266080, 0.901465, 0.341413,
		-0.904166, 0.110608, 0.412613,
		23.878172, 12.271654, 14.181147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031567, 11.782482, 14.179669>,  <24.511087, 12.194229, 13.892317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031567, 11.782482, 14.179669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.755711, 11.666274, 14.444998>,  <23.590197, 11.596549, 14.604195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.755711, 11.666274, 14.444998>,  <24.031567, 11.782482, 14.179669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.755711, 11.666274, 14.444998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186138, -0.814102, -0.550082,
		0.699821, -0.502828, 0.507361,
		-0.689640, -0.290520, 0.663321,
		23.548819, 11.579118, 14.643994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999155, 11.125462, 14.489808>,  <24.031567, 11.782482, 14.179669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999155, 11.125462, 14.489808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.608906, 11.207821, 14.520172>,  <23.374756, 11.257236, 14.538390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.608906, 11.207821, 14.520172>,  <23.999155, 11.125462, 14.489808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.608906, 11.207821, 14.520172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219033, -0.892479, -0.394343,
		-0.013447, -0.401357, 0.915823,
		-0.975625, 0.205898, 0.075909,
		23.316217, 11.269590, 14.542945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.634443, 10.476033, 14.445739>,  <23.999155, 11.125462, 14.489808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.634443, 10.476033, 14.445739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.466370, 10.806221, 14.294983>,  <23.365524, 11.004333, 14.204530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.466370, 10.806221, 14.294983>,  <23.634443, 10.476033, 14.445739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.466370, 10.806221, 14.294983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217447, 0.311639, 0.924985,
		0.881000, 0.470619, 0.048549,
		-0.420186, 0.825469, -0.376889,
		23.340313, 11.053862, 14.181916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278620, 10.281832, 14.326940>,  <23.634443, 10.476033, 14.445739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278620, 10.281832, 14.326940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.391880, 10.182889, 13.956288>,  <24.459835, 10.123523, 13.733897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.391880, 10.182889, 13.956288>,  <24.278620, 10.281832, 14.326940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391880, 10.182889, 13.956288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172149, 0.937369, -0.302828,
		0.943499, 0.245264, 0.222833,
		0.283150, -0.247358, -0.926629,
		24.476826, 10.108682, 13.678300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729895, 10.820309, 14.075970>,  <24.278620, 10.281832, 14.326940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729895, 10.820309, 14.075970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570234, 10.659840, 13.746184>,  <24.474438, 10.563558, 13.548313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570234, 10.659840, 13.746184>,  <24.729895, 10.820309, 14.075970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570234, 10.659840, 13.746184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217928, 0.914941, -0.339692,
		0.890609, 0.044084, -0.452628,
		-0.399152, -0.401173, -0.824462,
		24.450489, 10.539488, 13.498845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221176, 10.831404, 13.620659>,  <24.729895, 10.820309, 14.075970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221176, 10.831404, 13.620659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.835548, 10.905724, 13.544717>,  <24.604172, 10.950315, 13.499151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.835548, 10.905724, 13.544717>,  <25.221176, 10.831404, 13.620659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835548, 10.905724, 13.544717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249846, 0.876984, -0.410459,
		0.090237, -0.443147, -0.891896,
		-0.964072, 0.185799, -0.189855,
		24.546328, 10.961463, 13.487761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178200, 10.886811, 12.857908>,  <25.221176, 10.831404, 13.620659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178200, 10.886811, 12.857908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.876860, 11.087062, 13.028477>,  <24.696054, 11.207212, 13.130817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.876860, 11.087062, 13.028477>,  <25.178200, 10.886811, 12.857908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876860, 11.087062, 13.028477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135867, 0.752932, -0.643920,
		-0.643429, -0.427162, -0.635242,
		-0.753352, 0.500626, 0.426421,
		24.650854, 11.237249, 13.156403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783644, 11.177539, 12.387030>,  <25.178200, 10.886811, 12.857908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783644, 11.177539, 12.387030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.134995, 11.052930, 12.242030>,  <26.345806, 10.978165, 12.155030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.134995, 11.052930, 12.242030>,  <25.783644, 11.177539, 12.387030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134995, 11.052930, 12.242030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024032, 0.728676, -0.684437,
		0.477361, 0.609906, 0.632567,
		0.878378, -0.311522, -0.362499,
		26.398508, 10.959474, 12.133281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066147, 11.675015, 12.271332>,  <25.783644, 11.177539, 12.387030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066147, 11.675015, 12.271332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.293346, 11.433230, 12.047903>,  <26.429667, 11.288159, 11.913846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.293346, 11.433230, 12.047903>,  <26.066147, 11.675015, 12.271332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293346, 11.433230, 12.047903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274864, 0.779029, -0.563528,
		0.775774, 0.166552, 0.608633,
		0.568000, -0.604462, -0.558571,
		26.463747, 11.251892, 11.880332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626913, 12.027554, 12.138917>,  <26.066147, 11.675015, 12.271332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626913, 12.027554, 12.138917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.652847, 11.770021, 11.833950>,  <26.668407, 11.615502, 11.650970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.652847, 11.770021, 11.833950>,  <26.626913, 12.027554, 12.138917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652847, 11.770021, 11.833950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301198, 0.741017, -0.600145,
		0.951355, -0.190726, 0.241966,
		0.064838, -0.643830, -0.762416,
		26.672298, 11.576873, 11.605226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278975, 12.171269, 11.771830>,  <26.626913, 12.027554, 12.138917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278975, 12.171269, 11.771830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.046331, 11.958035, 11.526050>,  <26.906746, 11.830093, 11.378581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.046331, 11.958035, 11.526050>,  <27.278975, 12.171269, 11.771830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046331, 11.958035, 11.526050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398995, 0.471301, -0.786561,
		0.708897, -0.702633, -0.061412,
		-0.581608, -0.533088, -0.614451,
		26.871849, 11.798108, 11.341714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701069, 11.969703, 11.172563>,  <27.278975, 12.171269, 11.771830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701069, 11.969703, 11.172563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.310982, 11.983716, 11.085180>,  <27.076929, 11.992125, 11.032751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.310982, 11.983716, 11.085180>,  <27.701069, 11.969703, 11.172563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310982, 11.983716, 11.085180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178542, 0.707739, -0.683541,
		0.130661, -0.705605, -0.696455,
		-0.975218, 0.035034, -0.218455,
		27.018415, 11.994226, 11.019644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648678, 12.077083, 10.428330>,  <27.701069, 11.969703, 11.172563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648678, 12.077083, 10.428330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.285624, 12.169497, 10.568512>,  <27.067791, 12.224946, 10.652621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.285624, 12.169497, 10.568512>,  <27.648678, 12.077083, 10.428330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285624, 12.169497, 10.568512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086890, 0.713403, -0.695346,
		-0.410665, -0.661572, -0.627436,
		-0.907636, 0.231036, 0.350454,
		27.013332, 12.238809, 10.673648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279888, 12.217968, 9.839117>,  <27.648678, 12.077083, 10.428330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279888, 12.217968, 9.839117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.079105, 12.387367, 10.140763>,  <26.958635, 12.489007, 10.321751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.079105, 12.387367, 10.140763>,  <27.279888, 12.217968, 9.839117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079105, 12.387367, 10.140763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399613, 0.659707, -0.636472,
		-0.767040, -0.620835, -0.161908,
		-0.501956, 0.423498, 0.754115,
		26.928518, 12.514417, 10.366998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543472, 12.329671, 9.618893>,  <27.279888, 12.217968, 9.839117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543472, 12.329671, 9.618893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.605597, 12.576738, 9.927273>,  <26.642872, 12.724978, 10.112301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.605597, 12.576738, 9.927273>,  <26.543472, 12.329671, 9.618893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605597, 12.576738, 9.927273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477018, 0.730296, -0.489000,
		-0.865062, -0.291809, 0.408062,
		0.155312, 0.617669, 0.770950,
		26.652189, 12.762039, 10.158558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945522, 12.734835, 9.516978>,  <26.543472, 12.329671, 9.618893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945522, 12.734835, 9.516978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.170876, 12.957893, 9.760825>,  <26.306087, 13.091728, 9.907133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.170876, 12.957893, 9.760825>,  <25.945522, 12.734835, 9.516978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170876, 12.957893, 9.760825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258836, 0.819843, -0.510745,
		-0.784605, 0.129954, 0.606224,
		0.563382, 0.557646, 0.609616,
		26.339890, 13.125187, 9.943710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521616, 13.264585, 9.772683>,  <25.945522, 12.734835, 9.516978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521616, 13.264585, 9.772683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.896301, 13.390229, 9.834519>,  <26.121113, 13.465616, 9.871621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.896301, 13.390229, 9.834519>,  <25.521616, 13.264585, 9.772683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896301, 13.390229, 9.834519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210381, 0.857997, -0.468594,
		-0.279829, 0.406417, 0.869782,
		0.936715, 0.314112, 0.154590,
		26.177317, 13.484463, 9.880897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504435, 13.974933, 10.022823>,  <25.521616, 13.264585, 9.772683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504435, 13.974933, 10.022823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.869623, 13.922193, 9.868370>,  <26.088736, 13.890549, 9.775698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.869623, 13.922193, 9.868370>,  <25.504435, 13.974933, 10.022823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869623, 13.922193, 9.868370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146823, 0.776795, -0.612398,
		0.380692, 0.615796, 0.689833,
		0.912971, -0.131851, -0.386133,
		26.143515, 13.882637, 9.752530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700891, 14.637506, 9.891796>,  <25.504435, 13.974933, 10.022823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700891, 14.637506, 9.891796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.977661, 14.441123, 9.680060>,  <26.143723, 14.323294, 9.553019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.977661, 14.441123, 9.680060>,  <25.700891, 14.637506, 9.891796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977661, 14.441123, 9.680060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121580, 0.801954, -0.584883,
		0.711658, 0.340339, 0.614583,
		0.691926, -0.490957, -0.529339,
		26.185238, 14.293836, 9.521258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307850, 15.078910, 9.901603>,  <25.700891, 14.637506, 9.891796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307850, 15.078910, 9.901603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.258825, 14.840471, 9.584201>,  <26.229410, 14.697409, 9.393760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.258825, 14.840471, 9.584201>,  <26.307850, 15.078910, 9.901603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258825, 14.840471, 9.584201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091947, 0.789273, -0.607119,
		0.988193, -0.147369, -0.041925,
		-0.122560, -0.596095, -0.793504,
		26.222057, 14.661643, 9.346149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809750, 15.320580, 9.456738>,  <26.307850, 15.078910, 9.901603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809750, 15.320580, 9.456738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.543024, 15.118317, 9.237769>,  <26.382988, 14.996959, 9.106388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.543024, 15.118317, 9.237769>,  <26.809750, 15.320580, 9.456738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543024, 15.118317, 9.237769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130531, 0.802465, -0.582248,
		0.733706, -0.316795, -0.601097,
		-0.666812, -0.505660, -0.547422,
		26.342979, 14.966619, 9.073543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028671, 15.440839, 8.818006>,  <26.809750, 15.320580, 9.456738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028671, 15.440839, 8.818006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.658028, 15.297815, 8.771447>,  <26.435642, 15.212002, 8.743512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.658028, 15.297815, 8.771447>,  <27.028671, 15.440839, 8.818006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658028, 15.297815, 8.771447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220087, 0.766688, -0.603118,
		0.304890, -0.533238, -0.789113,
		-0.926609, -0.357558, -0.116397,
		26.380045, 15.190548, 8.736528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<21.583014, 18.051842, 17.720949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252077, 17.951532, 17.921993>,  <21.053514, 17.891346, 18.042620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252077, 17.951532, 17.921993>,  <21.583014, 18.051842, 17.720949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252077, 17.951532, 17.921993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232214, -0.662057, -0.712571,
		0.511451, -0.706253, 0.489514,
		-0.827342, -0.250773, 0.502611,
		21.003874, 17.876301, 18.072777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505951, 17.294928, 17.579962>,  <21.583014, 18.051842, 17.720949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505951, 17.294928, 17.579962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.152567, 17.442476, 17.695501>,  <20.940536, 17.531006, 17.764826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.152567, 17.442476, 17.695501>,  <21.505951, 17.294928, 17.579962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.152567, 17.442476, 17.695501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464977, -0.614788, -0.637050,
		-0.057408, -0.697116, 0.714656,
		-0.883460, 0.368871, 0.288849,
		20.887529, 17.553137, 17.782156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.007595, 16.761528, 17.723845>,  <21.505951, 17.294928, 17.579962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.007595, 16.761528, 17.723845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.759018, 17.070829, 17.673416>,  <20.609873, 17.256411, 17.643160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.759018, 17.070829, 17.673416>,  <21.007595, 16.761528, 17.723845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.759018, 17.070829, 17.673416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525534, -0.530764, -0.664909,
		-0.581054, -0.346948, 0.736208,
		-0.621442, 0.773251, -0.126069,
		20.572586, 17.302805, 17.635595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291676, 16.518692, 17.904034>,  <21.007595, 16.761528, 17.723845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291676, 16.518692, 17.904034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271242, 16.837193, 17.662910>,  <20.258982, 17.028294, 17.518236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271242, 16.837193, 17.662910>,  <20.291676, 16.518692, 17.904034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.271242, 16.837193, 17.662910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641190, -0.488912, -0.591474,
		-0.765681, 0.356300, 0.535522,
		-0.051081, 0.796251, -0.602806,
		20.255919, 17.076067, 17.482069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638399, 16.428955, 17.730785>,  <20.291676, 16.518692, 17.904034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638399, 16.428955, 17.730785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759655, 16.715364, 17.479256>,  <19.832409, 16.887211, 17.328339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759655, 16.715364, 17.479256>,  <19.638399, 16.428955, 17.730785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759655, 16.715364, 17.479256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688801, -0.291366, -0.663822,
		-0.658529, 0.634364, 0.404873,
		0.303138, 0.716023, -0.628824,
		19.850597, 16.930172, 17.290609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090939, 16.851656, 17.456453>,  <19.638399, 16.428955, 17.730785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090939, 16.851656, 17.456453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.366758, 16.882898, 17.168447>,  <19.532249, 16.901644, 16.995644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.366758, 16.882898, 17.168447>,  <19.090939, 16.851656, 17.456453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366758, 16.882898, 17.168447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620072, -0.450009, -0.642652,
		-0.374208, 0.889602, -0.261873,
		0.689550, 0.078105, -0.720014,
		19.573624, 16.906330, 16.952444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.743479, 17.102142, 16.889482>,  <19.090939, 16.851656, 17.456453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.743479, 17.102142, 16.889482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068808, 16.922293, 16.741783>,  <19.264006, 16.814383, 16.653164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068808, 16.922293, 16.741783>,  <18.743479, 17.102142, 16.889482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068808, 16.922293, 16.741783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581284, -0.600915, -0.548644,
		0.024799, 0.660861, -0.750098,
		0.813322, -0.449626, -0.369247,
		19.312805, 16.787405, 16.631010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686651, 17.040890, 16.131617>,  <18.743479, 17.102142, 16.889482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686651, 17.040890, 16.131617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958284, 16.771263, 16.247877>,  <19.121265, 16.609488, 16.317633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958284, 16.771263, 16.247877>,  <18.686651, 17.040890, 16.131617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958284, 16.771263, 16.247877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299409, -0.615865, -0.728742,
		0.670222, 0.407854, -0.620046,
		0.679085, -0.674066, 0.290652,
		19.162010, 16.569044, 16.335073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700487, 16.683508, 15.458047>,  <18.686651, 17.040890, 16.131617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700487, 16.683508, 15.458047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880510, 16.466700, 15.741924>,  <18.988523, 16.336615, 15.912251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880510, 16.466700, 15.741924>,  <18.700487, 16.683508, 15.458047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880510, 16.466700, 15.741924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266095, -0.840025, -0.472812,
		0.852433, 0.023946, -0.522288,
		0.450057, -0.542019, 0.709693,
		19.015528, 16.304094, 15.954832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019686, 16.137701, 15.088935>,  <18.700487, 16.683508, 15.458047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019686, 16.137701, 15.088935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989586, 16.000883, 15.463601>,  <18.971525, 15.918792, 15.688401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989586, 16.000883, 15.463601>,  <19.019686, 16.137701, 15.088935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.989586, 16.000883, 15.463601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293817, -0.890021, -0.348617,
		0.952895, -0.301442, -0.033526,
		-0.075249, -0.342045, 0.936666,
		18.967010, 15.898270, 15.744601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.510548, 15.644018, 15.098186>,  <19.019686, 16.137701, 15.088935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.510548, 15.644018, 15.098186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259129, 15.566936, 15.399593>,  <19.108276, 15.520686, 15.580438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259129, 15.566936, 15.399593>,  <19.510548, 15.644018, 15.098186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259129, 15.566936, 15.399593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206962, -0.892450, -0.400874,
		0.749728, -0.407919, 0.521066,
		-0.628550, -0.192706, 0.753518,
		19.070564, 15.509124, 15.625648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.769402, 15.027359, 15.396770>,  <19.510548, 15.644018, 15.098186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.769402, 15.027359, 15.396770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375149, 15.063424, 15.453897>,  <19.138597, 15.085063, 15.488173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375149, 15.063424, 15.453897>,  <19.769402, 15.027359, 15.396770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375149, 15.063424, 15.453897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151919, -0.842769, -0.516393,
		0.073803, -0.530671, 0.844358,
		-0.985633, 0.090163, 0.142818,
		19.079458, 15.090473, 15.496742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591578, 14.320710, 15.307109>,  <19.769402, 15.027359, 15.396770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.591578, 14.320710, 15.307109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244333, 14.517179, 15.335760>,  <19.035986, 14.635061, 15.352951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244333, 14.517179, 15.335760>,  <19.591578, 14.320710, 15.307109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.244333, 14.517179, 15.335760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473793, -0.776929, -0.414610,
		-0.147996, -0.393864, 0.907176,
		-0.868111, 0.491174, 0.071628,
		18.983900, 14.664532, 15.357248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.159199, 13.968488, 15.631072>,  <19.591578, 14.320710, 15.307109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.159199, 13.968488, 15.631072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934021, 14.205676, 15.400775>,  <18.798914, 14.347989, 15.262597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934021, 14.205676, 15.400775>,  <19.159199, 13.968488, 15.631072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934021, 14.205676, 15.400775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556925, -0.786861, -0.265865,
		-0.610680, 0.170979, 0.773199,
		-0.562943, 0.592972, -0.575743,
		18.765139, 14.383568, 15.228052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037680, 13.232154, 15.839330>,  <19.159199, 13.968488, 15.631072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037680, 13.232154, 15.839330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258915, 13.007586, 16.085550>,  <19.391657, 12.872846, 16.233282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258915, 13.007586, 16.085550>,  <19.037680, 13.232154, 15.839330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.258915, 13.007586, 16.085550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502958, 0.364011, 0.783919,
		-0.664174, -0.743172, -0.081040,
		0.553087, -0.561419, 0.615551,
		19.424841, 12.839161, 16.270216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512140, 12.802429, 16.347517>,  <19.037680, 13.232154, 15.839330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.512140, 12.802429, 16.347517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880444, 12.831588, 16.500824>,  <19.101425, 12.849083, 16.592808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880444, 12.831588, 16.500824>,  <18.512140, 12.802429, 16.347517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880444, 12.831588, 16.500824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375653, 0.430868, 0.820511,
		-0.105326, -0.899466, 0.424108,
		0.920756, 0.072897, 0.383268,
		19.156670, 12.853456, 16.615805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347803, 12.777040, 17.041754>,  <18.512140, 12.802429, 16.347517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347803, 12.777040, 17.041754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726583, 12.904458, 17.058769>,  <18.953852, 12.980909, 17.068979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726583, 12.904458, 17.058769>,  <18.347803, 12.777040, 17.041754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.726583, 12.904458, 17.058769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155297, 0.337680, 0.928361,
		0.281356, -0.885722, 0.369236,
		0.946954, 0.318541, 0.042541,
		19.010670, 13.000022, 17.071531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629644, 12.516658, 17.701859>,  <18.347803, 12.777040, 17.041754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629644, 12.516658, 17.701859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865557, 12.820712, 17.592791>,  <19.007105, 13.003145, 17.527349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865557, 12.820712, 17.592791>,  <18.629644, 12.516658, 17.701859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865557, 12.820712, 17.592791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128326, 0.245140, 0.960957,
		0.797301, -0.601746, 0.047035,
		0.589783, 0.760136, -0.272670,
		19.042492, 13.048753, 17.510990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157574, 12.554655, 18.254061>,  <18.629644, 12.516658, 17.701859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.157574, 12.554655, 18.254061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158152, 12.907209, 18.065104>,  <19.158499, 13.118742, 17.951729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158152, 12.907209, 18.065104>,  <19.157574, 12.554655, 18.254061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158152, 12.907209, 18.065104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108782, 0.469454, 0.876231,
		0.994065, -0.052653, -0.095201,
		0.001444, 0.881386, -0.472395,
		19.158585, 13.171625, 17.923386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.614178, 12.900063, 18.573318>,  <19.157574, 12.554655, 18.254061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.614178, 12.900063, 18.573318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451603, 13.198468, 18.362312>,  <19.354057, 13.377511, 18.235708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451603, 13.198468, 18.362312>,  <19.614178, 12.900063, 18.573318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451603, 13.198468, 18.362312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133765, 0.619717, 0.773342,
		0.903833, 0.243753, -0.351667,
		-0.406439, 0.746013, -0.527515,
		19.329672, 13.422272, 18.204058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981398, 13.458569, 18.739058>,  <19.614178, 12.900063, 18.573318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981398, 13.458569, 18.739058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643932, 13.625546, 18.604021>,  <19.441452, 13.725733, 18.522999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643932, 13.625546, 18.604021>,  <19.981398, 13.458569, 18.739058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.643932, 13.625546, 18.604021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147475, 0.784827, 0.601911,
		0.516217, 0.458025, -0.723694,
		-0.843665, 0.417444, -0.337593,
		19.390833, 13.750779, 18.502743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.055496, 14.244985, 18.510008>,  <19.981398, 13.458569, 18.739058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.055496, 14.244985, 18.510008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.664497, 14.192668, 18.576210>,  <19.429897, 14.161278, 18.615932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.664497, 14.192668, 18.576210>,  <20.055496, 14.244985, 18.510008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664497, 14.192668, 18.576210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001593, 0.779989, 0.625792,
		-0.210941, 0.611973, -0.762229,
		-0.977498, -0.130791, 0.165507,
		19.371248, 14.153431, 18.625862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.778170, 14.870601, 18.315615>,  <20.055496, 14.244985, 18.510008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.778170, 14.870601, 18.315615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557583, 14.668262, 18.580946>,  <19.425230, 14.546860, 18.740145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557583, 14.668262, 18.580946>,  <19.778170, 14.870601, 18.315615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557583, 14.668262, 18.580946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135725, 0.838982, 0.526960,
		-0.823080, 0.200572, -0.531328,
		-0.551469, -0.505845, 0.663327,
		19.392141, 14.516509, 18.779943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265903, 15.326257, 18.515461>,  <19.778170, 14.870601, 18.315615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265903, 15.326257, 18.515461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235945, 15.067030, 18.818619>,  <19.217970, 14.911494, 19.000513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235945, 15.067030, 18.818619>,  <19.265903, 15.326257, 18.515461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235945, 15.067030, 18.818619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306530, 0.738190, 0.600928,
		-0.948910, -0.187311, -0.253939,
		-0.074895, -0.648066, 0.757892,
		19.213476, 14.872610, 19.045986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585716, 15.498107, 18.774784>,  <19.265903, 15.326257, 18.515461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585716, 15.498107, 18.774784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779831, 15.305690, 19.066837>,  <18.896299, 15.190240, 19.242069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779831, 15.305690, 19.066837>,  <18.585716, 15.498107, 18.774784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.779831, 15.305690, 19.066837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254508, 0.721180, 0.644302,
		-0.836494, -0.498496, 0.227550,
		0.485287, -0.481042, 0.730134,
		18.925417, 15.161377, 19.285877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222902, 15.762578, 19.324787>,  <18.585716, 15.498107, 18.774784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222902, 15.762578, 19.324787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535402, 15.596233, 19.510994>,  <18.722902, 15.496427, 19.622719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535402, 15.596233, 19.510994>,  <18.222902, 15.762578, 19.324787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535402, 15.596233, 19.510994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194632, 0.546295, 0.814665,
		-0.593099, -0.727062, 0.345853,
		0.781250, -0.415863, 0.465516,
		18.769777, 15.471475, 19.650648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993193, 15.583045, 19.955891>,  <18.222902, 15.762578, 19.324787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.993193, 15.583045, 19.955891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388592, 15.610029, 20.010027>,  <18.625832, 15.626220, 20.042509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388592, 15.610029, 20.010027>,  <17.993193, 15.583045, 19.955891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388592, 15.610029, 20.010027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151179, 0.419241, 0.895199,
		0.003650, -0.905365, 0.424619,
		0.988500, 0.067461, 0.135342,
		18.685143, 15.630268, 20.050629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.173510, 15.341624, 20.628815>,  <17.993193, 15.583045, 19.955891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.173510, 15.341624, 20.628815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508821, 15.546898, 20.555136>,  <18.710009, 15.670062, 20.510927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508821, 15.546898, 20.555136>,  <18.173510, 15.341624, 20.628815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508821, 15.546898, 20.555136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010321, 0.322834, 0.946399,
		0.545143, -0.795248, 0.265329,
		0.838279, 0.513185, -0.184198,
		18.760305, 15.700853, 20.499876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847168, 14.752621, 20.948055>,  <18.173510, 15.341624, 20.628815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847168, 14.752621, 20.948055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500460, 14.896414, 21.086319>,  <17.292435, 14.982690, 21.169277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500460, 14.896414, 21.086319>,  <17.847168, 14.752621, 20.948055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500460, 14.896414, 21.086319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466958, -0.341673, -0.815604,
		-0.175092, -0.868350, 0.464015,
		-0.866772, 0.359482, 0.345659,
		17.240429, 15.004259, 21.190016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378220, 14.225264, 20.910496>,  <17.847168, 14.752621, 20.948055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378220, 14.225264, 20.910496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.153376, 14.556049, 20.915571>,  <17.018469, 14.754520, 20.918617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.153376, 14.556049, 20.915571>,  <17.378220, 14.225264, 20.910496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153376, 14.556049, 20.915571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642088, -0.426673, -0.636925,
		-0.521301, -0.366170, 0.770821,
		-0.562111, 0.826964, 0.012688,
		16.984743, 14.804138, 20.919378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767626, 13.875331, 21.198763>,  <17.378220, 14.225264, 20.910496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.767626, 13.875331, 21.198763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664440, 14.216066, 21.016411>,  <16.602530, 14.420507, 20.907000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664440, 14.216066, 21.016411>,  <16.767626, 13.875331, 21.198763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.664440, 14.216066, 21.016411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781119, -0.461575, -0.420479,
		-0.568603, 0.247628, 0.784456,
		-0.257962, 0.851839, -0.455879,
		16.587051, 14.471618, 20.879646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.992162, 13.964327, 21.269690>,  <16.767626, 13.875331, 21.198763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.992162, 13.964327, 21.269690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081964, 14.220396, 20.975813>,  <16.135847, 14.374038, 20.799486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081964, 14.220396, 20.975813>,  <15.992162, 13.964327, 21.269690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081964, 14.220396, 20.975813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796199, -0.314183, -0.517065,
		-0.561839, 0.701048, 0.439169,
		0.224508, 0.640173, -0.734694,
		16.149317, 14.412448, 20.755405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.372415, 14.381962, 21.186554>,  <15.992162, 13.964327, 21.269690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.372415, 14.381962, 21.186554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588878, 14.389450, 20.850269>,  <15.718756, 14.393943, 20.648499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588878, 14.389450, 20.850269>,  <15.372415, 14.381962, 21.186554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588878, 14.389450, 20.850269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806864, -0.270075, -0.525385,
		-0.236891, 0.962657, -0.131048,
		0.541158, 0.018722, -0.840712,
		15.751225, 14.395066, 20.598055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947308, 14.713151, 20.590525>,  <15.372415, 14.381962, 21.186554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.947308, 14.713151, 20.590525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.214567, 14.499177, 20.383673>,  <15.374923, 14.370792, 20.259562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.214567, 14.499177, 20.383673>,  <14.947308, 14.713151, 20.590525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214567, 14.499177, 20.383673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729085, -0.332133, -0.598434,
		0.148367, 0.776873, -0.611927,
		0.668149, -0.534935, -0.517129,
		15.415011, 14.338696, 20.228535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727003, 14.818216, 19.892324>,  <14.947308, 14.713151, 20.590525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727003, 14.818216, 19.892324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970418, 14.500808, 19.893322>,  <15.116467, 14.310363, 19.893921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970418, 14.500808, 19.893322>,  <14.727003, 14.818216, 19.892324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970418, 14.500808, 19.893322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654911, -0.504007, -0.563088,
		0.448079, 0.341027, -0.826393,
		0.608537, -0.793522, 0.002492,
		15.152979, 14.262752, 19.894070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.712609, 14.608654, 19.251137>,  <14.727003, 14.818216, 19.892324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.712609, 14.608654, 19.251137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845060, 14.269005, 19.415743>,  <14.924531, 14.065215, 19.514507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845060, 14.269005, 19.415743>,  <14.712609, 14.608654, 19.251137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.845060, 14.269005, 19.415743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638835, -0.522704, -0.564509,
		0.694439, -0.075967, -0.715531,
		0.331127, -0.849123, 0.411516,
		14.944399, 14.014268, 19.539198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848205, 14.095416, 18.630705>,  <14.712609, 14.608654, 19.251137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848205, 14.095416, 18.630705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797922, 13.876461, 18.961658>,  <14.767753, 13.745088, 19.160231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797922, 13.876461, 18.961658>,  <14.848205, 14.095416, 18.630705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.797922, 13.876461, 18.961658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506914, -0.681466, -0.527866,
		0.852782, -0.485768, -0.191814,
		-0.125705, -0.547388, 0.827384,
		14.760210, 13.712245, 19.209873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933334, 13.464744, 18.338762>,  <14.848205, 14.095416, 18.630705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.933334, 13.464744, 18.338762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769827, 13.429185, 18.702082>,  <14.671722, 13.407849, 18.920073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769827, 13.429185, 18.702082>,  <14.933334, 13.464744, 18.338762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769827, 13.429185, 18.702082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484044, -0.822611, -0.298349,
		0.773699, -0.561612, 0.293227,
		-0.408768, -0.088898, 0.908299,
		14.647197, 13.402515, 18.974571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086276, 12.825371, 18.524237>,  <14.933334, 13.464744, 18.338762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086276, 12.825371, 18.524237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774549, 12.907923, 18.760904>,  <14.587513, 12.957454, 18.902905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774549, 12.907923, 18.760904>,  <15.086276, 12.825371, 18.524237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774549, 12.907923, 18.760904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341791, -0.931384, -0.125313,
		0.525209, -0.299886, 0.796382,
		-0.779317, 0.206380, 0.591669,
		14.540754, 12.969837, 18.938404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972433, 12.288798, 18.938309>,  <15.086276, 12.825371, 18.524237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972433, 12.288798, 18.938309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.620399, 12.477920, 18.955770>,  <14.409178, 12.591393, 18.966248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.620399, 12.477920, 18.955770>,  <14.972433, 12.288798, 18.938309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620399, 12.477920, 18.955770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473181, -0.865724, -0.163160,
		-0.039348, -0.164252, 0.985633,
		-0.880086, 0.472803, 0.043656,
		14.356373, 12.619761, 18.968868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<19.016254, 17.224550, 26.203257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.138010, 16.859940, 26.313866>,  <19.211063, 16.641172, 26.380232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.138010, 16.859940, 26.313866>,  <19.016254, 17.224550, 26.203257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138010, 16.859940, 26.313866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464930, -0.395542, -0.792077,
		0.831377, 0.112535, -0.544195,
		0.304389, -0.911527, 0.276524,
		19.229326, 16.586481, 26.396822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502438, 17.083458, 25.711864>,  <19.016254, 17.224550, 26.203257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502438, 17.083458, 25.711864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.330269, 16.753811, 25.859140>,  <19.226967, 16.556023, 25.947506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.330269, 16.753811, 25.859140>,  <19.502438, 17.083458, 25.711864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330269, 16.753811, 25.859140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385144, -0.201230, -0.900650,
		0.816334, -0.529465, -0.230791,
		-0.430421, -0.824120, 0.368191,
		19.201143, 16.506575, 25.969597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575441, 16.637806, 25.121050>,  <19.502438, 17.083458, 25.711864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575441, 16.637806, 25.121050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.328815, 16.438925, 25.365225>,  <19.180840, 16.319595, 25.511730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.328815, 16.438925, 25.365225>,  <19.575441, 16.637806, 25.121050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.328815, 16.438925, 25.365225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444683, -0.419905, -0.791162,
		0.649695, -0.759254, 0.037801,
		-0.616566, -0.497205, 0.610438,
		19.143847, 16.289762, 25.548357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761614, 15.929776, 25.027136>,  <19.575441, 16.637806, 25.121050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761614, 15.929776, 25.027136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.392014, 15.970669, 25.174526>,  <19.170254, 15.995205, 25.262960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.392014, 15.970669, 25.174526>,  <19.761614, 15.929776, 25.027136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392014, 15.970669, 25.174526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370595, -0.476923, -0.796997,
		0.094256, -0.872980, 0.478563,
		-0.924000, 0.102231, 0.368475,
		19.114813, 16.001339, 25.285069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417965, 15.317070, 24.802702>,  <19.761614, 15.929776, 25.027136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417965, 15.317070, 24.802702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097942, 15.542323, 24.885448>,  <18.905930, 15.677475, 24.935097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097942, 15.542323, 24.885448>,  <19.417965, 15.317070, 24.802702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.097942, 15.542323, 24.885448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462677, -0.359680, -0.810284,
		-0.381895, -0.743982, 0.548313,
		-0.800054, 0.563135, 0.206863,
		18.857925, 15.711263, 24.947508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853090, 14.879740, 24.707321>,  <19.417965, 15.317070, 24.802702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853090, 14.879740, 24.707321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.691832, 15.243387, 24.665415>,  <18.595076, 15.461576, 24.640270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.691832, 15.243387, 24.665415>,  <18.853090, 14.879740, 24.707321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691832, 15.243387, 24.665415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561981, -0.336298, -0.755699,
		-0.722252, -0.245782, 0.646485,
		-0.403149, 0.909118, -0.104768,
		18.570887, 15.516123, 24.633986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112051, 14.838759, 24.600660>,  <18.853090, 14.879740, 24.707321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112051, 14.838759, 24.600660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.209129, 15.201090, 24.461763>,  <18.267376, 15.418489, 24.378426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.209129, 15.201090, 24.461763>,  <18.112051, 14.838759, 24.600660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209129, 15.201090, 24.461763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702155, -0.082962, -0.707175,
		-0.669386, 0.415445, 0.615896,
		0.242696, 0.905827, -0.347241,
		18.281939, 15.472838, 24.357592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451904, 14.977181, 24.334059>,  <18.112051, 14.838759, 24.600660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451904, 14.977181, 24.334059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713703, 15.221588, 24.155939>,  <17.870783, 15.368233, 24.049068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713703, 15.221588, 24.155939>,  <17.451904, 14.977181, 24.334059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713703, 15.221588, 24.155939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574660, 0.019292, -0.818165,
		-0.491322, 0.791382, 0.363754,
		0.654498, 0.611017, -0.445297,
		17.910053, 15.404893, 24.022350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083735, 15.625617, 24.065376>,  <17.451904, 14.977181, 24.334059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083735, 15.625617, 24.065376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.418991, 15.585038, 23.851002>,  <17.620146, 15.560691, 23.722378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.418991, 15.585038, 23.851002>,  <17.083735, 15.625617, 24.065376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.418991, 15.585038, 23.851002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496861, 0.263394, -0.826893,
		0.225048, 0.959339, 0.170356,
		0.838142, -0.101448, -0.535935,
		17.670433, 15.554604, 23.690222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046917, 16.017382, 23.448326>,  <17.083735, 15.625617, 24.065376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046917, 16.017382, 23.448326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.352261, 15.787741, 23.329880>,  <17.535467, 15.649956, 23.258812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.352261, 15.787741, 23.329880>,  <17.046917, 16.017382, 23.448326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352261, 15.787741, 23.329880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341993, 0.029716, -0.939233,
		0.548016, 0.818244, -0.173655,
		0.763361, -0.574103, -0.296118,
		17.581268, 15.615510, 23.241045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048029, 16.181677, 22.813772>,  <17.046917, 16.017382, 23.448326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048029, 16.181677, 22.813772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.284389, 15.859339, 22.798550>,  <17.426207, 15.665936, 22.789417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.284389, 15.859339, 22.798550>,  <17.048029, 16.181677, 22.813772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.284389, 15.859339, 22.798550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391879, -0.245483, -0.886661,
		0.705169, 0.538844, -0.460850,
		0.590903, -0.805844, -0.038055,
		17.461660, 15.617585, 22.787134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439301, 16.270357, 22.239042>,  <17.048029, 16.181677, 22.813772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439301, 16.270357, 22.239042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.421074, 15.878007, 22.314734>,  <17.410137, 15.642597, 22.360147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.421074, 15.878007, 22.314734>,  <17.439301, 16.270357, 22.239042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421074, 15.878007, 22.314734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424027, -0.152519, -0.892715,
		0.904503, -0.120917, -0.408967,
		-0.045569, -0.980876, 0.189226,
		17.407404, 15.583744, 22.371502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688332, 16.011034, 21.646139>,  <17.439301, 16.270357, 22.239042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688332, 16.011034, 21.646139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.507906, 15.702586, 21.825880>,  <17.399651, 15.517518, 21.933723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.507906, 15.702586, 21.825880>,  <17.688332, 16.011034, 21.646139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507906, 15.702586, 21.825880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472633, -0.220700, -0.853176,
		0.757072, -0.597216, -0.264906,
		-0.451066, -0.771119, 0.449350,
		17.372585, 15.471251, 21.960686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968239, 15.440082, 21.298878>,  <17.688332, 16.011034, 21.646139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968239, 15.440082, 21.298878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.610514, 15.351123, 21.454182>,  <17.395878, 15.297748, 21.547363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.610514, 15.351123, 21.454182>,  <17.968239, 15.440082, 21.298878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.610514, 15.351123, 21.454182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345216, -0.209090, -0.914936,
		0.284660, -0.952271, 0.110216,
		-0.894312, -0.222397, 0.388259,
		17.342220, 15.284404, 21.570660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.756975, 15.361550, 21.384697>,  <17.968239, 15.440082, 21.298878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.756975, 15.361550, 21.384697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.834929, 15.658394, 21.128168>,  <18.881701, 15.836500, 20.974251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.834929, 15.658394, 21.128168>,  <18.756975, 15.361550, 21.384697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834929, 15.658394, 21.128168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224327, 0.602806, 0.765704,
		0.954829, -0.293087, -0.048999,
		0.194881, 0.742108, -0.641324,
		18.893393, 15.881026, 20.935770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415365, 15.626290, 21.521936>,  <18.756975, 15.361550, 21.384697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415365, 15.626290, 21.521936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276999, 15.928791, 21.299793>,  <19.193979, 16.110291, 21.166508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276999, 15.928791, 21.299793>,  <19.415365, 15.626290, 21.521936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276999, 15.928791, 21.299793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259969, 0.645979, 0.717724,
		0.901531, 0.103897, -0.420057,
		-0.345917, 0.756252, -0.555360,
		19.173223, 16.155666, 21.133184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941957, 16.047619, 21.351643>,  <19.415365, 15.626290, 21.521936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941957, 16.047619, 21.351643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.610355, 16.267500, 21.310511>,  <19.411394, 16.399429, 21.285831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.610355, 16.267500, 21.310511>,  <19.941957, 16.047619, 21.351643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610355, 16.267500, 21.310511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311797, 0.606968, 0.731008,
		0.464253, 0.573948, -0.674576,
		-0.829007, 0.549703, -0.102831,
		19.361654, 16.432411, 21.279661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.184523, 16.665546, 21.293905>,  <19.941957, 16.047619, 21.351643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.184523, 16.665546, 21.293905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.808445, 16.758581, 21.393452>,  <19.582798, 16.814402, 21.453180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.808445, 16.758581, 21.393452>,  <20.184523, 16.665546, 21.293905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808445, 16.758581, 21.393452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340620, 0.635501, 0.692904,
		0.003004, 0.736235, -0.676719,
		-0.940196, 0.232585, 0.248867,
		19.526386, 16.828358, 21.468111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264812, 17.430050, 21.520277>,  <20.184523, 16.665546, 21.293905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264812, 17.430050, 21.520277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.901707, 17.319952, 21.646898>,  <19.683844, 17.253893, 21.722872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.901707, 17.319952, 21.646898>,  <20.264812, 17.430050, 21.520277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.901707, 17.319952, 21.646898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078657, 0.629558, 0.772961,
		-0.412043, 0.726565, -0.549840,
		-0.907763, -0.275245, 0.316555,
		19.629377, 17.237379, 21.741865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809055, 18.058462, 21.539038>,  <20.264812, 17.430050, 21.520277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.809055, 18.058462, 21.539038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.717047, 17.771509, 21.802082>,  <19.661840, 17.599339, 21.959909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.717047, 17.771509, 21.802082>,  <19.809055, 18.058462, 21.539038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717047, 17.771509, 21.802082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063176, 0.663300, 0.745682,
		-0.971133, 0.213069, -0.107253,
		-0.230022, -0.717380, 0.657613,
		19.648041, 17.556295, 21.999367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557432, 18.505096, 21.983675>,  <19.809055, 18.058462, 21.539038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.557432, 18.505096, 21.983675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.589642, 18.166458, 22.194118>,  <19.608967, 17.963274, 22.320385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.589642, 18.166458, 22.194118>,  <19.557432, 18.505096, 21.983675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589642, 18.166458, 22.194118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146067, 0.532147, 0.833957,
		-0.985992, 0.009694, 0.166510,
		0.080524, -0.846596, 0.526108,
		19.613798, 17.912479, 22.351952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097023, 18.523167, 22.596878>,  <19.557432, 18.505096, 21.983675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097023, 18.523167, 22.596878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.373837, 18.244526, 22.672600>,  <19.539925, 18.077341, 22.718033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.373837, 18.244526, 22.672600>,  <19.097023, 18.523167, 22.596878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373837, 18.244526, 22.672600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122923, 0.372131, 0.920005,
		-0.711324, -0.613403, 0.343155,
		0.692032, -0.696603, 0.189304,
		19.581446, 18.035545, 22.729391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.938250, 18.145794, 23.211967>,  <19.097023, 18.523167, 22.596878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.938250, 18.145794, 23.211967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.333429, 18.086317, 23.194796>,  <19.570538, 18.050631, 23.184492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.333429, 18.086317, 23.194796>,  <18.938250, 18.145794, 23.211967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333429, 18.086317, 23.194796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099003, 0.393991, 0.913767,
		-0.118955, -0.907007, 0.403965,
		0.987952, -0.148691, -0.042929,
		19.629814, 18.041710, 23.181917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.188093, 17.925051, 23.896523>,  <18.938250, 18.145794, 23.211967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.188093, 17.925051, 23.896523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.511263, 18.077822, 23.717018>,  <19.705166, 18.169485, 23.609316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.511263, 18.077822, 23.717018>,  <19.188093, 17.925051, 23.896523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511263, 18.077822, 23.717018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273424, 0.431636, 0.859610,
		0.522014, -0.817202, 0.244300,
		0.807924, 0.381931, -0.448762,
		19.753641, 18.192400, 23.582390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668421, 18.081623, 24.398205>,  <19.188093, 17.925051, 23.896523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.668421, 18.081623, 24.398205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.836737, 18.302629, 24.110411>,  <19.937727, 18.435234, 23.937735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.836737, 18.302629, 24.110411>,  <19.668421, 18.081623, 24.398205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.836737, 18.302629, 24.110411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483604, 0.534397, 0.693215,
		0.767505, -0.639644, -0.042331,
		0.420790, 0.552518, -0.719486,
		19.962975, 18.468384, 23.894566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438814, 17.973068, 24.416492>,  <19.668421, 18.081623, 24.398205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438814, 17.973068, 24.416492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.294647, 18.323576, 24.288584>,  <20.208147, 18.533880, 24.211838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.294647, 18.323576, 24.288584>,  <20.438814, 17.973068, 24.416492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294647, 18.323576, 24.288584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432235, 0.460676, 0.775210,
		0.826604, 0.141180, -0.544788,
		-0.360415, 0.876268, -0.319773,
		20.186523, 18.586456, 24.192652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966223, 18.411575, 24.537565>,  <20.438814, 17.973068, 24.416492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966223, 18.411575, 24.537565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.644049, 18.645315, 24.497940>,  <20.450745, 18.785559, 24.474165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.644049, 18.645315, 24.497940>,  <20.966223, 18.411575, 24.537565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644049, 18.645315, 24.497940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321912, 0.571651, 0.754710,
		0.497644, 0.575979, -0.648536,
		-0.805434, 0.584348, -0.099064,
		20.402418, 18.820620, 24.468222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262960, 19.063776, 24.502726>,  <20.966223, 18.411575, 24.537565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262960, 19.063776, 24.502726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.872580, 19.105907, 24.579063>,  <20.638351, 19.131187, 24.624866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.872580, 19.105907, 24.579063>,  <21.262960, 19.063776, 24.502726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872580, 19.105907, 24.579063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210299, 0.685358, 0.697179,
		-0.057364, 0.720549, -0.691028,
		-0.975953, 0.105330, 0.190845,
		20.579794, 19.137506, 24.636316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.435023, 21.757498, 23.563122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.627932, 21.412807, 23.626169>,  <15.743677, 21.205994, 23.663998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.627932, 21.412807, 23.626169>,  <15.435023, 21.757498, 23.563122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.627932, 21.412807, 23.626169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174668, -0.270903, -0.946627,
		0.858432, 0.429000, -0.281165,
		0.482272, -0.861725, 0.157619,
		15.772614, 21.154289, 23.673454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922138, 21.657415, 23.080097>,  <15.435023, 21.757498, 23.563122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922138, 21.657415, 23.080097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.888984, 21.283047, 23.217024>,  <15.869091, 21.058426, 23.299179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.888984, 21.283047, 23.217024>,  <15.922138, 21.657415, 23.080097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888984, 21.283047, 23.217024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229315, -0.316368, -0.920503,
		0.969817, -0.154796, -0.188398,
		-0.082887, -0.935922, 0.342316,
		15.864118, 21.002270, 23.319719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240286, 21.223555, 22.559465>,  <15.922138, 21.657415, 23.080097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240286, 21.223555, 22.559465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.006315, 20.980167, 22.773991>,  <15.865933, 20.834135, 22.902706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.006315, 20.980167, 22.773991>,  <16.240286, 21.223555, 22.559465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006315, 20.980167, 22.773991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338723, -0.417553, -0.843159,
		0.736973, -0.674846, 0.038136,
		-0.584926, -0.608468, 0.536311,
		15.830837, 20.797626, 22.934883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393797, 20.446020, 22.452457>,  <16.240286, 21.223555, 22.559465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.393797, 20.446020, 22.452457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.010921, 20.486012, 22.561117>,  <15.781196, 20.510006, 22.626312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.010921, 20.486012, 22.561117>,  <16.393797, 20.446020, 22.452457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010921, 20.486012, 22.561117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285403, -0.482575, -0.828050,
		0.048302, -0.870129, 0.490451,
		-0.957190, 0.099980, 0.271647,
		15.723764, 20.516005, 22.642611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.151041, 19.696827, 22.455978>,  <16.393797, 20.446020, 22.452457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.151041, 19.696827, 22.455978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.828382, 19.932528, 22.437630>,  <15.634787, 20.073948, 22.426620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.828382, 19.932528, 22.437630>,  <16.151041, 19.696827, 22.455978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828382, 19.932528, 22.437630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284778, -0.455504, -0.843456,
		-0.517903, -0.667307, 0.535236,
		-0.806646, 0.589251, -0.045873,
		15.586388, 20.109303, 22.423868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648191, 19.279985, 22.427610>,  <16.151041, 19.696827, 22.455978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648191, 19.279985, 22.427610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.523101, 19.626116, 22.270941>,  <15.448047, 19.833794, 22.176939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.523101, 19.626116, 22.270941>,  <15.648191, 19.279985, 22.427610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523101, 19.626116, 22.270941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279515, -0.477938, -0.832734,
		-0.907785, -0.150940, 0.391336,
		-0.312727, 0.865328, -0.391675,
		15.429282, 19.885714, 22.153439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003075, 19.085150, 22.195942>,  <15.648191, 19.279985, 22.427610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.003075, 19.085150, 22.195942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.098312, 19.426630, 22.010683>,  <15.155455, 19.631519, 21.899529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.098312, 19.426630, 22.010683>,  <15.003075, 19.085150, 22.195942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.098312, 19.426630, 22.010683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352006, -0.368589, -0.860368,
		-0.905209, 0.367879, 0.212749,
		0.238095, 0.853702, -0.463146,
		15.169741, 19.682741, 21.871738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373240, 19.212799, 21.827192>,  <15.003075, 19.085150, 22.195942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373240, 19.212799, 21.827192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.674457, 19.418577, 21.663109>,  <14.855186, 19.542044, 21.564659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.674457, 19.418577, 21.663109>,  <14.373240, 19.212799, 21.827192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674457, 19.418577, 21.663109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267636, -0.330050, -0.905228,
		-0.601082, 0.791462, -0.110857,
		0.753042, 0.514447, -0.410210,
		14.900369, 19.572912, 21.540045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.007442, 19.592281, 21.370827>,  <14.373240, 19.212799, 21.827192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.007442, 19.592281, 21.370827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.395128, 19.587906, 21.272438>,  <14.627740, 19.585279, 21.213406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.395128, 19.587906, 21.272438>,  <14.007442, 19.592281, 21.370827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.395128, 19.587906, 21.272438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229455, -0.402419, -0.886233,
		-0.089288, 0.915390, -0.392541,
		0.969215, -0.010940, -0.245972,
		14.685893, 19.584623, 21.198647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.013291, 19.737303, 20.689882>,  <14.007442, 19.592281, 21.370827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.013291, 19.737303, 20.689882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.380316, 19.582018, 20.724234>,  <14.600531, 19.488848, 20.744844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.380316, 19.582018, 20.724234>,  <14.013291, 19.737303, 20.689882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.380316, 19.582018, 20.724234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184665, -0.607388, -0.772644,
		0.352110, 0.693089, -0.629004,
		0.917561, -0.388210, 0.085878,
		14.655584, 19.465555, 20.749996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.310032, 19.691820, 20.003286>,  <14.013291, 19.737303, 20.689882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.310032, 19.691820, 20.003286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.497635, 19.414515, 20.222160>,  <14.610197, 19.248131, 20.353485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.497635, 19.414515, 20.222160>,  <14.310032, 19.691820, 20.003286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497635, 19.414515, 20.222160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017621, -0.612086, -0.790594,
		0.883018, 0.380437, -0.274857,
		0.469008, -0.693266, 0.547187,
		14.638337, 19.206535, 20.386316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.812808, 19.348257, 19.449770>,  <14.310032, 19.691820, 20.003286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.812808, 19.348257, 19.449770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.798586, 19.105774, 19.767574>,  <14.790052, 18.960283, 19.958258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.798586, 19.105774, 19.767574>,  <14.812808, 19.348257, 19.449770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798586, 19.105774, 19.767574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086804, -0.790136, -0.606754,
		0.995591, -0.090539, -0.024528,
		-0.035555, -0.606208, 0.794511,
		14.787919, 18.923912, 20.005928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346884, 18.804935, 19.377834>,  <14.812808, 19.348257, 19.449770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346884, 18.804935, 19.377834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.071480, 18.626053, 19.606205>,  <14.906238, 18.518724, 19.743227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.071480, 18.626053, 19.606205>,  <15.346884, 18.804935, 19.377834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.071480, 18.626053, 19.606205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029762, -0.804003, -0.593880,
		0.724615, -0.391901, 0.566875,
		-0.688511, -0.447206, 0.570929,
		14.864926, 18.491892, 19.777483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525782, 18.051247, 19.465273>,  <15.346884, 18.804935, 19.377834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525782, 18.051247, 19.465273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.137343, 18.074482, 19.557877>,  <14.904281, 18.088423, 19.613440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.137343, 18.074482, 19.557877>,  <15.525782, 18.051247, 19.465273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137343, 18.074482, 19.557877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196130, -0.746977, -0.635262,
		0.136031, -0.662307, 0.736780,
		-0.971096, 0.058089, 0.231511,
		14.846014, 18.091909, 19.627329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012613, 17.534430, 19.544752>,  <15.525782, 18.051247, 19.465273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012613, 17.534430, 19.544752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.181120, 17.739538, 19.245527>,  <16.282225, 17.862602, 19.065992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.181120, 17.739538, 19.245527>,  <16.012613, 17.534430, 19.544752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181120, 17.739538, 19.245527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448173, 0.599379, 0.663239,
		0.788463, -0.614663, 0.022689,
		0.421268, 0.512770, -0.748064,
		16.307501, 17.893370, 19.021109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748566, 17.590549, 19.685207>,  <16.012613, 17.534430, 19.544752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748566, 17.590549, 19.685207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.684738, 17.913643, 19.458191>,  <16.646442, 18.107498, 19.321981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.684738, 17.913643, 19.458191>,  <16.748566, 17.590549, 19.685207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684738, 17.913643, 19.458191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549160, 0.550374, 0.628897,
		0.820342, -0.211319, -0.531398,
		-0.159569, 0.807733, -0.567543,
		16.636868, 18.155962, 19.287928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393229, 17.783064, 19.619610>,  <16.748566, 17.590549, 19.685207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393229, 17.783064, 19.619610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.160059, 18.100363, 19.549229>,  <17.020157, 18.290741, 19.507000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.160059, 18.100363, 19.549229>,  <17.393229, 17.783064, 19.619610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160059, 18.100363, 19.549229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595699, 0.564498, 0.571388,
		0.552576, 0.228262, -0.801596,
		-0.582926, 0.793246, -0.175952,
		16.985182, 18.338337, 19.496443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.829231, 18.273529, 19.702694>,  <17.393229, 17.783064, 19.619610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.829231, 18.273529, 19.702694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.487200, 18.480124, 19.720963>,  <17.281981, 18.604080, 19.731924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.487200, 18.480124, 19.720963>,  <17.829231, 18.273529, 19.702694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487200, 18.480124, 19.720963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427365, 0.652164, 0.626133,
		0.293603, 0.554911, -0.778378,
		-0.855077, 0.516485, 0.045672,
		17.230677, 18.635069, 19.734665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059599, 18.916670, 19.623865>,  <17.829231, 18.273529, 19.702694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059599, 18.916670, 19.623865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.697563, 18.951847, 19.790274>,  <17.480341, 18.972954, 19.890120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.697563, 18.951847, 19.790274>,  <18.059599, 18.916670, 19.623865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697563, 18.951847, 19.790274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324838, 0.774343, 0.543023,
		-0.274390, 0.626625, -0.729418,
		-0.905091, 0.087943, 0.416023,
		17.426035, 18.978230, 19.915081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.782568, 19.567682, 19.481661>,  <18.059599, 18.916670, 19.623865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.782568, 19.567682, 19.481661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.592646, 19.444637, 19.811493>,  <17.478693, 19.370810, 20.009392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.592646, 19.444637, 19.811493>,  <17.782568, 19.567682, 19.481661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592646, 19.444637, 19.811493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346132, 0.796155, 0.496317,
		-0.809167, 0.521068, -0.271545,
		-0.474806, -0.307613, 0.824581,
		17.450203, 19.352354, 20.058867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.390699, 20.149729, 19.609907>,  <17.782568, 19.567682, 19.481661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.390699, 20.149729, 19.609907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.443186, 19.924843, 19.936514>,  <17.474678, 19.789911, 20.132477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.443186, 19.924843, 19.936514>,  <17.390699, 20.149729, 19.609907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443186, 19.924843, 19.936514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185260, 0.823034, 0.536931,
		-0.973890, 0.080814, 0.212151,
		0.131216, -0.562214, 0.816515,
		17.482552, 19.756178, 20.181469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035868, 20.484087, 20.022518>,  <17.390699, 20.149729, 19.609907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035868, 20.484087, 20.022518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.255774, 20.251743, 20.262638>,  <17.387716, 20.112337, 20.406710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.255774, 20.251743, 20.262638>,  <17.035868, 20.484087, 20.022518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255774, 20.251743, 20.262638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121168, 0.766501, 0.630709,
		-0.826486, -0.274003, 0.491776,
		0.549763, -0.580860, 0.600302,
		17.420702, 20.077486, 20.442728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.814779, 20.656031, 20.678801>,  <17.035868, 20.484087, 20.022518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.814779, 20.656031, 20.678801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.151957, 20.454266, 20.753647>,  <17.354263, 20.333206, 20.798555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.151957, 20.454266, 20.753647>,  <16.814779, 20.656031, 20.678801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151957, 20.454266, 20.753647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152400, 0.557431, 0.816116,
		-0.515963, -0.659424, 0.546756,
		0.842945, -0.504412, 0.187117,
		17.404840, 20.302942, 20.809782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807787, 20.435019, 21.420132>,  <16.814779, 20.656031, 20.678801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807787, 20.435019, 21.420132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.181396, 20.458776, 21.279238>,  <17.405561, 20.473030, 21.194700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.181396, 20.458776, 21.279238>,  <16.807787, 20.435019, 21.420132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181396, 20.458776, 21.279238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306107, 0.375155, 0.874961,
		0.184109, -0.925057, 0.332224,
		0.934025, 0.059392, -0.352237,
		17.461603, 20.476595, 21.173567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231642, 20.174473, 21.983511>,  <16.807787, 20.435019, 21.420132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.231642, 20.174473, 21.983511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.474449, 20.393034, 21.752695>,  <17.620132, 20.524170, 21.614204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.474449, 20.393034, 21.752695>,  <17.231642, 20.174473, 21.983511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.474449, 20.393034, 21.752695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446792, 0.365843, 0.816417,
		0.657198, -0.753396, -0.022055,
		0.607016, 0.546401, -0.577042,
		17.656553, 20.556953, 21.579582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949295, 20.065361, 22.135851>,  <17.231642, 20.174473, 21.983511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.949295, 20.065361, 22.135851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.927786, 20.426382, 21.964968>,  <17.914881, 20.642994, 21.862438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.927786, 20.426382, 21.964968>,  <17.949295, 20.065361, 22.135851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927786, 20.426382, 21.964968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467571, 0.400786, 0.787876,
		0.882319, -0.157384, -0.443558,
		-0.053773, 0.902552, -0.427209,
		17.911654, 20.697147, 21.836805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629414, 20.307989, 22.358427>,  <17.949295, 20.065361, 22.135851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629414, 20.307989, 22.358427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.390791, 20.620287, 22.284063>,  <18.247618, 20.807665, 22.239445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.390791, 20.620287, 22.284063>,  <18.629414, 20.307989, 22.358427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.390791, 20.620287, 22.284063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385676, 0.482021, 0.786708,
		0.703829, 0.397615, -0.588666,
		-0.596556, 0.780742, -0.185910,
		18.211824, 20.854509, 22.228291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104406, 20.864325, 22.446493>,  <18.629414, 20.307989, 22.358427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104406, 20.864325, 22.446493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.739767, 21.028606, 22.453508>,  <18.520983, 21.127176, 22.457718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.739767, 21.028606, 22.453508>,  <19.104406, 20.864325, 22.446493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.739767, 21.028606, 22.453508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247026, 0.513194, 0.821955,
		0.328579, 0.753627, -0.569282,
		-0.911600, 0.410705, 0.017540,
		18.466288, 21.151817, 22.458771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461952, 21.059484, 21.944407>,  <19.104406, 20.864325, 22.446493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461952, 21.059484, 21.944407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.833460, 21.193384, 22.008072>,  <20.056364, 21.273724, 22.046270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.833460, 21.193384, 22.008072>,  <19.461952, 21.059484, 21.944407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.833460, 21.193384, 22.008072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326679, -0.536367, -0.778198,
		-0.175133, 0.774760, -0.607516,
		0.928768, 0.334751, 0.159162,
		20.112091, 21.293810, 22.055820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.747908, 21.203375, 21.199638>,  <19.461952, 21.059484, 21.944407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.747908, 21.203375, 21.199638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.067459, 21.163027, 21.436827>,  <20.259190, 21.138817, 21.579140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.067459, 21.163027, 21.436827>,  <19.747908, 21.203375, 21.199638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067459, 21.163027, 21.436827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383521, -0.674015, -0.631359,
		0.463358, 0.731798, -0.499771,
		0.798881, -0.100872, 0.592970,
		20.307123, 21.132765, 21.614717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290066, 21.316095, 20.819742>,  <19.747908, 21.203375, 21.199638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.290066, 21.316095, 20.819742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.439617, 21.098497, 21.120218>,  <20.529348, 20.967939, 21.300503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.439617, 21.098497, 21.120218>,  <20.290066, 21.316095, 20.819742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439617, 21.098497, 21.120218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377248, -0.650706, -0.658989,
		0.847289, 0.529766, -0.038064,
		0.373878, -0.543994, 0.751189,
		20.551781, 20.935299, 21.345575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984081, 21.109032, 20.541918>,  <20.290066, 21.316095, 20.819742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984081, 21.109032, 20.541918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.896130, 20.865913, 20.847136>,  <20.843359, 20.720041, 21.030266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.896130, 20.865913, 20.847136>,  <20.984081, 21.109032, 20.541918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.896130, 20.865913, 20.847136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428302, -0.762913, -0.484273,
		0.876476, 0.220332, 0.428069,
		-0.219879, -0.607797, 0.763044,
		20.830166, 20.683575, 21.076048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.575766, 20.793137, 20.695824>,  <20.984081, 21.109032, 20.541918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.575766, 20.793137, 20.695824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.335485, 20.531403, 20.879566>,  <21.191319, 20.374363, 20.989813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.335485, 20.531403, 20.879566>,  <21.575766, 20.793137, 20.695824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335485, 20.531403, 20.879566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406475, -0.744733, -0.529293,
		0.688433, -0.131228, 0.713330,
		-0.600698, -0.654333, 0.459358,
		21.155275, 20.335102, 21.017374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891256, 20.240044, 21.022799>,  <21.575766, 20.793137, 20.695824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891256, 20.240044, 21.022799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.530365, 20.086786, 20.943613>,  <21.313831, 19.994833, 20.896101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.530365, 20.086786, 20.943613>,  <21.891256, 20.240044, 21.022799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530365, 20.086786, 20.943613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428296, -0.742285, -0.515340,
		0.050502, -0.549741, 0.833807,
		-0.902226, -0.383142, -0.197965,
		21.259697, 19.971844, 20.884224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.068739, 19.442871, 20.987232>,  <21.891256, 20.240044, 21.022799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.068739, 19.442871, 20.987232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.719231, 19.542467, 20.820127>,  <21.509525, 19.602224, 20.719864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.719231, 19.542467, 20.820127>,  <22.068739, 19.442871, 20.987232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719231, 19.542467, 20.820127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139718, -0.694273, -0.706020,
		-0.465835, -0.675269, 0.571847,
		-0.873772, 0.248991, -0.417764,
		21.457100, 19.617165, 20.694798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689486, 18.833296, 21.028606>,  <22.068739, 19.442871, 20.987232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689486, 18.833296, 21.028606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.553247, 19.045242, 20.717934>,  <21.471504, 19.172411, 20.531530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.553247, 19.045242, 20.717934>,  <21.689486, 18.833296, 21.028606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553247, 19.045242, 20.717934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032643, -0.832240, -0.553454,
		-0.939644, -0.163150, 0.300752,
		-0.340594, 0.529866, -0.776684,
		21.451069, 19.204203, 20.484928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002151, 18.852329, 20.827713>,  <21.689486, 18.833296, 21.028606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002151, 18.852329, 20.827713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.215391, 18.920248, 20.496178>,  <21.343336, 18.960999, 20.297256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.215391, 18.920248, 20.496178>,  <21.002151, 18.852329, 20.827713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215391, 18.920248, 20.496178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508142, -0.719020, -0.474132,
		-0.676458, 0.673928, -0.297029,
		0.533101, 0.169797, -0.828838,
		21.375320, 18.971188, 20.247526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571981, 18.622417, 20.385548>,  <21.002151, 18.852329, 20.827713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571981, 18.622417, 20.385548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.874374, 18.673634, 20.128769>,  <21.055811, 18.704363, 19.974701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.874374, 18.673634, 20.128769>,  <20.571981, 18.622417, 20.385548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874374, 18.673634, 20.128769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421357, -0.655313, -0.626915,
		-0.500947, 0.744426, -0.441454,
		0.755983, 0.128041, -0.641946,
		21.101170, 18.712046, 19.936186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.210693, 18.851511, 19.705732>,  <20.571981, 18.622417, 20.385548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.210693, 18.851511, 19.705732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.574259, 18.700451, 19.635010>,  <20.792398, 18.609816, 19.592577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.574259, 18.700451, 19.635010>,  <20.210693, 18.851511, 19.705732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.574259, 18.700451, 19.635010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385710, -0.600305, -0.700615,
		0.158449, 0.704994, -0.691287,
		0.908912, -0.377648, -0.176805,
		20.846933, 18.587156, 19.581968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257620, 19.026966, 19.025032>,  <20.210693, 18.851511, 19.705732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257620, 19.026966, 19.025032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.526796, 18.742159, 19.105207>,  <20.688303, 18.571274, 19.153313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.526796, 18.742159, 19.105207>,  <20.257620, 19.026966, 19.025032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526796, 18.742159, 19.105207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202218, -0.437741, -0.876066,
		0.711516, 0.549010, -0.438558,
		0.672943, -0.712019, 0.200440,
		20.728680, 18.528553, 19.165340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.756636, 18.989971, 18.413765>,  <20.257620, 19.026966, 19.025032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.756636, 18.989971, 18.413765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.822306, 18.640060, 18.596111>,  <20.861708, 18.430115, 18.705519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.822306, 18.640060, 18.596111>,  <20.756636, 18.989971, 18.413765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822306, 18.640060, 18.596111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065046, -0.470731, -0.879876,
		0.984285, 0.114800, -0.134182,
		0.164174, -0.874776, 0.455866,
		20.871557, 18.377628, 18.732872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.246044, 18.684998, 17.979897>,  <20.756636, 18.989971, 18.413765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.246044, 18.684998, 17.979897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.083227, 18.400373, 18.208981>,  <20.985537, 18.229599, 18.346430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.083227, 18.400373, 18.208981>,  <21.246044, 18.684998, 17.979897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083227, 18.400373, 18.208981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145195, -0.568624, -0.809682,
		0.901795, -0.412730, 0.128139,
		-0.407043, -0.711562, 0.572709,
		20.961115, 18.186905, 18.380793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.346302, 19.636185, 3.556951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.445260, 19.248713, 3.565509>,  <8.504635, 19.016230, 3.570644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.445260, 19.248713, 3.565509>,  <8.346302, 19.636185, 3.556951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.445260, 19.248713, 3.565509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319900, 0.060816, -0.945498,
		0.914582, 0.240756, 0.324926,
		0.247395, -0.968678, 0.021396,
		8.519479, 18.958109, 3.571928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.988166, 19.694941, 3.294415>,  <8.346302, 19.636185, 3.556951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.988166, 19.694941, 3.294415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.828032, 19.331987, 3.243207>,  <8.731953, 19.114216, 3.212482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.828032, 19.331987, 3.243207>,  <8.988166, 19.694941, 3.294415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.828032, 19.331987, 3.243207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292600, 0.005815, -0.956217,
		0.868400, -0.420264, 0.263172,
		-0.400333, -0.907383, -0.128019,
		8.707932, 19.059772, 3.204801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.711079, 19.452940, 3.458334>,  <8.988166, 19.694941, 3.294415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.711079, 19.452940, 3.458334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.878934, 19.146358, 3.652840>,  <9.979648, 18.962410, 3.769544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.878934, 19.146358, 3.652840>,  <9.711079, 19.452940, 3.458334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.878934, 19.146358, 3.652840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615323, 0.153627, 0.773160,
		-0.667294, -0.623658, -0.407148,
		0.419639, -0.766453, 0.486265,
		10.004826, 18.916422, 3.798720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.194401, 18.829880, 3.762872>,  <9.711079, 19.452940, 3.458334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.194401, 18.829880, 3.762872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.517413, 18.913370, 3.983536>,  <9.711221, 18.963465, 4.115934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.517413, 18.913370, 3.983536>,  <9.194401, 18.829880, 3.762872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.517413, 18.913370, 3.983536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584124, 0.153273, 0.797061,
		0.081808, -0.965890, 0.245691,
		0.807531, 0.208720, 0.551660,
		9.759672, 18.975986, 4.149034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.338990, 18.507019, 4.419188>,  <9.194401, 18.829880, 3.762872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.338990, 18.507019, 4.419188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.476534, 18.881771, 4.444546>,  <9.559060, 19.106623, 4.459761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.476534, 18.881771, 4.444546>,  <9.338990, 18.507019, 4.419188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.476534, 18.881771, 4.444546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706583, 0.213686, 0.674596,
		0.618468, -0.276759, 0.735460,
		0.343858, 0.936879, 0.063395,
		9.579691, 19.162834, 4.463565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.210989, 18.559294, 5.096388>,  <9.338990, 18.507019, 4.419188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.210989, 18.559294, 5.096388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.270312, 18.920357, 4.934790>,  <9.305906, 19.136995, 4.837831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.270312, 18.920357, 4.934790>,  <9.210989, 18.559294, 5.096388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.270312, 18.920357, 4.934790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707029, 0.382409, 0.594872,
		0.691458, 0.197411, 0.694921,
		0.148309, 0.902659, -0.403995,
		9.314805, 19.191154, 4.813591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.383044, 19.124958, 5.626060>,  <9.210989, 18.559294, 5.096388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.383044, 19.124958, 5.626060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.195615, 19.250790, 5.295853>,  <9.083158, 19.326288, 5.097729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.195615, 19.250790, 5.295853>,  <9.383044, 19.124958, 5.626060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.195615, 19.250790, 5.295853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696648, 0.443049, 0.564260,
		0.543250, 0.839492, 0.011552,
		-0.468573, 0.314581, -0.825517,
		9.055043, 19.345163, 5.048198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.848845, 19.003130, 6.056097>,  <9.383044, 19.124958, 5.626060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.848845, 19.003130, 6.056097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.870572, 19.123142, 5.675145>,  <8.883608, 19.195150, 5.446573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.870572, 19.123142, 5.675145>,  <8.848845, 19.003130, 6.056097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.870572, 19.123142, 5.675145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936074, -0.347312, -0.056028,
		-0.347584, -0.888457, -0.299718,
		0.054317, 0.300032, -0.952381,
		8.886868, 19.213152, 5.389430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334552, 18.388639, 6.303590>,  <8.848845, 19.003130, 6.056097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334552, 18.388639, 6.303590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.499739, 18.045759, 6.426663>,  <9.598850, 17.840031, 6.500507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.499739, 18.045759, 6.426663>,  <9.334552, 18.388639, 6.303590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.499739, 18.045759, 6.426663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087606, 0.298882, 0.950261,
		-0.906523, -0.419380, 0.048332,
		0.412966, -0.857199, 0.307683,
		9.623629, 17.788599, 6.518968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.241642, 17.948341, 6.977859>,  <9.334552, 18.388639, 6.303590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.241642, 17.948341, 6.977859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.112453, 18.274773, 7.169570>,  <9.034940, 18.470631, 7.284596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.112453, 18.274773, 7.169570>,  <9.241642, 17.948341, 6.977859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112453, 18.274773, 7.169570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364212, -0.574590, 0.732936,
		0.873521, 0.062159, 0.482802,
		-0.322972, 0.816077, 0.479277,
		9.015562, 18.519596, 7.313353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.473016, 17.889917, 7.680840>,  <9.241642, 17.948341, 6.977859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.473016, 17.889917, 7.680840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.152468, 18.129116, 7.675156>,  <8.960138, 18.272636, 7.671746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.152468, 18.129116, 7.675156>,  <9.473016, 17.889917, 7.680840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.152468, 18.129116, 7.675156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441758, -0.575646, 0.688099,
		0.403303, 0.557700, 0.725477,
		-0.801371, 0.597998, -0.014208,
		8.912056, 18.308516, 7.670894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334891, 18.257122, 8.435629>,  <9.473016, 17.889917, 7.680840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334891, 18.257122, 8.435629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.989966, 18.243679, 8.233525>,  <8.783011, 18.235613, 8.112263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.989966, 18.243679, 8.233525>,  <9.334891, 18.257122, 8.435629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.989966, 18.243679, 8.233525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480909, -0.258095, 0.837922,
		-0.158564, 0.965535, 0.206398,
		-0.862313, -0.033606, -0.505259,
		8.731273, 18.233597, 8.081947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.818979, 18.491146, 8.921295>,  <9.334891, 18.257122, 8.435629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.818979, 18.491146, 8.921295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.610865, 18.301168, 8.637399>,  <8.485996, 18.187181, 8.467061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.610865, 18.301168, 8.637399>,  <8.818979, 18.491146, 8.921295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.610865, 18.301168, 8.637399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551742, -0.447404, 0.703854,
		-0.651831, 0.757800, -0.029268,
		-0.520286, -0.474942, -0.709741,
		8.454779, 18.158686, 8.424477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.067698, 18.537796, 9.071684>,  <8.818979, 18.491146, 8.921295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.067698, 18.537796, 9.071684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095541, 18.208916, 8.845715>,  <8.112247, 18.011587, 8.710134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095541, 18.208916, 8.845715>,  <8.067698, 18.537796, 9.071684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.095541, 18.208916, 8.845715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536534, -0.508272, 0.673640,
		-0.841003, 0.256208, -0.476520,
		0.069610, -0.822203, -0.564923,
		8.116424, 17.962255, 8.676238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.456106, 18.229843, 9.185301>,  <8.067698, 18.537796, 9.071684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.456106, 18.229843, 9.185301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.651312, 17.928417, 9.009129>,  <7.768436, 17.747562, 8.903425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.651312, 17.928417, 9.009129>,  <7.456106, 18.229843, 9.185301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.651312, 17.928417, 9.009129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477946, -0.652936, 0.587572,
		-0.730348, -0.076242, -0.678807,
		0.488015, -0.753566, -0.440431,
		7.797718, 17.702347, 8.877000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.972605, 17.728607, 8.983860>,  <7.456106, 18.229843, 9.185301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.972605, 17.728607, 8.983860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.318459, 17.540461, 9.054470>,  <7.525971, 17.427572, 9.096836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.318459, 17.540461, 9.054470>,  <6.972605, 17.728607, 8.983860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.318459, 17.540461, 9.054470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431213, -0.514502, 0.741176,
		-0.257802, -0.716967, -0.647685,
		0.864635, -0.470367, 0.176526,
		7.577849, 17.399351, 9.107428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.767002, 17.072203, 9.065472>,  <6.972605, 17.728607, 8.983860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.767002, 17.072203, 9.065472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.138187, 17.070374, 9.214529>,  <7.360898, 17.069277, 9.303964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.138187, 17.070374, 9.214529>,  <6.767002, 17.072203, 9.065472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.138187, 17.070374, 9.214529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300168, -0.601788, 0.740102,
		0.220868, -0.798643, -0.559810,
		0.927964, -0.004572, 0.372643,
		7.416576, 17.069002, 9.326322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.868559, 16.425045, 9.124991>,  <6.767002, 17.072203, 9.065472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.868559, 16.425045, 9.124991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.113209, 16.599485, 9.389031>,  <7.259998, 16.704149, 9.547455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.113209, 16.599485, 9.389031>,  <6.868559, 16.425045, 9.124991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.113209, 16.599485, 9.389031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218110, -0.709075, 0.670552,
		0.760490, -0.554100, -0.338569,
		0.611623, 0.436103, 0.660099,
		7.296696, 16.730316, 9.587061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.317107, 15.838893, 9.448068>,  <6.868559, 16.425045, 9.124991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.317107, 15.838893, 9.448068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.374653, 16.149338, 9.693654>,  <7.409181, 16.335604, 9.841005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.374653, 16.149338, 9.693654>,  <7.317107, 15.838893, 9.448068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.374653, 16.149338, 9.693654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078382, -0.609534, 0.788876,
		0.986488, -0.161616, -0.026858,
		0.143866, 0.776112, 0.613966,
		7.417813, 16.382172, 9.877844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.765182, 15.607269, 10.046824>,  <7.317107, 15.838893, 9.448068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.765182, 15.607269, 10.046824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.619423, 15.947328, 10.198857>,  <7.531967, 16.151363, 10.290077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.619423, 15.947328, 10.198857>,  <7.765182, 15.607269, 10.046824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.619423, 15.947328, 10.198857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092349, -0.439125, 0.893667,
		0.926652, 0.290551, 0.238527,
		-0.364399, 0.850147, 0.380084,
		7.510103, 16.202372, 10.312882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.142906, 15.795857, 10.712867>,  <7.765182, 15.607269, 10.046824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.142906, 15.795857, 10.712867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.790430, 15.984756, 10.721701>,  <7.578944, 16.098095, 10.727001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.790430, 15.984756, 10.721701>,  <8.142906, 15.795857, 10.712867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.790430, 15.984756, 10.721701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078842, -0.192856, 0.978054,
		0.466141, 0.860111, 0.207175,
		-0.881190, 0.472245, 0.022085,
		7.526073, 16.126429, 10.728326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.072954, 16.159241, 11.400944>,  <8.142906, 15.795857, 10.712867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.072954, 16.159241, 11.400944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.694256, 16.140041, 11.273588>,  <7.467038, 16.128523, 11.197175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.694256, 16.140041, 11.273588>,  <8.072954, 16.159241, 11.400944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.694256, 16.140041, 11.273588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267219, -0.434545, 0.860096,
		-0.179637, 0.899370, 0.398577,
		-0.946744, -0.047998, -0.318389,
		7.410233, 16.125643, 11.178072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.641226, 16.524019, 11.894842>,  <8.072954, 16.159241, 11.400944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.641226, 16.524019, 11.894842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.387400, 16.291567, 11.691031>,  <7.235104, 16.152096, 11.568746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.387400, 16.291567, 11.691031>,  <7.641226, 16.524019, 11.894842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.387400, 16.291567, 11.691031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339414, -0.382749, 0.859244,
		-0.694352, 0.718187, 0.045636,
		-0.634565, -0.581129, -0.509525,
		7.197030, 16.117228, 11.538174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.996049, 16.541227, 12.226227>,  <7.641226, 16.524019, 11.894842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.996049, 16.541227, 12.226227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.973958, 16.208399, 12.005461>,  <6.960704, 16.008701, 11.873001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.973958, 16.208399, 12.005461>,  <6.996049, 16.541227, 12.226227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.973958, 16.208399, 12.005461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348278, -0.501989, 0.791650,
		-0.935763, 0.235940, -0.262069,
		-0.055226, -0.832069, -0.551916,
		6.957391, 15.958778, 11.839886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.397963, 16.249107, 12.402967>,  <6.996049, 16.541227, 12.226227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.397963, 16.249107, 12.402967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.571492, 15.930211, 12.235060>,  <6.675610, 15.738873, 12.134315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.571492, 15.930211, 12.235060>,  <6.397963, 16.249107, 12.402967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.571492, 15.930211, 12.235060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335381, -0.575302, 0.746021,
		-0.836251, -0.182860, -0.516959,
		0.433824, -0.797239, -0.419769,
		6.701640, 15.691039, 12.109129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.902541, 15.722140, 12.381710>,  <6.397963, 16.249107, 12.402967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.902541, 15.722140, 12.381710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.244150, 15.519421, 12.334721>,  <6.449115, 15.397789, 12.306527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.244150, 15.519421, 12.334721>,  <5.902541, 15.722140, 12.381710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.244150, 15.519421, 12.334721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223969, -0.561984, 0.796249,
		-0.469555, -0.653705, -0.593454,
		0.854023, -0.506797, -0.117473,
		6.500357, 15.367381, 12.299479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.671770, 15.054509, 12.374725>,  <5.902541, 15.722140, 12.381710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.671770, 15.054509, 12.374725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.060882, 15.056750, 12.467390>,  <6.294349, 15.058095, 12.522988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.060882, 15.056750, 12.467390>,  <5.671770, 15.054509, 12.374725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.060882, 15.056750, 12.467390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166965, -0.676284, 0.717470,
		0.160688, -0.736620, -0.656940,
		0.972781, 0.005603, 0.231661,
		6.352716, 15.058432, 12.536888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.861813, 14.342017, 12.619815>,  <5.671770, 15.054509, 12.374725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.861813, 14.342017, 12.619815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.151404, 14.571592, 12.772889>,  <6.325160, 14.709337, 12.864734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.151404, 14.571592, 12.772889>,  <5.861813, 14.342017, 12.619815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.151404, 14.571592, 12.772889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087021, -0.474343, 0.876029,
		0.684310, -0.667529, -0.293470,
		0.723980, 0.573938, 0.382686,
		6.368598, 14.743773, 12.887695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.252922, 13.834997, 13.035046>,  <5.861813, 14.342017, 12.619815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.252922, 13.834997, 13.035046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.345242, 14.192302, 13.189353>,  <6.400633, 14.406684, 13.281938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.345242, 14.192302, 13.189353>,  <6.252922, 13.834997, 13.035046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.345242, 14.192302, 13.189353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158602, -0.425708, 0.890853,
		0.959988, -0.144424, -0.239925,
		0.230799, 0.893261, 0.385769,
		6.414481, 14.460279, 13.305083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.799776, 13.654078, 13.438662>,  <6.252922, 13.834997, 13.035046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.799776, 13.654078, 13.438662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.630795, 13.992878, 13.567738>,  <6.529407, 14.196157, 13.645184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.630795, 13.992878, 13.567738>,  <6.799776, 13.654078, 13.438662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.630795, 13.992878, 13.567738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216659, -0.251333, 0.943340,
		0.880110, 0.468430, -0.077333,
		-0.422452, 0.846998, 0.322690,
		6.504059, 14.246977, 13.664544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.262940, 13.818970, 14.028892>,  <6.799776, 13.654078, 13.438662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.262940, 13.818970, 14.028892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.929173, 14.030983, 14.089303>,  <6.728912, 14.158191, 14.125549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.929173, 14.030983, 14.089303>,  <7.262940, 13.818970, 14.028892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.929173, 14.030983, 14.089303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135619, -0.068137, 0.988415,
		0.534183, 0.845235, -0.015028,
		-0.834419, 0.530033, 0.151028,
		6.678847, 14.189993, 14.134611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.382937, 13.793768, 14.830450>,  <7.262940, 13.818970, 14.028892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.382937, 13.793768, 14.830450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.691183, 13.556893, 14.924656>,  <7.876131, 13.414768, 14.981179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.691183, 13.556893, 14.924656>,  <7.382937, 13.793768, 14.830450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.691183, 13.556893, 14.924656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619889, 0.610704, -0.492725,
		0.147955, 0.525694, 0.837708,
		0.770615, -0.592187, 0.235515,
		7.922368, 13.379237, 14.995311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.985923, 14.198159, 15.101148>,  <7.382937, 13.793768, 14.830450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.985923, 14.198159, 15.101148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.119855, 13.861030, 14.932606>,  <8.200213, 13.658752, 14.831481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.119855, 13.861030, 14.932606>,  <7.985923, 14.198159, 15.101148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.119855, 13.861030, 14.932606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609917, 0.534705, -0.584885,
		0.718255, -0.061154, 0.693087,
		0.334829, -0.842823, -0.421354,
		8.220304, 13.608183, 14.806200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.729496, 14.284395, 15.087050>,  <7.985923, 14.198159, 15.101148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.729496, 14.284395, 15.087050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.635834, 14.004629, 14.816942>,  <8.579637, 13.836770, 14.654878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.635834, 14.004629, 14.816942>,  <8.729496, 14.284395, 15.087050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.635834, 14.004629, 14.816942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670828, 0.386501, -0.632935,
		0.703677, -0.601195, 0.378686,
		-0.234155, -0.699415, -0.675271,
		8.565587, 13.794805, 14.614361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.309158, 14.275501, 14.652961>,  <8.729496, 14.284395, 15.087050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.309158, 14.275501, 14.652961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.048584, 14.092860, 14.410590>,  <8.892240, 13.983275, 14.265168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.048584, 14.092860, 14.410590>,  <9.309158, 14.275501, 14.652961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.048584, 14.092860, 14.410590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530683, 0.296542, -0.794002,
		0.542226, -0.838795, 0.049134,
		-0.651434, -0.456603, -0.605926,
		8.853153, 13.955879, 14.228812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.713039, 13.916952, 14.148458>,  <9.309158, 14.275501, 14.652961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.713039, 13.916952, 14.148458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.354222, 13.913427, 13.971716>,  <9.138932, 13.911313, 13.865670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.354222, 13.913427, 13.971716>,  <9.713039, 13.916952, 14.148458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.354222, 13.913427, 13.971716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401872, 0.399732, -0.823840,
		0.183883, -0.916590, -0.355036,
		-0.897043, -0.008812, -0.441856,
		9.085110, 13.910784, 13.839159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.848640, 13.610895, 13.515038>,  <9.713039, 13.916952, 14.148458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.848640, 13.610895, 13.515038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.504585, 13.810596, 13.473255>,  <9.298152, 13.930416, 13.448186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.504585, 13.810596, 13.473255>,  <9.848640, 13.610895, 13.515038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.504585, 13.810596, 13.473255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355767, 0.440480, -0.824262,
		-0.365503, -0.746141, -0.556490,
		-0.860138, 0.499251, -0.104456,
		9.246544, 13.960371, 13.441918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.631220, 13.460324, 12.841786>,  <9.848640, 13.610895, 13.515038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.631220, 13.460324, 12.841786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.420564, 13.785045, 12.942685>,  <9.294169, 13.979877, 13.003224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.420564, 13.785045, 12.942685>,  <9.631220, 13.460324, 12.841786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.420564, 13.785045, 12.942685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198454, 0.405939, -0.892093,
		-0.826599, -0.419753, -0.374889,
		-0.526641, 0.811801, 0.252246,
		9.262571, 14.028585, 13.018359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.247190, 13.567567, 12.275764>,  <9.631220, 13.460324, 12.841786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.247190, 13.567567, 12.275764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.222264, 13.914817, 12.472733>,  <9.207309, 14.123167, 12.590913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.222264, 13.914817, 12.472733>,  <9.247190, 13.567567, 12.275764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222264, 13.914817, 12.472733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196923, 0.494374, -0.846650,
		-0.978437, 0.044211, -0.201760,
		-0.062314, 0.868125, 0.492419,
		9.203570, 14.175254, 12.620459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.771882, 13.934829, 11.858891>,  <9.247190, 13.567567, 12.275764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.771882, 13.934829, 11.858891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.955017, 14.203123, 12.092299>,  <9.064898, 14.364100, 12.232345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.955017, 14.203123, 12.092299>,  <8.771882, 13.934829, 11.858891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.955017, 14.203123, 12.092299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058159, 0.632351, -0.772496,
		-0.887132, 0.387614, 0.250504,
		0.457837, 0.670736, 0.583522,
		9.092368, 14.404344, 12.267356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.754329, 14.471115, 11.444576>,  <8.771882, 13.934829, 11.858891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.754329, 14.471115, 11.444576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.993152, 14.616731, 11.730514>,  <9.136445, 14.704100, 11.902076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.993152, 14.616731, 11.730514>,  <8.754329, 14.471115, 11.444576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.993152, 14.616731, 11.730514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202384, 0.793923, -0.573348,
		-0.776250, 0.486994, 0.400341,
		0.597056, 0.364039, 0.714842,
		9.172269, 14.725943, 11.944966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.602623, 15.259938, 11.594745>,  <8.754329, 14.471115, 11.444576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.602623, 15.259938, 11.594745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.979542, 15.203895, 11.716364>,  <9.205693, 15.170269, 11.789335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.979542, 15.203895, 11.716364>,  <8.602623, 15.259938, 11.594745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.979542, 15.203895, 11.716364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314510, 0.681693, -0.660590,
		-0.114713, 0.718098, 0.686423,
		0.942297, -0.140108, 0.304048,
		9.262231, 15.161862, 11.807578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.920916, 15.917377, 11.804567>,  <8.602623, 15.259938, 11.594745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.920916, 15.917377, 11.804567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.208170, 15.662997, 11.691537>,  <9.380523, 15.510369, 11.623718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.208170, 15.662997, 11.691537>,  <8.920916, 15.917377, 11.804567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.208170, 15.662997, 11.691537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258392, 0.620704, -0.740243,
		0.646152, 0.458581, 0.610075,
		0.718137, -0.635948, -0.282576,
		9.423611, 15.472213, 11.606764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.564770, 16.202387, 11.882216>,  <8.920916, 15.917377, 11.804567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.564770, 16.202387, 11.882216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.638552, 15.919591, 11.609118>,  <9.682821, 15.749914, 11.445258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.638552, 15.919591, 11.609118>,  <9.564770, 16.202387, 11.882216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.638552, 15.919591, 11.609118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434772, 0.681697, -0.588440,
		0.881447, -0.188299, 0.433121,
		0.184455, -0.706988, -0.682748,
		9.693888, 15.707495, 11.404293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.235116, 16.314474, 11.637799>,  <9.564770, 16.202387, 11.882216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.235116, 16.314474, 11.637799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.090415, 16.089403, 11.340469>,  <10.003594, 15.954361, 11.162071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.090415, 16.089403, 11.340469>,  <10.235116, 16.314474, 11.637799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.090415, 16.089403, 11.340469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513435, 0.545266, -0.662623,
		0.778151, -0.621355, 0.091646,
		-0.361752, -0.562676, -0.743324,
		9.981889, 15.920601, 11.117472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.771523, 16.028900, 11.233209>,  <10.235116, 16.314474, 11.637799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.771523, 16.028900, 11.233209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.471430, 16.007767, 10.969584>,  <10.291374, 15.995088, 10.811410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.471430, 16.007767, 10.969584>,  <10.771523, 16.028900, 11.233209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.471430, 16.007767, 10.969584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586343, 0.407476, -0.700118,
		0.305539, -0.911686, -0.274725,
		-0.750231, -0.052830, -0.659061,
		10.246361, 15.991918, 10.771866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.978297, 15.738267, 10.634612>,  <10.771523, 16.028900, 11.233209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.978297, 15.738267, 10.634612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.650127, 15.907540, 10.480824>,  <10.453225, 16.009104, 10.388551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.650127, 15.907540, 10.480824>,  <10.978297, 15.738267, 10.634612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.650127, 15.907540, 10.480824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540137, 0.353146, -0.763898,
		-0.187495, -0.834388, -0.518308,
		-0.820425, 0.423184, -0.384471,
		10.404000, 16.034496, 10.365482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.090640, 15.795403, 9.802134>,  <10.978297, 15.738267, 10.634612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.090640, 15.795403, 9.802134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.756252, 16.004713, 9.868270>,  <10.555619, 16.130299, 9.907951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.756252, 16.004713, 9.868270>,  <11.090640, 15.795403, 9.802134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756252, 16.004713, 9.868270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157855, 0.517848, -0.840782,
		-0.525581, -0.676769, -0.515508,
		-0.835970, 0.523275, 0.165340,
		10.505461, 16.161695, 9.917871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.615984, 15.778268, 9.095371>,  <11.090640, 15.795403, 9.802134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.615984, 15.778268, 9.095371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.520701, 16.107227, 9.302027>,  <10.463531, 16.304604, 9.426021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.520701, 16.107227, 9.302027>,  <10.615984, 15.778268, 9.095371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.520701, 16.107227, 9.302027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077227, 0.546307, -0.834018,
		-0.968139, -0.158770, -0.193645,
		-0.238206, 0.822400, 0.516640,
		10.449240, 16.353947, 9.457019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.068985, 16.226292, 8.687721>,  <10.615984, 15.778268, 9.095371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.068985, 16.226292, 8.687721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.195934, 16.482443, 8.967490>,  <10.272104, 16.636133, 9.135352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.195934, 16.482443, 8.967490>,  <10.068985, 16.226292, 8.687721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.195934, 16.482443, 8.967490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188414, 0.680268, -0.708333,
		-0.929395, 0.356587, 0.095244,
		0.317373, 0.640375, 0.699424,
		10.291146, 16.674555, 9.177318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.763642, 16.791334, 8.390761>,  <10.068985, 16.226292, 8.687721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.763642, 16.791334, 8.390761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.039566, 16.935986, 8.641644>,  <10.205120, 17.022776, 8.792173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.039566, 16.935986, 8.641644>,  <9.763642, 16.791334, 8.390761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.039566, 16.935986, 8.641644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267797, 0.677428, -0.685111,
		-0.672642, 0.640560, 0.370454,
		0.689810, 0.361628, 0.627206,
		10.246510, 17.044474, 8.829805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.838829, 17.563251, 8.351991>,  <9.763642, 16.791334, 8.390761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.838829, 17.563251, 8.351991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.192327, 17.438988, 8.491982>,  <10.404427, 17.364429, 8.575976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.192327, 17.438988, 8.491982>,  <9.838829, 17.563251, 8.351991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192327, 17.438988, 8.491982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466808, 0.532593, -0.706000,
		0.032931, 0.787296, 0.615695,
		0.883745, -0.310661, 0.349977,
		10.457451, 17.345789, 8.596974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<21.088926, 19.837122, 24.682039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.768745, 19.634558, 24.810303>,  <20.576637, 19.513020, 24.887260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.768745, 19.634558, 24.810303>,  <21.088926, 19.837122, 24.682039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.768745, 19.634558, 24.810303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049870, 0.589385, 0.806312,
		-0.597318, 0.629423, -0.497029,
		-0.800453, -0.506411, 0.320660,
		20.528610, 19.482634, 24.906502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.444036, 20.259398, 24.679590>,  <21.088926, 19.837122, 24.682039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.444036, 20.259398, 24.679590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.369513, 19.990232, 24.965940>,  <20.324799, 19.828733, 25.137751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.369513, 19.990232, 24.965940>,  <20.444036, 20.259398, 24.679590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369513, 19.990232, 24.965940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072306, 0.717268, 0.693036,
		-0.979827, 0.180882, -0.084979,
		-0.186310, -0.672910, 0.715877,
		20.313620, 19.788359, 25.180704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915516, 20.598331, 25.213572>,  <20.444036, 20.259398, 24.679590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.915516, 20.598331, 25.213572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.118410, 20.292454, 25.372543>,  <20.240147, 20.108927, 25.467926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.118410, 20.292454, 25.372543>,  <19.915516, 20.598331, 25.213572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118410, 20.292454, 25.372543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191295, 0.549558, 0.813260,
		-0.840307, -0.336490, 0.425039,
		0.507238, -0.764696, 0.397429,
		20.270582, 20.063046, 25.491772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.675470, 20.547291, 25.915539>,  <19.915516, 20.598331, 25.213572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.675470, 20.547291, 25.915539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.035580, 20.376181, 25.883247>,  <20.251646, 20.273516, 25.863873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.035580, 20.376181, 25.883247>,  <19.675470, 20.547291, 25.915539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.035580, 20.376181, 25.883247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299479, 0.474005, 0.828029,
		-0.315943, -0.769629, 0.554843,
		0.900274, -0.427774, -0.080730,
		20.305662, 20.247849, 25.859028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.797121, 20.300854, 26.607349>,  <19.675470, 20.547291, 25.915539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.797121, 20.300854, 26.607349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.158106, 20.322083, 26.436356>,  <20.374697, 20.334820, 26.333759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.158106, 20.322083, 26.436356>,  <19.797121, 20.300854, 26.607349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158106, 20.322083, 26.436356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354321, 0.472922, 0.806723,
		0.244983, -0.879504, 0.407989,
		0.902463, 0.053074, -0.427485,
		20.428844, 20.338005, 26.308109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218643, 20.044142, 27.056705>,  <19.797121, 20.300854, 26.607349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218643, 20.044142, 27.056705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.448917, 20.282824, 26.833088>,  <20.587082, 20.426033, 26.698917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.448917, 20.282824, 26.833088>,  <20.218643, 20.044142, 27.056705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448917, 20.282824, 26.833088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411998, 0.378887, 0.828675,
		0.706290, -0.707379, -0.027723,
		0.575684, 0.596707, -0.559043,
		20.621622, 20.461836, 26.665375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.909307, 19.983665, 27.353130>,  <20.218643, 20.044142, 27.056705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.909307, 19.983665, 27.353130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.946585, 20.310669, 27.125799>,  <20.968952, 20.506870, 26.989401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.946585, 20.310669, 27.125799>,  <20.909307, 19.983665, 27.353130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946585, 20.310669, 27.125799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386137, 0.496458, 0.777449,
		0.917721, -0.291906, -0.269404,
		0.093195, 0.817509, -0.568326,
		20.974543, 20.555922, 26.955301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663834, 20.223995, 27.404402>,  <20.909307, 19.983665, 27.353130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663834, 20.223995, 27.404402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.459501, 20.545580, 27.282614>,  <21.336903, 20.738531, 27.209541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.459501, 20.545580, 27.282614>,  <21.663834, 20.223995, 27.404402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.459501, 20.545580, 27.282614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553588, 0.578587, 0.598980,
		0.657719, 0.137424, -0.740622,
		-0.510829, 0.803960, -0.304471,
		21.306253, 20.786768, 27.191273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.097538, 20.711012, 27.140163>,  <21.663834, 20.223995, 27.404402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.097538, 20.711012, 27.140163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.772594, 20.919386, 27.245008>,  <21.577629, 21.044411, 27.307915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.772594, 20.919386, 27.245008>,  <22.097538, 20.711012, 27.140163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772594, 20.919386, 27.245008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582924, 0.738126, 0.339662,
		-0.016531, 0.428718, -0.903287,
		-0.812358, 0.520933, 0.262112,
		21.528887, 21.075666, 27.323643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.453220, 21.308151, 27.216509>,  <22.097538, 20.711012, 27.140163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.453220, 21.308151, 27.216509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.093435, 21.357416, 27.384224>,  <21.877565, 21.386974, 27.484854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.093435, 21.357416, 27.384224>,  <22.453220, 21.308151, 27.216509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093435, 21.357416, 27.384224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402959, 0.605017, 0.686716,
		-0.169099, 0.786630, -0.593818,
		-0.899461, 0.123161, 0.419287,
		21.823597, 21.394365, 27.510010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.441460, 21.985199, 27.344709>,  <22.453220, 21.308151, 27.216509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.441460, 21.985199, 27.344709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.153744, 21.855822, 27.590639>,  <21.981113, 21.778194, 27.738197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.153744, 21.855822, 27.590639>,  <22.441460, 21.985199, 27.344709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.153744, 21.855822, 27.590639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274141, 0.681033, 0.678999,
		-0.638334, 0.656945, -0.401190,
		-0.719289, -0.323445, 0.614822,
		21.937958, 21.758787, 27.775085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984455, 22.581116, 27.532423>,  <22.441460, 21.985199, 27.344709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984455, 22.581116, 27.532423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.927013, 22.330975, 27.839230>,  <21.892550, 22.180891, 28.023314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.927013, 22.330975, 27.839230>,  <21.984455, 22.581116, 27.532423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927013, 22.330975, 27.839230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257444, 0.724760, 0.639098,
		-0.955563, 0.289240, 0.056916,
		-0.143602, -0.625351, 0.767017,
		21.883932, 22.143370, 28.069334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.498167, 22.945805, 27.858091>,  <21.984455, 22.581116, 27.532423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.498167, 22.945805, 27.858091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.700556, 22.692436, 28.092276>,  <21.821989, 22.540415, 28.232786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.700556, 22.692436, 28.092276>,  <21.498167, 22.945805, 27.858091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.700556, 22.692436, 28.092276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259894, 0.759171, 0.596753,
		-0.822463, -0.149783, 0.548743,
		0.505974, -0.633423, 0.585462,
		21.852348, 22.502409, 28.267914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.534311, 23.338150, 27.114599>,  <21.498167, 22.945805, 27.858091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.534311, 23.338150, 27.114599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.552328, 23.680285, 27.321045>,  <21.563139, 23.885565, 27.444912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.552328, 23.680285, 27.321045>,  <21.534311, 23.338150, 27.114599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552328, 23.680285, 27.321045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220867, 0.495327, -0.840160,
		-0.974263, 0.151835, -0.166604,
		0.045042, 0.855335, 0.516114,
		21.565840, 23.936886, 27.475880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.325596, 23.906122, 26.542290>,  <21.534311, 23.338150, 27.114599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.325596, 23.906122, 26.542290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.034651, 24.180614, 26.544567>,  <20.860085, 24.345310, 26.545933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.034651, 24.180614, 26.544567>,  <21.325596, 23.906122, 26.542290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034651, 24.180614, 26.544567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323040, -0.335060, -0.885088,
		-0.605469, -0.645616, 0.465390,
		-0.727360, 0.686233, 0.005692,
		20.816442, 24.386484, 26.546274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725416, 23.577137, 26.686331>,  <21.325596, 23.906122, 26.542290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725416, 23.577137, 26.686331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.639948, 23.917580, 26.494513>,  <20.588667, 24.121845, 26.379421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.639948, 23.917580, 26.494513>,  <20.725416, 23.577137, 26.686331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639948, 23.917580, 26.494513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477797, -0.519211, -0.708611,
		-0.852089, 0.077719, 0.517595,
		-0.213669, 0.851105, -0.479548,
		20.575848, 24.172911, 26.350649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053242, 23.602310, 26.552647>,  <20.725416, 23.577137, 26.686331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053242, 23.602310, 26.552647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.220762, 23.844751, 26.282167>,  <20.321274, 23.990217, 26.119881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.220762, 23.844751, 26.282167>,  <20.053242, 23.602310, 26.552647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220762, 23.844751, 26.282167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409069, -0.538890, -0.736383,
		-0.810722, 0.585008, 0.022252,
		0.418799, 0.606105, -0.676198,
		20.346401, 24.026583, 26.079308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619644, 23.645775, 26.083036>,  <20.053242, 23.602310, 26.552647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619644, 23.645775, 26.083036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.931652, 23.781307, 25.872602>,  <20.118856, 23.862627, 25.746342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.931652, 23.781307, 25.872602>,  <19.619644, 23.645775, 26.083036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931652, 23.781307, 25.872602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249888, -0.602110, -0.758301,
		-0.573696, 0.722951, -0.384987,
		0.780019, 0.338831, -0.526085,
		20.165657, 23.882956, 25.714777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.348883, 23.812887, 25.313694>,  <19.619644, 23.645775, 26.083036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.348883, 23.812887, 25.313694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.746603, 23.770931, 25.306028>,  <19.985235, 23.745758, 25.301430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.746603, 23.770931, 25.306028>,  <19.348883, 23.812887, 25.313694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746603, 23.770931, 25.306028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063192, -0.434908, -0.898255,
		0.085885, 0.894345, -0.439057,
		0.994299, -0.104891, -0.019163,
		20.044893, 23.739464, 25.300280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594423, 24.144970, 24.693501>,  <19.348883, 23.812887, 25.313694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594423, 24.144970, 24.693501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.885067, 23.886980, 24.788195>,  <20.059454, 23.732185, 24.845011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.885067, 23.886980, 24.788195>,  <19.594423, 24.144970, 24.693501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885067, 23.886980, 24.788195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013613, -0.358015, -0.933617,
		0.686914, 0.675154, -0.268918,
		0.726611, -0.644975, 0.236735,
		20.103050, 23.693487, 24.859215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.141781, 24.203821, 24.114147>,  <19.594423, 24.144970, 24.693501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.141781, 24.203821, 24.114147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.194374, 23.861544, 24.314348>,  <20.225931, 23.656178, 24.434469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.194374, 23.861544, 24.314348>,  <20.141781, 24.203821, 24.114147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194374, 23.861544, 24.314348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153534, -0.481213, -0.863053,
		0.979357, 0.190322, 0.068106,
		0.131485, -0.855693, 0.500500,
		20.233820, 23.604836, 24.464499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.565413, 23.884136, 23.606346>,  <20.141781, 24.203821, 24.114147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.565413, 23.884136, 23.606346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.490330, 23.587307, 23.863745>,  <20.445280, 23.409208, 24.018185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.490330, 23.587307, 23.863745>,  <20.565413, 23.884136, 23.606346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.490330, 23.587307, 23.863745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018011, -0.657634, -0.753122,
		0.982060, -0.129777, 0.136809,
		-0.187708, -0.742075, 0.643498,
		20.434017, 23.364685, 24.056795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090412, 23.434772, 23.410740>,  <20.565413, 23.884136, 23.606346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090412, 23.434772, 23.410740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.777609, 23.260155, 23.588680>,  <20.589928, 23.155384, 23.695444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.777609, 23.260155, 23.588680>,  <21.090412, 23.434772, 23.410740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777609, 23.260155, 23.588680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058662, -0.762121, -0.644772,
		0.620502, -0.478121, 0.621593,
		-0.782008, -0.436546, 0.444850,
		20.543007, 23.129190, 23.722136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249134, 22.830450, 23.659243>,  <21.090412, 23.434772, 23.410740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249134, 22.830450, 23.659243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.854507, 22.796936, 23.603149>,  <20.617731, 22.776829, 23.569494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.854507, 22.796936, 23.603149>,  <21.249134, 22.830450, 23.659243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854507, 22.796936, 23.603149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155174, -0.748930, -0.644224,
		-0.051048, -0.657331, 0.751871,
		-0.986568, -0.083784, -0.140232,
		20.558537, 22.771801, 23.561079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217110, 22.141310, 23.669682>,  <21.249134, 22.830450, 23.659243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217110, 22.141310, 23.669682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.870657, 22.264738, 23.512405>,  <20.662785, 22.338795, 23.418039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.870657, 22.264738, 23.512405>,  <21.217110, 22.141310, 23.669682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.870657, 22.264738, 23.512405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001973, -0.784555, -0.620056,
		-0.499810, -0.537827, 0.678920,
		-0.866133, 0.308570, -0.393189,
		20.610817, 22.357309, 23.394449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931665, 21.513594, 23.509150>,  <21.217110, 22.141310, 23.669682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931665, 21.513594, 23.509150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.719519, 21.787001, 23.308546>,  <20.592230, 21.951044, 23.188183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.719519, 21.787001, 23.308546>,  <20.931665, 21.513594, 23.509150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719519, 21.787001, 23.308546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222991, -0.683213, -0.695338,
		-0.817914, -0.256954, 0.514773,
		-0.530369, 0.683517, -0.501511,
		20.560408, 21.992056, 23.158092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401760, 21.124475, 23.331032>,  <20.931665, 21.513594, 23.509150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401760, 21.124475, 23.331032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.388840, 21.439146, 23.084425>,  <20.381086, 21.627949, 22.936460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.388840, 21.439146, 23.084425>,  <20.401760, 21.124475, 23.331032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.388840, 21.439146, 23.084425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055858, -0.614454, -0.786973,
		-0.997916, -0.059859, -0.024094,
		-0.032302, 0.786679, -0.616517,
		20.379148, 21.675150, 22.899469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776306, 20.995947, 22.916897>,  <20.401760, 21.124475, 23.331032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776306, 20.995947, 22.916897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.008043, 21.254520, 22.718307>,  <20.147085, 21.409664, 22.599154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.008043, 21.254520, 22.718307>,  <19.776306, 20.995947, 22.916897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.008043, 21.254520, 22.718307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099162, -0.660479, -0.744268,
		-0.809030, 0.381955, -0.446746,
		0.579343, 0.646435, -0.496472,
		20.181847, 21.448450, 22.569366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194075, 21.459648, 22.827038>,  <19.776306, 20.995947, 22.916897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194075, 21.459648, 22.827038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.794445, 21.476629, 22.824221>,  <18.554667, 21.486818, 22.822531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.794445, 21.476629, 22.824221>,  <19.194075, 21.459648, 22.827038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.794445, 21.476629, 22.824221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022998, 0.665071, 0.746426,
		0.036370, 0.745572, -0.665432,
		-0.999074, 0.042451, -0.007042,
		18.494722, 21.489365, 22.822107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.944155, 22.218002, 22.641092>,  <19.194075, 21.459648, 22.827038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.944155, 22.218002, 22.641092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.667231, 22.031006, 22.860968>,  <18.501076, 21.918808, 22.992893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.667231, 22.031006, 22.860968>,  <18.944155, 22.218002, 22.641092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.667231, 22.031006, 22.860968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069159, 0.801242, 0.594330,
		-0.718277, 0.373446, -0.587041,
		-0.692312, -0.467493, 0.549686,
		18.459538, 21.890759, 23.025873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.471066, 22.699917, 22.798719>,  <18.944155, 22.218002, 22.641092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.471066, 22.699917, 22.798719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.359604, 22.428297, 23.070379>,  <18.292727, 22.265326, 23.233376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.359604, 22.428297, 23.070379>,  <18.471066, 22.699917, 22.798719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.359604, 22.428297, 23.070379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153878, 0.729593, 0.666345,
		-0.947984, 0.081173, -0.307794,
		-0.278654, -0.679047, 0.679152,
		18.276009, 22.224583, 23.274124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757324, 22.780344, 23.007549>,  <18.471066, 22.699917, 22.798719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757324, 22.780344, 23.007549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.925735, 22.586945, 23.314526>,  <18.026783, 22.470905, 23.498711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.925735, 22.586945, 23.314526>,  <17.757324, 22.780344, 23.007549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.925735, 22.586945, 23.314526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396030, 0.663191, 0.635089,
		-0.816023, -0.571320, 0.087743,
		0.421029, -0.483499, 0.767439,
		18.052044, 22.441895, 23.544758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286621, 22.843130, 23.500397>,  <17.757324, 22.780344, 23.007549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286621, 22.843130, 23.500397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.612986, 22.744476, 23.709570>,  <17.808805, 22.685284, 23.835073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.612986, 22.744476, 23.709570>,  <17.286621, 22.843130, 23.500397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.612986, 22.744476, 23.709570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273810, 0.631773, 0.725183,
		-0.509229, -0.734871, 0.447941,
		0.815913, -0.246633, 0.522933,
		17.857759, 22.670486, 23.866449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029892, 22.861258, 24.220903>,  <17.286621, 22.843130, 23.500397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029892, 22.861258, 24.220903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.428013, 22.878067, 24.255796>,  <17.666885, 22.888153, 24.276731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.428013, 22.878067, 24.255796>,  <17.029892, 22.861258, 24.220903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428013, 22.878067, 24.255796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096028, 0.544006, 0.833568,
		-0.012424, -0.838028, 0.545486,
		0.995301, 0.042026, 0.087233,
		17.726603, 22.890675, 24.281965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155436, 22.740358, 24.949032>,  <17.029892, 22.861258, 24.220903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155436, 22.740358, 24.949032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.478636, 22.923939, 24.801247>,  <17.672556, 23.034086, 24.712576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.478636, 22.923939, 24.801247>,  <17.155436, 22.740358, 24.949032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478636, 22.923939, 24.801247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035408, 0.588120, 0.807998,
		0.588120, -0.665943, 0.458949,
		-0.807998, -0.458949, 0.369464,
		17.721035, 23.061625, 24.690407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186701, 22.277115, 25.654034>,  <17.155436, 22.740358, 24.949032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186701, 22.277115, 25.654034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.850649, 22.191027, 25.853176>,  <16.649017, 22.139374, 25.972662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.850649, 22.191027, 25.853176>,  <17.186701, 22.277115, 25.654034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850649, 22.191027, 25.853176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251564, -0.658578, -0.709218,
		0.480514, -0.721079, 0.499151,
		-0.840132, -0.215221, 0.497854,
		16.598610, 22.126461, 26.002533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111279, 21.570250, 25.624630>,  <17.186701, 22.277115, 25.654034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111279, 21.570250, 25.624630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.738140, 21.661728, 25.735979>,  <16.514257, 21.716616, 25.802790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.738140, 21.661728, 25.735979>,  <17.111279, 21.570250, 25.624630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738140, 21.661728, 25.735979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356178, -0.701574, -0.617196,
		0.054150, -0.674901, 0.735919,
		-0.932847, 0.228697, 0.278375,
		16.458286, 21.730337, 25.819492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.787945, 20.926449, 25.581852>,  <17.111279, 21.570250, 25.624630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.787945, 20.926449, 25.581852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.499994, 21.203873, 25.592823>,  <16.327225, 21.370327, 25.599405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.499994, 21.203873, 25.592823>,  <16.787945, 20.926449, 25.581852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499994, 21.203873, 25.592823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498851, -0.489503, -0.715216,
		-0.482599, -0.528570, 0.698364,
		-0.719893, 0.693542, 0.027444,
		16.284031, 21.411942, 25.601051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145956, 20.562529, 25.603762>,  <16.787945, 20.926449, 25.581852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145956, 20.562529, 25.603762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.090372, 20.927694, 25.450254>,  <16.057022, 21.146793, 25.358150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.090372, 20.927694, 25.450254>,  <16.145956, 20.562529, 25.603762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090372, 20.927694, 25.450254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303945, -0.408141, -0.860836,
		-0.942500, -0.002978, 0.334192,
		-0.138961, 0.912914, -0.383768,
		16.048683, 21.201569, 25.335123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480306, 20.552095, 25.360329>,  <16.145956, 20.562529, 25.603762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480306, 20.552095, 25.360329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.722318, 20.789534, 25.148069>,  <15.867525, 20.931995, 25.020714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.722318, 20.789534, 25.148069>,  <15.480306, 20.552095, 25.360329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722318, 20.789534, 25.148069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336259, -0.413619, -0.846079,
		-0.721712, 0.690338, -0.050651,
		0.605030, 0.593593, -0.530646,
		15.903827, 20.967611, 24.988876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091779, 20.742779, 24.870213>,  <15.480306, 20.552095, 25.360329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091779, 20.742779, 24.870213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.461191, 20.820967, 24.738224>,  <15.682838, 20.867880, 24.659031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.461191, 20.820967, 24.738224>,  <15.091779, 20.742779, 24.870213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.461191, 20.820967, 24.738224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205149, -0.475159, -0.855651,
		-0.324042, 0.857914, -0.398724,
		0.923532, 0.195469, -0.329972,
		15.738251, 20.879608, 24.639233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.960762, 20.860172, 24.189587>,  <15.091779, 20.742779, 24.870213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.960762, 20.860172, 24.189587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.360091, 20.837193, 24.186722>,  <15.599689, 20.823404, 24.185003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.360091, 20.837193, 24.186722>,  <14.960762, 20.860172, 24.189587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360091, 20.837193, 24.186722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035451, -0.508785, -0.860164,
		0.045772, 0.858975, -0.509968,
		0.998323, -0.057451, -0.007164,
		15.659588, 20.819958, 24.184572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<22.611345, 16.352282, 30.352177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.771090, 16.578169, 30.641066>,  <22.866936, 16.713701, 30.814398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.771090, 16.578169, 30.641066>,  <22.611345, 16.352282, 30.352177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771090, 16.578169, 30.641066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806286, -0.591295, 0.016500,
		0.436364, 0.575727, -0.691466,
		0.399361, 0.564719, 0.722221,
		22.890898, 16.747585, 30.857731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.857462, 16.056053, 29.657215>,  <22.611345, 16.352282, 30.352177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.857462, 16.056053, 29.657215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.718582, 15.775604, 29.408094>,  <22.635254, 15.607335, 29.258621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.718582, 15.775604, 29.408094>,  <22.857462, 16.056053, 29.657215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.718582, 15.775604, 29.408094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111704, 0.628468, -0.769773,
		0.931115, -0.336833, -0.139885,
		-0.347198, -0.701122, -0.622801,
		22.614422, 15.565268, 29.221254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.220919, 15.712137, 29.079025>,  <22.857462, 16.056053, 29.657215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.220919, 15.712137, 29.079025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.839140, 15.772507, 28.976063>,  <22.610073, 15.808728, 28.914286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.839140, 15.772507, 28.976063>,  <23.220919, 15.712137, 29.079025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.839140, 15.772507, 28.976063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295813, 0.591685, -0.749936,
		0.039119, -0.791916, -0.609375,
		-0.954445, 0.150924, -0.257405,
		22.552807, 15.817784, 28.898842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.053314, 15.557109, 28.324142>,  <23.220919, 15.712137, 29.079025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.053314, 15.557109, 28.324142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.767242, 15.802259, 28.458544>,  <22.595598, 15.949350, 28.539185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.767242, 15.802259, 28.458544>,  <23.053314, 15.557109, 28.324142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767242, 15.802259, 28.458544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239559, 0.666557, -0.705914,
		-0.656604, -0.424363, -0.623529,
		-0.715181, 0.612877, 0.336004,
		22.552689, 15.986122, 28.559345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.618696, 15.614584, 27.765017>,  <23.053314, 15.557109, 28.324142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.618696, 15.614584, 27.765017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.667896, 15.910635, 28.029465>,  <22.697416, 16.088266, 28.188133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.667896, 15.910635, 28.029465>,  <22.618696, 15.614584, 27.765017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667896, 15.910635, 28.029465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540352, 0.508825, -0.670161,
		-0.832401, 0.439669, -0.337344,
		0.123000, 0.740127, 0.661122,
		22.704796, 16.132673, 28.227802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845066, 15.881298, 27.931377>,  <22.618696, 15.614584, 27.765017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845066, 15.881298, 27.931377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.939816, 15.502784, 27.843346>,  <21.996666, 15.275676, 27.790525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.939816, 15.502784, 27.843346>,  <21.845066, 15.881298, 27.931377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.939816, 15.502784, 27.843346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938239, -0.281609, 0.201010,
		-0.252189, 0.158875, -0.954547,
		0.236873, -0.946285, -0.220081,
		22.010878, 15.218898, 27.777321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.355715, 16.478487, 27.991854>,  <21.845066, 15.881298, 27.931377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.355715, 16.478487, 27.991854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.070318, 16.733730, 28.107611>,  <20.899080, 16.886877, 28.177065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.070318, 16.733730, 28.107611>,  <21.355715, 16.478487, 27.991854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070318, 16.733730, 28.107611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637561, -0.419969, -0.645866,
		-0.290596, -0.645325, 0.706477,
		-0.713492, 0.638107, 0.289393,
		20.856270, 16.925163, 28.194429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789618, 16.107563, 28.093550>,  <21.355715, 16.478487, 27.991854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789618, 16.107563, 28.093550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.659708, 16.475777, 28.006702>,  <20.581762, 16.696705, 27.954594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.659708, 16.475777, 28.006702>,  <20.789618, 16.107563, 28.093550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659708, 16.475777, 28.006702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725558, -0.389751, -0.567151,
		-0.606704, -0.026663, 0.794481,
		-0.324771, 0.920534, -0.217117,
		20.562277, 16.751938, 27.941566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072674, 16.011082, 28.104284>,  <20.789618, 16.107563, 28.093550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072674, 16.011082, 28.104284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.158045, 16.348589, 27.907305>,  <20.209267, 16.551094, 27.789118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.158045, 16.348589, 27.907305>,  <20.072674, 16.011082, 28.104284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158045, 16.348589, 27.907305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749953, -0.181545, -0.636091,
		-0.626115, 0.505071, 0.594040,
		0.213426, 0.843768, -0.492447,
		20.222073, 16.601719, 27.759571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445612, 16.180990, 27.970716>,  <20.072674, 16.011082, 28.104284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445612, 16.180990, 27.970716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.673119, 16.390917, 27.717398>,  <19.809624, 16.516872, 27.565407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.673119, 16.390917, 27.717398>,  <19.445612, 16.180990, 27.970716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.673119, 16.390917, 27.717398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679474, -0.134073, -0.721346,
		-0.463484, 0.840589, 0.280344,
		0.568769, 0.524818, -0.633299,
		19.843750, 16.548363, 27.527409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034241, 16.543980, 27.580544>,  <19.445612, 16.180990, 27.970716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034241, 16.543980, 27.580544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.360687, 16.537857, 27.349468>,  <19.556555, 16.534184, 27.210823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.360687, 16.537857, 27.349468>,  <19.034241, 16.543980, 27.580544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.360687, 16.537857, 27.349468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532216, -0.409421, -0.741027,
		-0.225174, 0.912217, -0.342281,
		0.816114, -0.015308, -0.577688,
		19.605522, 16.533264, 27.176163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735577, 16.957153, 26.987452>,  <19.034241, 16.543980, 27.580544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735577, 16.957153, 26.987452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.046614, 16.727472, 26.884968>,  <19.233236, 16.589664, 26.823477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.046614, 16.727472, 26.884968>,  <18.735577, 16.957153, 26.987452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046614, 16.727472, 26.884968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497506, -0.312690, -0.809144,
		0.384497, 0.756649, -0.528814,
		0.777592, -0.574201, -0.256209,
		19.279892, 16.555212, 26.808105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046038, 17.205311, 27.261967>,  <18.735577, 16.957153, 26.987452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046038, 17.205311, 27.261967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.700853, 17.282597, 27.448715>,  <17.493742, 17.328968, 27.560764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.700853, 17.282597, 27.448715>,  <18.046038, 17.205311, 27.261967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.700853, 17.282597, 27.448715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304761, 0.936036, 0.175944,
		-0.403014, 0.294117, -0.866646,
		-0.862960, 0.193212, 0.466871,
		17.441965, 17.340561, 27.588776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850998, 17.879927, 27.055462>,  <18.046038, 17.205311, 27.261967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850998, 17.879927, 27.055462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.674917, 17.808710, 27.407490>,  <17.569269, 17.765980, 27.618706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.674917, 17.808710, 27.407490>,  <17.850998, 17.879927, 27.055462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674917, 17.808710, 27.407490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253559, 0.915602, 0.312059,
		-0.861354, 0.360518, -0.357905,
		-0.440202, -0.178043, 0.880070,
		17.542856, 17.755297, 27.671511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664927, 18.442549, 27.142084>,  <17.850998, 17.879927, 27.055462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.664927, 18.442549, 27.142084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.620884, 18.288795, 27.508718>,  <17.594458, 18.196545, 27.728699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.620884, 18.288795, 27.508718>,  <17.664927, 18.442549, 27.142084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620884, 18.288795, 27.508718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044901, 0.919327, 0.390925,
		-0.992905, 0.084200, -0.083967,
		-0.110109, -0.384381, 0.916584,
		17.587851, 18.173481, 27.783693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075886, 18.732208, 27.413483>,  <17.664927, 18.442549, 27.142084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075886, 18.732208, 27.413483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.304348, 18.627678, 27.724735>,  <17.441425, 18.564959, 27.911488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.304348, 18.627678, 27.724735>,  <17.075886, 18.732208, 27.413483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304348, 18.627678, 27.724735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019812, 0.943303, 0.331340,
		-0.820602, -0.204664, 0.533596,
		0.571156, -0.261327, 0.778132,
		17.475695, 18.549280, 27.958176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749983, 18.808617, 28.051794>,  <17.075886, 18.732208, 27.413483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749983, 18.808617, 28.051794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.128729, 18.824696, 28.179436>,  <17.355976, 18.834343, 28.256021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.128729, 18.824696, 28.179436>,  <16.749983, 18.808617, 28.051794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.128729, 18.824696, 28.179436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143687, 0.940513, 0.307878,
		-0.287745, -0.337371, 0.896317,
		0.946867, 0.040199, 0.319104,
		17.412788, 18.836756, 28.275167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625101, 19.059006, 28.734253>,  <16.749983, 18.808617, 28.051794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625101, 19.059006, 28.734253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.004536, 19.110140, 28.618431>,  <17.232197, 19.140821, 28.548939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.004536, 19.110140, 28.618431>,  <16.625101, 19.059006, 28.734253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004536, 19.110140, 28.618431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008443, 0.924705, 0.380590,
		0.316406, -0.358578, 0.878242,
		0.948586, 0.127836, -0.289555,
		17.289112, 19.148491, 28.531565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.965353, 19.162447, 29.272676>,  <16.625101, 19.059006, 28.734253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.965353, 19.162447, 29.272676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.184792, 19.332613, 28.984770>,  <17.316456, 19.434713, 28.812027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.184792, 19.332613, 28.984770>,  <16.965353, 19.162447, 29.272676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184792, 19.332613, 28.984770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124204, 0.809855, 0.573331,
		0.826811, -0.403925, 0.391444,
		0.548596, 0.425418, -0.719765,
		17.349371, 19.460238, 28.768841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279730, 19.614559, 29.679968>,  <16.965353, 19.162447, 29.272676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279730, 19.614559, 29.679968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.421547, 19.746670, 29.330061>,  <17.506638, 19.825935, 29.120117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.421547, 19.746670, 29.330061>,  <17.279730, 19.614559, 29.679968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421547, 19.746670, 29.330061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417346, 0.781286, 0.464128,
		0.836734, -0.529633, 0.139159,
		0.354541, 0.330274, -0.874768,
		17.527908, 19.845753, 29.067631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891094, 19.879013, 29.739004>,  <17.279730, 19.614559, 29.679968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.891094, 19.879013, 29.739004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.810793, 20.079033, 29.402040>,  <17.762613, 20.199045, 29.199863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.810793, 20.079033, 29.402040>,  <17.891094, 19.879013, 29.739004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.810793, 20.079033, 29.402040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368597, 0.835279, 0.407978,
		0.907654, -0.228607, -0.352000,
		-0.200751, 0.500048, -0.842408,
		17.750568, 20.229048, 29.149319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469902, 20.401443, 29.685751>,  <17.891094, 19.879013, 29.739004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469902, 20.401443, 29.685751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.200083, 20.521225, 29.415844>,  <18.038191, 20.593094, 29.253901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.200083, 20.521225, 29.415844>,  <18.469902, 20.401443, 29.685751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.200083, 20.521225, 29.415844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192822, 0.953773, 0.230515,
		0.712603, 0.025383, -0.701108,
		-0.674549, 0.299455, -0.674767,
		17.997719, 20.611061, 29.213413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789949, 21.009027, 29.388758>,  <18.469902, 20.401443, 29.685751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789949, 21.009027, 29.388758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.398798, 21.028015, 29.307268>,  <18.164108, 21.039408, 29.258375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.398798, 21.028015, 29.307268>,  <18.789949, 21.009027, 29.388758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398798, 21.028015, 29.307268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013846, 0.986464, 0.163392,
		0.208720, 0.156957, -0.965298,
		-0.977877, 0.047468, -0.203722,
		18.105434, 21.042255, 29.246151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750570, 21.585224, 28.898045>,  <18.789949, 21.009027, 29.388758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750570, 21.585224, 28.898045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.393852, 21.540802, 29.073483>,  <18.179821, 21.514149, 29.178745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.393852, 21.540802, 29.073483>,  <18.750570, 21.585224, 28.898045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393852, 21.540802, 29.073483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045802, 0.986587, 0.156681,
		-0.450114, 0.119638, -0.884921,
		-0.891796, -0.111055, 0.438596,
		18.126314, 21.507484, 29.205061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.274055, 21.867575, 28.563953>,  <18.750570, 21.585224, 28.898045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.274055, 21.867575, 28.563953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.083921, 21.865526, 28.915869>,  <17.969841, 21.864296, 29.127018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.083921, 21.865526, 28.915869>,  <18.274055, 21.867575, 28.563953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083921, 21.865526, 28.915869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002163, 0.999973, 0.006991,
		-0.879801, 0.005226, -0.475313,
		-0.475337, -0.005122, 0.879789,
		17.941320, 21.863989, 29.179806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565493, 22.248688, 28.315229>,  <18.274055, 21.867575, 28.563953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565493, 22.248688, 28.315229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.672680, 22.238806, 28.700474>,  <17.736992, 22.232878, 28.931620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.672680, 22.238806, 28.700474>,  <17.565493, 22.248688, 28.315229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672680, 22.238806, 28.700474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142395, 0.989708, -0.014233,
		-0.952847, 0.140956, 0.268727,
		0.267967, -0.024704, 0.963111,
		17.753071, 22.231394, 28.989407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.096790, 22.488035, 28.909433>,  <17.565493, 22.248688, 28.315229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.096790, 22.488035, 28.909433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.123898, 22.839090, 28.719629>,  <17.140162, 23.049723, 28.605747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.123898, 22.839090, 28.719629>,  <17.096790, 22.488035, 28.909433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123898, 22.839090, 28.719629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188828, -0.455726, -0.869861,
		-0.979669, 0.148549, 0.134839,
		0.067767, 0.877637, -0.474511,
		17.144228, 23.102381, 28.577276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506891, 22.532000, 28.488029>,  <17.096790, 22.488035, 28.909433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506891, 22.532000, 28.488029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.731867, 22.830774, 28.346188>,  <16.866852, 23.010040, 28.261082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.731867, 22.830774, 28.346188>,  <16.506891, 22.532000, 28.488029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731867, 22.830774, 28.346188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499575, -0.034753, -0.865573,
		-0.658854, 0.663984, 0.353605,
		0.562438, 0.746939, -0.354607,
		16.900599, 23.054855, 28.239805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056938, 23.073374, 28.162569>,  <16.506891, 22.532000, 28.488029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056938, 23.073374, 28.162569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.412542, 23.065176, 27.979597>,  <16.625904, 23.060257, 27.869814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.412542, 23.065176, 27.979597>,  <16.056938, 23.073374, 28.162569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412542, 23.065176, 27.979597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457134, 0.017670, -0.889222,
		0.026305, 0.999634, 0.006341,
		0.889009, -0.020492, -0.457431,
		16.679245, 23.059029, 27.842367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.974225, 23.551498, 27.582792>,  <16.056938, 23.073374, 28.162569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.974225, 23.551498, 27.582792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.285536, 23.316484, 27.494169>,  <16.472322, 23.175476, 27.440996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.285536, 23.316484, 27.494169>,  <15.974225, 23.551498, 27.582792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285536, 23.316484, 27.494169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390172, -0.176036, -0.903757,
		0.491986, 0.789819, -0.366244,
		0.778277, -0.587534, -0.221558,
		16.519018, 23.140224, 27.427702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967620, 23.418297, 26.837128>,  <15.974225, 23.551498, 27.582792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967620, 23.418297, 26.837128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.250389, 23.152580, 26.934269>,  <16.420052, 22.993151, 26.992554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.250389, 23.152580, 26.934269>,  <15.967620, 23.418297, 26.837128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250389, 23.152580, 26.934269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131758, -0.461029, -0.877549,
		0.694910, 0.588362, -0.413438,
		0.706923, -0.664291, 0.242853,
		16.462465, 22.953293, 27.007124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331781, 23.366322, 26.251219>,  <15.967620, 23.418297, 26.837128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331781, 23.366322, 26.251219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.450548, 23.056257, 26.474277>,  <16.521809, 22.870218, 26.608112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.450548, 23.056257, 26.474277>,  <16.331781, 23.366322, 26.251219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450548, 23.056257, 26.474277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027301, -0.576850, -0.816393,
		0.954513, 0.257624, -0.150114,
		0.296916, -0.775160, 0.557645,
		16.539623, 22.823709, 26.641571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917276, 23.024696, 25.879936>,  <16.331781, 23.366322, 26.251219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917276, 23.024696, 25.879936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.729351, 22.757099, 26.110317>,  <16.616596, 22.596540, 26.248547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.729351, 22.757099, 26.110317>,  <16.917276, 23.024696, 25.879936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729351, 22.757099, 26.110317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117181, -0.599405, -0.791822,
		0.874954, -0.439500, 0.203215,
		-0.469814, -0.668995, 0.575953,
		16.588408, 22.556400, 26.283104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701300, 22.972219, 25.730139>,  <16.917276, 23.024696, 25.879936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701300, 22.972219, 25.730139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.879171, 23.161606, 25.426010>,  <17.985895, 23.275238, 25.243532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.879171, 23.161606, 25.426010>,  <17.701300, 22.972219, 25.730139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879171, 23.161606, 25.426010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126435, 0.807186, 0.576598,
		0.886721, -0.352533, 0.299076,
		0.444680, 0.473468, -0.760321,
		18.012575, 23.303646, 25.197914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318857, 23.364555, 26.012119>,  <17.701300, 22.972219, 25.730139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318857, 23.364555, 26.012119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.205057, 23.552700, 25.677977>,  <18.136778, 23.665586, 25.477491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.205057, 23.552700, 25.677977>,  <18.318857, 23.364555, 26.012119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205057, 23.552700, 25.677977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192920, 0.881628, 0.430713,
		0.939065, -0.038620, -0.341564,
		-0.284498, 0.470362, -0.835356,
		18.119707, 23.693810, 25.427370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824114, 23.967640, 25.811401>,  <18.318857, 23.364555, 26.012119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824114, 23.967640, 25.811401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.487951, 24.041229, 25.607491>,  <18.286253, 24.085382, 25.485144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.487951, 24.041229, 25.607491>,  <18.824114, 23.967640, 25.811401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487951, 24.041229, 25.607491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139537, 0.982360, 0.124490,
		0.523686, 0.033490, -0.851253,
		-0.840406, 0.183975, -0.509775,
		18.235830, 24.096422, 25.454557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993475, 24.464685, 25.414095>,  <18.824114, 23.967640, 25.811401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993475, 24.464685, 25.414095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.595526, 24.491663, 25.444237>,  <18.356756, 24.507851, 25.462322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.595526, 24.491663, 25.444237>,  <18.993475, 24.464685, 25.414095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595526, 24.491663, 25.444237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087235, 0.949282, 0.302082,
		-0.051161, 0.307107, -0.950299,
		-0.994873, 0.067445, 0.075357,
		18.297064, 24.511896, 25.466845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828629, 25.067631, 25.265938>,  <18.993475, 24.464685, 25.414095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828629, 25.067631, 25.265938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.475307, 24.991201, 25.437176>,  <18.263315, 24.945345, 25.539919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.475307, 24.991201, 25.437176>,  <18.828629, 25.067631, 25.265938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.475307, 24.991201, 25.437176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122415, 0.975497, 0.182811,
		-0.452538, 0.109072, -0.885050,
		-0.883303, -0.191072, 0.428097,
		18.210316, 24.933880, 25.565605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410681, 25.669149, 25.003931>,  <18.828629, 25.067631, 25.265938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.410681, 25.669149, 25.003931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.250368, 25.496740, 25.327311>,  <18.154181, 25.393295, 25.521338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.250368, 25.496740, 25.327311>,  <18.410681, 25.669149, 25.003931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250368, 25.496740, 25.327311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214774, 0.902032, 0.374445,
		-0.890643, -0.023563, -0.454092,
		-0.400783, -0.431025, 0.808450,
		18.130133, 25.367434, 25.569845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836308, 26.043098, 25.169521>,  <18.410681, 25.669149, 25.003931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836308, 26.043098, 25.169521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.912277, 25.865843, 25.519962>,  <17.957859, 25.759489, 25.730227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.912277, 25.865843, 25.519962>,  <17.836308, 26.043098, 25.169521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.912277, 25.865843, 25.519962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120137, 0.875148, 0.468703,
		-0.974420, -0.194272, 0.112976,
		0.189926, -0.443141, 0.876101,
		17.969255, 25.732901, 25.782793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622362, 26.508226, 25.725712>,  <17.836308, 26.043098, 25.169521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622362, 26.508226, 25.725712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.769491, 26.249310, 25.992760>,  <17.857769, 26.093960, 26.152988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.769491, 26.249310, 25.992760>,  <17.622362, 26.508226, 25.725712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.769491, 26.249310, 25.992760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044852, 0.729468, 0.682543,
		-0.928813, -0.221112, 0.297348,
		0.367824, -0.647292, 0.667621,
		17.879839, 26.055122, 26.193047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162163, 26.523102, 26.324642>,  <17.622362, 26.508226, 25.725712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162163, 26.523102, 26.324642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.542204, 26.444916, 26.421885>,  <17.770229, 26.398005, 26.480230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.542204, 26.444916, 26.421885>,  <17.162163, 26.523102, 26.324642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542204, 26.444916, 26.421885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003944, 0.786797, 0.617200,
		-0.311915, -0.585444, 0.748308,
		0.950102, -0.195465, 0.243104,
		17.827234, 26.386276, 26.494816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.615203, 15.375991, 14.803246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935664, 15.216283, 14.981567>,  <16.127941, 15.120459, 15.088560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935664, 15.216283, 14.981567>,  <15.615203, 15.375991, 14.803246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935664, 15.216283, 14.981567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182759, 0.546104, 0.817539,
		-0.569873, -0.736447, 0.364543,
		0.801152, -0.399270, 0.445802,
		16.176010, 15.096502, 15.115308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393281, 15.053890, 15.424965>,  <15.615203, 15.375991, 14.803246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393281, 15.053890, 15.424965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.771729, 15.183346, 15.429294>,  <15.998797, 15.261019, 15.431891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.771729, 15.183346, 15.429294>,  <15.393281, 15.053890, 15.424965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771729, 15.183346, 15.429294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215195, 0.603422, 0.767837,
		0.241970, -0.728794, 0.640555,
		0.946119, 0.323638, 0.010823,
		16.055565, 15.280437, 15.432541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674084, 15.035998, 16.174040>,  <15.393281, 15.053890, 15.424965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674084, 15.035998, 16.174040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941111, 15.278410, 16.001028>,  <16.101326, 15.423857, 15.897221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941111, 15.278410, 16.001028>,  <15.674084, 15.035998, 16.174040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941111, 15.278410, 16.001028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057652, 0.621260, 0.781481,
		0.742316, -0.496752, 0.449670,
		0.667564, 0.606030, -0.432532,
		16.141380, 15.460218, 15.871268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261206, 15.184462, 16.658842>,  <15.674084, 15.035998, 16.174040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261206, 15.184462, 16.658842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245687, 15.478900, 16.388536>,  <16.236376, 15.655563, 16.226353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245687, 15.478900, 16.388536>,  <16.261206, 15.184462, 16.658842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245687, 15.478900, 16.388536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096717, 0.675864, 0.730653,
		0.994556, -0.037011, -0.097414,
		-0.038796, 0.736096, -0.675764,
		16.234049, 15.699729, 16.185806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.783403, 15.672611, 16.833755>,  <16.261206, 15.184462, 16.658842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.783403, 15.672611, 16.833755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553455, 15.903930, 16.602205>,  <16.415487, 16.042721, 16.463274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553455, 15.903930, 16.602205>,  <16.783403, 15.672611, 16.833755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553455, 15.903930, 16.602205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178556, 0.779071, 0.600971,
		0.798526, 0.242118, -0.551122,
		-0.574869, 0.578297, -0.578877,
		16.380995, 16.077419, 16.428543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.194611, 16.340450, 16.967705>,  <16.783403, 15.672611, 16.833755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.194611, 16.340450, 16.967705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819448, 16.398733, 16.841780>,  <16.594351, 16.433702, 16.766224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819448, 16.398733, 16.841780>,  <17.194611, 16.340450, 16.967705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819448, 16.398733, 16.841780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083999, 0.785116, 0.613626,
		0.336574, 0.601966, -0.724124,
		-0.937903, 0.145705, -0.314814,
		16.538078, 16.442444, 16.747335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146391, 17.014326, 17.068481>,  <17.194611, 16.340450, 16.967705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146391, 17.014326, 17.068481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758972, 16.924107, 17.026447>,  <16.526522, 16.869974, 17.001226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758972, 16.924107, 17.026447>,  <17.146391, 17.014326, 17.068481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758972, 16.924107, 17.026447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246102, 0.805970, 0.538374,
		-0.036737, 0.547302, -0.836129,
		-0.968548, -0.225551, -0.105084,
		16.468409, 16.856441, 16.994923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807156, 17.657822, 16.858902>,  <17.146391, 17.014326, 17.068481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807156, 17.657822, 16.858902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.558796, 17.388407, 17.019318>,  <16.409781, 17.226757, 17.115566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.558796, 17.388407, 17.019318>,  <16.807156, 17.657822, 16.858902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.558796, 17.388407, 17.019318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094029, 0.571898, 0.814918,
		-0.778232, 0.468271, -0.418422,
		-0.620898, -0.673539, 0.401038,
		16.372526, 17.186344, 17.139629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278404, 18.074455, 17.092884>,  <16.807156, 17.657822, 16.858902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278404, 18.074455, 17.092884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242945, 17.727623, 17.288971>,  <16.221670, 17.519524, 17.406622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242945, 17.727623, 17.288971>,  <16.278404, 18.074455, 17.092884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242945, 17.727623, 17.288971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259775, 0.495246, 0.829005,
		-0.961592, -0.053857, -0.269148,
		-0.088647, -0.867082, 0.490215,
		16.216351, 17.467499, 17.436035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.627007, 18.024626, 17.522530>,  <16.278404, 18.074455, 17.092884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.627007, 18.024626, 17.522530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900594, 17.771769, 17.668180>,  <16.064745, 17.620054, 17.755571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900594, 17.771769, 17.668180>,  <15.627007, 18.024626, 17.522530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900594, 17.771769, 17.668180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086201, 0.425609, 0.900792,
		-0.724404, -0.647499, 0.236610,
		0.683965, -0.632141, 0.364128,
		16.105783, 17.582127, 17.777418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400343, 17.886454, 18.312559>,  <15.627007, 18.024626, 17.522530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400343, 17.886454, 18.312559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.771560, 17.737576, 18.306807>,  <15.994290, 17.648249, 18.303356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.771560, 17.737576, 18.306807>,  <15.400343, 17.886454, 18.312559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771560, 17.737576, 18.306807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188291, 0.435479, 0.880287,
		-0.321378, -0.819651, 0.474224,
		0.928043, -0.372196, -0.014380,
		16.049973, 17.625917, 18.302492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577980, 17.488241, 18.933249>,  <15.400343, 17.886454, 18.312559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577980, 17.488241, 18.933249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875615, 17.676746, 18.743832>,  <16.054195, 17.789850, 18.630180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875615, 17.676746, 18.743832>,  <15.577980, 17.488241, 18.933249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875615, 17.676746, 18.743832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122093, 0.600953, 0.789905,
		0.656831, -0.645575, 0.389624,
		0.744088, 0.471263, -0.473544,
		16.098841, 17.818125, 18.601768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.323122, 17.319326, 19.508032>,  <15.577980, 17.488241, 18.933249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.323122, 17.319326, 19.508032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.979637, 17.523638, 19.491444>,  <14.773546, 17.646225, 19.481491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.979637, 17.523638, 19.491444>,  <15.323122, 17.319326, 19.508032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979637, 17.523638, 19.491444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380402, -0.689564, -0.616275,
		-0.343375, -0.513428, 0.786438,
		-0.858713, 0.510777, -0.041470,
		14.722023, 17.676870, 19.479002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813860, 16.756691, 19.320807>,  <15.323122, 17.319326, 19.508032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813860, 16.756691, 19.320807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600498, 17.086040, 19.243307>,  <14.472481, 17.283649, 19.196808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600498, 17.086040, 19.243307>,  <14.813860, 16.756691, 19.320807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600498, 17.086040, 19.243307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478419, -0.482569, -0.733650,
		-0.697564, -0.298639, 0.651321,
		-0.533404, 0.823372, -0.193749,
		14.440477, 17.333052, 19.185183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233910, 16.558657, 19.392767>,  <14.813860, 16.756691, 19.320807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.233910, 16.558657, 19.392767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187401, 16.883333, 19.163809>,  <14.159495, 17.078140, 19.026434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187401, 16.883333, 19.163809>,  <14.233910, 16.558657, 19.392767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187401, 16.883333, 19.163809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639190, -0.502254, -0.582390,
		-0.760209, 0.298153, 0.577224,
		-0.116272, 0.811693, -0.572394,
		14.152519, 17.126841, 18.992090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550898, 16.766270, 19.413380>,  <14.233910, 16.558657, 19.392767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550898, 16.766270, 19.413380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.723519, 16.891209, 19.074865>,  <13.827092, 16.966171, 18.871758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.723519, 16.891209, 19.074865>,  <13.550898, 16.766270, 19.413380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.723519, 16.891209, 19.074865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594464, -0.607159, -0.527229,
		-0.678508, 0.730615, -0.076343,
		0.431554, 0.312346, -0.846287,
		13.852985, 16.984913, 18.820980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.049625, 16.915298, 18.976889>,  <13.550898, 16.766270, 19.413380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.049625, 16.915298, 18.976889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.361411, 16.832094, 18.740526>,  <13.548482, 16.782171, 18.598709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.361411, 16.832094, 18.740526>,  <13.049625, 16.915298, 18.976889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361411, 16.832094, 18.740526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613541, -0.443976, -0.653034,
		-0.126511, 0.871561, -0.473685,
		0.779463, -0.208009, -0.590906,
		13.595250, 16.769691, 18.563255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758561, 17.071507, 18.348730>,  <13.049625, 16.915298, 18.976889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758561, 17.071507, 18.348730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.099605, 16.885521, 18.253345>,  <13.304231, 16.773930, 18.196115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.099605, 16.885521, 18.253345>,  <12.758561, 17.071507, 18.348730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.099605, 16.885521, 18.253345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478803, -0.512363, -0.712904,
		0.209297, 0.722005, -0.659472,
		0.852610, -0.464966, -0.238462,
		13.355388, 16.746031, 18.181807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749318, 16.969351, 17.555683>,  <12.758561, 17.071507, 18.348730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749318, 16.969351, 17.555683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967737, 16.702545, 17.758432>,  <13.098789, 16.542461, 17.880081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967737, 16.702545, 17.758432>,  <12.749318, 16.969351, 17.555683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.967737, 16.702545, 17.758432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464615, -0.744582, -0.479303,
		0.697111, 0.026221, -0.716483,
		0.546048, -0.667016, 0.506874,
		13.131552, 16.502439, 17.910494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721832, 16.507301, 17.097990>,  <12.749318, 16.969351, 17.555683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721832, 16.507301, 17.097990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.868721, 16.304920, 17.410185>,  <12.956855, 16.183491, 17.597502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.868721, 16.304920, 17.410185>,  <12.721832, 16.507301, 17.097990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.868721, 16.304920, 17.410185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386635, -0.846216, -0.366648,
		0.845967, -0.167122, -0.506369,
		0.367223, -0.505953, 0.780487,
		12.978888, 16.153135, 17.644331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157569, 15.916916, 16.817749>,  <12.721832, 16.507301, 17.097990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157569, 15.916916, 16.817749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.001899, 15.847493, 17.179615>,  <12.908497, 15.805840, 17.396734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.001899, 15.847493, 17.179615>,  <13.157569, 15.916916, 16.817749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.001899, 15.847493, 17.179615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341946, -0.884699, -0.316828,
		0.855345, -0.432649, 0.284956,
		-0.389176, -0.173558, 0.904665,
		12.885146, 15.795425, 17.451015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.244031, 15.121647, 16.922754>,  <13.157569, 15.916916, 16.817749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.244031, 15.121647, 16.922754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011142, 15.227468, 17.230268>,  <12.871408, 15.290960, 17.414776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011142, 15.227468, 17.230268>,  <13.244031, 15.121647, 16.922754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011142, 15.227468, 17.230268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451585, -0.891533, -0.035206,
		0.676082, -0.367669, 0.638539,
		-0.582223, 0.264552, 0.768784,
		12.836474, 15.306833, 17.460903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310514, 14.546449, 17.404461>,  <13.244031, 15.121647, 16.922754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.310514, 14.546449, 17.404461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968760, 14.752241, 17.433678>,  <12.763708, 14.875716, 17.451208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968760, 14.752241, 17.433678>,  <13.310514, 14.546449, 17.404461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.968760, 14.752241, 17.433678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518642, -0.835573, -0.181185,
		-0.032184, -0.192685, 0.980733,
		-0.854385, 0.514481, 0.073043,
		12.712445, 14.906586, 17.455591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.874285, 14.141309, 17.727867>,  <13.310514, 14.546449, 17.404461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.874285, 14.141309, 17.727867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596540, 14.391912, 17.586246>,  <12.429894, 14.542274, 17.501274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596540, 14.391912, 17.586246>,  <12.874285, 14.141309, 17.727867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596540, 14.391912, 17.586246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597130, -0.776186, -0.202412,
		-0.401623, 0.070867, 0.913059,
		-0.694360, 0.626508, -0.354051,
		12.388232, 14.579865, 17.480032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.266590, 14.067149, 18.014652>,  <12.874285, 14.141309, 17.727867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.266590, 14.067149, 18.014652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155699, 14.229354, 17.666237>,  <12.089164, 14.326676, 17.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155699, 14.229354, 17.666237>,  <12.266590, 14.067149, 18.014652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.155699, 14.229354, 17.666237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710472, -0.696828, -0.098284,
		-0.646819, 0.591600, 0.481285,
		-0.277228, 0.405512, -0.871037,
		12.072531, 14.351007, 17.404926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.577999, 14.074639, 18.016586>,  <12.266590, 14.067149, 18.014652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.577999, 14.074639, 18.016586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.661493, 14.095653, 17.625961>,  <11.711590, 14.108260, 17.391586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.661493, 14.095653, 17.625961>,  <11.577999, 14.074639, 18.016586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.661493, 14.095653, 17.625961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611969, -0.771879, -0.172328,
		-0.762839, 0.633596, -0.128970,
		0.208735, 0.052533, -0.976560,
		11.724113, 14.111412, 17.332993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.344105, 14.395798, 18.691998>,  <11.577999, 14.074639, 18.016586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.344105, 14.395798, 18.691998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334819, 14.065757, 18.917801>,  <11.329247, 13.867732, 19.053282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334819, 14.065757, 18.917801>,  <11.344105, 14.395798, 18.691998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.334819, 14.065757, 18.917801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807875, 0.317134, 0.496754,
		-0.588897, 0.467583, 0.659217,
		-0.023214, -0.825101, 0.564508,
		11.327854, 13.818227, 19.087152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176749, 14.584656, 19.378380>,  <11.344105, 14.395798, 18.691998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176749, 14.584656, 19.378380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.447484, 14.290431, 19.366781>,  <11.609925, 14.113896, 19.359823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.447484, 14.290431, 19.366781>,  <11.176749, 14.584656, 19.378380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.447484, 14.290431, 19.366781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516214, 0.446184, 0.731056,
		-0.524799, -0.509774, 0.681701,
		0.676838, -0.735561, -0.028995,
		11.650536, 14.069763, 19.358082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.323933, 14.366914, 20.107784>,  <11.176749, 14.584656, 19.378380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.323933, 14.366914, 20.107784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.620281, 14.243513, 19.869143>,  <11.798090, 14.169473, 19.725958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.620281, 14.243513, 19.869143>,  <11.323933, 14.366914, 20.107784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.620281, 14.243513, 19.869143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662369, 0.188462, 0.725085,
		-0.111254, -0.932367, 0.343969,
		0.740871, -0.308503, -0.596604,
		11.842543, 14.150962, 19.690161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670843, 13.973645, 20.619997>,  <11.323933, 14.366914, 20.107784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670843, 13.973645, 20.619997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.931342, 14.039955, 20.323782>,  <12.087642, 14.079741, 20.146053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.931342, 14.039955, 20.323782>,  <11.670843, 13.973645, 20.619997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931342, 14.039955, 20.323782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720829, 0.169940, 0.671957,
		0.237240, -0.971411, -0.008822,
		0.651247, 0.165774, -0.740538,
		12.126717, 14.089687, 20.101620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123853, 13.485417, 20.694750>,  <11.670843, 13.973645, 20.619997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123853, 13.485417, 20.694750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288439, 13.795469, 20.502972>,  <12.387190, 13.981501, 20.387905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288439, 13.795469, 20.502972>,  <12.123853, 13.485417, 20.694750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.288439, 13.795469, 20.502972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654517, 0.114785, 0.747283,
		0.634275, -0.621287, -0.460106,
		0.411464, 0.775130, -0.479448,
		12.411878, 14.028008, 20.359137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831028, 13.394550, 20.517309>,  <12.123853, 13.485417, 20.694750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831028, 13.394550, 20.517309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.796997, 13.791805, 20.549412>,  <12.776579, 14.030158, 20.568672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.796997, 13.791805, 20.549412>,  <12.831028, 13.394550, 20.517309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.796997, 13.791805, 20.549412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684067, -0.000342, 0.729419,
		0.724441, 0.116956, -0.679343,
		-0.085078, 0.993137, 0.080254,
		12.771474, 14.089746, 20.573488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.502985, 13.519285, 20.527040>,  <12.831028, 13.394550, 20.517309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.502985, 13.519285, 20.527040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293252, 13.838386, 20.646149>,  <13.167412, 14.029846, 20.717613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293252, 13.838386, 20.646149>,  <13.502985, 13.519285, 20.527040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293252, 13.838386, 20.646149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746052, 0.261821, 0.612256,
		0.410465, 0.543178, -0.732445,
		-0.524333, 0.797752, 0.297771,
		13.135952, 14.077711, 20.735479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952779, 14.081244, 20.525364>,  <13.502985, 13.519285, 20.527040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.952779, 14.081244, 20.525364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.656180, 14.216831, 20.756979>,  <13.478221, 14.298183, 20.895948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.656180, 14.216831, 20.756979>,  <13.952779, 14.081244, 20.525364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656180, 14.216831, 20.756979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659083, 0.206329, 0.723214,
		0.125673, 0.917894, -0.376399,
		-0.741496, 0.338966, 0.579038,
		13.433732, 14.318521, 20.930691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237491, 14.752173, 20.811281>,  <13.952779, 14.081244, 20.525364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237491, 14.752173, 20.811281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931761, 14.667003, 21.054745>,  <13.748322, 14.615900, 21.200823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931761, 14.667003, 21.054745>,  <14.237491, 14.752173, 20.811281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931761, 14.667003, 21.054745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537442, 0.311226, 0.783769,
		-0.356317, 0.926175, -0.123442,
		-0.764326, -0.212928, 0.608661,
		13.702463, 14.603125, 21.237343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.100577, 15.391951, 21.266079>,  <14.237491, 14.752173, 20.811281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.100577, 15.391951, 21.266079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912572, 15.092835, 21.453651>,  <13.799768, 14.913366, 21.566195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912572, 15.092835, 21.453651>,  <14.100577, 15.391951, 21.266079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912572, 15.092835, 21.453651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414928, 0.281724, 0.865139,
		-0.779052, 0.601201, 0.177864,
		-0.470014, -0.747789, 0.468933,
		13.771567, 14.868499, 21.594332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887700, 15.670855, 21.959885>,  <14.100577, 15.391951, 21.266079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.887700, 15.670855, 21.959885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834836, 15.277212, 22.007326>,  <13.803118, 15.041026, 22.035791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834836, 15.277212, 22.007326>,  <13.887700, 15.670855, 21.959885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.834836, 15.277212, 22.007326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408832, 0.054884, 0.910958,
		-0.902990, 0.168881, 0.395082,
		-0.132160, -0.984107, 0.118603,
		13.795188, 14.981980, 22.042908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479755, 15.598806, 22.473034>,  <13.887700, 15.670855, 21.959885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479755, 15.598806, 22.473034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693416, 15.262340, 22.439274>,  <13.821611, 15.060460, 22.419018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693416, 15.262340, 22.439274>,  <13.479755, 15.598806, 22.473034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693416, 15.262340, 22.439274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493380, 0.229111, 0.839097,
		-0.686484, -0.489844, 0.537395,
		0.534150, -0.841167, -0.084398,
		13.853661, 15.009990, 22.413954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386617, 15.162797, 22.995218>,  <13.479755, 15.598806, 22.473034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386617, 15.162797, 22.995218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.745031, 15.036257, 22.870613>,  <13.960080, 14.960333, 22.795851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.745031, 15.036257, 22.870613>,  <13.386617, 15.162797, 22.995218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.745031, 15.036257, 22.870613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326342, -0.006439, 0.945230,
		-0.301030, -0.948621, 0.097469,
		0.896037, -0.316351, -0.311513,
		14.013843, 14.941352, 22.777159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495798, 14.737828, 23.458208>,  <13.386617, 15.162797, 22.995218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495798, 14.737828, 23.458208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.859538, 14.788507, 23.299700>,  <14.077783, 14.818914, 23.204596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.859538, 14.788507, 23.299700>,  <13.495798, 14.737828, 23.458208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859538, 14.788507, 23.299700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412435, -0.149593, 0.898621,
		0.054574, -0.980596, -0.188287,
		0.909351, 0.126698, -0.396268,
		14.132343, 14.826516, 23.180819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.873821, 14.238000, 23.895752>,  <13.495798, 14.737828, 23.458208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.873821, 14.238000, 23.895752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140300, 14.474431, 23.713846>,  <14.300187, 14.616289, 23.604704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140300, 14.474431, 23.713846>,  <13.873821, 14.238000, 23.895752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140300, 14.474431, 23.713846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609405, -0.079953, 0.788818,
		0.429892, -0.802643, -0.413469,
		0.666197, 0.591077, -0.454763,
		14.340158, 14.651754, 23.577417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477653, 14.017431, 24.136448>,  <13.873821, 14.238000, 23.895752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.477653, 14.017431, 24.136448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594433, 14.381971, 24.020374>,  <14.664501, 14.600696, 23.950729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594433, 14.381971, 24.020374>,  <14.477653, 14.017431, 24.136448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594433, 14.381971, 24.020374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638405, 0.040234, 0.768648,
		0.712183, -0.409662, -0.570064,
		0.291950, 0.911350, -0.290184,
		14.682017, 14.655376, 23.933319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224766, 14.043061, 24.242535>,  <14.477653, 14.017431, 24.136448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224766, 14.043061, 24.242535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135366, 14.427951, 24.180342>,  <15.081727, 14.658884, 24.143026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135366, 14.427951, 24.180342>,  <15.224766, 14.043061, 24.242535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135366, 14.427951, 24.180342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566774, 0.258072, 0.782410,
		0.792978, 0.086746, -0.603043,
		-0.223499, 0.962223, -0.155481,
		15.068316, 14.716618, 24.133698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899590, 14.445858, 24.281540>,  <15.224766, 14.043061, 24.242535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899590, 14.445858, 24.281540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606274, 14.694487, 24.391766>,  <15.430285, 14.843664, 24.457901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606274, 14.694487, 24.391766>,  <15.899590, 14.445858, 24.281540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606274, 14.694487, 24.391766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607511, 0.416984, 0.676058,
		0.305314, 0.663154, -0.683382,
		-0.733289, 0.621572, 0.275563,
		15.386287, 14.880959, 24.474434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205063, 14.979602, 24.423849>,  <15.899590, 14.445858, 24.281540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205063, 14.979602, 24.423849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852998, 15.049092, 24.600544>,  <15.641758, 15.090787, 24.706560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852998, 15.049092, 24.600544>,  <16.205063, 14.979602, 24.423849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852998, 15.049092, 24.600544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473110, 0.396426, 0.786774,
		-0.038432, 0.901480, -0.431111,
		-0.880165, 0.173726, 0.441735,
		15.588948, 15.101210, 24.733065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203701, 15.733024, 24.588369>,  <16.205063, 14.979602, 24.423849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203701, 15.733024, 24.588369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922728, 15.610384, 24.845301>,  <15.754144, 15.536800, 24.999460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922728, 15.610384, 24.845301>,  <16.203701, 15.733024, 24.588369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922728, 15.610384, 24.845301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387189, 0.592643, 0.706300,
		-0.597223, 0.744830, -0.297579,
		-0.702431, -0.306599, 0.642330,
		15.711998, 15.518404, 25.038000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012556, 16.353378, 24.933065>,  <16.203701, 15.733024, 24.588369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012556, 16.353378, 24.933065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.867410, 16.057266, 25.159451>,  <15.780322, 15.879599, 25.295282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.867410, 16.057266, 25.159451>,  <16.012556, 16.353378, 24.933065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867410, 16.057266, 25.159451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315186, 0.474057, 0.822148,
		-0.876919, 0.476713, 0.061307,
		-0.362866, -0.740280, 0.565963,
		15.758550, 15.835182, 25.329239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485341, 16.585951, 25.505112>,  <16.012556, 16.353378, 24.933065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485341, 16.585951, 25.505112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659540, 16.244844, 25.620441>,  <15.764060, 16.040180, 25.689638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659540, 16.244844, 25.620441>,  <15.485341, 16.585951, 25.505112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659540, 16.244844, 25.620441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286369, 0.434894, 0.853733,
		-0.853425, -0.289232, 0.433601,
		0.435498, -0.852767, 0.288323,
		15.790190, 15.989015, 25.706938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176587, 16.487074, 26.127272>,  <15.485341, 16.585951, 25.505112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176587, 16.487074, 26.127272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509304, 16.267866, 26.091949>,  <15.708934, 16.136341, 26.070757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509304, 16.267866, 26.091949>,  <15.176587, 16.487074, 26.127272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.509304, 16.267866, 26.091949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320802, 0.344772, 0.882167,
		-0.452999, -0.762107, 0.462584,
		0.831792, -0.548019, -0.088304,
		15.758842, 16.103460, 26.065458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310396, 16.226156, 26.736399>,  <15.176587, 16.487074, 26.127272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310396, 16.226156, 26.736399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679172, 16.214869, 26.581875>,  <15.900436, 16.208096, 26.489161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679172, 16.214869, 26.581875>,  <15.310396, 16.226156, 26.736399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679172, 16.214869, 26.581875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381746, 0.235074, 0.893874,
		0.065586, -0.971568, 0.227496,
		0.921938, -0.028220, -0.386309,
		15.955752, 16.206404, 26.465982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768908, 15.986738, 27.353638>,  <15.310396, 16.226156, 26.736399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768908, 15.986738, 27.353638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.000595, 16.174372, 27.086966>,  <16.139608, 16.286951, 26.926962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.000595, 16.174372, 27.086966>,  <15.768908, 15.986738, 27.353638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.000595, 16.174372, 27.086966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589123, 0.324383, 0.740075,
		0.563417, -0.821423, -0.088459,
		0.579220, 0.469084, -0.666682,
		16.174360, 16.315098, 26.886961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433949, 15.909229, 27.587778>,  <15.768908, 15.986738, 27.353638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433949, 15.909229, 27.587778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511421, 16.217501, 27.344948>,  <16.557905, 16.402464, 27.199249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511421, 16.217501, 27.344948>,  <16.433949, 15.909229, 27.587778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511421, 16.217501, 27.344948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661446, 0.354422, 0.660965,
		0.724552, -0.529566, -0.441116,
		0.193683, 0.770678, -0.607077,
		16.569527, 16.448704, 27.162825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305595, 16.073023, 27.660585>,  <16.433949, 15.909229, 27.587778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305595, 16.073023, 27.660585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148033, 16.384577, 27.465372>,  <17.053495, 16.571510, 27.348244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148033, 16.384577, 27.465372>,  <17.305595, 16.073023, 27.660585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148033, 16.384577, 27.465372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582190, 0.622295, 0.523263,
		0.711262, -0.078010, -0.698585,
		-0.393906, 0.778886, -0.488031,
		17.029861, 16.618242, 27.318962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884613, 16.507479, 27.599762>,  <17.305595, 16.073023, 27.660585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.884613, 16.507479, 27.599762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557079, 16.731461, 27.549232>,  <17.360559, 16.865850, 27.518915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557079, 16.731461, 27.549232>,  <17.884613, 16.507479, 27.599762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.557079, 16.731461, 27.549232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454471, 0.766831, 0.453239,
		0.350663, 0.313718, -0.882393,
		-0.818835, 0.559956, -0.126324,
		17.311428, 16.899446, 27.511335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
