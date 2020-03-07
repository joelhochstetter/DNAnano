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
	<3.840503, 1.331677, 3.985235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.225510, 1.234249, 3.937511>,  <4.456514, 1.175792, 3.908877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.225510, 1.234249, 3.937511>,  <3.840503, 1.331677, 3.985235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.225510, 1.234249, 3.937511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158385, -0.147681, -0.976271,
		0.220170, 0.958574, -0.180723,
		0.962517, -0.243569, -0.119309,
		4.514265, 1.161178, 3.901719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.292715, 1.859910, 3.593853>,  <3.840503, 1.331677, 3.985235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.292715, 1.859910, 3.593853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404949, 1.478806, 3.547342>,  <4.472290, 1.250143, 3.519436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404949, 1.478806, 3.547342>,  <4.292715, 1.859910, 3.593853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404949, 1.478806, 3.547342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202563, 0.059636, -0.977452,
		0.938211, 0.297812, -0.176261,
		0.280585, -0.952760, -0.116277,
		4.489125, 1.192977, 3.512459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.726171, 1.778934, 2.965515>,  <4.292715, 1.859910, 3.593853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.726171, 1.778934, 2.965515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555168, 1.426437, 3.046164>,  <4.452567, 1.214939, 3.094553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555168, 1.426437, 3.046164>,  <4.726171, 1.778934, 2.965515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.555168, 1.426437, 3.046164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350069, -0.044251, -0.935678,
		0.833480, -0.470591, -0.289578,
		-0.427507, -0.881242, 0.201622,
		4.426916, 1.162065, 3.106650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.927483, 1.204153, 2.478345>,  <4.726171, 1.778934, 2.965515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.927483, 1.204153, 2.478345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.547688, 1.180462, 2.601610>,  <4.319810, 1.166247, 2.675569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.547688, 1.180462, 2.601610>,  <4.927483, 1.204153, 2.478345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.547688, 1.180462, 2.601610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300065, -0.116025, -0.946836,
		0.091832, -0.991479, 0.092392,
		-0.949488, -0.059226, 0.308163,
		4.262841, 1.162694, 2.694059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.703100, 0.463335, 2.337929>,  <4.927483, 1.204153, 2.478345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.703100, 0.463335, 2.337929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.407093, 0.731560, 2.358788>,  <4.229489, 0.892495, 2.371303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.407093, 0.731560, 2.358788>,  <4.703100, 0.463335, 2.337929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.407093, 0.731560, 2.358788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363959, -0.334043, -0.869453,
		-0.565604, -0.662390, 0.491255,
		-0.740018, 0.670563, 0.052147,
		4.185088, 0.932729, 2.374432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.059984, 0.065472, 2.095294>,  <4.703100, 0.463335, 2.337929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.059984, 0.065472, 2.095294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.960945, 0.452179, 2.069817>,  <3.901522, 0.684203, 2.054530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.960945, 0.452179, 2.069817>,  <4.059984, 0.065472, 2.095294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.960945, 0.452179, 2.069817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493432, -0.182402, -0.850443,
		-0.833799, -0.179137, 0.522196,
		-0.247596, 0.966768, -0.063695,
		3.886666, 0.742209, 2.050708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.346217, 0.089899, 1.795464>,  <4.059984, 0.065472, 2.095294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.346217, 0.089899, 1.795464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.505234, 0.452591, 1.739176>,  <3.600644, 0.670206, 1.705403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.505234, 0.452591, 1.739176>,  <3.346217, 0.089899, 1.795464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.505234, 0.452591, 1.739176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405400, 0.035980, -0.913431,
		-0.823171, 0.420176, 0.381892,
		0.397542, 0.906729, -0.140721,
		3.624496, 0.724610, 1.696959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.858362, 0.581008, 1.611178>,  <3.346217, 0.089899, 1.795464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.858362, 0.581008, 1.611178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.184555, 0.730247, 1.434187>,  <3.380271, 0.819791, 1.327993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.184555, 0.730247, 1.434187>,  <2.858362, 0.581008, 1.611178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.184555, 0.730247, 1.434187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529191, 0.171026, -0.831088,
		-0.234402, 0.911892, 0.336909,
		0.815483, 0.373098, -0.442477,
		3.429200, 0.842177, 1.301444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.744855, 0.017316, 0.572075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.763710, 0.318050, 0.309010>,  <3.775023, 0.498491, 0.151171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.763710, 0.318050, 0.309010>,  <3.744855, 0.017316, 0.572075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.763710, 0.318050, 0.309010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082897, 0.659067, 0.747501,
		0.995443, 0.019283, 0.093391,
		0.047137, 0.751837, -0.657662,
		3.777851, 0.543601, 0.111711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.312899, 0.500652, 0.534968>,  <3.744855, 0.017316, 0.572075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.312899, 0.500652, 0.534968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.965996, 0.685833, 0.461712>,  <3.757854, 0.796941, 0.417758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.965996, 0.685833, 0.461712>,  <4.312899, 0.500652, 0.534968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.965996, 0.685833, 0.461712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103633, 0.527665, 0.843107,
		0.486955, 0.712211, -0.505598,
		-0.867257, 0.462952, -0.183141,
		3.705819, 0.824719, 0.406770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.492682, 1.148726, 0.530641>,  <4.312899, 0.500652, 0.534968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.492682, 1.148726, 0.530641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.117599, 1.085209, 0.654247>,  <3.892550, 1.047099, 0.728411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.117599, 1.085209, 0.654247>,  <4.492682, 1.148726, 0.530641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.117599, 1.085209, 0.654247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215337, 0.432357, 0.875613,
		-0.272645, 0.887611, -0.371230,
		-0.937707, -0.158792, 0.309015,
		3.836287, 1.037571, 0.746952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.316515, 1.729239, 1.072019>,  <4.492682, 1.148726, 0.530641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.316515, 1.729239, 1.072019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.043114, 1.447868, 1.150009>,  <3.879073, 1.279046, 1.196803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.043114, 1.447868, 1.150009>,  <4.316515, 1.729239, 1.072019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.043114, 1.447868, 1.150009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100493, 0.173886, 0.979625,
		-0.722997, 0.689170, -0.048163,
		-0.683503, -0.703426, 0.194976,
		3.838063, 1.236841, 1.208502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.043771, 1.937728, 1.654883>,  <4.316515, 1.729239, 1.072019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.043771, 1.937728, 1.654883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.879318, 1.573124, 1.659286>,  <3.780647, 1.354362, 1.661929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.879318, 1.573124, 1.659286>,  <4.043771, 1.937728, 1.654883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.879318, 1.573124, 1.659286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036241, 0.028411, 0.998939,
		-0.910855, 0.410296, -0.044715,
		-0.411132, -0.911510, 0.011009,
		3.755979, 1.299671, 1.662589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.526547, 1.968548, 2.083807>,  <4.043771, 1.937728, 1.654883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.526547, 1.968548, 2.083807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.668800, 1.595177, 2.064888>,  <3.754153, 1.371154, 2.053537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.668800, 1.595177, 2.064888>,  <3.526547, 1.968548, 2.083807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.668800, 1.595177, 2.064888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068468, -0.024449, 0.997354,
		-0.932114, -0.357931, 0.055215,
		0.355634, -0.933428, -0.047296,
		3.775491, 1.315148, 2.050699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.102988, 1.639388, 2.576460>,  <3.526547, 1.968548, 2.083807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.102988, 1.639388, 2.576460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429054, 1.416405, 2.513538>,  <3.624694, 1.282615, 2.475785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429054, 1.416405, 2.513538>,  <3.102988, 1.639388, 2.576460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429054, 1.416405, 2.513538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165895, -0.035505, 0.985504,
		-0.554962, -0.829446, 0.063537,
		0.815167, -0.557458, -0.157305,
		3.673604, 1.249167, 2.466347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023349, 1.157200, 3.073238>,  <3.102988, 1.639388, 2.576460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023349, 1.157200, 3.073238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.408722, 1.165874, 2.966408>,  <3.639946, 1.171079, 2.902310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.408722, 1.165874, 2.966408>,  <3.023349, 1.157200, 3.073238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.408722, 1.165874, 2.966408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267654, -0.030730, 0.963025,
		0.012682, -0.999292, -0.035412,
		0.963431, 0.021691, -0.267075,
		3.697752, 1.172380, 2.886285>
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
