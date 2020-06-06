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
	<3.917001, 15.421809, 15.161349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.120603, 15.089925, 15.069702>,  <4.242764, 14.890794, 15.014714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.120603, 15.089925, 15.069702>,  <3.917001, 15.421809, 15.161349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.120603, 15.089925, 15.069702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650339, 0.545073, -0.529108,
		0.563892, 0.120314, 0.817038,
		0.509004, -0.829711, -0.229117,
		4.273304, 14.841012, 15.000967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.589901, 15.493003, 15.150936>,  <3.917001, 15.421809, 15.161349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.589901, 15.493003, 15.150936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479787, 15.213380, 14.886955>,  <4.413719, 15.045606, 14.728567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479787, 15.213380, 14.886955>,  <4.589901, 15.493003, 15.150936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.479787, 15.213380, 14.886955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283016, 0.597125, -0.750562,
		0.918760, -0.393396, 0.033465,
		-0.275285, -0.699057, -0.659952,
		4.397202, 15.003663, 14.688970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.116754, 15.377287, 14.633468>,  <4.589901, 15.493003, 15.150936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.116754, 15.377287, 14.633468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.738475, 15.341981, 14.508332>,  <4.511508, 15.320798, 14.433251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.738475, 15.341981, 14.508332>,  <5.116754, 15.377287, 14.633468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.738475, 15.341981, 14.508332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058558, 0.900421, -0.431061,
		0.319733, -0.425972, -0.846356,
		-0.945697, -0.088264, -0.312838,
		4.454766, 15.315502, 14.414481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.956633, 15.371267, 13.792458>,  <5.116754, 15.377287, 14.633468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.956633, 15.371267, 13.792458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679687, 15.530199, 14.033377>,  <4.513520, 15.625558, 14.177928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679687, 15.530199, 14.033377>,  <4.956633, 15.371267, 13.792458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.679687, 15.530199, 14.033377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173311, 0.901868, -0.395723,
		-0.700425, -0.169599, -0.693283,
		-0.692364, 0.397328, 0.602298,
		4.471978, 15.649398, 14.214066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.309744, 15.704215, 13.486624>,  <4.956633, 15.371267, 13.792458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.309744, 15.704215, 13.486624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367197, 15.882859, 13.839874>,  <4.401669, 15.990046, 14.051825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367197, 15.882859, 13.839874>,  <4.309744, 15.704215, 13.486624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.367197, 15.882859, 13.839874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039121, 0.889118, -0.456003,
		-0.988858, 0.100045, 0.110233,
		0.143631, 0.446610, 0.883125,
		4.410286, 16.016842, 14.104812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.738296, 16.253878, 13.579785>,  <4.309744, 15.704215, 13.486624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.738296, 16.253878, 13.579785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.066343, 16.322241, 13.798215>,  <4.263172, 16.363258, 13.929273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.066343, 16.322241, 13.798215>,  <3.738296, 16.253878, 13.579785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.066343, 16.322241, 13.798215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058688, 0.924194, -0.377388,
		-0.569176, 0.341550, 0.747918,
		0.820119, 0.170906, 0.546073,
		4.312379, 16.373512, 13.962037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.759738, 16.980999, 13.633218>,  <3.738296, 16.253878, 13.579785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.759738, 16.980999, 13.633218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.126842, 16.888935, 13.762672>,  <4.347105, 16.833696, 13.840345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.126842, 16.888935, 13.762672>,  <3.759738, 16.980999, 13.633218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.126842, 16.888935, 13.762672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343390, 0.869286, -0.355562,
		-0.199497, 0.437455, 0.876832,
		0.917760, -0.230162, 0.323638,
		4.402171, 16.819887, 13.859764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.852427, 17.603989, 14.072872>,  <3.759738, 16.980999, 13.633218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.852427, 17.603989, 14.072872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.182537, 17.429918, 13.928904>,  <4.380602, 17.325476, 13.842523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.182537, 17.429918, 13.928904>,  <3.852427, 17.603989, 14.072872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.182537, 17.429918, 13.928904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341506, 0.892165, -0.295662,
		0.449774, 0.121088, 0.884896,
		0.825274, -0.435178, -0.359920,
		4.430119, 17.299364, 13.820928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.464845, 17.929047, 14.417233>,  <3.852427, 17.603989, 14.072872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.464845, 17.929047, 14.417233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.635937, 17.770220, 14.092423>,  <4.738592, 17.674923, 13.897537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.635937, 17.770220, 14.092423>,  <4.464845, 17.929047, 14.417233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.635937, 17.770220, 14.092423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378871, 0.894383, -0.237773,
		0.820673, -0.205950, 0.532992,
		0.427730, -0.397069, -0.812024,
		4.764256, 17.651098, 13.848816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.040105, 18.180376, 14.511475>,  <4.464845, 17.929047, 14.417233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.040105, 18.180376, 14.511475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.028231, 18.095247, 14.120818>,  <5.021106, 18.044170, 13.886424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.028231, 18.095247, 14.120818>,  <5.040105, 18.180376, 14.511475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.028231, 18.095247, 14.120818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391201, 0.896658, -0.207283,
		0.919826, -0.388216, 0.056638,
		-0.029685, -0.212821, -0.976640,
		5.019325, 18.031401, 13.827826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.705423, 18.335516, 14.131309>,  <5.040105, 18.180376, 14.511475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.705423, 18.335516, 14.131309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.418877, 18.314978, 13.852975>,  <5.246949, 18.302654, 13.685975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.418877, 18.314978, 13.852975>,  <5.705423, 18.335516, 14.131309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.418877, 18.314978, 13.852975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310614, 0.869543, -0.383944,
		0.624771, -0.491180, -0.606962,
		-0.716366, -0.051347, -0.695833,
		5.203968, 18.299574, 13.644225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.048997, 18.552834, 13.569425>,  <5.705423, 18.335516, 14.131309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.048997, 18.552834, 13.569425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.662024, 18.604357, 13.482264>,  <5.429840, 18.635271, 13.429967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.662024, 18.604357, 13.482264>,  <6.048997, 18.552834, 13.569425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.662024, 18.604357, 13.482264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206671, 0.898978, -0.386168,
		0.146148, -0.418626, -0.896322,
		-0.967434, 0.128806, -0.217902,
		5.371793, 18.642998, 13.416893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.087382, 18.758968, 12.909775>,  <6.048997, 18.552834, 13.569425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.087382, 18.758968, 12.909775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.739846, 18.893501, 13.055099>,  <5.531324, 18.974220, 13.142294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.739846, 18.893501, 13.055099>,  <6.087382, 18.758968, 12.909775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.739846, 18.893501, 13.055099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141391, 0.871830, -0.468958,
		-0.474471, -0.356081, -0.805036,
		-0.868841, 0.336331, 0.363312,
		5.479193, 18.994400, 13.164093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.710526, 18.953615, 12.353895>,  <6.087382, 18.758968, 12.909775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.710526, 18.953615, 12.353895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.567279, 19.150497, 12.671256>,  <5.481330, 19.268627, 12.861672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.567279, 19.150497, 12.671256>,  <5.710526, 18.953615, 12.353895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.567279, 19.150497, 12.671256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096766, 0.864751, -0.492790,
		-0.928648, -0.099703, -0.357312,
		-0.358119, 0.492204, 0.793402,
		5.459843, 19.298159, 12.909277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.242987, 19.456610, 12.072072>,  <5.710526, 18.953615, 12.353895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.242987, 19.456610, 12.072072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.327894, 19.577187, 12.443894>,  <5.378839, 19.649532, 12.666987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.327894, 19.577187, 12.443894>,  <5.242987, 19.456610, 12.072072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.327894, 19.577187, 12.443894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420655, 0.830403, -0.365348,
		-0.882038, 0.468575, 0.049465,
		0.212268, 0.301444, 0.929556,
		5.391575, 19.667620, 12.722761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.147307, 20.158697, 11.945595>,  <5.242987, 19.456610, 12.072072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.147307, 20.158697, 11.945595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349184, 20.134750, 12.290083>,  <5.470310, 20.120382, 12.496776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349184, 20.134750, 12.290083>,  <5.147307, 20.158697, 11.945595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.349184, 20.134750, 12.290083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446522, 0.871890, -0.201061,
		-0.738853, 0.486028, 0.466769,
		0.504692, -0.059868, 0.861221,
		5.500591, 20.116791, 12.548450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.235830, 20.878622, 12.229101>,  <5.147307, 20.158697, 11.945595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.235830, 20.878622, 12.229101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.521729, 20.647652, 12.386945>,  <5.693269, 20.509069, 12.481651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.521729, 20.647652, 12.386945>,  <5.235830, 20.878622, 12.229101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.521729, 20.647652, 12.386945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635711, 0.771603, -0.022381,
		-0.291558, 0.266854, 0.918577,
		0.714749, -0.577424, 0.394609,
		5.736154, 20.474424, 12.505327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.597926, 21.233194, 12.663863>,  <5.235830, 20.878622, 12.229101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.597926, 21.233194, 12.663863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.874364, 20.948481, 12.613661>,  <6.040227, 20.777653, 12.583539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.874364, 20.948481, 12.613661>,  <5.597926, 21.233194, 12.663863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.874364, 20.948481, 12.613661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714269, 0.699142, -0.031951,
		0.110489, -0.067564, 0.991578,
		0.691095, -0.711783, -0.125507,
		6.081693, 20.734945, 12.576009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.112942, 21.445335, 13.093473>,  <5.597926, 21.233194, 12.663863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.112942, 21.445335, 13.093473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.290369, 21.180273, 12.852098>,  <6.396825, 21.021236, 12.707273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.290369, 21.180273, 12.852098>,  <6.112942, 21.445335, 13.093473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.290369, 21.180273, 12.852098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729822, 0.657862, -0.185950,
		0.520199, -0.357922, 0.775425,
		0.443567, -0.662654, -0.603438,
		6.423439, 20.981478, 12.671067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.748512, 21.299498, 13.388728>,  <6.112942, 21.445335, 13.093473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.748512, 21.299498, 13.388728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.768194, 21.211012, 12.999135>,  <6.780004, 21.157921, 12.765379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.768194, 21.211012, 12.999135>,  <6.748512, 21.299498, 13.388728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.768194, 21.211012, 12.999135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699453, 0.703751, -0.124500,
		0.712983, -0.675130, 0.189356,
		0.049206, -0.221212, -0.973984,
		6.782956, 21.144648, 12.706940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.434317, 21.372364, 13.274206>,  <6.748512, 21.299498, 13.388728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.434317, 21.372364, 13.274206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.274172, 21.390041, 12.908091>,  <7.178084, 21.400648, 12.688421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.274172, 21.390041, 12.908091>,  <7.434317, 21.372364, 13.274206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.274172, 21.390041, 12.908091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634577, 0.733949, -0.242137,
		0.661075, -0.677765, -0.321892,
		-0.400364, 0.044195, -0.915290,
		7.154063, 21.403299, 12.633504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.022991, 21.327034, 12.785291>,  <7.434317, 21.372364, 13.274206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.022991, 21.327034, 12.785291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.714244, 21.476088, 12.579238>,  <7.528995, 21.565519, 12.455606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.714244, 21.476088, 12.579238>,  <8.022991, 21.327034, 12.785291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.714244, 21.476088, 12.579238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569532, 0.765373, -0.299729,
		0.282580, -0.524736, -0.802995,
		-0.771869, 0.372634, -0.515133,
		7.482683, 21.587877, 12.424698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.290510, 21.607103, 12.121325>,  <8.022991, 21.327034, 12.785291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.290510, 21.607103, 12.121325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.935567, 21.789764, 12.146827>,  <7.722601, 21.899361, 12.162127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.935567, 21.789764, 12.146827>,  <8.290510, 21.607103, 12.121325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.935567, 21.789764, 12.146827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426789, 0.865801, -0.261227,
		-0.174487, -0.204593, -0.963170,
		-0.887359, 0.456651, 0.063753,
		7.669359, 21.926760, 12.165953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.196083, 22.021343, 11.470758>,  <8.290510, 21.607103, 12.121325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.196083, 22.021343, 11.470758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.969560, 22.193689, 11.751800>,  <7.833646, 22.297096, 11.920424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.969560, 22.193689, 11.751800>,  <8.196083, 22.021343, 11.470758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.969560, 22.193689, 11.751800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519320, 0.848500, -0.101757,
		-0.640002, 0.307250, -0.704269,
		-0.566308, 0.430866, 0.702603,
		7.799667, 22.322948, 11.962581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.099288, 22.673412, 11.196729>,  <8.196083, 22.021343, 11.470758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.099288, 22.673412, 11.196729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002949, 22.717167, 11.582480>,  <7.945146, 22.743420, 11.813931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002949, 22.717167, 11.582480>,  <8.099288, 22.673412, 11.196729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.002949, 22.717167, 11.582480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560463, 0.826891, 0.046181,
		-0.792385, 0.551622, -0.260461,
		-0.240847, 0.109385, 0.964379,
		7.930695, 22.749983, 11.871795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.960494, 23.415152, 11.223006>,  <8.099288, 22.673412, 11.196729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.960494, 23.415152, 11.223006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.037843, 23.286257, 11.593686>,  <8.084252, 23.208920, 11.816093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.037843, 23.286257, 11.593686>,  <7.960494, 23.415152, 11.223006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.037843, 23.286257, 11.593686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508440, 0.840716, 0.186241,
		-0.839104, 0.435157, 0.326409,
		0.193373, -0.322235, 0.926699,
		8.095855, 23.189587, 11.871696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.709628, 23.841843, 11.763833>,  <7.960494, 23.415152, 11.223006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.709628, 23.841843, 11.763833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.055370, 23.694679, 11.900966>,  <8.262815, 23.606380, 11.983245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.055370, 23.694679, 11.900966>,  <7.709628, 23.841843, 11.763833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.055370, 23.694679, 11.900966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345016, 0.929830, 0.127982,
		-0.365861, 0.007661, 0.930638,
		0.864355, -0.367909, 0.342832,
		8.314677, 23.584307, 12.003816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.850192, 24.221565, 12.364252>,  <7.709628, 23.841843, 11.763833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.850192, 24.221565, 12.364252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.197971, 24.074129, 12.232677>,  <8.406639, 23.985668, 12.153731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.197971, 24.074129, 12.232677>,  <7.850192, 24.221565, 12.364252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.197971, 24.074129, 12.232677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465532, 0.834132, 0.295811,
		0.165346, -0.410324, 0.896825,
		0.869449, -0.368589, -0.328939,
		8.458806, 23.963552, 12.133995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.686823, 24.268847, 13.137107>,  <7.850192, 24.221565, 12.364252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.686823, 24.268847, 13.137107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984028, 24.024866, 13.247299>,  <8.162352, 23.878477, 13.313415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984028, 24.024866, 13.247299>,  <7.686823, 24.268847, 13.137107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.984028, 24.024866, 13.247299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633932, 0.773385, 0.002567,
		-0.214619, 0.172729, 0.961303,
		0.743014, -0.609951, 0.275482,
		8.206932, 23.841881, 13.329944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.066382, 24.505276, 13.771695>,  <7.686823, 24.268847, 13.137107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.066382, 24.505276, 13.771695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.287286, 24.307617, 13.503119>,  <8.419827, 24.189022, 13.341974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.287286, 24.307617, 13.503119>,  <8.066382, 24.505276, 13.771695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.287286, 24.307617, 13.503119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697741, 0.714749, 0.047870,
		0.456255, -0.494927, 0.739513,
		0.552258, -0.494147, -0.671439,
		8.452963, 24.159372, 13.301688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.821136, 24.239227, 13.964542>,  <8.066382, 24.505276, 13.771695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.821136, 24.239227, 13.964542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.792668, 24.301472, 13.570442>,  <8.775588, 24.338818, 13.333982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.792668, 24.301472, 13.570442>,  <8.821136, 24.239227, 13.964542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.792668, 24.301472, 13.570442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656568, 0.750902, 0.071169,
		0.750902, -0.641820, -0.155609,
		-0.071169, 0.155609, -0.985252,
		8.771317, 24.348154, 13.274867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.761763, 24.679167, 14.659617>,  <8.821136, 24.239227, 13.964542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.761763, 24.679167, 14.659617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666096, 24.742022, 15.042889>,  <8.608695, 24.779736, 15.272852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666096, 24.742022, 15.042889>,  <8.761763, 24.679167, 14.659617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.666096, 24.742022, 15.042889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966844, 0.052430, -0.249929,
		-0.089511, -0.986184, 0.139390,
		-0.239168, 0.157139, 0.958179,
		8.594345, 24.789164, 15.330342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.392696, 24.326040, 14.914433>,  <8.761763, 24.679167, 14.659617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.392696, 24.326040, 14.914433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216754, 24.255419, 15.266650>,  <9.111188, 24.213045, 15.477981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216754, 24.255419, 15.266650>,  <9.392696, 24.326040, 14.914433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.216754, 24.255419, 15.266650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249580, -0.917830, -0.308704,
		0.862691, -0.355551, 0.359649,
		-0.439856, -0.176555, 0.880542,
		9.084797, 24.202452, 15.530813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.687813, 23.752611, 15.265169>,  <9.392696, 24.326040, 14.914433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.687813, 23.752611, 15.265169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.321853, 23.751926, 15.426639>,  <9.102277, 23.751514, 15.523520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.321853, 23.751926, 15.426639>,  <9.687813, 23.752611, 15.265169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.321853, 23.751926, 15.426639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123794, -0.950618, -0.284606,
		0.384227, -0.310359, 0.869509,
		-0.914901, -0.001714, 0.403674,
		9.047382, 23.751411, 15.547741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.507329, 22.992582, 15.149796>,  <9.687813, 23.752611, 15.265169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.507329, 22.992582, 15.149796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.184418, 23.151518, 15.324347>,  <8.990671, 23.246880, 15.429077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.184418, 23.151518, 15.324347>,  <9.507329, 22.992582, 15.149796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.184418, 23.151518, 15.324347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513033, -0.837952, -0.186100,
		0.291719, -0.374110, 0.880308,
		-0.807278, 0.397338, 0.436377,
		8.942234, 23.270720, 15.455259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.292877, 22.621151, 15.763221>,  <9.507329, 22.992582, 15.149796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.292877, 22.621151, 15.763221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.955044, 22.806620, 15.656124>,  <8.752344, 22.917902, 15.591866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.955044, 22.806620, 15.656124>,  <9.292877, 22.621151, 15.763221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.955044, 22.806620, 15.656124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484531, -0.874667, 0.013695,
		-0.227835, 0.141296, 0.963393,
		-0.844583, 0.463674, -0.267743,
		8.701669, 22.945723, 15.575801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.776776, 22.355692, 16.263786>,  <9.292877, 22.621151, 15.763221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.776776, 22.355692, 16.263786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.600162, 22.495550, 15.933262>,  <8.494193, 22.579466, 15.734947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.600162, 22.495550, 15.933262>,  <8.776776, 22.355692, 16.263786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.600162, 22.495550, 15.933262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550912, -0.832552, -0.057910,
		-0.708196, 0.429656, 0.560227,
		-0.441537, 0.349647, -0.826312,
		8.467701, 22.600445, 15.685369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.132971, 22.211756, 16.434774>,  <8.776776, 22.355692, 16.263786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.132971, 22.211756, 16.434774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.149533, 22.255787, 16.037550>,  <8.159471, 22.282206, 15.799215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.149533, 22.255787, 16.037550>,  <8.132971, 22.211756, 16.434774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.149533, 22.255787, 16.037550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651900, -0.750233, -0.110344,
		-0.757174, 0.651945, 0.040696,
		0.041407, 0.110080, -0.993060,
		8.161955, 22.288811, 15.739632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.418350, 22.032192, 16.162777>,  <8.132971, 22.211756, 16.434774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.418350, 22.032192, 16.162777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.675888, 21.999039, 15.858516>,  <7.830411, 21.979147, 15.675959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.675888, 21.999039, 15.858516>,  <7.418350, 22.032192, 16.162777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.675888, 21.999039, 15.858516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439933, -0.853467, -0.279380,
		-0.626036, 0.514514, -0.585964,
		0.643846, -0.082883, -0.760653,
		7.869042, 21.974174, 15.630320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.030237, 21.976845, 15.491803>,  <7.418350, 22.032192, 16.162777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.030237, 21.976845, 15.491803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.393588, 21.822901, 15.426398>,  <7.611598, 21.730536, 15.387156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.393588, 21.822901, 15.426398>,  <7.030237, 21.976845, 15.491803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.393588, 21.822901, 15.426398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410705, -0.894633, -0.175938,
		-0.078571, 0.226973, -0.970727,
		0.908377, -0.384858, -0.163511,
		7.666101, 21.707443, 15.377345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.896358, 21.469984, 15.021372>,  <7.030237, 21.976845, 15.491803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.896358, 21.469984, 15.021372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.258200, 21.366575, 15.156934>,  <7.475305, 21.304529, 15.238271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.258200, 21.366575, 15.156934>,  <6.896358, 21.469984, 15.021372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.258200, 21.366575, 15.156934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206940, -0.961456, -0.181049,
		0.372648, 0.093645, -0.923236,
		0.904605, -0.258522, 0.338906,
		7.529582, 21.289019, 15.258606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.007843, 20.969076, 14.735749>,  <6.896358, 21.469984, 15.021372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.007843, 20.969076, 14.735749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.286692, 20.907206, 15.015778>,  <7.454001, 20.870083, 15.183794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.286692, 20.907206, 15.015778>,  <7.007843, 20.969076, 14.735749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.286692, 20.907206, 15.015778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183182, -0.982468, -0.034657,
		0.693157, -0.104080, -0.713233,
		0.697121, -0.154674, 0.700070,
		7.495829, 20.860804, 15.225799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.286401, 20.363041, 14.487963>,  <7.007843, 20.969076, 14.735749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.286401, 20.363041, 14.487963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.395422, 20.407187, 14.870278>,  <7.460835, 20.433674, 15.099668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.395422, 20.407187, 14.870278>,  <7.286401, 20.363041, 14.487963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.395422, 20.407187, 14.870278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021493, -0.992453, 0.120726,
		0.961901, -0.053448, -0.268124,
		0.272553, 0.110364, 0.955790,
		7.477189, 20.440296, 15.157016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.715535, 19.809549, 14.544880>,  <7.286401, 20.363041, 14.487963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.715535, 19.809549, 14.544880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.578267, 19.920622, 14.903795>,  <7.495906, 19.987267, 15.119144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.578267, 19.920622, 14.903795>,  <7.715535, 19.809549, 14.544880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.578267, 19.920622, 14.903795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065811, -0.960061, 0.271940,
		0.936965, 0.034270, 0.347739,
		-0.343170, 0.277684, 0.897288,
		7.475316, 20.003927, 15.172981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.944839, 19.212341, 15.070060>,  <7.715535, 19.809549, 14.544880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.944839, 19.212341, 15.070060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.658628, 19.403793, 15.273602>,  <7.486902, 19.518665, 15.395726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.658628, 19.403793, 15.273602>,  <7.944839, 19.212341, 15.070060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.658628, 19.403793, 15.273602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300805, -0.868515, 0.393951,
		0.630505, 0.128817, 0.765421,
		-0.715528, 0.478631, 0.508854,
		7.443970, 19.547382, 15.426258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.962988, 18.827482, 15.578913>,  <7.944839, 19.212341, 15.070060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.962988, 18.827482, 15.578913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.618417, 19.029316, 15.602015>,  <7.411674, 19.150415, 15.615877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.618417, 19.029316, 15.602015>,  <7.962988, 18.827482, 15.578913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.618417, 19.029316, 15.602015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476827, -0.842666, 0.250101,
		0.174866, 0.187904, 0.966496,
		-0.861428, 0.504585, 0.057756,
		7.359988, 19.180691, 15.619342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.713879, 18.668383, 16.230038>,  <7.962988, 18.827482, 15.578913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.713879, 18.668383, 16.230038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414063, 18.771946, 15.986348>,  <7.234173, 18.834084, 15.840134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414063, 18.771946, 15.986348>,  <7.713879, 18.668383, 16.230038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414063, 18.771946, 15.986348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464192, -0.861710, 0.204894,
		-0.471927, 0.436374, 0.766069,
		-0.749540, 0.258908, -0.609226,
		7.189201, 18.849619, 15.803580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.051689, 18.460440, 16.644085>,  <7.713879, 18.668383, 16.230038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.051689, 18.460440, 16.644085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.939397, 18.487677, 16.261137>,  <6.872022, 18.504019, 16.031368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.939397, 18.487677, 16.261137>,  <7.051689, 18.460440, 16.644085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.939397, 18.487677, 16.261137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528726, -0.843454, 0.095049,
		-0.801024, 0.532868, 0.272785,
		-0.280730, 0.068092, -0.957368,
		6.855178, 18.508104, 15.973927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.339797, 18.342575, 16.701984>,  <7.051689, 18.460440, 16.644085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.339797, 18.342575, 16.701984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.462496, 18.260303, 16.330263>,  <6.536116, 18.210941, 16.107231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.462496, 18.260303, 16.330263>,  <6.339797, 18.342575, 16.701984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.462496, 18.260303, 16.330263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466081, -0.883756, 0.041752,
		-0.829864, 0.420322, -0.366954,
		0.306749, -0.205679, -0.929302,
		6.554521, 18.198599, 16.051472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.775197, 17.978178, 16.399147>,  <6.339797, 18.342575, 16.701984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.775197, 17.978178, 16.399147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.081157, 17.879028, 16.161329>,  <6.264733, 17.819538, 16.018639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.081157, 17.879028, 16.161329>,  <5.775197, 17.978178, 16.399147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.081157, 17.879028, 16.161329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242196, -0.965939, 0.091124,
		-0.596881, 0.074295, -0.798882,
		0.764901, -0.247876, -0.594545,
		6.310627, 17.804665, 15.982965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.446813, 17.563643, 15.905500>,  <5.775197, 17.978178, 16.399147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.446813, 17.563643, 15.905500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837009, 17.485254, 15.865476>,  <6.071127, 17.438221, 15.841461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837009, 17.485254, 15.865476>,  <5.446813, 17.563643, 15.905500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.837009, 17.485254, 15.865476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208808, -0.967877, -0.140049,
		-0.069401, 0.157510, -0.985076,
		0.975491, -0.195972, -0.100061,
		6.129656, 17.426462, 15.835458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.586308, 17.324478, 15.212498>,  <5.446813, 17.563643, 15.905500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.586308, 17.324478, 15.212498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.871356, 17.203932, 15.465907>,  <6.042385, 17.131603, 15.617952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.871356, 17.203932, 15.465907>,  <5.586308, 17.324478, 15.212498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.871356, 17.203932, 15.465907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303003, -0.946678, -0.109498,
		0.632741, -0.113928, -0.765937,
		0.712621, -0.301365, 0.633522,
		6.085142, 17.113522, 15.655964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.014592, 16.838768, 14.880109>,  <5.586308, 17.324478, 15.212498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.014592, 16.838768, 14.880109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.089038, 16.752625, 15.263563>,  <6.133706, 16.700939, 15.493636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.089038, 16.752625, 15.263563>,  <6.014592, 16.838768, 14.880109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.089038, 16.752625, 15.263563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035820, -0.973547, -0.225661,
		0.981875, 0.076337, -0.173478,
		0.186116, -0.215357, 0.958636,
		6.144873, 16.688017, 15.551154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.611792, 16.451145, 14.851011>,  <6.014592, 16.838768, 14.880109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.611792, 16.451145, 14.851011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.455373, 16.371126, 15.210359>,  <6.361522, 16.323114, 15.425967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.455373, 16.371126, 15.210359>,  <6.611792, 16.451145, 14.851011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.455373, 16.371126, 15.210359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115322, -0.979050, -0.167816,
		0.913118, 0.037978, 0.405923,
		-0.391046, -0.200048, 0.898367,
		6.338059, 16.311111, 15.479869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.937311, 15.901174, 15.018503>,  <6.611792, 16.451145, 14.851011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.937311, 15.901174, 15.018503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.632230, 15.912910, 15.276937>,  <6.449181, 15.919950, 15.431996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.632230, 15.912910, 15.276937>,  <6.937311, 15.901174, 15.018503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.632230, 15.912910, 15.276937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053863, -0.998382, -0.018250,
		0.644503, -0.048719, 0.763049,
		-0.762703, 0.029339, 0.646084,
		6.403419, 15.921711, 15.470761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.030237, 15.343436, 15.596673>,  <6.937311, 15.901174, 15.018503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.030237, 15.343436, 15.596673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.642960, 15.433446, 15.552921>,  <6.410593, 15.487452, 15.526670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.642960, 15.433446, 15.552921>,  <7.030237, 15.343436, 15.596673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.642960, 15.433446, 15.552921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232768, -0.970427, 0.063960,
		-0.091752, 0.087385, 0.991940,
		-0.968194, 0.225024, -0.109379,
		6.352501, 15.500953, 15.520107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.710822, 15.051514, 16.135132>,  <7.030237, 15.343436, 15.596673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.710822, 15.051514, 16.135132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.476125, 15.095549, 15.814229>,  <6.335308, 15.121969, 15.621687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.476125, 15.095549, 15.814229>,  <6.710822, 15.051514, 16.135132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.476125, 15.095549, 15.814229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319531, -0.941801, 0.104458,
		-0.744067, 0.317636, 0.587769,
		-0.586741, 0.110087, -0.802257,
		6.300103, 15.128574, 15.573552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.951472, 14.921267, 16.317184>,  <6.710822, 15.051514, 16.135132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.951472, 14.921267, 16.317184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.043738, 14.849754, 15.934597>,  <6.099098, 14.806847, 15.705045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.043738, 14.849754, 15.934597>,  <5.951472, 14.921267, 16.317184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.043738, 14.849754, 15.934597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259422, -0.958695, 0.116635,
		-0.937813, 0.221225, -0.267519,
		0.230667, -0.178782, -0.956467,
		6.112938, 14.796120, 15.647656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.570258, 14.382761, 16.459932>,  <5.951472, 14.921267, 16.317184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.570258, 14.382761, 16.459932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.326974, 14.435822, 16.146887>,  <6.181005, 14.467658, 15.959059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.326974, 14.435822, 16.146887>,  <6.570258, 14.382761, 16.459932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.326974, 14.435822, 16.146887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241621, 0.970090, -0.023347,
		0.756110, -0.203297, -0.622067,
		-0.608208, 0.132652, -0.782615,
		6.144512, 14.475617, 15.912102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.221381, 14.166046, 16.242216>,  <6.570258, 14.382761, 16.459932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.221381, 14.166046, 16.242216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.519516, 14.386008, 16.392986>,  <7.698398, 14.517985, 16.483448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.519516, 14.386008, 16.392986>,  <7.221381, 14.166046, 16.242216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.519516, 14.386008, 16.392986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593265, -0.805006, 0.001313,
		0.304150, 0.222639, -0.926242,
		0.745338, 0.549906, 0.376927,
		7.743118, 14.550981, 16.506063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.819526, 14.075068, 15.780446>,  <7.221381, 14.166046, 16.242216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.819526, 14.075068, 15.780446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.895303, 14.152346, 16.165525>,  <7.940770, 14.198712, 16.396572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.895303, 14.152346, 16.165525>,  <7.819526, 14.075068, 15.780446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.895303, 14.152346, 16.165525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621543, -0.782609, 0.034744,
		0.760129, 0.591776, -0.268339,
		0.189444, 0.193194, 0.962698,
		7.952137, 14.210304, 16.454334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.506819, 14.073779, 15.910925>,  <7.819526, 14.075068, 15.780446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.506819, 14.073779, 15.910925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.327743, 13.972984, 16.254105>,  <8.220297, 13.912507, 16.460012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.327743, 13.972984, 16.254105>,  <8.506819, 14.073779, 15.910925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.327743, 13.972984, 16.254105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643752, -0.756747, 0.113656,
		0.620610, 0.603189, 0.501006,
		-0.447690, -0.251988, 0.857948,
		8.193436, 13.897388, 16.511490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.032291, 14.173837, 16.397429>,  <8.506819, 14.073779, 15.910925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.032291, 14.173837, 16.397429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.770430, 13.887870, 16.495672>,  <8.613313, 13.716290, 16.554619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.770430, 13.887870, 16.495672>,  <9.032291, 14.173837, 16.397429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.770430, 13.887870, 16.495672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706949, -0.694071, -0.135972,
		0.267677, 0.084617, 0.959786,
		-0.654654, -0.714917, 0.245607,
		8.574034, 13.673395, 16.569355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.787673, 14.096502, 16.878475>,  <9.032291, 14.173837, 16.397429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.787673, 14.096502, 16.878475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.024021, 14.104282, 16.555862>,  <10.165830, 14.108951, 16.362295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.024021, 14.104282, 16.555862>,  <9.787673, 14.096502, 16.878475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.024021, 14.104282, 16.555862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601714, -0.655313, -0.456623,
		-0.537413, 0.755107, -0.375502,
		0.590870, 0.019450, -0.806532,
		10.201283, 14.110117, 16.313902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.241205, 13.649109, 16.589394>,  <9.787673, 14.096502, 16.878475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.241205, 13.649109, 16.589394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.413021, 13.313857, 16.723875>,  <10.516110, 13.112706, 16.804564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.413021, 13.313857, 16.723875>,  <10.241205, 13.649109, 16.589394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.413021, 13.313857, 16.723875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225473, 0.460047, 0.858789,
		-0.874447, -0.293079, 0.386584,
		0.429540, -0.838130, 0.336205,
		10.541883, 13.062418, 16.824736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.808902, 13.212515, 16.964718>,  <10.241205, 13.649109, 16.589394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.808902, 13.212515, 16.964718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.194227, 13.239597, 17.068596>,  <10.425423, 13.255847, 17.130922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.194227, 13.239597, 17.068596>,  <9.808902, 13.212515, 16.964718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.194227, 13.239597, 17.068596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266510, 0.355251, 0.895974,
		-0.031594, -0.932316, 0.360263,
		0.963314, 0.067706, 0.259696,
		10.483221, 13.259910, 17.146505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.874147, 12.794804, 17.612474>,  <9.808902, 13.212515, 16.964718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.874147, 12.794804, 17.612474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186901, 13.044069, 17.605278>,  <10.374554, 13.193628, 17.600960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186901, 13.044069, 17.605278>,  <9.874147, 12.794804, 17.612474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.186901, 13.044069, 17.605278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131597, 0.193188, 0.972297,
		0.609376, -0.757856, 0.233057,
		0.781885, 0.623164, -0.017992,
		10.421467, 13.231018, 17.599880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.236911, 12.648495, 18.292145>,  <9.874147, 12.794804, 17.612474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.236911, 12.648495, 18.292145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.334651, 13.012433, 18.157997>,  <10.393295, 13.230796, 18.077509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.334651, 13.012433, 18.157997>,  <10.236911, 12.648495, 18.292145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.334651, 13.012433, 18.157997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052911, 0.357847, 0.932280,
		0.968243, -0.210058, 0.135581,
		0.244350, 0.909847, -0.335368,
		10.407956, 13.285387, 18.057386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.662483, 12.821324, 18.847769>,  <10.236911, 12.648495, 18.292145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.662483, 12.821324, 18.847769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.609257, 13.161384, 18.643988>,  <10.577321, 13.365419, 18.521719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.609257, 13.161384, 18.643988>,  <10.662483, 12.821324, 18.847769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.609257, 13.161384, 18.643988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054382, 0.519512, 0.852731,
		0.989614, 0.085764, -0.115362,
		-0.133065, 0.850148, -0.509453,
		10.569337, 13.416428, 18.491152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.236399, 13.367182, 18.916679>,  <10.662483, 12.821324, 18.847769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.236399, 13.367182, 18.916679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.897296, 13.566321, 18.843517>,  <10.693834, 13.685805, 18.799620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.897296, 13.566321, 18.843517>,  <11.236399, 13.367182, 18.916679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.897296, 13.566321, 18.843517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170278, 0.582071, 0.795109,
		0.502309, 0.642914, -0.578228,
		-0.847757, 0.497850, -0.182905,
		10.642969, 13.715676, 18.788645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.386049, 14.096534, 18.835922>,  <11.236399, 13.367182, 18.916679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.386049, 14.096534, 18.835922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999280, 14.070568, 18.934589>,  <10.767219, 14.054989, 18.993790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999280, 14.070568, 18.934589>,  <11.386049, 14.096534, 18.835922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.999280, 14.070568, 18.934589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196057, 0.429451, 0.881552,
		-0.163157, 0.900754, -0.402520,
		-0.966924, -0.064915, 0.246667,
		10.709203, 14.051094, 19.008589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.179455, 14.724703, 19.194309>,  <11.386049, 14.096534, 18.835922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.179455, 14.724703, 19.194309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894444, 14.462457, 19.294289>,  <10.723437, 14.305109, 19.354277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894444, 14.462457, 19.294289>,  <11.179455, 14.724703, 19.194309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.894444, 14.462457, 19.294289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072774, 0.423367, 0.903031,
		-0.697860, 0.625244, -0.349372,
		-0.712527, -0.655614, 0.249949,
		10.680685, 14.265773, 19.369274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.645291, 15.182555, 19.520132>,  <11.179455, 14.724703, 19.194309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.645291, 15.182555, 19.520132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574488, 14.806540, 19.636745>,  <10.532005, 14.580930, 19.706715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574488, 14.806540, 19.636745>,  <10.645291, 15.182555, 19.520132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574488, 14.806540, 19.636745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006404, 0.297307, 0.954760,
		-0.984188, 0.167135, -0.058646,
		-0.177010, -0.940040, 0.291535,
		10.521384, 14.524528, 19.724207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.309183, 15.333644, 20.075197>,  <10.645291, 15.182555, 19.520132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.309183, 15.333644, 20.075197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391771, 14.944224, 20.114332>,  <10.441324, 14.710572, 20.137814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391771, 14.944224, 20.114332>,  <10.309183, 15.333644, 20.075197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.391771, 14.944224, 20.114332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076877, 0.115822, 0.990290,
		-0.975428, -0.196945, 0.098758,
		0.206471, -0.973549, 0.097836,
		10.453712, 14.652160, 20.143682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.947598, 15.129806, 20.643373>,  <10.309183, 15.333644, 20.075197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.947598, 15.129806, 20.643373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238467, 14.855935, 20.623631>,  <10.412990, 14.691613, 20.611786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238467, 14.855935, 20.623631>,  <9.947598, 15.129806, 20.643373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.238467, 14.855935, 20.623631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043505, -0.025788, 0.998720,
		-0.685072, -0.728391, 0.011035,
		0.727175, -0.684676, -0.049355,
		10.456619, 14.650533, 20.608824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.709330, 14.647482, 21.039160>,  <9.947598, 15.129806, 20.643373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.709330, 14.647482, 21.039160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.098716, 14.563697, 21.002308>,  <10.332348, 14.513426, 20.980196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.098716, 14.563697, 21.002308>,  <9.709330, 14.647482, 21.039160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.098716, 14.563697, 21.002308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065878, -0.129040, 0.989449,
		-0.219145, -0.969264, -0.111817,
		0.973466, -0.209466, -0.092132,
		10.390756, 14.500858, 20.974669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.758127, 14.057469, 21.435415>,  <9.709330, 14.647482, 21.039160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.758127, 14.057469, 21.435415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136704, 14.183625, 21.407766>,  <10.363851, 14.259318, 21.391178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136704, 14.183625, 21.407766>,  <9.758127, 14.057469, 21.435415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136704, 14.183625, 21.407766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098402, -0.077866, 0.992096,
		0.307515, -0.945762, -0.104731,
		0.946442, 0.315390, -0.069120,
		10.420637, 14.278242, 21.387030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.199905, 13.508630, 21.822798>,  <9.758127, 14.057469, 21.435415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.199905, 13.508630, 21.822798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.383167, 13.862455, 21.787834>,  <10.493124, 14.074751, 21.766857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.383167, 13.862455, 21.787834>,  <10.199905, 13.508630, 21.822798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.383167, 13.862455, 21.787834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214372, -0.014526, 0.976644,
		0.862635, -0.466191, -0.196281,
		0.458154, 0.884565, -0.087407,
		10.520614, 14.127825, 21.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.827258, 13.396557, 22.198393>,  <10.199905, 13.508630, 21.822798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.827258, 13.396557, 22.198393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.777770, 13.792987, 22.178541>,  <10.748077, 14.030845, 22.166630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.777770, 13.792987, 22.178541>,  <10.827258, 13.396557, 22.198393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.777770, 13.792987, 22.178541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144688, 0.067494, 0.987172,
		0.981712, 0.114954, -0.151747,
		-0.123721, 0.991075, -0.049627,
		10.740654, 14.090309, 22.163652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.161678, 13.559330, 22.784792>,  <10.827258, 13.396557, 22.198393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.161678, 13.559330, 22.784792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.945389, 13.876768, 22.673204>,  <10.815615, 14.067231, 22.606251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.945389, 13.876768, 22.673204>,  <11.161678, 13.559330, 22.784792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.945389, 13.876768, 22.673204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230465, 0.179184, 0.956441,
		0.809014, 0.581463, 0.086007,
		-0.540723, 0.793596, -0.278970,
		10.783172, 14.114847, 22.589514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381947, 14.158378, 23.163689>,  <11.161678, 13.559330, 22.784792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381947, 14.158378, 23.163689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.012109, 14.260558, 23.050646>,  <10.790206, 14.321867, 22.982821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.012109, 14.260558, 23.050646>,  <11.381947, 14.158378, 23.163689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.012109, 14.260558, 23.050646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220762, 0.245293, 0.943978,
		0.310463, 0.935187, -0.170403,
		-0.924595, 0.255452, -0.282609,
		10.734730, 14.337193, 22.965862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239908, 14.883949, 23.411291>,  <11.381947, 14.158378, 23.163689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239908, 14.883949, 23.411291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.884792, 14.705038, 23.367893>,  <10.671722, 14.597692, 23.341854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.884792, 14.705038, 23.367893>,  <11.239908, 14.883949, 23.411291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.884792, 14.705038, 23.367893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285710, 0.350777, 0.891810,
		-0.360831, 0.822738, -0.439208,
		-0.887790, -0.447278, -0.108493,
		10.618455, 14.570854, 23.335344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.837956, 15.386396, 23.755196>,  <11.239908, 14.883949, 23.411291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.837956, 15.386396, 23.755196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596319, 15.069787, 23.718180>,  <10.451337, 14.879822, 23.695971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596319, 15.069787, 23.718180>,  <10.837956, 15.386396, 23.755196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.596319, 15.069787, 23.718180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394083, 0.195781, 0.897980,
		-0.692655, 0.578931, -0.430196,
		-0.604093, -0.791523, -0.092538,
		10.415092, 14.832330, 23.690418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.089566, 15.606242, 23.806675>,  <10.837956, 15.386396, 23.755196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.089566, 15.606242, 23.806675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.093474, 15.216210, 23.895332>,  <10.095819, 14.982191, 23.948526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.093474, 15.216210, 23.895332>,  <10.089566, 15.606242, 23.806675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.093474, 15.216210, 23.895332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442732, 0.194527, 0.875299,
		-0.896601, -0.106680, -0.429798,
		0.009769, -0.975079, 0.221644,
		10.096405, 14.923687, 23.961826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.432194, 15.489239, 24.115982>,  <10.089566, 15.606242, 23.806675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.432194, 15.489239, 24.115982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.648855, 15.167421, 24.213406>,  <9.778852, 14.974331, 24.271860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.648855, 15.167421, 24.213406>,  <9.432194, 15.489239, 24.115982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.648855, 15.167421, 24.213406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247428, 0.124311, 0.960899,
		-0.803362, -0.580738, -0.131733,
		0.541654, -0.804543, 0.243558,
		9.811352, 14.926058, 24.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.950496, 15.133512, 24.533285>,  <9.432194, 15.489239, 24.115982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.950496, 15.133512, 24.533285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.325149, 15.032264, 24.630157>,  <9.549940, 14.971515, 24.688282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.325149, 15.032264, 24.630157>,  <8.950496, 15.133512, 24.533285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.325149, 15.032264, 24.630157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236591, 0.052781, 0.970175,
		-0.258354, -0.965994, -0.010450,
		0.936631, -0.253121, 0.242182,
		9.606138, 14.956327, 24.702812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.816134, 14.700617, 25.145193>,  <8.950496, 15.133512, 24.533285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.816134, 14.700617, 25.145193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.202590, 14.802588, 25.161116>,  <9.434464, 14.863771, 25.170670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.202590, 14.802588, 25.161116>,  <8.816134, 14.700617, 25.145193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.202590, 14.802588, 25.161116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112357, 0.276796, 0.954338,
		0.232271, -0.926496, 0.296066,
		0.966140, 0.254930, 0.039807,
		9.492432, 14.879067, 25.173058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.104063, 14.369153, 25.759525>,  <8.816134, 14.700617, 25.145193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.104063, 14.369153, 25.759525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.365497, 14.660324, 25.676630>,  <9.522357, 14.835027, 25.626892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.365497, 14.660324, 25.676630>,  <9.104063, 14.369153, 25.759525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.365497, 14.660324, 25.676630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043901, 0.236894, 0.970543,
		0.755579, -0.643430, 0.122873,
		0.653585, 0.727928, -0.207239,
		9.561572, 14.878702, 25.614458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773574, 14.251112, 26.143877>,  <9.104063, 14.369153, 25.759525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773574, 14.251112, 26.143877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744675, 14.636889, 26.042189>,  <9.727335, 14.868356, 25.981176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744675, 14.636889, 26.042189>,  <9.773574, 14.251112, 26.143877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.744675, 14.636889, 26.042189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180182, 0.263312, 0.947735,
		0.980976, 0.022666, -0.192799,
		-0.072247, 0.964444, -0.254219,
		9.723001, 14.926223, 25.965923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.304090, 14.466559, 26.586246>,  <9.773574, 14.251112, 26.143877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.304090, 14.466559, 26.586246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.060395, 14.762959, 26.473288>,  <9.914179, 14.940800, 26.405512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.060395, 14.762959, 26.473288>,  <10.304090, 14.466559, 26.586246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.060395, 14.762959, 26.473288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017907, 0.343174, 0.939101,
		0.792786, 0.577192, -0.195805,
		-0.609237, 0.741000, -0.282399,
		9.877625, 14.985259, 26.388567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.730060, 14.987083, 26.812258>,  <10.304090, 14.466559, 26.586246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.730060, 14.987083, 26.812258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.337713, 15.061032, 26.787848>,  <10.102305, 15.105402, 26.773201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.337713, 15.061032, 26.787848>,  <10.730060, 14.987083, 26.812258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337713, 15.061032, 26.787848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011770, 0.369205, 0.929274,
		0.194328, 0.910775, -0.364316,
		-0.980866, 0.184872, -0.061027,
		10.043453, 15.116494, 26.769539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.546642, 15.783700, 26.939610>,  <10.730060, 14.987083, 26.812258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.546642, 15.783700, 26.939610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272307, 15.508615, 27.034840>,  <10.107707, 15.343563, 27.091978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272307, 15.508615, 27.034840>,  <10.546642, 15.783700, 26.939610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.272307, 15.508615, 27.034840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064419, 0.383218, 0.921409,
		-0.724899, 0.616599, -0.307127,
		-0.685837, -0.687713, 0.238074,
		10.066556, 15.302300, 27.106262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.003192, 16.135296, 27.162685>,  <10.546642, 15.783700, 26.939610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.003192, 16.135296, 27.162685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957553, 15.768972, 27.316711>,  <9.930170, 15.549178, 27.409128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957553, 15.768972, 27.316711>,  <10.003192, 16.135296, 27.162685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.957553, 15.768972, 27.316711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094558, 0.395848, 0.913435,
		-0.988959, 0.067809, -0.131762,
		-0.114097, -0.915809, 0.385066,
		9.923324, 15.494229, 27.432232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.575695, 16.320187, 27.777098>,  <10.003192, 16.135296, 27.162685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.575695, 16.320187, 27.777098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.680293, 15.942103, 27.855278>,  <9.743052, 15.715254, 27.902187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.680293, 15.942103, 27.855278>,  <9.575695, 16.320187, 27.777098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.680293, 15.942103, 27.855278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324770, 0.104526, 0.939999,
		-0.908925, -0.309283, -0.279642,
		0.261496, -0.945208, 0.195452,
		9.758741, 15.658541, 27.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.987921, 16.090958, 28.099257>,  <9.575695, 16.320187, 27.777098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.987921, 16.090958, 28.099257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331567, 15.896805, 28.164162>,  <9.537754, 15.780313, 28.203104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331567, 15.896805, 28.164162>,  <8.987921, 16.090958, 28.099257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.331567, 15.896805, 28.164162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024109, 0.278320, 0.960186,
		-0.511216, -0.828821, 0.227406,
		0.859114, -0.485380, 0.162263,
		9.589301, 15.751191, 28.212841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.831403, 15.719090, 28.679323>,  <8.987921, 16.090958, 28.099257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.831403, 15.719090, 28.679323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.229211, 15.742533, 28.644699>,  <9.467896, 15.756598, 28.623924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.229211, 15.742533, 28.644699>,  <8.831403, 15.719090, 28.679323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.229211, 15.742533, 28.644699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070459, 0.235892, 0.969222,
		0.077220, -0.970010, 0.230470,
		0.994521, 0.058605, -0.086562,
		9.527567, 15.760115, 28.618731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.121757, 15.447255, 29.273584>,  <8.831403, 15.719090, 28.679323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.121757, 15.447255, 29.273584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.406841, 15.680922, 29.118256>,  <9.577892, 15.821121, 29.025059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.406841, 15.680922, 29.118256>,  <9.121757, 15.447255, 29.273584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.406841, 15.680922, 29.118256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238866, 0.318390, 0.917372,
		0.659535, -0.746578, 0.087383,
		0.712711, 0.584166, -0.388321,
		9.620655, 15.856171, 29.001759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.599916, 15.501762, 29.754763>,  <9.121757, 15.447255, 29.273584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.599916, 15.501762, 29.754763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.677986, 15.833123, 29.544750>,  <9.724829, 16.031940, 29.418743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.677986, 15.833123, 29.544750>,  <9.599916, 15.501762, 29.754763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.677986, 15.833123, 29.544750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126618, 0.509562, 0.851066,
		0.972560, -0.232587, -0.005435,
		0.195177, 0.828402, -0.525030,
		9.736540, 16.081644, 29.387241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.093029, 15.730911, 30.049673>,  <9.599916, 15.501762, 29.754763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.093029, 15.730911, 30.049673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.976571, 16.054502, 29.845404>,  <9.906696, 16.248657, 29.722841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.976571, 16.054502, 29.845404>,  <10.093029, 15.730911, 30.049673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.976571, 16.054502, 29.845404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344735, 0.586655, 0.732799,
		0.892408, 0.037304, -0.449685,
		-0.291146, 0.808977, -0.510676,
		9.889228, 16.297195, 29.692202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.661280, 16.177948, 30.027187>,  <10.093029, 15.730911, 30.049673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.661280, 16.177948, 30.027187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.322240, 16.386827, 29.989483>,  <10.118816, 16.512156, 29.966860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.322240, 16.386827, 29.989483>,  <10.661280, 16.177948, 30.027187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.322240, 16.386827, 29.989483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398417, 0.743609, 0.536944,
		0.350484, 0.417559, -0.838335,
		-0.847600, 0.522197, -0.094261,
		10.067960, 16.543488, 29.961205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.967606, 16.793396, 30.168085>,  <10.661280, 16.177948, 30.027187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.967606, 16.793396, 30.168085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575126, 16.854460, 30.215319>,  <10.339638, 16.891098, 30.243658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575126, 16.854460, 30.215319>,  <10.967606, 16.793396, 30.168085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.575126, 16.854460, 30.215319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191303, 0.688304, 0.699743,
		0.025545, 0.709177, -0.704568,
		-0.981199, 0.152661, 0.118085,
		10.280766, 16.900257, 30.250744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.889277, 17.580389, 30.264153>,  <10.967606, 16.793396, 30.168085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.889277, 17.580389, 30.264153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521576, 17.452114, 30.355488>,  <10.300956, 17.375149, 30.410290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521576, 17.452114, 30.355488>,  <10.889277, 17.580389, 30.264153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.521576, 17.452114, 30.355488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104794, 0.758429, 0.643275,
		-0.379470, 0.567402, -0.730793,
		-0.919250, -0.320686, 0.228340,
		10.245801, 17.355907, 30.423990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.473041, 18.138948, 30.218307>,  <10.889277, 17.580389, 30.264153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.473041, 18.138948, 30.218307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.296902, 17.877264, 30.464268>,  <10.191218, 17.720253, 30.611843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.296902, 17.877264, 30.464268>,  <10.473041, 18.138948, 30.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.296902, 17.877264, 30.464268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111678, 0.719467, 0.685489,
		-0.890855, 0.233182, -0.389877,
		-0.440347, -0.654212, 0.614900,
		10.164798, 17.681000, 30.648737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.085367, 18.581875, 30.607252>,  <10.473041, 18.138948, 30.218307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.085367, 18.581875, 30.607252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138746, 18.260082, 30.838768>,  <10.170774, 18.067005, 30.977678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138746, 18.260082, 30.838768>,  <10.085367, 18.581875, 30.607252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.138746, 18.260082, 30.838768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186940, 0.593963, 0.782472,
		-0.973265, 0.003780, 0.229653,
		0.133447, -0.804484, 0.578790,
		10.178781, 18.018738, 31.012405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.666766, 18.652248, 31.225117>,  <10.085367, 18.581875, 30.607252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.666766, 18.652248, 31.225117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.958848, 18.392895, 31.311283>,  <10.134097, 18.237284, 31.362982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.958848, 18.392895, 31.311283>,  <9.666766, 18.652248, 31.225117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.958848, 18.392895, 31.311283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203362, 0.507257, 0.837457,
		-0.652263, -0.567707, 0.502258,
		0.730204, -0.648382, 0.215415,
		10.177909, 18.198380, 31.375908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.554387, 18.410110, 31.860823>,  <9.666766, 18.652248, 31.225117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.554387, 18.410110, 31.860823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.945698, 18.397499, 31.778868>,  <10.180485, 18.389933, 31.729694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.945698, 18.397499, 31.778868>,  <9.554387, 18.410110, 31.860823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.945698, 18.397499, 31.778868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182596, 0.598974, 0.779673,
		0.098138, -0.800148, 0.591720,
		0.978278, -0.031530, -0.204886,
		10.239182, 18.388041, 31.717402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.783692, 18.181410, 32.524048>,  <9.554387, 18.410110, 31.860823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.783692, 18.181410, 32.524048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.992784, 18.417065, 32.277576>,  <10.118238, 18.558456, 32.129696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.992784, 18.417065, 32.277576>,  <9.783692, 18.181410, 32.524048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.992784, 18.417065, 32.277576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006487, 0.720019, 0.693924,
		0.852475, -0.366730, 0.372551,
		0.522727, 0.589137, -0.616177,
		10.149602, 18.593805, 32.092724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.084315, 18.659056, 32.996422>,  <9.783692, 18.181410, 32.524048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.084315, 18.659056, 32.996422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.161554, 18.832344, 32.644279>,  <10.207898, 18.936317, 32.432995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.161554, 18.832344, 32.644279>,  <10.084315, 18.659056, 32.996422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.161554, 18.832344, 32.644279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166071, 0.869869, 0.464487,
		0.967023, -0.235894, 0.096024,
		0.193098, 0.433223, -0.880358,
		10.219483, 18.962311, 32.380173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.332189, 19.366180, 33.168842>,  <10.084315, 18.659056, 32.996422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.332189, 19.366180, 33.168842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.363109, 19.353516, 32.770241>,  <10.381660, 19.345917, 32.531078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.363109, 19.353516, 32.770241>,  <10.332189, 19.366180, 33.168842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.363109, 19.353516, 32.770241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394103, 0.919065, 0.001368,
		0.915810, -0.392831, 0.083522,
		0.077299, -0.031664, -0.996505,
		10.386298, 19.344017, 32.471291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.933389, 19.149656, 32.643620>,  <10.332189, 19.366180, 33.168842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.933389, 19.149656, 32.643620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.320518, 19.123959, 32.740936>,  <11.552795, 19.108540, 32.799328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.320518, 19.123959, 32.740936>,  <10.933389, 19.149656, 32.643620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.320518, 19.123959, 32.740936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127710, -0.958488, 0.254934,
		0.216814, -0.277802, -0.935851,
		0.967823, -0.064245, 0.243292,
		11.610865, 19.104685, 32.813923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.195373, 18.502825, 32.508839>,  <10.933389, 19.149656, 32.643620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.195373, 18.502825, 32.508839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462465, 18.619825, 32.782650>,  <11.622721, 18.690025, 32.946938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462465, 18.619825, 32.782650>,  <11.195373, 18.502825, 32.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462465, 18.619825, 32.782650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050134, -0.899808, 0.433396,
		0.742712, -0.323710, -0.586165,
		0.667731, 0.292502, 0.684527,
		11.662785, 18.707577, 32.988007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735659, 18.047970, 32.588852>,  <11.195373, 18.502825, 32.508839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735659, 18.047970, 32.588852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651563, 18.245224, 32.926517>,  <11.601105, 18.363577, 33.129116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651563, 18.245224, 32.926517>,  <11.735659, 18.047970, 32.588852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651563, 18.245224, 32.926517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076777, -0.852469, 0.517109,
		0.974630, 0.173530, 0.141362,
		-0.210241, 0.493137, 0.844165,
		11.588490, 18.393166, 33.179768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.144842, 17.669048, 33.110821>,  <11.735659, 18.047970, 32.588852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.144842, 17.669048, 33.110821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.857578, 17.875347, 33.297691>,  <11.685220, 17.999126, 33.409813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.857578, 17.875347, 33.297691>,  <12.144842, 17.669048, 33.110821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.857578, 17.875347, 33.297691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267772, -0.824467, 0.498551,
		0.642296, 0.232942, 0.730201,
		-0.718160, 0.515745, 0.467177,
		11.642130, 18.030071, 33.437843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082211, 17.303926, 33.628517>,  <12.144842, 17.669048, 33.110821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082211, 17.303926, 33.628517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758477, 17.535999, 33.665092>,  <11.564237, 17.675243, 33.687038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758477, 17.535999, 33.665092>,  <12.082211, 17.303926, 33.628517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.758477, 17.535999, 33.665092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456716, -0.719551, 0.523122,
		0.369303, 0.381619, 0.847338,
		-0.809336, 0.580184, 0.091441,
		11.515676, 17.710054, 33.692524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527820, 16.629114, 33.293980>,  <12.082211, 17.303926, 33.628517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527820, 16.629114, 33.293980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147790, 16.507120, 33.320332>,  <11.919772, 16.433924, 33.336143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147790, 16.507120, 33.320332>,  <12.527820, 16.629114, 33.293980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.147790, 16.507120, 33.320332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098119, -0.492446, -0.864794,
		0.296192, -0.815156, 0.497786,
		-0.950075, -0.304987, 0.065876,
		11.862767, 16.415625, 33.340096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.448444, 15.788197, 33.396355>,  <12.527820, 16.629114, 33.293980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.448444, 15.788197, 33.396355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136148, 15.954257, 33.209553>,  <11.948771, 16.053894, 33.097473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136148, 15.954257, 33.209553>,  <12.448444, 15.788197, 33.396355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.136148, 15.954257, 33.209553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160613, -0.588937, -0.792058,
		-0.603875, -0.693392, 0.393120,
		-0.780730, 0.415163, -0.467012,
		11.901926, 16.078802, 33.069450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.875234, 15.335071, 33.144878>,  <12.448444, 15.788197, 33.396355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.875234, 15.335071, 33.144878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.943925, 15.653671, 32.912983>,  <11.985140, 15.844831, 32.773846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.943925, 15.653671, 32.912983>,  <11.875234, 15.335071, 33.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.943925, 15.653671, 32.912983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274473, -0.603860, -0.748343,
		-0.946136, -0.030610, -0.322319,
		0.171729, 0.796502, -0.579735,
		11.995443, 15.892622, 32.739063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.530657, 15.128216, 32.530273>,  <11.875234, 15.335071, 33.144878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.530657, 15.128216, 32.530273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763877, 15.435727, 32.425179>,  <11.903810, 15.620234, 32.362122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763877, 15.435727, 32.425179>,  <11.530657, 15.128216, 32.530273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.763877, 15.435727, 32.425179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135707, -0.411007, -0.901475,
		-0.801021, 0.489951, -0.343967,
		0.583051, 0.768779, -0.262735,
		11.938792, 15.666361, 32.346359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.295897, 15.323399, 31.910622>,  <11.530657, 15.128216, 32.530273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.295897, 15.323399, 31.910622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663683, 15.479767, 31.927448>,  <11.884354, 15.573587, 31.937544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663683, 15.479767, 31.927448>,  <11.295897, 15.323399, 31.910622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.663683, 15.479767, 31.927448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160504, -0.275525, -0.947800,
		-0.358923, 0.878219, -0.316079,
		0.919463, 0.390919, 0.042065,
		11.939522, 15.597043, 31.940067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.354939, 15.761001, 31.371916>,  <11.295897, 15.323399, 31.910622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.354939, 15.761001, 31.371916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.729745, 15.639528, 31.440950>,  <11.954628, 15.566645, 31.482370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.729745, 15.639528, 31.440950>,  <11.354939, 15.761001, 31.371916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.729745, 15.639528, 31.440950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031389, -0.418886, -0.907496,
		0.347882, 0.855753, -0.382969,
		0.937013, -0.303680, 0.172584,
		12.010849, 15.548424, 31.492725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757837, 15.913452, 30.752686>,  <11.354939, 15.761001, 31.371916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757837, 15.913452, 30.752686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.937041, 15.617607, 30.953588>,  <12.044563, 15.440100, 31.074129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.937041, 15.617607, 30.953588>,  <11.757837, 15.913452, 30.752686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.937041, 15.617607, 30.953588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266860, -0.425548, -0.864693,
		0.853272, 0.521422, 0.006723,
		0.448009, -0.739613, 0.502255,
		12.071444, 15.395723, 31.104265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.320669, 15.842668, 30.343624>,  <11.757837, 15.913452, 30.752686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.320669, 15.842668, 30.343624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341505, 15.511104, 30.566404>,  <12.354007, 15.312165, 30.700073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341505, 15.511104, 30.566404>,  <12.320669, 15.842668, 30.343624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341505, 15.511104, 30.566404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339696, -0.509745, -0.790421,
		0.939092, 0.230367, 0.255025,
		0.052089, -0.828909, 0.556952,
		12.357132, 15.262431, 30.733490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887418, 15.483777, 30.038111>,  <12.320669, 15.842668, 30.343624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887418, 15.483777, 30.038111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654665, 15.216950, 30.224201>,  <12.515013, 15.056854, 30.335855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654665, 15.216950, 30.224201>,  <12.887418, 15.483777, 30.038111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.654665, 15.216950, 30.224201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143588, -0.647319, -0.748572,
		0.800497, -0.368780, 0.472447,
		-0.581882, -0.667067, 0.465225,
		12.480101, 15.016830, 30.363770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.186015, 14.844403, 29.998775>,  <12.887418, 15.483777, 30.038111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.186015, 14.844403, 29.998775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805737, 14.741578, 30.068171>,  <12.577571, 14.679883, 30.109808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805737, 14.741578, 30.068171>,  <13.186015, 14.844403, 29.998775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805737, 14.741578, 30.068171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038529, -0.652972, -0.756401,
		0.307725, -0.712423, 0.630681,
		-0.950695, -0.257063, 0.173487,
		12.520529, 14.664459, 30.120216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.226673, 14.081079, 30.138073>,  <13.186015, 14.844403, 29.998775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.226673, 14.081079, 30.138073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881146, 14.238350, 30.012068>,  <12.673830, 14.332712, 29.936464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881146, 14.238350, 30.012068>,  <13.226673, 14.081079, 30.138073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881146, 14.238350, 30.012068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025369, -0.658418, -0.752225,
		-0.503165, -0.641794, 0.578728,
		-0.863818, 0.393175, -0.315011,
		12.622002, 14.356303, 29.917564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884990, 13.493540, 29.787653>,  <13.226673, 14.081079, 30.138073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.884990, 13.493540, 29.787653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619023, 13.775717, 29.689480>,  <12.459444, 13.945023, 29.630575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619023, 13.775717, 29.689480>,  <12.884990, 13.493540, 29.787653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.619023, 13.775717, 29.689480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131911, -0.434339, -0.891038,
		-0.735178, -0.560089, 0.381855,
		-0.664915, 0.705443, -0.245435,
		12.419549, 13.987350, 29.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.365626, 13.159917, 29.428400>,  <12.884990, 13.493540, 29.787653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.365626, 13.159917, 29.428400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315460, 13.538863, 29.310574>,  <12.285360, 13.766231, 29.239878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315460, 13.538863, 29.310574>,  <12.365626, 13.159917, 29.428400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315460, 13.538863, 29.310574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096957, -0.307193, -0.946695,
		-0.987355, -0.090169, 0.130380,
		-0.125414, 0.947366, -0.294566,
		12.277836, 13.823073, 29.222204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.686958, 13.277452, 29.032740>,  <12.365626, 13.159917, 29.428400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.686958, 13.277452, 29.032740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.937140, 13.571480, 28.928064>,  <12.087250, 13.747896, 28.865259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.937140, 13.571480, 28.928064>,  <11.686958, 13.277452, 29.032740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.937140, 13.571480, 28.928064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278291, -0.103169, -0.954940,
		-0.728945, 0.670096, 0.140036,
		0.625454, 0.735070, -0.261686,
		12.124777, 13.792001, 28.849558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.398723, 13.459138, 28.491289>,  <11.686958, 13.277452, 29.032740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.398723, 13.459138, 28.491289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758106, 13.627138, 28.440113>,  <11.973737, 13.727939, 28.409409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758106, 13.627138, 28.440113>,  <11.398723, 13.459138, 28.491289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.758106, 13.627138, 28.440113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055103, -0.181222, -0.981897,
		-0.435584, 0.889245, -0.139678,
		0.898460, 0.420002, -0.127938,
		12.027644, 13.753139, 28.401731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.401608, 13.876565, 27.759228>,  <11.398723, 13.459138, 28.491289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.401608, 13.876565, 27.759228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788960, 13.808428, 27.832134>,  <12.021372, 13.767546, 27.875877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788960, 13.808428, 27.832134>,  <11.401608, 13.876565, 27.759228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.788960, 13.808428, 27.832134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154155, -0.165844, -0.974029,
		0.196147, 0.971328, -0.134341,
		0.968382, -0.170343, 0.182265,
		12.079474, 13.757325, 27.886814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.859659, 14.255986, 27.246307>,  <11.401608, 13.876565, 27.759228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.859659, 14.255986, 27.246307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094378, 13.975489, 27.408258>,  <12.235209, 13.807190, 27.505428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094378, 13.975489, 27.408258>,  <11.859659, 14.255986, 27.246307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.094378, 13.975489, 27.408258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257703, -0.312285, -0.914367,
		0.767633, 0.640885, -0.002534,
		0.586796, -0.701245, 0.404878,
		12.270416, 13.765115, 27.529722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.535811, 14.369008, 26.947605>,  <11.859659, 14.255986, 27.246307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.535811, 14.369008, 26.947605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528850, 13.988711, 27.071404>,  <12.524673, 13.760533, 27.145681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528850, 13.988711, 27.071404>,  <12.535811, 14.369008, 26.947605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528850, 13.988711, 27.071404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337595, -0.296951, -0.893224,
		0.941131, 0.088938, 0.326134,
		-0.017404, -0.950742, 0.309495,
		12.523628, 13.703489, 27.164251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185534, 14.189123, 26.812248>,  <12.535811, 14.369008, 26.947605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185534, 14.189123, 26.812248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963520, 13.857114, 26.834145>,  <12.830312, 13.657908, 26.847282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963520, 13.857114, 26.834145>,  <13.185534, 14.189123, 26.812248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963520, 13.857114, 26.834145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370997, -0.305911, -0.876801,
		0.744511, -0.466347, 0.477728,
		-0.555036, -0.830023, 0.054741,
		12.797009, 13.608107, 26.850567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678239, 13.680111, 26.610340>,  <13.185534, 14.189123, 26.812248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678239, 13.680111, 26.610340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.317359, 13.514551, 26.561802>,  <13.100831, 13.415215, 26.532679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.317359, 13.514551, 26.561802>,  <13.678239, 13.680111, 26.610340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.317359, 13.514551, 26.561802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285423, -0.361978, -0.887416,
		0.323375, -0.835261, 0.444712,
		-0.902199, -0.413899, -0.121348,
		13.046700, 13.390382, 26.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820045, 13.095832, 26.292233>,  <13.678239, 13.680111, 26.610340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820045, 13.095832, 26.292233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.426858, 13.126088, 26.225241>,  <13.190946, 13.144241, 26.185045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.426858, 13.126088, 26.225241>,  <13.820045, 13.095832, 26.292233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.426858, 13.126088, 26.225241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129560, -0.361087, -0.923488,
		-0.130327, -0.929459, 0.345138,
		-0.982970, 0.075639, -0.167480,
		13.131968, 13.148780, 26.174997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.565580, 12.417171, 25.983545>,  <13.820045, 13.095832, 26.292233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.565580, 12.417171, 25.983545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307295, 12.712088, 25.904093>,  <13.152324, 12.889038, 25.856422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307295, 12.712088, 25.904093>,  <13.565580, 12.417171, 25.983545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.307295, 12.712088, 25.904093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085115, -0.328007, -0.940833,
		-0.758820, -0.590603, 0.274553,
		-0.645715, 0.737292, -0.198629,
		13.113581, 12.933275, 25.844503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.933533, 12.084696, 25.683302>,  <13.565580, 12.417171, 25.983545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.933533, 12.084696, 25.683302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927374, 12.471318, 25.580906>,  <12.923678, 12.703292, 25.519468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927374, 12.471318, 25.580906>,  <12.933533, 12.084696, 25.683302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.927374, 12.471318, 25.580906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128062, -0.255817, -0.958205,
		-0.991647, 0.018030, 0.127718,
		-0.015396, 0.966557, -0.255989,
		12.922755, 12.761286, 25.504108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.355345, 12.199446, 25.221384>,  <12.933533, 12.084696, 25.683302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.355345, 12.199446, 25.221384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.627413, 12.479375, 25.134102>,  <12.790654, 12.647332, 25.081732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.627413, 12.479375, 25.134102>,  <12.355345, 12.199446, 25.221384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.627413, 12.479375, 25.134102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189398, -0.119792, -0.974566,
		-0.708164, 0.704199, 0.051066,
		0.680171, 0.699824, -0.218206,
		12.831464, 12.689322, 25.068640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.017002, 12.644280, 24.697264>,  <12.355345, 12.199446, 25.221384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.017002, 12.644280, 24.697264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.414829, 12.685693, 24.701603>,  <12.653525, 12.710540, 24.704206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.414829, 12.685693, 24.701603>,  <12.017002, 12.644280, 24.697264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.414829, 12.685693, 24.701603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036282, -0.247081, -0.968315,
		-0.097569, 0.963448, -0.249495,
		0.994567, 0.103530, 0.010849,
		12.713200, 12.716752, 24.704857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129231, 12.871140, 24.097202>,  <12.017002, 12.644280, 24.697264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129231, 12.871140, 24.097202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.495520, 12.743513, 24.194897>,  <12.715293, 12.666937, 24.253513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.495520, 12.743513, 24.194897>,  <12.129231, 12.871140, 24.097202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.495520, 12.743513, 24.194897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137287, -0.322817, -0.936452,
		0.377636, 0.891058, -0.251806,
		0.915720, -0.319068, 0.244238,
		12.770236, 12.647793, 24.268167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.592134, 13.089872, 23.516727>,  <12.129231, 12.871140, 24.097202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.592134, 13.089872, 23.516727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.814304, 12.816009, 23.705511>,  <12.947606, 12.651690, 23.818781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.814304, 12.816009, 23.705511>,  <12.592134, 13.089872, 23.516727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.814304, 12.816009, 23.705511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314251, -0.352653, -0.881409,
		0.769902, 0.637871, 0.019283,
		0.555425, -0.684659, 0.471960,
		12.980932, 12.610611, 23.847099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.297022, 13.104920, 23.229284>,  <12.592134, 13.089872, 23.516727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.297022, 13.104920, 23.229284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228866, 12.740775, 23.380125>,  <13.187972, 12.522288, 23.470631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228866, 12.740775, 23.380125>,  <13.297022, 13.104920, 23.229284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228866, 12.740775, 23.380125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355311, -0.413718, -0.838207,
		0.919087, -0.008834, 0.393956,
		-0.170392, -0.910362, 0.377104,
		13.177748, 12.467667, 23.493256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.770525, 12.812626, 22.891022>,  <13.297022, 13.104920, 23.229284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.770525, 12.812626, 22.891022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.560721, 12.497168, 23.019352>,  <13.434839, 12.307893, 23.096350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.560721, 12.497168, 23.019352>,  <13.770525, 12.812626, 22.891022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.560721, 12.497168, 23.019352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294028, -0.521421, -0.801042,
		0.799023, -0.325822, 0.505373,
		-0.524509, -0.788645, 0.320826,
		13.403369, 12.260574, 23.115601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.189796, 12.227571, 23.069693>,  <13.770525, 12.812626, 22.891022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.189796, 12.227571, 23.069693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.828636, 12.088708, 22.968300>,  <13.611940, 12.005390, 22.907463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.828636, 12.088708, 22.968300>,  <14.189796, 12.227571, 23.069693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828636, 12.088708, 22.968300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399270, -0.458875, -0.793736,
		0.159233, -0.817873, 0.552927,
		-0.902900, -0.347156, -0.253484,
		13.557766, 11.984561, 22.892254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334861, 11.662776, 22.712580>,  <14.189796, 12.227571, 23.069693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.334861, 11.662776, 22.712580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949839, 11.687612, 22.607027>,  <13.718825, 11.702513, 22.543695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949839, 11.687612, 22.607027>,  <14.334861, 11.662776, 22.712580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.949839, 11.687612, 22.607027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234513, -0.297584, -0.925445,
		-0.135985, -0.952675, 0.271880,
		-0.962555, 0.062087, -0.263881,
		13.661072, 11.706238, 22.527863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301971, 11.151602, 22.312658>,  <14.334861, 11.662776, 22.712580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301971, 11.151602, 22.312658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008373, 11.389793, 22.182026>,  <13.832214, 11.532708, 22.103647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008373, 11.389793, 22.182026>,  <14.301971, 11.151602, 22.312658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008373, 11.389793, 22.182026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346208, -0.085628, -0.934242,
		-0.584286, -0.798794, -0.143310,
		-0.733996, 0.595479, -0.326580,
		13.788175, 11.568438, 22.084051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191762, 10.941725, 21.688423>,  <14.301971, 11.151602, 22.312658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191762, 10.941725, 21.688423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.979077, 11.279737, 21.665773>,  <13.851466, 11.482544, 21.652184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.979077, 11.279737, 21.665773>,  <14.191762, 10.941725, 21.688423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.979077, 11.279737, 21.665773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182056, 0.048745, -0.982079,
		-0.827126, -0.532493, -0.179761,
		-0.531712, 0.845030, -0.056625,
		13.819564, 11.533245, 21.648787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743752, 10.878560, 21.101330>,  <14.191762, 10.941725, 21.688423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743752, 10.878560, 21.101330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771818, 11.271542, 21.170452>,  <13.788658, 11.507330, 21.211926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771818, 11.271542, 21.170452>,  <13.743752, 10.878560, 21.101330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771818, 11.271542, 21.170452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049357, 0.169602, -0.984276,
		-0.996314, 0.077592, -0.036591,
		0.070167, 0.982453, 0.172807,
		13.792868, 11.566278, 21.222294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333387, 11.248733, 20.633776>,  <13.743752, 10.878560, 21.101330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333387, 11.248733, 20.633776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.583013, 11.536642, 20.755413>,  <13.732787, 11.709388, 20.828396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.583013, 11.536642, 20.755413>,  <13.333387, 11.248733, 20.633776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583013, 11.536642, 20.755413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057426, 0.345877, -0.936521,
		-0.779261, 0.601910, 0.174515,
		0.624062, 0.719773, 0.304094,
		13.770231, 11.752574, 20.846642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234547, 11.773999, 20.239147>,  <13.333387, 11.248733, 20.633776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234547, 11.773999, 20.239147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.579259, 11.915635, 20.384449>,  <13.786086, 12.000616, 20.471630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.579259, 11.915635, 20.384449>,  <13.234547, 11.773999, 20.239147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.579259, 11.915635, 20.384449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268882, 0.288378, -0.918989,
		-0.430159, 0.889640, 0.153310,
		0.861781, 0.354089, 0.363256,
		13.837793, 12.021862, 20.493425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287347, 12.491852, 20.044762>,  <13.234547, 11.773999, 20.239147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287347, 12.491852, 20.044762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.655332, 12.350804, 20.113264>,  <13.876122, 12.266176, 20.154366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.655332, 12.350804, 20.113264>,  <13.287347, 12.491852, 20.044762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.655332, 12.350804, 20.113264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299023, 0.348745, -0.888236,
		0.253484, 0.868353, 0.426273,
		0.919963, -0.352619, 0.171256,
		13.931320, 12.245019, 20.164640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.829134, 13.043835, 19.999796>,  <13.287347, 12.491852, 20.044762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.829134, 13.043835, 19.999796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996498, 12.691402, 19.911587>,  <14.096916, 12.479943, 19.858662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996498, 12.691402, 19.911587>,  <13.829134, 13.043835, 19.999796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996498, 12.691402, 19.911587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226836, 0.336472, -0.913965,
		0.879476, 0.332389, 0.340644,
		0.418409, -0.881081, -0.220522,
		14.122021, 12.427078, 19.845430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335511, 13.249509, 19.603962>,  <13.829134, 13.043835, 19.999796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335511, 13.249509, 19.603962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333761, 12.857815, 19.522888>,  <14.332711, 12.622799, 19.474243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333761, 12.857815, 19.522888>,  <14.335511, 13.249509, 19.603962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333761, 12.857815, 19.522888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292044, 0.192600, -0.936812,
		0.956395, -0.063291, 0.285136,
		-0.004374, -0.979234, -0.202685,
		14.332449, 12.564045, 19.462082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009429, 13.156113, 19.182575>,  <14.335511, 13.249509, 19.603962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009429, 13.156113, 19.182575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764506, 12.841319, 19.152279>,  <14.617553, 12.652443, 19.134102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764506, 12.841319, 19.152279>,  <15.009429, 13.156113, 19.182575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764506, 12.841319, 19.152279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206494, -0.066714, -0.976171,
		0.763178, -0.613356, 0.203356,
		-0.612307, -0.786984, -0.075740,
		14.580814, 12.605224, 19.129557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416079, 12.689127, 19.041470>,  <15.009429, 13.156113, 19.182575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416079, 12.689127, 19.041470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.039539, 12.655735, 18.910690>,  <14.813616, 12.635699, 18.832222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.039539, 12.655735, 18.910690>,  <15.416079, 12.689127, 19.041470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.039539, 12.655735, 18.910690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322342, 0.064105, -0.944450,
		0.099807, -0.994445, -0.033434,
		-0.941347, -0.083486, -0.326950,
		14.757135, 12.630691, 18.812605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704370, 13.306314, 19.278566>,  <15.416079, 12.689127, 19.041470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704370, 13.306314, 19.278566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080490, 13.386308, 19.168407>,  <16.306162, 13.434304, 19.102312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080490, 13.386308, 19.168407>,  <15.704370, 13.306314, 19.278566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080490, 13.386308, 19.168407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287841, -0.035478, 0.957021,
		0.181621, -0.979156, -0.090924,
		0.940298, 0.199987, -0.275398,
		16.362579, 13.446303, 19.085789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092176, 12.676573, 19.326694>,  <15.704370, 13.306314, 19.278566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092176, 12.676573, 19.326694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322264, 13.001036, 19.368929>,  <16.460316, 13.195713, 19.394270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322264, 13.001036, 19.368929>,  <16.092176, 12.676573, 19.326694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322264, 13.001036, 19.368929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116561, -0.209040, 0.970936,
		0.809652, -0.546193, -0.214793,
		0.575219, 0.811157, 0.105585,
		16.494829, 13.244383, 19.400604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677816, 12.511172, 19.852186>,  <16.092176, 12.676573, 19.326694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677816, 12.511172, 19.852186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718637, 12.908038, 19.823353>,  <16.743130, 13.146157, 19.806053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718637, 12.908038, 19.823353>,  <16.677816, 12.511172, 19.852186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.718637, 12.908038, 19.823353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181292, 0.052700, 0.982016,
		0.978120, -0.113284, -0.174493,
		0.102051, 0.992164, -0.072084,
		16.749252, 13.205688, 19.801727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370869, 12.705667, 20.152603>,  <16.677816, 12.511172, 19.852186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370869, 12.705667, 20.152603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.132662, 13.026934, 20.159382>,  <16.989738, 13.219693, 20.163448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.132662, 13.026934, 20.159382>,  <17.370869, 12.705667, 20.152603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132662, 13.026934, 20.159382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086982, 0.043496, 0.995260,
		0.798620, 0.594167, -0.095763,
		-0.595516, 0.803164, 0.016945,
		16.954006, 13.267883, 20.164465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713531, 13.237400, 20.583111>,  <17.370869, 12.705667, 20.152603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713531, 13.237400, 20.583111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317434, 13.290423, 20.565905>,  <17.079777, 13.322237, 20.555582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317434, 13.290423, 20.565905>,  <17.713531, 13.237400, 20.583111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317434, 13.290423, 20.565905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024011, 0.141748, 0.989611,
		0.137278, 0.980987, -0.137182,
		-0.990241, 0.132558, -0.043014,
		17.020361, 13.330191, 20.553001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600815, 13.771676, 21.016661>,  <17.713531, 13.237400, 20.583111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600815, 13.771676, 21.016661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231754, 13.617546, 21.010447>,  <17.010319, 13.525068, 21.006718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231754, 13.617546, 21.010447>,  <17.600815, 13.771676, 21.016661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231754, 13.617546, 21.010447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140587, 0.298570, 0.943976,
		-0.359098, 0.873144, -0.329648,
		-0.922651, -0.385324, -0.015536,
		16.954960, 13.501949, 21.005785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327156, 14.028603, 21.545006>,  <17.600815, 13.771676, 21.016661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327156, 14.028603, 21.545006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033064, 13.765033, 21.481438>,  <16.856609, 13.606891, 21.443296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033064, 13.765033, 21.481438>,  <17.327156, 14.028603, 21.545006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.033064, 13.765033, 21.481438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168993, -0.048858, 0.984406,
		-0.656414, 0.750620, -0.075432,
		-0.735229, -0.658925, -0.158920,
		16.812496, 13.567355, 21.433762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711494, 14.321736, 21.886990>,  <17.327156, 14.028603, 21.545006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711494, 14.321736, 21.886990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.667418, 13.925151, 21.859104>,  <16.640972, 13.687200, 21.842373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.667418, 13.925151, 21.859104>,  <16.711494, 14.321736, 21.886990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667418, 13.925151, 21.859104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224164, -0.043544, 0.973578,
		-0.968302, 0.122906, -0.217452,
		-0.110190, -0.991462, -0.069715,
		16.634361, 13.627712, 21.838190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125038, 14.356715, 22.167732>,  <16.711494, 14.321736, 21.886990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125038, 14.356715, 22.167732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.283588, 13.990442, 22.194305>,  <16.378717, 13.770679, 22.210249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.283588, 13.990442, 22.194305>,  <16.125038, 14.356715, 22.167732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283588, 13.990442, 22.194305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352125, -0.084799, 0.932104,
		-0.847878, -0.392854, -0.356046,
		0.396373, -0.915683, 0.066435,
		16.402500, 13.715737, 22.214235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722759, 13.985945, 22.604565>,  <16.125038, 14.356715, 22.167732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722759, 13.985945, 22.604565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.052233, 13.759285, 22.613100>,  <16.249916, 13.623289, 22.618221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.052233, 13.759285, 22.613100>,  <15.722759, 13.985945, 22.604565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052233, 13.759285, 22.613100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145241, -0.174446, 0.973896,
		-0.548134, -0.805281, -0.225989,
		0.823683, -0.566649, 0.021341,
		16.299337, 13.589291, 22.619503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523334, 13.391866, 22.939314>,  <15.722759, 13.985945, 22.604565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.523334, 13.391866, 22.939314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920550, 13.431935, 22.964085>,  <16.158880, 13.455976, 22.978947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920550, 13.431935, 22.964085>,  <15.523334, 13.391866, 22.939314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920550, 13.431935, 22.964085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059046, -0.031495, 0.997758,
		0.101900, -0.994471, -0.025361,
		0.993041, 0.100174, 0.061928,
		16.218462, 13.461987, 22.982662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751397, 12.989216, 23.556822>,  <15.523334, 13.391866, 22.939314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.751397, 12.989216, 23.556822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054234, 13.240495, 23.485065>,  <16.235935, 13.391262, 23.442011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054234, 13.240495, 23.485065>,  <15.751397, 12.989216, 23.556822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054234, 13.240495, 23.485065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154021, 0.095224, 0.983468,
		0.634896, -0.772204, -0.024663,
		0.757090, 0.628198, -0.179393,
		16.281361, 13.428954, 23.431248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239056, 12.682021, 24.007568>,  <15.751397, 12.989216, 23.556822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239056, 12.682021, 24.007568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.383642, 13.039136, 23.900036>,  <16.470394, 13.253405, 23.835516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.383642, 13.039136, 23.900036>,  <16.239056, 12.682021, 24.007568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383642, 13.039136, 23.900036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206249, 0.204623, 0.956865,
		0.909287, -0.401322, -0.110172,
		0.361467, 0.892788, -0.268833,
		16.492083, 13.306973, 23.819386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.769495, 12.736213, 24.441681>,  <16.239056, 12.682021, 24.007568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.769495, 12.736213, 24.441681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636003, 13.086702, 24.302622>,  <16.555908, 13.296996, 24.219187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636003, 13.086702, 24.302622>,  <16.769495, 12.736213, 24.441681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636003, 13.086702, 24.302622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036237, 0.356592, 0.933557,
		0.941973, 0.324151, -0.087252,
		-0.333727, 0.876224, -0.347646,
		16.535885, 13.349569, 24.198328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950768, 13.170821, 24.947805>,  <16.769495, 12.736213, 24.441681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950768, 13.170821, 24.947805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.713659, 13.429421, 24.755697>,  <16.571394, 13.584581, 24.640432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.713659, 13.429421, 24.755697>,  <16.950768, 13.170821, 24.947805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713659, 13.429421, 24.755697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313329, 0.364227, 0.877019,
		0.741921, 0.670355, -0.013337,
		-0.592772, 0.646500, -0.480269,
		16.535828, 13.623371, 24.611616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084280, 13.733148, 25.267672>,  <16.950768, 13.170821, 24.947805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084280, 13.733148, 25.267672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731668, 13.791107, 25.087933>,  <16.520102, 13.825883, 24.980089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731668, 13.791107, 25.087933>,  <17.084280, 13.733148, 25.267672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731668, 13.791107, 25.087933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324750, 0.504745, 0.799856,
		0.342703, 0.851021, -0.397891,
		-0.881528, 0.144898, -0.449347,
		16.467211, 13.834577, 24.953129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941711, 14.354431, 25.471323>,  <17.084280, 13.733148, 25.267672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941711, 14.354431, 25.471323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.597359, 14.178150, 25.369604>,  <16.390747, 14.072382, 25.308573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.597359, 14.178150, 25.369604>,  <16.941711, 14.354431, 25.471323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597359, 14.178150, 25.369604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412153, 0.310939, 0.856415,
		-0.298354, 0.842080, -0.449318,
		-0.860880, -0.440703, -0.254295,
		16.339094, 14.045939, 25.293316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400507, 14.765289, 25.777870>,  <16.941711, 14.354431, 25.471323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400507, 14.765289, 25.777870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209330, 14.422545, 25.700554>,  <16.094624, 14.216899, 25.654163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209330, 14.422545, 25.700554>,  <16.400507, 14.765289, 25.777870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209330, 14.422545, 25.700554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611843, 0.166864, 0.773178,
		-0.630252, 0.487800, -0.604015,
		-0.477944, -0.856859, -0.193290,
		16.065947, 14.165487, 25.642567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762014, 14.961005, 25.744156>,  <16.400507, 14.765289, 25.777870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762014, 14.961005, 25.744156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.755426, 14.578181, 25.859924>,  <15.751473, 14.348487, 25.929386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.755426, 14.578181, 25.859924>,  <15.762014, 14.961005, 25.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755426, 14.578181, 25.859924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537105, 0.252619, 0.804799,
		-0.843354, -0.142194, -0.518203,
		-0.016471, -0.957060, 0.289421,
		15.750485, 14.291063, 25.946751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039041, 14.893641, 25.943373>,  <15.762014, 14.961005, 25.744156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039041, 14.893641, 25.943373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220218, 14.585943, 26.123640>,  <15.328924, 14.401324, 26.231800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220218, 14.585943, 26.123640>,  <15.039041, 14.893641, 25.943373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220218, 14.585943, 26.123640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580313, 0.129363, 0.804054,
		-0.676815, -0.625719, -0.387810,
		0.452944, -0.769247, 0.450667,
		15.356101, 14.355169, 26.258841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.523827, 14.536239, 26.264109>,  <15.039041, 14.893641, 25.943373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.523827, 14.536239, 26.264109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.850945, 14.404430, 26.452841>,  <15.047215, 14.325345, 26.566080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.850945, 14.404430, 26.452841>,  <14.523827, 14.536239, 26.264109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850945, 14.404430, 26.452841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458275, 0.123070, 0.880249,
		-0.348130, -0.936092, -0.050366,
		0.817796, -0.329522, 0.471832,
		15.096283, 14.305574, 26.594391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301732, 14.207257, 26.744101>,  <14.523827, 14.536239, 26.264109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301732, 14.207257, 26.744101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.669110, 14.270765, 26.889013>,  <14.889538, 14.308870, 26.975962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.669110, 14.270765, 26.889013>,  <14.301732, 14.207257, 26.744101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.669110, 14.270765, 26.889013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395542, 0.364440, 0.843048,
		0.001821, -0.917592, 0.397519,
		0.918446, 0.158771, 0.362282,
		14.944644, 14.318397, 26.997698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349108, 13.983119, 27.532717>,  <14.301732, 14.207257, 26.744101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349108, 13.983119, 27.532717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630688, 14.253966, 27.446959>,  <14.799636, 14.416475, 27.395504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630688, 14.253966, 27.446959>,  <14.349108, 13.983119, 27.532717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630688, 14.253966, 27.446959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287571, 0.547732, 0.785679,
		0.649431, -0.491423, 0.580296,
		0.703948, 0.677120, -0.214395,
		14.841872, 14.457102, 27.382641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729413, 14.015770, 28.163410>,  <14.349108, 13.983119, 27.532717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.729413, 14.015770, 28.163410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802907, 14.344295, 27.947376>,  <14.847003, 14.541409, 27.817757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802907, 14.344295, 27.947376>,  <14.729413, 14.015770, 28.163410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802907, 14.344295, 27.947376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171948, 0.567820, 0.804994,
		0.967820, -0.055039, 0.245551,
		0.183735, 0.821311, -0.540083,
		14.858027, 14.590688, 27.785351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058681, 14.496723, 28.669872>,  <14.729413, 14.015770, 28.163410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058681, 14.496723, 28.669872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946571, 14.734734, 28.368570>,  <14.879305, 14.877540, 28.187790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946571, 14.734734, 28.368570>,  <15.058681, 14.496723, 28.669872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946571, 14.734734, 28.368570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165245, 0.743082, 0.648477,
		0.945589, 0.306224, -0.109944,
		-0.280277, 0.595025, -0.753253,
		14.862489, 14.913241, 28.142595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272570, 15.072070, 28.877281>,  <15.058681, 14.496723, 28.669872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272570, 15.072070, 28.877281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013432, 15.181611, 28.592943>,  <14.857948, 15.247335, 28.422340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013432, 15.181611, 28.592943>,  <15.272570, 15.072070, 28.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013432, 15.181611, 28.592943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294155, 0.770837, 0.565051,
		0.702687, 0.575165, -0.418828,
		-0.647846, 0.273854, -0.710844,
		14.819077, 15.263767, 28.379690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381940, 15.803503, 28.749258>,  <15.272570, 15.072070, 28.877281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.381940, 15.803503, 28.749258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005157, 15.682168, 28.691702>,  <14.779088, 15.609367, 28.657167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005157, 15.682168, 28.691702>,  <15.381940, 15.803503, 28.749258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005157, 15.682168, 28.691702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322558, 0.698758, 0.638509,
		-0.093139, 0.647861, -0.756043,
		-0.941956, -0.303338, -0.143890,
		14.722570, 15.591166, 28.648535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995083, 16.430285, 28.713865>,  <15.381940, 15.803503, 28.749258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995083, 16.430285, 28.713865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736100, 16.141184, 28.810553>,  <14.580710, 15.967723, 28.868565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736100, 16.141184, 28.810553>,  <14.995083, 16.430285, 28.713865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736100, 16.141184, 28.810553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496517, 0.640666, 0.585677,
		-0.578162, 0.259182, -0.773663,
		-0.647456, -0.722753, 0.241720,
		14.541863, 15.924358, 28.883068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.354781, 16.798164, 28.753229>,  <14.995083, 16.430285, 28.713865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.354781, 16.798164, 28.753229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289704, 16.465336, 28.965338>,  <14.250658, 16.265638, 29.092604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289704, 16.465336, 28.965338>,  <14.354781, 16.798164, 28.753229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289704, 16.465336, 28.965338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587238, 0.513539, 0.625643,
		-0.792895, -0.209609, -0.572172,
		-0.162692, -0.832071, 0.530273,
		14.240896, 16.215715, 29.124420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.722565, 16.857718, 29.054071>,  <14.354781, 16.798164, 28.753229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.722565, 16.857718, 29.054071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878785, 16.589834, 29.306725>,  <13.972518, 16.429104, 29.458317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878785, 16.589834, 29.306725>,  <13.722565, 16.857718, 29.054071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878785, 16.589834, 29.306725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478013, 0.438844, 0.760868,
		-0.786748, -0.599086, -0.148739,
		0.390552, -0.669711, 0.631631,
		13.995951, 16.388922, 29.496214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160131, 16.642618, 29.531500>,  <13.722565, 16.857718, 29.054071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160131, 16.642618, 29.531500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503087, 16.525877, 29.701065>,  <13.708861, 16.455832, 29.802805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503087, 16.525877, 29.701065>,  <13.160131, 16.642618, 29.531500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503087, 16.525877, 29.701065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286521, 0.413548, 0.864224,
		-0.427536, -0.862438, 0.270950,
		0.857391, -0.291854, 0.423913,
		13.760304, 16.438320, 29.828239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051635, 16.337076, 30.204533>,  <13.160131, 16.642618, 29.531500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051635, 16.337076, 30.204533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433585, 16.455473, 30.214334>,  <13.662755, 16.526510, 30.220215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433585, 16.455473, 30.214334>,  <13.051635, 16.337076, 30.204533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433585, 16.455473, 30.214334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186949, 0.534893, 0.823978,
		0.230784, -0.791378, 0.566092,
		0.954876, 0.295991, 0.024503,
		13.720048, 16.544270, 30.221685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.226862, 16.211636, 30.875248>,  <13.051635, 16.337076, 30.204533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.226862, 16.211636, 30.875248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494729, 16.466022, 30.721838>,  <13.655449, 16.618654, 30.629791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494729, 16.466022, 30.721838>,  <13.226862, 16.211636, 30.875248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494729, 16.466022, 30.721838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009041, 0.523365, 0.852061,
		0.742607, -0.567129, 0.356230,
		0.669667, 0.635967, -0.383527,
		13.695629, 16.656813, 30.606779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.756160, 16.364107, 31.458403>,  <13.226862, 16.211636, 30.875248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.756160, 16.364107, 31.458403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777797, 16.670673, 31.202377>,  <13.790779, 16.854612, 31.048761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777797, 16.670673, 31.202377>,  <13.756160, 16.364107, 31.458403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.777797, 16.670673, 31.202377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132240, 0.640854, 0.756187,
		0.989741, 0.043738, 0.136015,
		0.054092, 0.766415, -0.640063,
		13.794024, 16.900599, 31.010359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167016, 16.992899, 31.834860>,  <13.756160, 16.364107, 31.458403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167016, 16.992899, 31.834860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008056, 17.161137, 31.508627>,  <13.912680, 17.262079, 31.312887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008056, 17.161137, 31.508627>,  <14.167016, 16.992899, 31.834860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008056, 17.161137, 31.508627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263780, 0.798908, 0.540525,
		0.878916, 0.429939, -0.206542,
		-0.397401, 0.420594, -0.815582,
		13.888836, 17.287315, 31.263952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480547, 17.677114, 31.796082>,  <14.167016, 16.992899, 31.834860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480547, 17.677114, 31.796082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134453, 17.672302, 31.595594>,  <13.926796, 17.669415, 31.475302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134453, 17.672302, 31.595594>,  <14.480547, 17.677114, 31.796082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.134453, 17.672302, 31.595594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268457, 0.855440, 0.442892,
		0.423435, 0.517762, -0.743388,
		-0.865236, -0.012032, -0.501220,
		13.874882, 17.668694, 31.445229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.370868, 18.344242, 31.766539>,  <14.480547, 17.677114, 31.796082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.370868, 18.344242, 31.766539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008821, 18.211681, 31.660004>,  <13.791594, 18.132145, 31.596083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008821, 18.211681, 31.660004>,  <14.370868, 18.344242, 31.766539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008821, 18.211681, 31.660004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401382, 0.872624, 0.278243,
		0.140203, 0.358746, -0.922846,
		-0.905116, -0.331403, -0.266339,
		13.737287, 18.112261, 31.580103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.975418, 19.073614, 31.603811>,  <14.370868, 18.344242, 31.766539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.975418, 19.073614, 31.603811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.736894, 19.372080, 31.485386>,  <13.593780, 19.551159, 31.414331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.736894, 19.372080, 31.485386>,  <13.975418, 19.073614, 31.603811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.736894, 19.372080, 31.485386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309926, -0.126221, -0.942345,
		-0.740513, -0.653687, -0.155989,
		-0.596310, 0.746164, -0.296063,
		13.558001, 19.595928, 31.396566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301382, 18.833200, 31.385954>,  <13.975418, 19.073614, 31.603811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301382, 18.833200, 31.385954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416035, 19.175257, 31.213177>,  <13.484826, 19.380491, 31.109510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416035, 19.175257, 31.213177>,  <13.301382, 18.833200, 31.385954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.416035, 19.175257, 31.213177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354938, -0.513562, -0.781200,
		-0.889866, 0.070604, -0.450726,
		0.286632, 0.855143, -0.431941,
		13.502025, 19.431799, 31.083595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281637, 18.769646, 30.683371>,  <13.301382, 18.833200, 31.385954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281637, 18.769646, 30.683371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487113, 19.112501, 30.668190>,  <13.610398, 19.318214, 30.659082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487113, 19.112501, 30.668190>,  <13.281637, 18.769646, 30.683371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487113, 19.112501, 30.668190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368729, -0.260491, -0.892291,
		-0.774701, 0.444366, -0.449862,
		0.513689, 0.857136, -0.037952,
		13.641220, 19.369642, 30.656805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095678, 19.131472, 29.990067>,  <13.281637, 18.769646, 30.683371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095678, 19.131472, 29.990067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463815, 19.229937, 30.111641>,  <13.684696, 19.289015, 30.184586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463815, 19.229937, 30.111641>,  <13.095678, 19.131472, 29.990067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463815, 19.229937, 30.111641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375300, -0.337045, -0.863453,
		-0.110108, 0.908738, -0.402581,
		0.920340, 0.246162, 0.303938,
		13.739917, 19.303785, 30.202822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.439566, 19.567896, 29.467510>,  <13.095678, 19.131472, 29.990067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.439566, 19.567896, 29.467510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776100, 19.493967, 29.670683>,  <13.978021, 19.449610, 29.792585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776100, 19.493967, 29.670683>,  <13.439566, 19.567896, 29.467510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776100, 19.493967, 29.670683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520780, 0.025598, -0.853307,
		0.144710, 0.982438, 0.117790,
		0.841336, -0.184824, 0.507930,
		14.028502, 19.438520, 29.823061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993436, 19.991411, 29.278168>,  <13.439566, 19.567896, 29.467510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993436, 19.991411, 29.278168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186827, 19.686504, 29.450306>,  <14.302861, 19.503559, 29.553589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186827, 19.686504, 29.450306>,  <13.993436, 19.991411, 29.278168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186827, 19.686504, 29.450306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587407, -0.081973, -0.805130,
		0.649002, 0.642049, 0.408130,
		0.483477, -0.762269, 0.430344,
		14.331870, 19.457823, 29.579409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649147, 20.033476, 29.235207>,  <13.993436, 19.991411, 29.278168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649147, 20.033476, 29.235207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652533, 19.638309, 29.297112>,  <14.654564, 19.401209, 29.334253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652533, 19.638309, 29.297112>,  <14.649147, 20.033476, 29.235207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652533, 19.638309, 29.297112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664597, -0.110080, -0.739048,
		0.747154, 0.109109, 0.655634,
		0.008464, -0.987916, 0.154761,
		14.655072, 19.341934, 29.343540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367579, 19.841509, 29.369274>,  <14.649147, 20.033476, 29.235207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367579, 19.841509, 29.369274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.206119, 19.490612, 29.265341>,  <15.109241, 19.280075, 29.202980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.206119, 19.490612, 29.265341>,  <15.367579, 19.841509, 29.369274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206119, 19.490612, 29.265341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769835, -0.172199, -0.614574,
		0.494386, -0.448104, 0.744839,
		-0.403653, -0.877240, -0.259833,
		15.085023, 19.227440, 29.187391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884748, 19.315998, 29.529860>,  <15.367579, 19.841509, 29.369274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884748, 19.315998, 29.529860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.610264, 19.173708, 29.276066>,  <15.445573, 19.088333, 29.123789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.610264, 19.173708, 29.276066>,  <15.884748, 19.315998, 29.529860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610264, 19.173708, 29.276066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726152, -0.283905, -0.626180,
		0.042615, -0.890425, 0.453130,
		-0.686212, -0.355726, -0.634486,
		15.404400, 19.066990, 29.085720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253407, 18.865513, 29.257246>,  <15.884748, 19.315998, 29.529860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.253407, 18.865513, 29.257246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941771, 18.856449, 29.006645>,  <15.754789, 18.851011, 28.856285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941771, 18.856449, 29.006645>,  <16.253407, 18.865513, 29.257246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941771, 18.856449, 29.006645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606199, -0.281996, -0.743640,
		-0.159822, -0.959148, 0.233436,
		-0.779089, -0.022659, -0.626504,
		15.708044, 18.849651, 28.818693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207273, 18.162817, 28.919687>,  <16.253407, 18.865513, 29.257246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207273, 18.162817, 28.919687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014421, 18.419546, 28.681154>,  <15.898709, 18.573584, 28.538034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014421, 18.419546, 28.681154>,  <16.207273, 18.162817, 28.919687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.014421, 18.419546, 28.681154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494871, -0.362171, -0.789896,
		-0.722946, -0.675942, -0.143005,
		-0.482132, 0.641821, -0.596334,
		15.869781, 18.612093, 28.502254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063822, 17.836992, 28.369009>,  <16.207273, 18.162817, 28.919687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063822, 17.836992, 28.369009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.018911, 18.209869, 28.231363>,  <15.991964, 18.433596, 28.148775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.018911, 18.209869, 28.231363>,  <16.063822, 17.836992, 28.369009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.018911, 18.209869, 28.231363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374900, -0.280971, -0.883462,
		-0.920241, -0.228201, -0.317932,
		-0.112278, 0.932191, -0.344114,
		15.985229, 18.489527, 28.128130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707412, 17.757483, 27.743853>,  <16.063822, 17.836992, 28.369009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707412, 17.757483, 27.743853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925931, 18.092323, 27.732426>,  <16.057043, 18.293228, 27.725571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925931, 18.092323, 27.732426>,  <15.707412, 17.757483, 27.743853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925931, 18.092323, 27.732426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424329, -0.306001, -0.852237,
		-0.722151, 0.453455, -0.522375,
		0.546299, 0.837103, -0.028565,
		16.089821, 18.343454, 27.723856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487044, 18.109598, 27.246761>,  <15.707412, 17.757483, 27.743853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487044, 18.109598, 27.246761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.880665, 18.154253, 27.302158>,  <16.116837, 18.181046, 27.335396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.880665, 18.154253, 27.302158>,  <15.487044, 18.109598, 27.246761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.880665, 18.154253, 27.302158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174449, -0.453328, -0.874106,
		-0.034800, 0.884325, -0.465573,
		0.984051, 0.111638, 0.138493,
		16.175880, 18.187744, 27.343706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835145, 18.352240, 26.525024>,  <15.487044, 18.109598, 27.246761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835145, 18.352240, 26.525024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.075148, 18.158100, 26.779404>,  <16.219149, 18.041616, 26.932032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.075148, 18.158100, 26.779404>,  <15.835145, 18.352240, 26.525024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.075148, 18.158100, 26.779404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338206, -0.566513, -0.751452,
		0.724990, 0.665956, -0.175762,
		0.600006, -0.485351, 0.635947,
		16.255150, 18.012495, 26.970188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531416, 18.342228, 26.294325>,  <15.835145, 18.352240, 26.525024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531416, 18.342228, 26.294325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530058, 18.018904, 26.529823>,  <16.529243, 17.824909, 26.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530058, 18.018904, 26.529823>,  <16.531416, 18.342228, 26.294325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530058, 18.018904, 26.529823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456597, -0.525049, -0.718222,
		0.889667, 0.266381, 0.370855,
		-0.003396, -0.808310, 0.588747,
		16.529039, 17.776411, 26.706448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192566, 18.089849, 26.215389>,  <16.531416, 18.342228, 26.294325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192566, 18.089849, 26.215389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981966, 17.781107, 26.357958>,  <16.855606, 17.595861, 26.443499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981966, 17.781107, 26.357958>,  <17.192566, 18.089849, 26.215389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981966, 17.781107, 26.357958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477601, -0.615354, -0.627086,
		0.703346, -0.159932, 0.692623,
		-0.526500, -0.771856, 0.356423,
		16.824017, 17.549551, 26.464884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.659307, 17.624014, 26.321388>,  <17.192566, 18.089849, 26.215389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.659307, 17.624014, 26.321388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312534, 17.427441, 26.288118>,  <17.104469, 17.309496, 26.268156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312534, 17.427441, 26.288118>,  <17.659307, 17.624014, 26.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312534, 17.427441, 26.288118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447286, -0.693453, -0.564852,
		0.219912, -0.526891, 0.820990,
		-0.866934, -0.491435, -0.083173,
		17.052454, 17.280010, 26.263166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931047, 16.942360, 26.406122>,  <17.659307, 17.624014, 26.321388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931047, 16.942360, 26.406122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564295, 16.932545, 26.246758>,  <17.344244, 16.926655, 26.151138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564295, 16.932545, 26.246758>,  <17.931047, 16.942360, 26.406122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564295, 16.932545, 26.246758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303863, -0.690146, -0.656784,
		-0.258843, -0.723254, 0.640238,
		-0.916879, -0.024541, -0.398409,
		17.289230, 16.925182, 26.127235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774693, 16.167746, 26.374445>,  <17.931047, 16.942360, 26.406122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.774693, 16.167746, 26.374445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518742, 16.348965, 26.126154>,  <17.365171, 16.457697, 25.977179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518742, 16.348965, 26.126154>,  <17.774693, 16.167746, 26.374445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518742, 16.348965, 26.126154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222367, -0.664027, -0.713877,
		-0.735604, -0.594822, 0.324151,
		-0.639875, 0.453050, -0.620730,
		17.326778, 16.484879, 25.939936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626326, 15.581648, 25.910988>,  <17.774693, 16.167746, 26.374445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626326, 15.581648, 25.910988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524893, 15.928642, 25.739798>,  <17.464033, 16.136839, 25.637083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524893, 15.928642, 25.739798>,  <17.626326, 15.581648, 25.910988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.524893, 15.928642, 25.739798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275611, -0.359303, -0.891594,
		-0.927219, -0.344046, -0.147976,
		-0.253581, 0.867487, -0.427975,
		17.448818, 16.188889, 25.611404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.200966, 15.447927, 25.342669>,  <17.626326, 15.581648, 25.910988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.200966, 15.447927, 25.342669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352980, 15.802474, 25.236891>,  <17.444187, 16.015202, 25.173424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352980, 15.802474, 25.236891>,  <17.200966, 15.447927, 25.342669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352980, 15.802474, 25.236891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196403, -0.356701, -0.913340,
		-0.903880, 0.295163, -0.309643,
		0.380034, 0.886365, -0.264444,
		17.466990, 16.068384, 25.157558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767687, 15.569647, 24.822865>,  <17.200966, 15.447927, 25.342669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.767687, 15.569647, 24.822865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.086174, 15.808703, 24.785204>,  <17.277266, 15.952137, 24.762608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.086174, 15.808703, 24.785204>,  <16.767687, 15.569647, 24.822865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086174, 15.808703, 24.785204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167861, -0.367730, -0.914657,
		-0.581259, 0.712461, -0.393113,
		0.796217, 0.597641, -0.094152,
		17.325039, 15.987996, 24.756958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789837, 15.662948, 24.160349>,  <16.767687, 15.569647, 24.822865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789837, 15.662948, 24.160349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166569, 15.765591, 24.247169>,  <17.392607, 15.827177, 24.299261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166569, 15.765591, 24.247169>,  <16.789837, 15.662948, 24.160349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166569, 15.765591, 24.247169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309719, -0.411876, -0.856991,
		-0.130512, 0.874363, -0.467392,
		0.941829, 0.256608, 0.217052,
		17.449118, 15.842573, 24.312284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998631, 16.078697, 23.596344>,  <16.789837, 15.662948, 24.160349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998631, 16.078697, 23.596344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323853, 15.947250, 23.788574>,  <17.518986, 15.868382, 23.903913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323853, 15.947250, 23.788574>,  <16.998631, 16.078697, 23.596344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.323853, 15.947250, 23.788574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402444, -0.279247, -0.871814,
		0.420693, 0.902237, -0.094792,
		0.813053, -0.328618, 0.480577,
		17.567768, 15.848665, 23.932747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559481, 16.513931, 23.304419>,  <16.998631, 16.078697, 23.596344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559481, 16.513931, 23.304419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713284, 16.175228, 23.451473>,  <17.805565, 15.972006, 23.539705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713284, 16.175228, 23.451473>,  <17.559481, 16.513931, 23.304419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713284, 16.175228, 23.451473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468199, -0.164344, -0.868205,
		0.795579, 0.505957, 0.333260,
		0.384505, -0.846758, 0.367637,
		17.828634, 15.921201, 23.561764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281277, 16.511555, 23.227493>,  <17.559481, 16.513931, 23.304419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.281277, 16.511555, 23.227493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203814, 16.124393, 23.291571>,  <18.157335, 15.892097, 23.330017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203814, 16.124393, 23.291571>,  <18.281277, 16.511555, 23.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203814, 16.124393, 23.291571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709163, -0.250936, -0.658877,
		0.677927, -0.013994, 0.734996,
		-0.193658, -0.967902, 0.160192,
		18.145716, 15.834023, 23.339628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927622, 16.186308, 23.225475>,  <18.281277, 16.511555, 23.227493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927622, 16.186308, 23.225475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.677984, 15.882036, 23.154064>,  <18.528202, 15.699473, 23.111217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.677984, 15.882036, 23.154064>,  <18.927622, 16.186308, 23.225475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677984, 15.882036, 23.154064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644013, -0.371410, -0.668807,
		0.442440, -0.532374, 0.721682,
		-0.624095, -0.760679, -0.178530,
		18.490755, 15.653832, 23.100506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.318817, 15.549443, 23.178391>,  <18.927622, 16.186308, 23.225475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.318817, 15.549443, 23.178391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.970354, 15.472617, 22.997637>,  <18.761276, 15.426521, 22.889185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.970354, 15.472617, 22.997637>,  <19.318817, 15.549443, 23.178391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.970354, 15.472617, 22.997637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490252, -0.289185, -0.822208,
		0.027240, -0.937807, 0.346086,
		-0.871155, -0.192066, -0.451884,
		18.709007, 15.414997, 22.862072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410124, 14.985312, 22.820875>,  <19.318817, 15.549443, 23.178391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410124, 14.985312, 22.820875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084330, 15.130743, 22.640024>,  <18.888853, 15.218002, 22.531513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084330, 15.130743, 22.640024>,  <19.410124, 14.985312, 22.820875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084330, 15.130743, 22.640024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437770, -0.126286, -0.890174,
		-0.380746, -0.922964, -0.056306,
		-0.814488, 0.363579, -0.452128,
		18.839983, 15.239817, 22.504385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.257713, 14.503275, 22.258577>,  <19.410124, 14.985312, 22.820875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.257713, 14.503275, 22.258577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.055769, 14.835585, 22.164831>,  <18.934603, 15.034971, 22.108583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.055769, 14.835585, 22.164831>,  <19.257713, 14.503275, 22.258577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055769, 14.835585, 22.164831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240693, -0.125253, -0.962486,
		-0.828965, -0.542332, -0.136726,
		-0.504861, 0.830775, -0.234366,
		18.904310, 15.084817, 22.094521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805977, 14.257865, 21.778830>,  <19.257713, 14.503275, 22.258577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805977, 14.257865, 21.778830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813726, 14.652978, 21.716976>,  <18.818377, 14.890045, 21.679865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813726, 14.652978, 21.716976>,  <18.805977, 14.257865, 21.778830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813726, 14.652978, 21.716976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026468, -0.154101, -0.987701,
		-0.999462, 0.023228, 0.023160,
		0.019373, 0.987782, -0.154633,
		18.819538, 14.949312, 21.670586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383417, 14.337291, 21.202940>,  <18.805977, 14.257865, 21.778830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383417, 14.337291, 21.202940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577749, 14.685227, 21.237225>,  <18.694349, 14.893990, 21.257795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577749, 14.685227, 21.237225>,  <18.383417, 14.337291, 21.202940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577749, 14.685227, 21.237225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039293, 0.119701, -0.992032,
		-0.873170, 0.478591, 0.092333,
		0.485830, 0.869840, 0.085714,
		18.723497, 14.946179, 21.262939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125092, 14.813942, 20.816027>,  <18.383417, 14.337291, 21.202940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.125092, 14.813942, 20.816027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488033, 14.978511, 20.850529>,  <18.705799, 15.077252, 20.871229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488033, 14.978511, 20.850529>,  <18.125092, 14.813942, 20.816027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488033, 14.978511, 20.850529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052374, 0.092944, -0.994293,
		-0.417091, 0.906694, 0.062786,
		0.907354, 0.411422, 0.086254,
		18.760239, 15.101937, 20.876406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127401, 15.288919, 20.296869>,  <18.125092, 14.813942, 20.816027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.127401, 15.288919, 20.296869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509705, 15.232999, 20.400394>,  <18.739086, 15.199447, 20.462509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509705, 15.232999, 20.400394>,  <18.127401, 15.288919, 20.296869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509705, 15.232999, 20.400394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267553, 0.047509, -0.962371,
		0.122244, 0.989039, 0.082811,
		0.955757, -0.139801, 0.258812,
		18.796432, 15.191058, 20.478039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472475, 15.716804, 19.852724>,  <18.127401, 15.288919, 20.296869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.472475, 15.716804, 19.852724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796083, 15.515530, 19.974239>,  <18.990250, 15.394765, 20.047148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796083, 15.515530, 19.974239>,  <18.472475, 15.716804, 19.852724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.796083, 15.515530, 19.974239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377344, 0.048360, -0.924810,
		0.450659, 0.862825, 0.228998,
		0.809023, -0.503185, 0.303787,
		19.038790, 15.364574, 20.065376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.089483, 16.032948, 19.565582>,  <18.472475, 15.716804, 19.852724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.089483, 16.032948, 19.565582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215649, 15.664903, 19.658451>,  <19.291348, 15.444076, 19.714172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215649, 15.664903, 19.658451>,  <19.089483, 16.032948, 19.565582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215649, 15.664903, 19.658451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349790, -0.114704, -0.929780,
		0.882134, 0.374479, 0.285667,
		0.315416, -0.920113, 0.232173,
		19.310274, 15.388868, 19.728104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819366, 15.969065, 19.419163>,  <19.089483, 16.032948, 19.565582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819366, 15.969065, 19.419163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679392, 15.595616, 19.388454>,  <19.595407, 15.371547, 19.370029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679392, 15.595616, 19.388454>,  <19.819366, 15.969065, 19.419163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679392, 15.595616, 19.388454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598752, -0.159887, -0.784813,
		0.720443, -0.320604, 0.614959,
		-0.349938, -0.933622, -0.076773,
		19.574409, 15.315530, 19.365423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450922, 15.427772, 19.324112>,  <19.819366, 15.969065, 19.419163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450922, 15.427772, 19.324112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100670, 15.278467, 19.201509>,  <19.890518, 15.188885, 19.127949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100670, 15.278467, 19.201509>,  <20.450922, 15.427772, 19.324112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100670, 15.278467, 19.201509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451924, -0.409320, -0.792604,
		0.170390, -0.832546, 0.527100,
		-0.875632, -0.373261, -0.306504,
		19.837980, 15.166489, 19.109558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674475, 14.880844, 18.979259>,  <20.450922, 15.427772, 19.324112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674475, 14.880844, 18.979259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.306749, 14.901274, 18.823179>,  <20.086115, 14.913531, 18.729532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.306749, 14.901274, 18.823179>,  <20.674475, 14.880844, 18.979259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306749, 14.901274, 18.823179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361175, -0.284200, -0.888134,
		-0.156253, -0.957404, 0.242823,
		-0.919314, 0.051072, -0.390198,
		20.030956, 14.916596, 18.706120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533186, 14.388989, 18.570366>,  <20.674475, 14.880844, 18.979259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533186, 14.388989, 18.570366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.244081, 14.589984, 18.380575>,  <20.070620, 14.710581, 18.266701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.244081, 14.589984, 18.380575>,  <20.533186, 14.388989, 18.570366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.244081, 14.589984, 18.380575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275868, -0.419716, -0.864717,
		-0.633653, -0.755874, 0.164733,
		-0.722759, 0.502486, -0.474476,
		20.027254, 14.740729, 18.238232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502584, 13.975405, 17.945721>,  <20.533186, 14.388989, 18.570366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502584, 13.975405, 17.945721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337307, 14.333089, 17.876833>,  <20.238140, 14.547699, 17.835501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337307, 14.333089, 17.876833>,  <20.502584, 13.975405, 17.945721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337307, 14.333089, 17.876833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104722, -0.141204, -0.984426,
		-0.904601, -0.424795, -0.035298,
		-0.413195, 0.894210, -0.172219,
		20.213348, 14.601352, 17.825167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158195, 13.728567, 17.375847>,  <20.502584, 13.975405, 17.945721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158195, 13.728567, 17.375847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176023, 14.127733, 17.394508>,  <20.186720, 14.367233, 17.405704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176023, 14.127733, 17.394508>,  <20.158195, 13.728567, 17.375847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176023, 14.127733, 17.394508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062333, 0.043831, -0.997092,
		-0.997060, 0.047348, -0.060250,
		0.044569, 0.997916, 0.046654,
		20.189394, 14.427108, 17.408504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.681416, 14.071790, 16.964237>,  <20.158195, 13.728567, 17.375847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.681416, 14.071790, 16.964237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049997, 14.150646, 17.098137>,  <21.271147, 14.197960, 17.178476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049997, 14.150646, 17.098137>,  <20.681416, 14.071790, 16.964237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049997, 14.150646, 17.098137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111529, -0.959644, 0.258154,
		0.372135, -0.200543, -0.906255,
		0.921454, 0.197142, 0.334751,
		21.326433, 14.209789, 17.198563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201157, 13.811281, 16.420622>,  <20.681416, 14.071790, 16.964237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201157, 13.811281, 16.420622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.294643, 13.830328, 16.809076>,  <21.350735, 13.841756, 17.042149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.294643, 13.830328, 16.809076>,  <21.201157, 13.811281, 16.420622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.294643, 13.830328, 16.809076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262732, -0.964738, -0.015925,
		0.936135, 0.258871, -0.237984,
		0.233715, 0.047617, 0.971139,
		21.364758, 13.844613, 17.100418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232285, 14.309052, 15.789098>,  <21.201157, 13.811281, 16.420622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232285, 14.309052, 15.789098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629139, 14.339050, 15.829175>,  <21.867252, 14.357050, 15.853222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629139, 14.339050, 15.829175>,  <21.232285, 14.309052, 15.789098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629139, 14.339050, 15.829175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062436, 0.990427, -0.123110,
		-0.108468, 0.115887, 0.987322,
		0.992137, 0.074998, 0.100194,
		21.926781, 14.361549, 15.859233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.436577, 14.827645, 16.284300>,  <21.232285, 14.309052, 15.789098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.436577, 14.827645, 16.284300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734352, 14.823523, 16.017256>,  <21.913017, 14.821049, 15.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734352, 14.823523, 16.017256>,  <21.436577, 14.827645, 16.284300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734352, 14.823523, 16.017256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056325, 0.995347, -0.078173,
		0.665311, 0.095798, 0.740394,
		0.744439, -0.010307, -0.667612,
		21.957684, 14.820431, 15.816973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.806780, 15.392815, 16.384493>,  <21.436577, 14.827645, 16.284300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.806780, 15.392815, 16.384493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.903217, 15.303677, 16.006664>,  <21.961081, 15.250194, 15.779967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.903217, 15.303677, 16.006664>,  <21.806780, 15.392815, 16.384493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.903217, 15.303677, 16.006664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065523, 0.967322, -0.244938,
		0.968287, 0.120944, 0.218614,
		0.241094, -0.222846, -0.944570,
		21.975546, 15.236823, 15.723293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347206, 15.836391, 16.225767>,  <21.806780, 15.392815, 16.384493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347206, 15.836391, 16.225767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.148317, 15.716839, 15.899960>,  <22.028984, 15.645107, 15.704475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.148317, 15.716839, 15.899960>,  <22.347206, 15.836391, 16.225767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.148317, 15.716839, 15.899960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179791, 0.953909, -0.240276,
		0.848791, 0.026972, -0.528040,
		-0.497222, -0.298881, -0.814519,
		21.999151, 15.627174, 15.655603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.438469, 16.364990, 15.688563>,  <22.347206, 15.836391, 16.225767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.438469, 16.364990, 15.688563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.119085, 16.175474, 15.539979>,  <21.927456, 16.061764, 15.450829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.119085, 16.175474, 15.539979>,  <22.438469, 16.364990, 15.688563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.119085, 16.175474, 15.539979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460476, 0.878076, -0.130171,
		0.387846, 0.067113, -0.919278,
		-0.798460, -0.473792, -0.371462,
		21.879547, 16.033337, 15.428540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211847, 16.809284, 15.182690>,  <22.438469, 16.364990, 15.688563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211847, 16.809284, 15.182690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899385, 16.574047, 15.266542>,  <21.711908, 16.432905, 15.316854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899385, 16.574047, 15.266542>,  <22.211847, 16.809284, 15.182690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899385, 16.574047, 15.266542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618984, 0.773378, -0.136914,
		-0.081607, -0.236710, -0.968147,
		-0.781152, -0.588094, 0.209633,
		21.665039, 16.397619, 15.329432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.648756, 16.819242, 14.643526>,  <22.211847, 16.809284, 15.182690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.648756, 16.819242, 14.643526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445341, 16.751484, 14.981211>,  <21.323292, 16.710829, 15.183822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445341, 16.751484, 14.981211>,  <21.648756, 16.819242, 14.643526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.445341, 16.751484, 14.981211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634966, 0.735990, -0.234810,
		-0.581554, -0.655456, -0.481842,
		-0.508539, -0.169399, 0.844211,
		21.292780, 16.700665, 15.234474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008045, 16.975809, 14.430774>,  <21.648756, 16.819242, 14.643526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008045, 16.975809, 14.430774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.985304, 16.959307, 14.829785>,  <20.971659, 16.949406, 15.069193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.985304, 16.959307, 14.829785>,  <21.008045, 16.975809, 14.430774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.985304, 16.959307, 14.829785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720746, 0.693088, -0.012415,
		-0.690864, -0.719671, -0.069137,
		-0.056852, -0.041253, 0.997530,
		20.968248, 16.946930, 15.129045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.270733, 16.924809, 14.627438>,  <21.008045, 16.975809, 14.430774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.270733, 16.924809, 14.627438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.448589, 17.060646, 14.958972>,  <20.555304, 17.142149, 15.157892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.448589, 17.060646, 14.958972>,  <20.270733, 16.924809, 14.627438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448589, 17.060646, 14.958972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718936, 0.687235, 0.104107,
		-0.534251, -0.642171, 0.549720,
		0.444642, 0.339594, 0.828837,
		20.581982, 17.162525, 15.207623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.756086, 17.183611, 14.899010>,  <20.270733, 16.924809, 14.627438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.756086, 17.183611, 14.899010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052128, 17.341375, 15.116887>,  <20.229752, 17.436033, 15.247613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052128, 17.341375, 15.116887>,  <19.756086, 17.183611, 14.899010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.052128, 17.341375, 15.116887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593946, 0.763232, 0.254371,
		-0.315401, -0.511779, 0.799128,
		0.740102, 0.394410, 0.544693,
		20.274158, 17.459698, 15.280295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397627, 17.376289, 15.489470>,  <19.756086, 17.183611, 14.899010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397627, 17.376289, 15.489470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.740156, 17.582008, 15.470688>,  <19.945675, 17.705441, 15.459418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.740156, 17.582008, 15.470688>,  <19.397627, 17.376289, 15.489470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.740156, 17.582008, 15.470688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458029, 0.798335, 0.390986,
		0.238571, -0.313304, 0.919198,
		0.856325, 0.514297, -0.046957,
		19.997053, 17.736298, 15.456600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577856, 17.652321, 16.230768>,  <19.397627, 17.376289, 15.489470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577856, 17.652321, 16.230768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781446, 17.875208, 15.968333>,  <19.903601, 18.008942, 15.810872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781446, 17.875208, 15.968333>,  <19.577856, 17.652321, 16.230768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781446, 17.875208, 15.968333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391327, 0.828669, 0.400214,
		0.766685, 0.053044, 0.639829,
		0.508977, 0.557220, -0.656085,
		19.934139, 18.042374, 15.771507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993832, 18.108255, 16.520657>,  <19.577856, 17.652321, 16.230768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.993832, 18.108255, 16.520657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.912596, 18.292774, 16.175180>,  <19.863855, 18.403486, 15.967895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.912596, 18.292774, 16.175180>,  <19.993832, 18.108255, 16.520657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912596, 18.292774, 16.175180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525349, 0.693030, 0.493678,
		0.826295, 0.554000, 0.101595,
		-0.203089, 0.461296, -0.863690,
		19.851669, 18.431164, 15.916074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072855, 18.766514, 16.722189>,  <19.993832, 18.108255, 16.520657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072855, 18.766514, 16.722189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.889400, 18.763239, 16.366755>,  <19.779327, 18.761274, 16.153494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.889400, 18.763239, 16.366755>,  <20.072855, 18.766514, 16.722189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.889400, 18.763239, 16.366755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522063, 0.811675, 0.261979,
		0.719100, 0.584051, -0.376536,
		-0.458634, -0.008186, -0.888587,
		19.751810, 18.760782, 16.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.047047, 19.455721, 16.612234>,  <20.072855, 18.766514, 16.722189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.047047, 19.455721, 16.612234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774511, 19.301378, 16.363432>,  <19.610991, 19.208773, 16.214149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774511, 19.301378, 16.363432>,  <20.047047, 19.455721, 16.612234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.774511, 19.301378, 16.363432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536536, 0.841306, 0.065822,
		0.497900, 0.378577, -0.780240,
		-0.681340, -0.385854, -0.622007,
		19.570108, 19.185621, 16.176830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.958359, 19.969236, 16.117296>,  <20.047047, 19.455721, 16.612234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.958359, 19.969236, 16.117296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.639156, 19.728251, 16.111351>,  <19.447634, 19.583658, 16.107784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.639156, 19.728251, 16.111351>,  <19.958359, 19.969236, 16.117296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.639156, 19.728251, 16.111351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601930, 0.798018, -0.029109,
		0.029400, -0.014281, -0.999466,
		-0.798007, -0.602465, -0.014865,
		19.399754, 19.547512, 16.106892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490942, 20.433676, 15.903568>,  <19.958359, 19.969236, 16.117296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490942, 20.433676, 15.903568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.247807, 20.139715, 16.023870>,  <19.101925, 19.963339, 16.096052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.247807, 20.139715, 16.023870>,  <19.490942, 20.433676, 15.903568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247807, 20.139715, 16.023870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771819, 0.635811, -0.006261,
		-0.186623, -0.235935, -0.953680,
		-0.607838, -0.734901, 0.300756,
		19.065454, 19.919245, 16.114098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941530, 20.458532, 15.421796>,  <19.490942, 20.433676, 15.903568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941530, 20.458532, 15.421796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814186, 20.266451, 15.748734>,  <18.737780, 20.151201, 15.944896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814186, 20.266451, 15.748734>,  <18.941530, 20.458532, 15.421796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814186, 20.266451, 15.748734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794602, 0.605373, 0.046167,
		-0.516968, -0.634766, -0.574297,
		-0.318359, -0.480204, 0.817345,
		18.718678, 20.122389, 15.993937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.213266, 20.395557, 15.339478>,  <18.941530, 20.458532, 15.421796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.213266, 20.395557, 15.339478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.287495, 20.381891, 15.732292>,  <18.332031, 20.373692, 15.967981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.287495, 20.381891, 15.732292>,  <18.213266, 20.395557, 15.339478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.287495, 20.381891, 15.732292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769763, 0.616127, 0.166892,
		-0.610761, -0.786905, 0.088036,
		0.185570, -0.034164, 0.982037,
		18.343166, 20.371643, 16.026903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560015, 20.418161, 15.677532>,  <18.213266, 20.395557, 15.339478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560015, 20.418161, 15.677532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818714, 20.511995, 15.967826>,  <17.973934, 20.568296, 16.142002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818714, 20.511995, 15.967826>,  <17.560015, 20.418161, 15.677532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818714, 20.511995, 15.967826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630229, 0.700286, 0.335277,
		-0.429570, -0.674217, 0.600750,
		0.646746, 0.234585, 0.725734,
		18.012737, 20.582371, 16.185547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137928, 20.779510, 16.071428>,  <17.560015, 20.418161, 15.677532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.137928, 20.779510, 16.071428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.489267, 20.863525, 16.243191>,  <17.700071, 20.913935, 16.346249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.489267, 20.863525, 16.243191>,  <17.137928, 20.779510, 16.071428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489267, 20.863525, 16.243191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376611, 0.857291, 0.351022,
		-0.294397, -0.470038, 0.832103,
		0.878348, 0.210039, 0.429405,
		17.752771, 20.926537, 16.372013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016409, 20.957609, 16.843683>,  <17.137928, 20.779510, 16.071428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016409, 20.957609, 16.843683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.363188, 21.115185, 16.721561>,  <17.571255, 21.209730, 16.648289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.363188, 21.115185, 16.721561>,  <17.016409, 20.957609, 16.843683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.363188, 21.115185, 16.721561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350778, 0.917450, 0.187726,
		0.354056, -0.055654, 0.933567,
		0.866948, 0.393940, -0.305306,
		17.623272, 21.233366, 16.629969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058397, 21.421333, 17.240616>,  <17.016409, 20.957609, 16.843683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058397, 21.421333, 17.240616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305805, 21.521587, 16.942726>,  <17.454250, 21.581739, 16.763992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305805, 21.521587, 16.942726>,  <17.058397, 21.421333, 17.240616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.305805, 21.521587, 16.942726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325451, 0.944364, 0.047524,
		0.715203, 0.212977, 0.665676,
		0.618519, 0.250635, -0.744726,
		17.491362, 21.596777, 16.719309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337063, 22.119045, 17.373634>,  <17.058397, 21.421333, 17.240616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337063, 22.119045, 17.373634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373075, 22.062315, 16.979319>,  <17.394682, 22.028276, 16.742729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373075, 22.062315, 16.979319>,  <17.337063, 22.119045, 17.373634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373075, 22.062315, 16.979319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290315, 0.943085, -0.162197,
		0.952687, 0.300792, 0.043732,
		0.090030, -0.141827, -0.985789,
		17.400085, 22.019768, 16.683582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694471, 22.718605, 17.089622>,  <17.337063, 22.119045, 17.373634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.694471, 22.718605, 17.089622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.506155, 22.559647, 16.774551>,  <17.393166, 22.464272, 16.585508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.506155, 22.559647, 16.774551>,  <17.694471, 22.718605, 17.089622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.506155, 22.559647, 16.774551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303411, 0.911280, -0.278407,
		0.828432, 0.107919, -0.549595,
		-0.470789, -0.397394, -0.787677,
		17.364918, 22.440428, 16.538248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818184, 23.229473, 16.572403>,  <17.694471, 22.718605, 17.089622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818184, 23.229473, 16.572403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494381, 23.013552, 16.480047>,  <17.300098, 22.883999, 16.424635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494381, 23.013552, 16.480047>,  <17.818184, 23.229473, 16.572403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494381, 23.013552, 16.480047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507994, 0.841150, -0.185496,
		0.294343, -0.032871, -0.955135,
		-0.809509, -0.539802, -0.230888,
		17.251528, 22.851612, 16.410780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.155422, 23.626717, 17.137506>,  <17.818184, 23.229473, 16.572403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.155422, 23.626717, 17.137506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765867, 23.541748, 17.169554>,  <17.532133, 23.490767, 17.188782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765867, 23.541748, 17.169554>,  <18.155422, 23.626717, 17.137506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765867, 23.541748, 17.169554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045180, 0.527176, 0.848554,
		-0.222485, 0.822778, -0.523008,
		-0.973889, -0.212420, 0.080116,
		17.473701, 23.478022, 17.193588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748220, 24.044052, 16.803257>,  <18.155422, 23.626717, 17.137506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748220, 24.044052, 16.803257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039623, 24.316200, 16.771332>,  <19.214466, 24.479488, 16.752176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039623, 24.316200, 16.771332>,  <18.748220, 24.044052, 16.803257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.039623, 24.316200, 16.771332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250823, -0.373345, -0.893141,
		-0.637466, 0.630642, -0.442638,
		0.728509, 0.680371, -0.079815,
		19.258177, 24.520311, 16.747387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700638, 24.376015, 16.138721>,  <18.748220, 24.044052, 16.803257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700638, 24.376015, 16.138721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.064287, 24.348972, 16.303122>,  <19.282476, 24.332747, 16.401762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.064287, 24.348972, 16.303122>,  <18.700638, 24.376015, 16.138721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.064287, 24.348972, 16.303122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369748, -0.323332, -0.871058,
		0.191780, 0.943867, -0.268951,
		0.909124, -0.067608, 0.411002,
		19.337025, 24.328690, 16.426422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.205008, 24.759899, 15.657556>,  <18.700638, 24.376015, 16.138721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.205008, 24.759899, 15.657556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.358261, 24.470968, 15.887843>,  <19.450214, 24.297609, 16.026016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.358261, 24.470968, 15.887843>,  <19.205008, 24.759899, 15.657556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358261, 24.470968, 15.887843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498675, -0.362894, -0.787167,
		0.777516, 0.588688, 0.221169,
		0.383135, -0.722326, 0.575719,
		19.473202, 24.254271, 16.060558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939953, 24.765341, 15.497869>,  <19.205008, 24.759899, 15.657556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939953, 24.765341, 15.497869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818527, 24.401918, 15.612674>,  <19.745672, 24.183865, 15.681557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818527, 24.401918, 15.612674>,  <19.939953, 24.765341, 15.497869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818527, 24.401918, 15.612674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445884, -0.401667, -0.799907,
		0.842044, -0.114848, 0.527041,
		-0.303563, -0.908556, 0.287013,
		19.727459, 24.129353, 15.698777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480259, 24.285666, 15.294002>,  <19.939953, 24.765341, 15.497869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480259, 24.285666, 15.294002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.172186, 24.041039, 15.366446>,  <19.987343, 23.894262, 15.409913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.172186, 24.041039, 15.366446>,  <20.480259, 24.285666, 15.294002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.172186, 24.041039, 15.366446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256585, -0.557041, -0.789854,
		0.583937, -0.561862, 0.585943,
		-0.770183, -0.611569, 0.181112,
		19.941132, 23.857569, 15.420780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648563, 23.545803, 15.148708>,  <20.480259, 24.285666, 15.294002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648563, 23.545803, 15.148708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251137, 23.519640, 15.111731>,  <20.012680, 23.503942, 15.089543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251137, 23.519640, 15.111731>,  <20.648563, 23.545803, 15.148708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251137, 23.519640, 15.111731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112597, -0.657780, -0.744747,
		-0.012095, -0.750365, 0.660913,
		-0.993567, -0.065409, -0.092445,
		19.953066, 23.500017, 15.083997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433228, 22.891359, 15.172588>,  <20.648563, 23.545803, 15.148708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433228, 22.891359, 15.172588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.158731, 23.093071, 14.962914>,  <19.994034, 23.214098, 14.837109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.158731, 23.093071, 14.962914>,  <20.433228, 22.891359, 15.172588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158731, 23.093071, 14.962914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056353, -0.681632, -0.729522,
		-0.725188, -0.530167, 0.439346,
		-0.686241, 0.504282, -0.524188,
		19.952858, 23.244356, 14.805657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479963, 22.255890, 15.463739>,  <20.433228, 22.891359, 15.172588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479963, 22.255890, 15.463739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.532436, 22.259995, 15.067217>,  <20.563921, 22.262457, 14.829304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.532436, 22.259995, 15.067217>,  <20.479963, 22.255890, 15.463739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532436, 22.259995, 15.067217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258499, -0.965708, 0.024210,
		-0.957063, -0.259428, -0.129337,
		0.131183, 0.010263, -0.991305,
		20.571791, 22.263073, 14.769825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271980, 21.558987, 15.194290>,  <20.479963, 22.255890, 15.463739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271980, 21.558987, 15.194290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.493698, 21.688692, 14.887667>,  <20.626728, 21.766516, 14.703692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.493698, 21.688692, 14.887667>,  <20.271980, 21.558987, 15.194290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.493698, 21.688692, 14.887667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425600, -0.901900, -0.073766,
		-0.715278, -0.285360, -0.637924,
		0.554294, 0.324264, -0.766558,
		20.659986, 21.785971, 14.657700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091002, 21.075756, 14.646110>,  <20.271980, 21.558987, 15.194290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091002, 21.075756, 14.646110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444273, 21.232706, 14.543319>,  <20.656237, 21.326876, 14.481645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444273, 21.232706, 14.543319>,  <20.091002, 21.075756, 14.646110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444273, 21.232706, 14.543319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326203, -0.907516, -0.264589,
		-0.337028, 0.149853, -0.929492,
		0.883178, 0.392377, -0.256976,
		20.709227, 21.350420, 14.466226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320000, 20.669685, 14.144969>,  <20.091002, 21.075756, 14.646110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320000, 20.669685, 14.144969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657104, 20.848129, 14.265462>,  <20.859367, 20.955196, 14.337757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657104, 20.848129, 14.265462>,  <20.320000, 20.669685, 14.144969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657104, 20.848129, 14.265462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496265, -0.860684, -0.113775,
		0.208509, 0.245376, -0.946739,
		0.842760, 0.446110, 0.301232,
		20.909933, 20.981962, 14.355831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856361, 20.545010, 13.590265>,  <20.320000, 20.669685, 14.144969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856361, 20.545010, 13.590265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042469, 20.662205, 13.924376>,  <21.154133, 20.732521, 14.124842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042469, 20.662205, 13.924376>,  <20.856361, 20.545010, 13.590265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042469, 20.662205, 13.924376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576765, -0.816161, -0.034987,
		0.671468, 0.498036, -0.548718,
		0.465267, 0.292988, 0.835275,
		21.182049, 20.750101, 14.174958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.655415, 20.661211, 13.412538>,  <20.856361, 20.545010, 13.590265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.655415, 20.661211, 13.412538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.616995, 20.597549, 13.805566>,  <21.593943, 20.559353, 14.041383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.616995, 20.597549, 13.805566>,  <21.655415, 20.661211, 13.412538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.616995, 20.597549, 13.805566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743255, -0.668062, -0.035558,
		0.662077, 0.726885, 0.182459,
		-0.096047, -0.159156, 0.982570,
		21.588181, 20.549803, 14.100337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.332165, 20.494949, 13.639561>,  <21.655415, 20.661211, 13.412538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.332165, 20.494949, 13.639561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.123657, 20.368299, 13.956553>,  <21.998552, 20.292309, 14.146749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.123657, 20.368299, 13.956553>,  <22.332165, 20.494949, 13.639561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.123657, 20.368299, 13.956553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651877, -0.747044, 0.130312,
		0.550759, 0.584528, 0.595812,
		-0.521269, -0.316626, 0.792482,
		21.967276, 20.273312, 14.194298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.823994, 20.388861, 14.215993>,  <22.332165, 20.494949, 13.639561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.823994, 20.388861, 14.215993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501436, 20.161869, 14.282557>,  <22.307901, 20.025673, 14.322496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501436, 20.161869, 14.282557>,  <22.823994, 20.388861, 14.215993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.501436, 20.161869, 14.282557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586792, -0.732844, 0.344404,
		-0.073489, 0.375374, 0.923955,
		-0.806396, -0.567480, 0.166410,
		22.259518, 19.991625, 14.332480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068132, 19.978308, 14.761683>,  <22.823994, 20.388861, 14.215993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068132, 19.978308, 14.761683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.748840, 19.777590, 14.628398>,  <22.557264, 19.657160, 14.548427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.748840, 19.777590, 14.628398>,  <23.068132, 19.978308, 14.761683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.748840, 19.777590, 14.628398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441599, -0.863727, 0.242831,
		-0.409656, 0.046688, 0.911044,
		-0.798231, -0.501793, -0.333214,
		22.509371, 19.627052, 14.528434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852690, 19.591539, 15.311689>,  <23.068132, 19.978308, 14.761683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852690, 19.591539, 15.311689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703150, 19.406000, 14.990421>,  <22.613426, 19.294676, 14.797661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703150, 19.406000, 14.990421>,  <22.852690, 19.591539, 15.311689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.703150, 19.406000, 14.990421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419986, -0.856754, 0.299305,
		-0.826951, -0.225425, 0.515108,
		-0.373850, -0.463849, -0.803169,
		22.590994, 19.266846, 14.749471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.726122, 18.941463, 15.630101>,  <22.852690, 19.591539, 15.311689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.726122, 18.941463, 15.630101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689930, 18.850100, 15.242360>,  <22.668215, 18.795282, 15.009716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689930, 18.850100, 15.242360>,  <22.726122, 18.941463, 15.630101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689930, 18.850100, 15.242360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427658, -0.887944, 0.169307,
		-0.899401, -0.399232, 0.178022,
		-0.090481, -0.228408, -0.969352,
		22.662786, 18.781578, 14.951554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.564741, 18.209011, 15.620008>,  <22.726122, 18.941463, 15.630101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.564741, 18.209011, 15.620008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.697884, 18.295591, 15.252888>,  <22.777769, 18.347540, 15.032616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.697884, 18.295591, 15.252888>,  <22.564741, 18.209011, 15.620008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.697884, 18.295591, 15.252888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526728, -0.849981, -0.009429,
		-0.782154, -0.480293, -0.396931,
		0.332855, 0.216449, -0.917800,
		22.797741, 18.360527, 14.977548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529539, 17.553780, 15.269211>,  <22.564741, 18.209011, 15.620008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529539, 17.553780, 15.269211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.772741, 17.771633, 15.038142>,  <22.918663, 17.902346, 14.899501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.772741, 17.771633, 15.038142>,  <22.529539, 17.553780, 15.269211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.772741, 17.771633, 15.038142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546140, -0.815018, -0.193589,
		-0.576249, -0.197787, -0.792980,
		0.608004, 0.544634, -0.577672,
		22.955143, 17.935022, 14.864841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.528433, 17.268324, 14.504732>,  <22.529539, 17.553780, 15.269211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.528433, 17.268324, 14.504732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875990, 17.459751, 14.555326>,  <23.084524, 17.574608, 14.585683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875990, 17.459751, 14.555326>,  <22.528433, 17.268324, 14.504732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875990, 17.459751, 14.555326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492624, -0.861031, -0.126279,
		0.048476, 0.172033, -0.983898,
		0.868891, 0.478570, 0.126487,
		23.136658, 17.603323, 14.593272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.000877, 17.229063, 13.931419>,  <22.528433, 17.268324, 14.504732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.000877, 17.229063, 13.931419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.235119, 17.314440, 14.244216>,  <23.375664, 17.365665, 14.431894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.235119, 17.314440, 14.244216>,  <23.000877, 17.229063, 13.931419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.235119, 17.314440, 14.244216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467146, -0.877263, -0.110382,
		0.662452, 0.429945, -0.613437,
		0.585604, 0.213442, 0.781992,
		23.410801, 17.378471, 14.478813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.759109, 16.862278, 13.740860>,  <23.000877, 17.229063, 13.931419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.759109, 16.862278, 13.740860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.762297, 16.944742, 14.132255>,  <23.764208, 16.994221, 14.367091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.762297, 16.944742, 14.132255>,  <23.759109, 16.862278, 13.740860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.762297, 16.944742, 14.132255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443097, -0.877935, 0.181369,
		0.896438, 0.432119, -0.098344,
		0.007966, 0.206162, 0.978485,
		23.764687, 17.006590, 14.425800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429682, 16.889536, 13.889609>,  <23.759109, 16.862278, 13.740860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429682, 16.889536, 13.889609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238258, 16.811024, 14.231944>,  <24.123404, 16.763916, 14.437345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238258, 16.811024, 14.231944>,  <24.429682, 16.889536, 13.889609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238258, 16.811024, 14.231944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595976, -0.788400, 0.152439,
		0.644820, 0.583009, 0.494274,
		-0.478559, -0.196280, 0.855836,
		24.094690, 16.752140, 14.488695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764973, 17.027096, 14.534754>,  <24.429682, 16.889536, 13.889609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764973, 17.027096, 14.534754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511808, 16.718536, 14.508309>,  <24.359909, 16.533401, 14.492442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511808, 16.718536, 14.508309>,  <24.764973, 17.027096, 14.534754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511808, 16.718536, 14.508309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749951, -0.632043, 0.195181,
		-0.192347, 0.073952, 0.978537,
		-0.632911, -0.771397, -0.066112,
		24.321936, 16.487118, 14.488476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835115, 16.675198, 15.159101>,  <24.764973, 17.027096, 14.534754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835115, 16.675198, 15.159101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719925, 16.419798, 14.873616>,  <24.650810, 16.266558, 14.702325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719925, 16.419798, 14.873616>,  <24.835115, 16.675198, 15.159101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719925, 16.419798, 14.873616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805237, -0.564842, 0.180409,
		-0.518326, -0.522755, 0.676805,
		-0.287978, -0.638499, -0.713714,
		24.633532, 16.228249, 14.659502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901518, 16.068436, 15.449233>,  <24.835115, 16.675198, 15.159101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901518, 16.068436, 15.449233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940002, 16.051022, 15.051470>,  <24.963093, 16.040573, 14.812812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940002, 16.051022, 15.051470>,  <24.901518, 16.068436, 15.449233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940002, 16.051022, 15.051470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761053, -0.640671, 0.101682,
		-0.641516, -0.766580, -0.028500,
		0.096206, -0.043540, -0.994409,
		24.968864, 16.037960, 14.753147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683729, 15.384677, 15.103523>,  <24.901518, 16.068436, 15.449233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683729, 15.384677, 15.103523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959641, 15.600185, 14.910057>,  <25.125187, 15.729490, 14.793978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959641, 15.600185, 14.910057>,  <24.683729, 15.384677, 15.103523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959641, 15.600185, 14.910057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615232, -0.788346, -0.000753,
		-0.381701, -0.297047, -0.875253,
		0.689778, 0.538771, -0.483665,
		25.166574, 15.761817, 14.764957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056202, 14.954878, 14.648859>,  <24.683729, 15.384677, 15.103523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056202, 14.954878, 14.648859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316236, 15.253989, 14.702847>,  <25.472258, 15.433455, 14.735241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316236, 15.253989, 14.702847>,  <25.056202, 14.954878, 14.648859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316236, 15.253989, 14.702847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718850, -0.662786, 0.209688,
		0.246258, -0.039290, -0.968408,
		0.650085, 0.747778, 0.134972,
		25.511263, 15.478323, 14.743340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796803, 14.763284, 14.434952>,  <25.056202, 14.954878, 14.648859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796803, 14.763284, 14.434952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818684, 15.056190, 14.706480>,  <25.831812, 15.231933, 14.869397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818684, 15.056190, 14.706480>,  <25.796803, 14.763284, 14.434952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818684, 15.056190, 14.706480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826560, -0.414615, 0.380648,
		0.560184, 0.540263, -0.627940,
		0.054703, 0.732264, 0.678821,
		25.835094, 15.275868, 14.910127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389364, 15.357602, 14.498301>,  <25.796803, 14.763284, 14.434952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389364, 15.357602, 14.498301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250044, 15.255389, 14.859054>,  <26.166452, 15.194061, 15.075505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250044, 15.255389, 14.859054>,  <26.389364, 15.357602, 14.498301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250044, 15.255389, 14.859054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906814, -0.335552, 0.255132,
		0.237434, 0.906701, 0.348594,
		-0.348300, -0.255533, 0.901882,
		26.145554, 15.178729, 15.129618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908430, 15.549525, 14.945149>,  <26.389364, 15.357602, 14.498301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908430, 15.549525, 14.945149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684143, 15.271688, 15.125431>,  <26.549570, 15.104985, 15.233600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684143, 15.271688, 15.125431>,  <26.908430, 15.549525, 14.945149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684143, 15.271688, 15.125431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824895, -0.515747, 0.231416,
		0.071709, 0.501542, 0.862156,
		-0.560719, -0.694594, 0.450703,
		26.515928, 15.063310, 15.260642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.867859, 18.435606, 23.840490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.523876, 18.237490, 23.889750>,  <11.317487, 18.118620, 23.919306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.523876, 18.237490, 23.889750>,  <11.867859, 18.435606, 23.840490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.523876, 18.237490, 23.889750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219066, -0.576146, -0.787443,
		0.460963, -0.650188, 0.603961,
		-0.859956, -0.495289, 0.123147,
		11.265889, 18.088903, 23.926693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.092992, 17.871565, 23.659639>,  <11.867859, 18.435606, 23.840490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.092992, 17.871565, 23.659639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.697600, 17.818310, 23.630835>,  <11.460365, 17.786358, 23.613552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.697600, 17.818310, 23.630835>,  <12.092992, 17.871565, 23.659639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.697600, 17.818310, 23.630835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124451, -0.444035, -0.887325,
		0.086158, -0.886063, 0.455487,
		-0.988478, -0.133136, -0.072014,
		11.401057, 17.778370, 23.609230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.919183, 17.099602, 23.625538>,  <12.092992, 17.871565, 23.659639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.919183, 17.099602, 23.625538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.617930, 17.302027, 23.457397>,  <11.437179, 17.423481, 23.356514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.617930, 17.302027, 23.457397>,  <11.919183, 17.099602, 23.625538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.617930, 17.302027, 23.457397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050686, -0.592423, -0.804031,
		-0.655920, -0.626844, 0.420519,
		-0.753127, 0.506066, -0.420354,
		11.391991, 17.453846, 23.331293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.479006, 16.572777, 23.418430>,  <11.919183, 17.099602, 23.625538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.479006, 16.572777, 23.418430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.385163, 16.900410, 23.209026>,  <11.328857, 17.096989, 23.083384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.385163, 16.900410, 23.209026>,  <11.479006, 16.572777, 23.418430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.385163, 16.900410, 23.209026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029822, -0.532224, -0.846078,
		-0.971633, -0.214107, 0.100436,
		-0.234606, 0.819082, -0.523512,
		11.314781, 17.146133, 23.051973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.015618, 16.383738, 22.799017>,  <11.479006, 16.572777, 23.418430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.015618, 16.383738, 22.799017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.162555, 16.746887, 22.718193>,  <11.250716, 16.964777, 22.669699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.162555, 16.746887, 22.718193>,  <11.015618, 16.383738, 22.799017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.162555, 16.746887, 22.718193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369081, -0.341702, -0.864303,
		-0.853721, 0.242916, -0.460600,
		0.367341, 0.907872, -0.202062,
		11.272757, 17.019249, 22.657574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769790, 16.490007, 22.145048>,  <11.015618, 16.383738, 22.799017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769790, 16.490007, 22.145048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.095057, 16.716867, 22.197355>,  <11.290216, 16.852983, 22.228739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.095057, 16.716867, 22.197355>,  <10.769790, 16.490007, 22.145048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.095057, 16.716867, 22.197355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362087, -0.317044, -0.876571,
		-0.455689, 0.760147, -0.463168,
		0.813167, 0.567150, 0.130766,
		11.339006, 16.887012, 22.236586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.964395, 16.749224, 21.500692>,  <10.769790, 16.490007, 22.145048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.964395, 16.749224, 21.500692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.313959, 16.843166, 21.670925>,  <11.523698, 16.899532, 21.773066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.313959, 16.843166, 21.670925>,  <10.964395, 16.749224, 21.500692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.313959, 16.843166, 21.670925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485102, -0.365737, -0.794300,
		-0.030896, 0.900599, -0.433552,
		0.873912, 0.234857, 0.425583,
		11.576133, 16.913624, 21.798599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474436, 16.841877, 20.941816>,  <10.964395, 16.749224, 21.500692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474436, 16.841877, 20.941816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.703660, 16.782930, 21.264278>,  <11.841195, 16.747562, 21.457756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.703660, 16.782930, 21.264278>,  <11.474436, 16.841877, 20.941816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703660, 16.782930, 21.264278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710046, -0.401886, -0.578207,
		0.409189, 0.903754, -0.125670,
		0.573062, -0.147364, 0.806154,
		11.875579, 16.738722, 21.506124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209367, 17.024538, 20.796349>,  <11.474436, 16.841877, 20.941816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209367, 17.024538, 20.796349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.211822, 16.754944, 21.091837>,  <12.213295, 16.593187, 21.269129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.211822, 16.754944, 21.091837>,  <12.209367, 17.024538, 20.796349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.211822, 16.754944, 21.091837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654460, -0.555838, -0.512569,
		0.756072, 0.486608, 0.437685,
		0.006138, -0.673986, 0.738719,
		12.213663, 16.552748, 21.313452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.846047, 16.888288, 20.848259>,  <12.209367, 17.024538, 20.796349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.846047, 16.888288, 20.848259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.674970, 16.571003, 21.021645>,  <12.572323, 16.380632, 21.125677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.674970, 16.571003, 21.021645>,  <12.846047, 16.888288, 20.848259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.674970, 16.571003, 21.021645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690527, -0.596158, -0.409595,
		0.583309, 0.124138, 0.802708,
		-0.427695, -0.793212, 0.433465,
		12.546661, 16.333040, 21.151684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353486, 16.536434, 20.968939>,  <12.846047, 16.888288, 20.848259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353486, 16.536434, 20.968939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.044820, 16.282269, 20.980114>,  <12.859620, 16.129768, 20.986818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.044820, 16.282269, 20.980114>,  <13.353486, 16.536434, 20.968939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.044820, 16.282269, 20.980114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525956, -0.662203, -0.533721,
		0.357635, -0.397160, 0.845199,
		-0.771665, -0.635415, 0.027938,
		12.813320, 16.091644, 20.988495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667847, 15.972444, 21.259037>,  <13.353486, 16.536434, 20.968939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667847, 15.972444, 21.259037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.344653, 15.878696, 21.042803>,  <13.150737, 15.822448, 20.913061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.344653, 15.878696, 21.042803>,  <13.667847, 15.972444, 21.259037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.344653, 15.878696, 21.042803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566443, -0.561530, -0.603180,
		-0.162190, -0.793571, 0.586463,
		-0.807983, -0.234368, -0.540587,
		13.102259, 15.808386, 20.880627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793507, 15.176249, 21.018093>,  <13.667847, 15.972444, 21.259037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793507, 15.176249, 21.018093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501309, 15.322184, 20.787174>,  <13.325992, 15.409745, 20.648623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501309, 15.322184, 20.787174>,  <13.793507, 15.176249, 21.018093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.501309, 15.322184, 20.787174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388225, -0.473609, -0.790554,
		-0.561837, -0.801616, 0.204329,
		-0.730493, 0.364837, -0.577299,
		13.282162, 15.431635, 20.613985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.456347, 14.651756, 20.687017>,  <13.793507, 15.176249, 21.018093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.456347, 14.651756, 20.687017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.365420, 14.950001, 20.436453>,  <13.310864, 15.128947, 20.286114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.365420, 14.950001, 20.436453>,  <13.456347, 14.651756, 20.687017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.365420, 14.950001, 20.436453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294658, -0.560437, -0.774007,
		-0.928173, -0.360520, -0.092305,
		-0.227314, 0.745611, -0.626413,
		13.297226, 15.173684, 20.248529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.010569, 14.387856, 20.151335>,  <13.456347, 14.651756, 20.687017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.010569, 14.387856, 20.151335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.197654, 14.710438, 20.006628>,  <13.309905, 14.903987, 19.919804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.197654, 14.710438, 20.006628>,  <13.010569, 14.387856, 20.151335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.197654, 14.710438, 20.006628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548861, -0.585811, -0.596303,
		-0.692818, 0.080340, -0.716624,
		0.467713, 0.806456, -0.361765,
		13.337968, 14.952374, 19.898098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964578, 14.429955, 19.329258>,  <13.010569, 14.387856, 20.151335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964578, 14.429955, 19.329258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.269969, 14.673965, 19.414083>,  <13.453203, 14.820371, 19.464979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.269969, 14.673965, 19.414083>,  <12.964578, 14.429955, 19.329258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269969, 14.673965, 19.414083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439923, -0.250826, -0.862295,
		-0.472831, 0.751635, -0.459865,
		0.763478, 0.610025, 0.212063,
		13.499012, 14.856972, 19.477703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128421, 14.788707, 18.693350>,  <12.964578, 14.429955, 19.329258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128421, 14.788707, 18.693350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.460912, 14.831056, 18.911654>,  <13.660406, 14.856465, 19.042635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.460912, 14.831056, 18.911654>,  <13.128421, 14.788707, 18.693350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.460912, 14.831056, 18.911654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554985, -0.215328, -0.803508,
		0.032448, 0.970786, -0.237744,
		0.831228, 0.105872, 0.545758,
		13.710280, 14.862817, 19.075380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.515021, 15.155380, 18.208534>,  <13.128421, 14.788707, 18.693350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.515021, 15.155380, 18.208534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.769716, 15.026661, 18.488823>,  <13.922533, 14.949430, 18.656996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.769716, 15.026661, 18.488823>,  <13.515021, 15.155380, 18.208534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769716, 15.026661, 18.488823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651943, -0.260587, -0.712085,
		0.411747, 0.910242, 0.043869,
		0.636738, -0.321799, 0.700721,
		13.960737, 14.930121, 18.699039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191050, 15.501421, 18.105127>,  <13.515021, 15.155380, 18.208534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191050, 15.501421, 18.105127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.273877, 15.181087, 18.329906>,  <14.323574, 14.988888, 18.464775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.273877, 15.181087, 18.329906>,  <14.191050, 15.501421, 18.105127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.273877, 15.181087, 18.329906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889751, -0.084671, -0.448525,
		0.406775, 0.592871, 0.695010,
		0.207070, -0.800834, 0.561950,
		14.335998, 14.940837, 18.498491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007057, 15.452410, 18.343315>,  <14.191050, 15.501421, 18.105127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007057, 15.452410, 18.343315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.816661, 15.100820, 18.331747>,  <14.702423, 14.889866, 18.324806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.816661, 15.100820, 18.331747>,  <15.007057, 15.452410, 18.343315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.816661, 15.100820, 18.331747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655730, -0.332799, -0.677689,
		0.586047, -0.341538, 0.734779,
		-0.475991, -0.878975, -0.028921,
		14.673863, 14.837127, 18.323071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594216, 15.094227, 18.105869>,  <15.007057, 15.452410, 18.343315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594216, 15.094227, 18.105869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.299184, 14.828832, 18.055660>,  <15.122164, 14.669595, 18.025534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.299184, 14.828832, 18.055660>,  <15.594216, 15.094227, 18.105869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299184, 14.828832, 18.055660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453666, -0.349212, -0.819901,
		0.500160, -0.661690, 0.558574,
		-0.737582, -0.663488, -0.125524,
		15.077909, 14.629786, 18.018003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903103, 14.501935, 18.008995>,  <15.594216, 15.094227, 18.105869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.903103, 14.501935, 18.008995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.542517, 14.452022, 17.843204>,  <15.326165, 14.422073, 17.743731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.542517, 14.452022, 17.843204>,  <15.903103, 14.501935, 18.008995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542517, 14.452022, 17.843204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417535, -0.503168, -0.756629,
		-0.114136, -0.855132, 0.505690,
		-0.901464, -0.124784, -0.414477,
		15.272078, 14.414586, 17.718861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631618, 14.652208, 17.940252>,  <15.903103, 14.501935, 18.008995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631618, 14.652208, 17.940252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.985472, 14.819005, 17.856785>,  <17.197784, 14.919083, 17.806704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.985472, 14.819005, 17.856785>,  <16.631618, 14.652208, 17.940252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985472, 14.819005, 17.856785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031918, 0.500615, 0.865081,
		0.465191, -0.758621, 0.456171,
		0.884634, 0.416988, -0.208668,
		17.250862, 14.944102, 17.794184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085821, 14.605437, 18.588324>,  <16.631618, 14.652208, 17.940252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085821, 14.605437, 18.588324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.160383, 14.921857, 18.355259>,  <17.205120, 15.111709, 18.215420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.160383, 14.921857, 18.355259>,  <17.085821, 14.605437, 18.588324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160383, 14.921857, 18.355259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186790, 0.610772, 0.769459,
		0.964553, -0.034598, 0.261613,
		0.186408, 0.791050, -0.582659,
		17.216305, 15.159172, 18.180462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557100, 14.988382, 18.976007>,  <17.085821, 14.605437, 18.588324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557100, 14.988382, 18.976007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.379599, 15.235902, 18.716726>,  <17.273098, 15.384414, 18.561157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.379599, 15.235902, 18.716726>,  <17.557100, 14.988382, 18.976007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379599, 15.235902, 18.716726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234117, 0.618153, 0.750384,
		0.865027, 0.484742, -0.129436,
		-0.443754, 0.618799, -0.648205,
		17.246473, 15.421541, 18.522264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937859, 15.547760, 19.008198>,  <17.557100, 14.988382, 18.976007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937859, 15.547760, 19.008198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.589926, 15.691269, 18.872742>,  <17.381166, 15.777374, 18.791468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.589926, 15.691269, 18.872742>,  <17.937859, 15.547760, 19.008198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589926, 15.691269, 18.872742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152521, 0.457227, 0.876174,
		0.469182, 0.813773, -0.342990,
		-0.869831, 0.358771, -0.338640,
		17.328976, 15.798901, 18.771151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887398, 16.067820, 19.360432>,  <17.937859, 15.547760, 19.008198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.887398, 16.067820, 19.360432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.515738, 16.098148, 19.215694>,  <17.292742, 16.116344, 19.128853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.515738, 16.098148, 19.215694>,  <17.887398, 16.067820, 19.360432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.515738, 16.098148, 19.215694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303888, 0.400766, 0.864314,
		0.210546, 0.913038, -0.349331,
		-0.929151, 0.075821, -0.361841,
		17.236992, 16.120895, 19.107141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687235, 16.745441, 19.516834>,  <17.887398, 16.067820, 19.360432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687235, 16.745441, 19.516834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366171, 16.509779, 19.479677>,  <17.173532, 16.368382, 19.457384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366171, 16.509779, 19.479677>,  <17.687235, 16.745441, 19.516834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366171, 16.509779, 19.479677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396511, 0.410755, 0.821011,
		-0.445550, 0.695826, -0.563305,
		-0.802661, -0.589158, -0.092891,
		17.125372, 16.333031, 19.451809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088829, 17.313730, 19.501493>,  <17.687235, 16.745441, 19.516834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.088829, 17.313730, 19.501493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.967823, 16.947823, 19.608589>,  <16.895220, 16.728279, 19.672846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.967823, 16.947823, 19.608589>,  <17.088829, 17.313730, 19.501493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.967823, 16.947823, 19.608589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468403, 0.387321, 0.794092,
		-0.830111, 0.114814, -0.545650,
		-0.302514, -0.914768, 0.267740,
		16.877069, 16.673391, 19.688911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366608, 17.443043, 19.642521>,  <17.088829, 17.313730, 19.501493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366608, 17.443043, 19.642521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.441729, 17.090387, 19.815701>,  <16.486801, 16.878794, 19.919607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.441729, 17.090387, 19.815701>,  <16.366608, 17.443043, 19.642521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441729, 17.090387, 19.815701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640272, 0.224378, 0.734647,
		-0.744837, -0.415172, -0.522350,
		0.187801, -0.881639, 0.432948,
		16.498070, 16.825895, 19.945585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616854, 17.118752, 19.851915>,  <16.366608, 17.443043, 19.642521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616854, 17.118752, 19.851915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.890462, 16.920694, 20.066185>,  <16.054626, 16.801859, 20.194746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.890462, 16.920694, 20.066185>,  <15.616854, 17.118752, 19.851915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.890462, 16.920694, 20.066185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581861, 0.072536, 0.810047,
		-0.439946, -0.865778, -0.238489,
		0.684021, -0.495144, 0.535674,
		16.095669, 16.772152, 20.226887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389444, 16.533548, 20.149292>,  <15.616854, 17.118752, 19.851915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389444, 16.533548, 20.149292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.691381, 16.612230, 20.399578>,  <15.872543, 16.659439, 20.549749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.691381, 16.612230, 20.399578>,  <15.389444, 16.533548, 20.149292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.691381, 16.612230, 20.399578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631625, -0.039169, 0.774284,
		0.176817, -0.979679, 0.094679,
		0.754842, 0.196708, 0.625715,
		15.917834, 16.671242, 20.587294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257597, 16.109985, 20.686218>,  <15.389444, 16.533548, 20.149292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.257597, 16.109985, 20.686218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.502097, 16.383024, 20.846434>,  <15.648797, 16.546848, 20.942564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.502097, 16.383024, 20.846434>,  <15.257597, 16.109985, 20.686218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.502097, 16.383024, 20.846434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550979, 0.003709, 0.834511,
		0.568150, -0.730784, 0.378364,
		0.611251, 0.682598, 0.400539,
		15.685472, 16.587803, 20.966595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302749, 15.907951, 21.346199>,  <15.257597, 16.109985, 20.686218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302749, 15.907951, 21.346199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.429125, 16.286551, 21.372503>,  <15.504951, 16.513710, 21.388287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.429125, 16.286551, 21.372503>,  <15.302749, 15.907951, 21.346199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429125, 16.286551, 21.372503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468957, 0.095533, 0.878039,
		0.824779, -0.308248, 0.474050,
		0.315941, 0.946497, 0.065762,
		15.523907, 16.570499, 21.392231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407166, 16.042223, 22.057613>,  <15.302749, 15.907951, 21.346199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407166, 16.042223, 22.057613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.405344, 16.398426, 21.875635>,  <15.404251, 16.612148, 21.766447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.405344, 16.398426, 21.875635>,  <15.407166, 16.042223, 22.057613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.405344, 16.398426, 21.875635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560691, 0.374435, 0.738528,
		0.828013, 0.258448, 0.497593,
		-0.004555, 0.890507, -0.454947,
		15.403977, 16.665579, 21.739151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497126, 16.496235, 22.535591>,  <15.407166, 16.042223, 22.057613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497126, 16.496235, 22.535591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.333558, 16.727312, 22.253016>,  <15.235417, 16.865957, 22.083469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.333558, 16.727312, 22.253016>,  <15.497126, 16.496235, 22.535591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333558, 16.727312, 22.253016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476207, 0.525282, 0.705199,
		0.778468, 0.624780, 0.060304,
		-0.408918, 0.577692, -0.706440,
		15.210883, 16.900620, 22.041084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596591, 17.178259, 22.743185>,  <15.497126, 16.496235, 22.535591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596591, 17.178259, 22.743185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.288457, 17.176622, 22.488134>,  <15.103577, 17.175640, 22.335104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.288457, 17.176622, 22.488134>,  <15.596591, 17.178259, 22.743185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.288457, 17.176622, 22.488134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522520, 0.577177, 0.627567,
		0.365455, 0.816609, -0.446758,
		-0.770335, -0.004093, -0.637626,
		15.057357, 17.175394, 22.296846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379015, 17.841305, 22.679476>,  <15.596591, 17.178259, 22.743185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379015, 17.841305, 22.679476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.062137, 17.634979, 22.549025>,  <14.872009, 17.511183, 22.470753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.062137, 17.634979, 22.549025>,  <15.379015, 17.841305, 22.679476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.062137, 17.634979, 22.549025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604280, 0.588348, 0.537301,
		-0.085271, 0.622721, -0.777784,
		-0.792196, -0.515815, -0.326129,
		14.824478, 17.480234, 22.451185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884708, 18.380322, 22.574083>,  <15.379015, 17.841305, 22.679476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884708, 18.380322, 22.574083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.677050, 18.038517, 22.580969>,  <14.552454, 17.833435, 22.585100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.677050, 18.038517, 22.580969>,  <14.884708, 18.380322, 22.574083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677050, 18.038517, 22.580969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782310, 0.483201, 0.393074,
		-0.344204, 0.190597, -0.919346,
		-0.519148, -0.854511, 0.017214,
		14.521305, 17.782164, 22.586132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293080, 18.622847, 22.252686>,  <14.884708, 18.380322, 22.574083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293080, 18.622847, 22.252686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.238478, 18.301178, 22.484091>,  <14.205716, 18.108177, 22.622934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.238478, 18.301178, 22.484091>,  <14.293080, 18.622847, 22.252686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.238478, 18.301178, 22.484091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595049, 0.533450, 0.601122,
		-0.792012, -0.262186, -0.551340,
		-0.136507, -0.804170, 0.578512,
		14.197526, 18.059927, 22.657644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.482214, 18.665272, 22.523232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.660561, 18.400042, 22.763742>,  <13.767569, 18.240904, 22.908049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.660561, 18.400042, 22.763742>,  <13.482214, 18.665272, 22.523232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.660561, 18.400042, 22.763742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359690, 0.482394, 0.798698,
		-0.819650, -0.572386, -0.023419,
		0.445867, -0.663076, 0.601276,
		13.794321, 18.201118, 22.944124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.971596, 18.499777, 23.018049>,  <13.482214, 18.665272, 22.523232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.971596, 18.499777, 23.018049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.304888, 18.378531, 23.203024>,  <13.504863, 18.305782, 23.314009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.304888, 18.378531, 23.203024>,  <12.971596, 18.499777, 23.018049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304888, 18.378531, 23.203024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263602, 0.517417, 0.814121,
		-0.486046, -0.800250, 0.351225,
		0.833230, -0.303117, 0.462436,
		13.554857, 18.287596, 23.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.786767, 18.132856, 23.762323>,  <12.971596, 18.499777, 23.018049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.786767, 18.132856, 23.762323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.166404, 18.258286, 23.750349>,  <13.394186, 18.333544, 23.743164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.166404, 18.258286, 23.750349>,  <12.786767, 18.132856, 23.762323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166404, 18.258286, 23.750349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079972, 0.331779, 0.939961,
		0.304669, -0.889719, 0.339966,
		0.949095, 0.313565, -0.029930,
		13.451131, 18.352358, 23.741369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335223, 17.717001, 24.195827>,  <12.786767, 18.132856, 23.762323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335223, 17.717001, 24.195827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.464941, 18.092752, 24.151283>,  <13.542771, 18.318203, 24.124556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.464941, 18.092752, 24.151283>,  <13.335223, 17.717001, 24.195827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464941, 18.092752, 24.151283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159249, 0.061830, 0.985301,
		0.932455, -0.337262, -0.129544,
		0.324295, 0.939378, -0.111362,
		13.562229, 18.374565, 24.117874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.594239, 17.720146, 24.771887>,  <13.335223, 17.717001, 24.195827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.594239, 17.720146, 24.771887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.645311, 18.095415, 24.643183>,  <13.675955, 18.320576, 24.565960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.645311, 18.095415, 24.643183>,  <13.594239, 17.720146, 24.771887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645311, 18.095415, 24.643183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196916, 0.293978, 0.935308,
		0.972071, -0.182781, -0.147206,
		0.127681, 0.938172, -0.321760,
		13.683616, 18.376867, 24.546654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125216, 18.024290, 25.282240>,  <13.594239, 17.720146, 24.771887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125216, 18.024290, 25.282240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.933731, 18.328026, 25.105949>,  <13.818840, 18.510267, 25.000175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.933731, 18.328026, 25.105949>,  <14.125216, 18.024290, 25.282240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933731, 18.328026, 25.105949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200751, 0.394015, 0.896912,
		0.854713, 0.517838, -0.036181,
		-0.478711, 0.759339, -0.440727,
		13.790117, 18.555828, 24.973732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237060, 18.605768, 25.678747>,  <14.125216, 18.024290, 25.282240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237060, 18.605768, 25.678747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.921391, 18.730865, 25.467314>,  <13.731991, 18.805923, 25.340454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.921391, 18.730865, 25.467314>,  <14.237060, 18.605768, 25.678747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.921391, 18.730865, 25.467314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442328, 0.307673, 0.842427,
		0.426093, 0.898627, -0.104472,
		-0.789171, 0.312741, -0.528585,
		13.684640, 18.824688, 25.308739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.281609, 19.311266, 25.702457>,  <14.237060, 18.605768, 25.678747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.281609, 19.311266, 25.702457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.898186, 19.206619, 25.657335>,  <13.668132, 19.143831, 25.630262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.898186, 19.206619, 25.657335>,  <14.281609, 19.311266, 25.702457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.898186, 19.206619, 25.657335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258491, 0.632130, 0.730475,
		-0.119796, 0.729362, -0.673558,
		-0.958557, -0.261617, -0.112807,
		13.610619, 19.128134, 25.623493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918355, 19.901602, 25.658304>,  <14.281609, 19.311266, 25.702457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918355, 19.901602, 25.658304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.645576, 19.634176, 25.776943>,  <13.481908, 19.473721, 25.848125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.645576, 19.634176, 25.776943>,  <13.918355, 19.901602, 25.658304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645576, 19.634176, 25.776943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383850, 0.672334, 0.632950,
		-0.622579, 0.317791, -0.715126,
		-0.681949, -0.668562, 0.296597,
		13.440990, 19.433607, 25.865923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388165, 20.291962, 25.873619>,  <13.918355, 19.901602, 25.658304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388165, 20.291962, 25.873619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.304919, 19.934914, 26.033579>,  <13.254972, 19.720684, 26.129555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.304919, 19.934914, 26.033579>,  <13.388165, 20.291962, 25.873619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304919, 19.934914, 26.033579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367166, 0.450245, 0.813922,
		-0.906575, 0.022560, -0.421442,
		-0.208114, -0.892620, 0.399898,
		13.242485, 19.667128, 26.153549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.702034, 20.378744, 26.101715>,  <13.388165, 20.291962, 25.873619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.702034, 20.378744, 26.101715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.854490, 20.089296, 26.331884>,  <12.945964, 19.915628, 26.469986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.854490, 20.089296, 26.331884>,  <12.702034, 20.378744, 26.101715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.854490, 20.089296, 26.331884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290938, 0.496902, 0.817584,
		-0.877546, -0.479026, -0.021139,
		0.381140, -0.723618, 0.575421,
		12.968832, 19.872211, 26.504511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.146585, 20.075827, 26.667498>,  <12.702034, 20.378744, 26.101715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.146585, 20.075827, 26.667498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.506897, 19.971258, 26.806206>,  <12.723084, 19.908518, 26.889431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.506897, 19.971258, 26.806206>,  <12.146585, 20.075827, 26.667498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.506897, 19.971258, 26.806206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263168, 0.306584, 0.914740,
		-0.345448, -0.915240, 0.207367,
		0.900782, -0.261422, 0.346771,
		12.777132, 19.892832, 26.910236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.046326, 19.588282, 27.322615>,  <12.146585, 20.075827, 26.667498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.046326, 19.588282, 27.322615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.400539, 19.773876, 27.331980>,  <12.613068, 19.885233, 27.337599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.400539, 19.773876, 27.331980>,  <12.046326, 19.588282, 27.322615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400539, 19.773876, 27.331980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150963, 0.239728, 0.959031,
		0.439365, -0.852788, 0.282332,
		0.885533, 0.463987, 0.023411,
		12.666200, 19.913073, 27.339003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096262, 19.600449, 27.991402>,  <12.046326, 19.588282, 27.322615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.096262, 19.600449, 27.991402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.365235, 19.863667, 27.855865>,  <12.526619, 20.021597, 27.774544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.365235, 19.863667, 27.855865>,  <12.096262, 19.600449, 27.991402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.365235, 19.863667, 27.855865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095378, 0.531014, 0.841978,
		0.733988, -0.533855, 0.419834,
		0.672432, 0.658045, -0.338839,
		12.566965, 20.061079, 27.754213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605867, 19.639563, 28.551544>,  <12.096262, 19.600449, 27.991402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605867, 19.639563, 28.551544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.642530, 19.978523, 28.342350>,  <12.664528, 20.181900, 28.216833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.642530, 19.978523, 28.342350>,  <12.605867, 19.639563, 28.551544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.642530, 19.978523, 28.342350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080297, 0.529775, 0.844329,
		0.992548, -0.035395, 0.116602,
		0.091657, 0.847399, -0.522985,
		12.670028, 20.232742, 28.185455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.891524, 20.032625, 28.962889>,  <12.605867, 19.639563, 28.551544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.891524, 20.032625, 28.962889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.766320, 20.310509, 28.703842>,  <12.691197, 20.477240, 28.548414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.766320, 20.310509, 28.703842>,  <12.891524, 20.032625, 28.962889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766320, 20.310509, 28.703842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176571, 0.627425, 0.758393,
		0.933192, 0.351735, -0.073726,
		-0.313011, 0.694709, -0.647614,
		12.672417, 20.518921, 28.509558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258858, 20.681610, 29.176174>,  <12.891524, 20.032625, 28.962889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258858, 20.681610, 29.176174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.936057, 20.816721, 28.982410>,  <12.742376, 20.897787, 28.866152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.936057, 20.816721, 28.982410>,  <13.258858, 20.681610, 29.176174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.936057, 20.816721, 28.982410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156597, 0.668510, 0.727030,
		0.569407, 0.662572, -0.486594,
		-0.807002, 0.337777, -0.484411,
		12.693956, 20.918055, 28.837088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250253, 21.339039, 29.310669>,  <13.258858, 20.681610, 29.176174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.250253, 21.339039, 29.310669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.877775, 21.273209, 29.180565>,  <12.654289, 21.233709, 29.102503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.877775, 21.273209, 29.180565>,  <13.250253, 21.339039, 29.310669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.877775, 21.273209, 29.180565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353308, 0.627132, 0.694175,
		0.089735, 0.761328, -0.642127,
		-0.931193, -0.164577, -0.325259,
		12.598417, 21.223835, 29.082987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.955112, 21.989403, 29.197392>,  <13.250253, 21.339039, 29.310669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.955112, 21.989403, 29.197392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.648397, 21.737770, 29.248444>,  <12.464368, 21.586790, 29.279074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.648397, 21.737770, 29.248444>,  <12.955112, 21.989403, 29.197392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.648397, 21.737770, 29.248444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455394, 0.673261, 0.582526,
		-0.452385, 0.388553, -0.802729,
		-0.766788, -0.629084, 0.127629,
		12.418361, 21.549046, 29.286732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.399729, 22.387074, 29.164288>,  <12.955112, 21.989403, 29.197392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.399729, 22.387074, 29.164288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.245436, 22.061300, 29.337683>,  <12.152860, 21.865837, 29.441719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.245436, 22.061300, 29.337683>,  <12.399729, 22.387074, 29.164288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.245436, 22.061300, 29.337683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420110, 0.573360, 0.703396,
		-0.821412, 0.089212, -0.563315,
		-0.385733, -0.814432, 0.433486,
		12.129716, 21.816971, 29.467728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.661291, 22.366791, 29.194300>,  <12.399729, 22.387074, 29.164288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.661291, 22.366791, 29.194300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.773752, 22.135290, 29.500504>,  <11.841228, 21.996389, 29.684225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.773752, 22.135290, 29.500504>,  <11.661291, 22.366791, 29.194300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.773752, 22.135290, 29.500504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549116, 0.557175, 0.622919,
		-0.787036, -0.595488, -0.161150,
		0.281152, -0.578749, 0.765508,
		11.858098, 21.961666, 29.730156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.117409, 22.344484, 29.622095>,  <11.661291, 22.366791, 29.194300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.117409, 22.344484, 29.622095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.383677, 22.189653, 29.877296>,  <11.543439, 22.096754, 30.030418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.383677, 22.189653, 29.877296>,  <11.117409, 22.344484, 29.622095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.383677, 22.189653, 29.877296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498604, 0.405405, 0.766186,
		-0.555224, -0.828141, 0.076868,
		0.665672, -0.387079, 0.638005,
		11.583379, 22.073530, 30.068699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.724814, 21.978933, 30.119448>,  <11.117409, 22.344484, 29.622095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.724814, 21.978933, 30.119448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.078547, 22.118959, 30.243004>,  <11.290787, 22.202974, 30.317137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.078547, 22.118959, 30.243004>,  <10.724814, 21.978933, 30.119448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.078547, 22.118959, 30.243004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445929, 0.437480, 0.780871,
		0.138219, -0.828292, 0.542980,
		0.884332, 0.350062, 0.308892,
		11.343847, 22.223978, 30.335670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.838690, 21.782202, 30.848331>,  <10.724814, 21.978933, 30.119448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.838690, 21.782202, 30.848331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.605281, 21.502249, 31.013094>,  <10.465236, 21.334276, 31.111952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.605281, 21.502249, 31.013094>,  <10.838690, 21.782202, 30.848331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.605281, 21.502249, 31.013094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170997, -0.601732, -0.780179,
		0.793890, -0.384817, 0.470801,
		-0.583522, -0.699882, 0.411907,
		10.430224, 21.292284, 31.136665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.189858, 21.179785, 30.654879>,  <10.838690, 21.782202, 30.848331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.189858, 21.179785, 30.654879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.808895, 21.079155, 30.723728>,  <10.580317, 21.018776, 30.765038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.808895, 21.079155, 30.723728>,  <11.189858, 21.179785, 30.654879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.808895, 21.079155, 30.723728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115420, -0.820252, -0.560236,
		0.282127, -0.513708, 0.810252,
		-0.952409, -0.251577, 0.172123,
		10.523172, 21.003681, 30.775366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.258167, 20.401773, 30.756702>,  <11.189858, 21.179785, 30.654879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.258167, 20.401773, 30.756702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.875059, 20.503420, 30.702888>,  <10.645194, 20.564407, 30.670601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.875059, 20.503420, 30.702888>,  <11.258167, 20.401773, 30.756702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.875059, 20.503420, 30.702888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148338, -0.837515, -0.525895,
		-0.246312, -0.483730, 0.839842,
		-0.957772, 0.254115, -0.134534,
		10.587728, 20.579655, 30.662529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.774395, 19.941769, 31.060965>,  <11.258167, 20.401773, 30.756702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.774395, 19.941769, 31.060965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.557278, 20.106028, 30.767914>,  <10.427008, 20.204584, 30.592083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.557278, 20.106028, 30.767914>,  <10.774395, 19.941769, 31.060965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.557278, 20.106028, 30.767914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136196, -0.903806, -0.405692,
		-0.828750, -0.120426, 0.546508,
		-0.542793, 0.410649, -0.732627,
		10.394440, 20.229223, 30.548126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.354030, 19.487438, 30.941372>,  <10.774395, 19.941769, 31.060965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.354030, 19.487438, 30.941372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.298566, 19.715527, 30.617491>,  <10.265287, 19.852379, 30.423162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.298566, 19.715527, 30.617491>,  <10.354030, 19.487438, 30.941372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298566, 19.715527, 30.617491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232746, -0.813466, -0.533013,
		-0.962602, 0.114549, 0.245510,
		-0.138658, 0.570221, -0.809705,
		10.256968, 19.886593, 30.374578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.718315, 19.279186, 30.660517>,  <10.354030, 19.487438, 30.941372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.718315, 19.279186, 30.660517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.885833, 19.456411, 30.343454>,  <9.986343, 19.562746, 30.153217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.885833, 19.456411, 30.343454>,  <9.718315, 19.279186, 30.660517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.885833, 19.456411, 30.343454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424218, -0.676332, -0.602174,
		-0.802901, 0.588447, -0.095288,
		0.418794, 0.443064, -0.792658,
		10.011471, 19.589331, 30.105658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.164154, 19.261686, 30.056978>,  <9.718315, 19.279186, 30.660517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.164154, 19.261686, 30.056978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.521531, 19.327143, 29.889654>,  <9.735957, 19.366417, 29.789259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.521531, 19.327143, 29.889654>,  <9.164154, 19.261686, 30.056978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.521531, 19.327143, 29.889654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240869, -0.611512, -0.753681,
		-0.379136, 0.774128, -0.506934,
		0.893442, 0.163643, -0.418310,
		9.789563, 19.376236, 29.764162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.970134, 19.384716, 29.399336>,  <9.164154, 19.261686, 30.056978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.970134, 19.384716, 29.399336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.360158, 19.300819, 29.370302>,  <9.594172, 19.250483, 29.352882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.360158, 19.300819, 29.370302>,  <8.970134, 19.384716, 29.399336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.360158, 19.300819, 29.370302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160212, -0.438830, -0.884172,
		0.153595, 0.873749, -0.461488,
		0.975059, -0.209740, -0.072584,
		9.652676, 19.237898, 29.348528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.274094, 19.558468, 28.656742>,  <8.970134, 19.384716, 29.399336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.274094, 19.558468, 28.656742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.548909, 19.308260, 28.804636>,  <9.713799, 19.158136, 28.893373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.548909, 19.308260, 28.804636>,  <9.274094, 19.558468, 28.656742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.548909, 19.308260, 28.804636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112268, -0.411351, -0.904537,
		0.717895, 0.662962, -0.212389,
		0.687039, -0.625518, 0.369736,
		9.755021, 19.120605, 28.915556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.916028, 19.718912, 28.229753>,  <9.274094, 19.558468, 28.656742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.916028, 19.718912, 28.229753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.969967, 19.351114, 28.377457>,  <10.002330, 19.130436, 28.466078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.969967, 19.351114, 28.377457>,  <9.916028, 19.718912, 28.229753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.969967, 19.351114, 28.377457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485305, -0.263615, -0.833659,
		0.863884, 0.291618, 0.410686,
		0.134847, -0.919492, 0.369256,
		10.010421, 19.075266, 28.488234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.621048, 19.623699, 28.261896>,  <9.916028, 19.718912, 28.229753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.621048, 19.623699, 28.261896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.434872, 19.269693, 28.266134>,  <10.323166, 19.057289, 28.268677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.434872, 19.269693, 28.266134>,  <10.621048, 19.623699, 28.261896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.434872, 19.269693, 28.266134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572037, -0.309933, -0.759418,
		0.675382, -0.347402, 0.650516,
		-0.465440, -0.885016, 0.010596,
		10.295239, 19.004189, 28.269314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.157390, 19.127323, 28.127748>,  <10.621048, 19.623699, 28.261896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.157390, 19.127323, 28.127748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.816779, 18.944887, 28.024300>,  <10.612413, 18.835424, 27.962231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.816779, 18.944887, 28.024300>,  <11.157390, 19.127323, 28.127748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.816779, 18.944887, 28.024300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441993, -0.359093, -0.822006,
		0.282040, -0.814269, 0.507366,
		-0.851525, -0.456091, -0.258623,
		10.561321, 18.808060, 27.946712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.407847, 18.422907, 27.872648>,  <11.157390, 19.127323, 28.127748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.407847, 18.422907, 27.872648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.042706, 18.460882, 27.713808>,  <10.823622, 18.483667, 27.618504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.042706, 18.460882, 27.713808>,  <11.407847, 18.422907, 27.872648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.042706, 18.460882, 27.713808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367739, -0.231402, -0.900678,
		-0.177398, -0.968215, 0.176324,
		-0.912852, 0.094937, -0.397100,
		10.768851, 18.489365, 27.594677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.261522, 17.837778, 27.337294>,  <11.407847, 18.422907, 27.872648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.261522, 17.837778, 27.337294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.973695, 18.102419, 27.252909>,  <10.800998, 18.261204, 27.202278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.973695, 18.102419, 27.252909>,  <11.261522, 17.837778, 27.337294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.973695, 18.102419, 27.252909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206091, -0.086648, -0.974689,
		-0.663134, -0.744834, -0.074001,
		-0.719569, 0.661601, -0.210962,
		10.757824, 18.300900, 27.189619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.937750, 17.463499, 26.854548>,  <11.261522, 17.837778, 27.337294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.937750, 17.463499, 26.854548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.818396, 17.843025, 26.813150>,  <10.746783, 18.070742, 26.788311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.818396, 17.843025, 26.813150>,  <10.937750, 17.463499, 26.854548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.818396, 17.843025, 26.813150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015949, -0.113376, -0.993424,
		-0.954312, -0.294773, 0.048963,
		-0.298386, 0.948818, -0.103495,
		10.728880, 18.127670, 26.782103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.414710, 17.488220, 26.260725>,  <10.937750, 17.463499, 26.854548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.414710, 17.488220, 26.260725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.561984, 17.856600, 26.311785>,  <10.650349, 18.077627, 26.342421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.561984, 17.856600, 26.311785>,  <10.414710, 17.488220, 26.260725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.561984, 17.856600, 26.311785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001235, 0.137779, -0.990462,
		-0.929752, 0.364515, 0.051865,
		0.368184, 0.920948, 0.127651,
		10.672440, 18.132885, 26.350080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.953958, 17.898949, 25.813063>,  <10.414710, 17.488220, 26.260725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.953958, 17.898949, 25.813063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.307240, 18.076532, 25.873518>,  <10.519211, 18.183083, 25.909792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.307240, 18.076532, 25.873518>,  <9.953958, 17.898949, 25.813063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.307240, 18.076532, 25.873518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023568, 0.279847, -0.959755,
		-0.468389, 0.851226, 0.236700,
		0.883208, 0.443960, 0.151139,
		10.572203, 18.209721, 25.918859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.907965, 18.544424, 25.582739>,  <9.953958, 17.898949, 25.813063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.907965, 18.544424, 25.582739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.296600, 18.450966, 25.567648>,  <10.529781, 18.394890, 25.558594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.296600, 18.450966, 25.567648>,  <9.907965, 18.544424, 25.582739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.296600, 18.450966, 25.567648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011448, 0.205622, -0.978564,
		0.236397, 0.950331, 0.202455,
		0.971589, -0.233647, -0.037729,
		10.588078, 18.380873, 25.556330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.112743, 18.861567, 25.001791>,  <9.907965, 18.544424, 25.582739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.112743, 18.861567, 25.001791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.431473, 18.628990, 25.067518>,  <10.622710, 18.489445, 25.106955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.431473, 18.628990, 25.067518>,  <10.112743, 18.861567, 25.001791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.431473, 18.628990, 25.067518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197364, -0.006568, -0.980308,
		0.571071, 0.813562, 0.109522,
		0.796822, -0.581441, 0.164318,
		10.670520, 18.454557, 25.116814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.673343, 18.970236, 24.524401>,  <10.112743, 18.861567, 25.001791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.673343, 18.970236, 24.524401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.804979, 18.602228, 24.609501>,  <10.883961, 18.381424, 24.660561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.804979, 18.602228, 24.609501>,  <10.673343, 18.970236, 24.524401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.804979, 18.602228, 24.609501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274527, -0.122356, -0.953763,
		0.903512, 0.372281, 0.212304,
		0.329091, -0.920020, 0.212752,
		10.903707, 18.326221, 24.673326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.345707, 18.936422, 24.184603>,  <10.673343, 18.970236, 24.524401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.345707, 18.936422, 24.184603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.209692, 18.563643, 24.234955>,  <11.128083, 18.339975, 24.265167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.209692, 18.563643, 24.234955>,  <11.345707, 18.936422, 24.184603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209692, 18.563643, 24.234955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408220, -0.266867, -0.873005,
		0.847190, -0.245467, 0.471185,
		-0.340037, -0.931949, 0.125882,
		11.107680, 18.284058, 24.272720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.581968, 25.453199, 16.620390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.412820, 25.727055, 16.382919>,  <15.311331, 25.891367, 16.240437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.412820, 25.727055, 16.382919>,  <15.581968, 25.453199, 16.620390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.412820, 25.727055, 16.382919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459092, -0.402984, -0.791731,
		-0.781291, -0.607353, -0.143901,
		-0.422870, 0.684636, -0.593679,
		15.285959, 25.932446, 16.204815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594148, 24.935236, 16.037457>,  <15.581968, 25.453199, 16.620390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594148, 24.935236, 16.037457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.932818, 25.131414, 16.120014>,  <16.136021, 25.249121, 16.169550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.932818, 25.131414, 16.120014>,  <15.594148, 24.935236, 16.037457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932818, 25.131414, 16.120014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531572, -0.796975, -0.286813,
		0.023825, 0.352552, -0.935489,
		0.846678, 0.490447, 0.206395,
		16.186821, 25.278549, 16.181932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052032, 25.001095, 15.428675>,  <15.594148, 24.935236, 16.037457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052032, 25.001095, 15.428675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.219397, 24.981009, 15.791422>,  <16.319815, 24.968958, 16.009069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.219397, 24.981009, 15.791422>,  <16.052032, 25.001095, 15.428675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219397, 24.981009, 15.791422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403666, -0.884158, -0.235199,
		0.813625, 0.464482, -0.349672,
		0.418411, -0.050214, 0.906869,
		16.344919, 24.965944, 16.063482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594309, 24.699699, 15.330498>,  <16.052032, 25.001095, 15.428675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594309, 24.699699, 15.330498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.553251, 24.671270, 15.727368>,  <16.528616, 24.654213, 15.965490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.553251, 24.671270, 15.727368>,  <16.594309, 24.699699, 15.330498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553251, 24.671270, 15.727368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166249, -0.984640, -0.053334,
		0.980727, 0.159474, 0.112883,
		-0.102644, -0.071073, 0.992176,
		16.522457, 24.649948, 16.025021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226477, 24.410540, 15.671968>,  <16.594309, 24.699699, 15.330498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226477, 24.410540, 15.671968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.896000, 24.320692, 15.878637>,  <16.697714, 24.266783, 16.002638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.896000, 24.320692, 15.878637>,  <17.226477, 24.410540, 15.671968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896000, 24.320692, 15.878637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175212, -0.974049, -0.143283,
		0.535448, -0.027852, 0.844109,
		-0.826194, -0.224618, 0.516673,
		16.648142, 24.253307, 16.033640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352774, 23.897474, 16.187325>,  <17.226477, 24.410540, 15.671968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352774, 23.897474, 16.187325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.986124, 23.894472, 16.027452>,  <16.766134, 23.892672, 15.931529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.986124, 23.894472, 16.027452>,  <17.352774, 23.897474, 16.187325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986124, 23.894472, 16.027452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074761, -0.985402, -0.152952,
		-0.392697, -0.170081, 0.903804,
		-0.916624, -0.007506, -0.399680,
		16.711138, 23.892220, 15.907548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880301, 23.561995, 16.623522>,  <17.352774, 23.897474, 16.187325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880301, 23.561995, 16.623522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.861952, 23.546171, 16.224257>,  <16.850943, 23.536676, 15.984697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.861952, 23.546171, 16.224257>,  <16.880301, 23.561995, 16.623522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861952, 23.546171, 16.224257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034170, -0.998693, 0.038009,
		-0.998363, -0.032364, 0.047163,
		-0.045871, -0.039559, -0.998164,
		16.848190, 23.534304, 15.924808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308386, 22.976679, 16.423517>,  <16.880301, 23.561995, 16.623522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308386, 22.976679, 16.423517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.632158, 23.022045, 16.193052>,  <16.826422, 23.049265, 16.054773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.632158, 23.022045, 16.193052>,  <16.308386, 22.976679, 16.423517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632158, 23.022045, 16.193052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282210, -0.935566, 0.212303,
		-0.514958, -0.334443, -0.789282,
		0.809429, 0.113416, -0.576160,
		16.874987, 23.056070, 16.020205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271830, 22.406487, 15.869347>,  <16.308386, 22.976679, 16.423517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.271830, 22.406487, 15.869347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.638117, 22.542648, 15.954745>,  <16.857889, 22.624346, 16.005985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.638117, 22.542648, 15.954745>,  <16.271830, 22.406487, 15.869347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.638117, 22.542648, 15.954745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339185, -0.939714, 0.043493,
		0.215432, 0.032587, -0.975975,
		0.915720, 0.340406, 0.213497,
		16.912832, 22.644770, 16.018795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.787964, 22.082619, 15.457760>,  <16.271830, 22.406487, 15.869347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.787964, 22.082619, 15.457760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.947397, 22.180779, 15.811236>,  <17.043056, 22.239676, 16.023323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.947397, 22.180779, 15.811236>,  <16.787964, 22.082619, 15.457760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947397, 22.180779, 15.811236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428632, -0.901675, 0.057064,
		0.810806, 0.356034, -0.464579,
		0.398582, 0.245402, 0.883691,
		17.066973, 22.254398, 16.076344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434895, 21.722456, 15.426010>,  <16.787964, 22.082619, 15.457760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434895, 21.722456, 15.426010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.424768, 21.816814, 15.814590>,  <17.418694, 21.873428, 16.047737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.424768, 21.816814, 15.814590>,  <17.434895, 21.722456, 15.426010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.424768, 21.816814, 15.814590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758061, -0.628962, 0.172483,
		0.651692, 0.740784, -0.162900,
		-0.025314, 0.235894, 0.971449,
		17.417173, 21.887583, 16.106024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115337, 21.857735, 15.627165>,  <17.434895, 21.722456, 15.426010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115337, 21.857735, 15.627165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.942814, 21.779999, 15.979574>,  <17.839300, 21.733358, 16.191021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.942814, 21.779999, 15.979574>,  <18.115337, 21.857735, 15.627165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942814, 21.779999, 15.979574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749063, -0.621428, 0.229633,
		0.502867, 0.758986, 0.413600,
		-0.431311, -0.194338, 0.881024,
		17.813421, 21.721697, 16.243881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.631403, 21.850925, 16.143784>,  <18.115337, 21.857735, 15.627165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.631403, 21.850925, 16.143784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.318350, 21.651211, 16.292482>,  <18.130518, 21.531382, 16.381702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.318350, 21.651211, 16.292482>,  <18.631403, 21.850925, 16.143784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.318350, 21.651211, 16.292482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587456, -0.789925, 0.175825,
		0.205866, 0.355992, 0.911531,
		-0.782633, -0.499288, 0.371748,
		18.083559, 21.501425, 16.404007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919540, 21.461031, 16.653090>,  <18.631403, 21.850925, 16.143784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919540, 21.461031, 16.653090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.564058, 21.292383, 16.581045>,  <18.350769, 21.191195, 16.537819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.564058, 21.292383, 16.581045>,  <18.919540, 21.461031, 16.653090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564058, 21.292383, 16.581045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395546, -0.903723, 0.163795,
		-0.231829, 0.074323, 0.969913,
		-0.888706, -0.421618, -0.180111,
		18.297447, 21.165897, 16.527012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.785501, 20.863337, 17.213764>,  <18.919540, 21.461031, 16.653090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.785501, 20.863337, 17.213764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.558464, 20.792128, 16.892231>,  <18.422241, 20.749403, 16.699312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.558464, 20.792128, 16.892231>,  <18.785501, 20.863337, 17.213764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558464, 20.792128, 16.892231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291492, -0.956554, 0.006020,
		-0.769980, -0.230894, 0.594826,
		-0.567594, -0.178022, -0.803832,
		18.388186, 20.738722, 16.651081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568962, 20.180428, 17.268833>,  <18.785501, 20.863337, 17.213764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568962, 20.180428, 17.268833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.486784, 20.228725, 16.880356>,  <18.437477, 20.257704, 16.647270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.486784, 20.228725, 16.880356>,  <18.568962, 20.180428, 17.268833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486784, 20.228725, 16.880356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442426, -0.873710, -0.202214,
		-0.872958, -0.471223, 0.126068,
		-0.205435, 0.120748, -0.971194,
		18.425150, 20.264948, 16.588999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200541, 19.614529, 17.074341>,  <18.568962, 20.180428, 17.268833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200541, 19.614529, 17.074341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.359158, 19.754992, 16.735062>,  <18.454327, 19.839270, 16.531494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.359158, 19.754992, 16.735062>,  <18.200541, 19.614529, 17.074341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.359158, 19.754992, 16.735062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429468, -0.887568, -0.166676,
		-0.811365, -0.298181, -0.502768,
		0.396541, 0.351157, -0.848200,
		18.478121, 19.860338, 16.480602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134193, 19.094336, 16.473507>,  <18.200541, 19.614529, 17.074341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134193, 19.094336, 16.473507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.436384, 19.331850, 16.362745>,  <18.617699, 19.474360, 16.296289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.436384, 19.331850, 16.362745>,  <18.134193, 19.094336, 16.473507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436384, 19.331850, 16.362745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507735, -0.797715, -0.325356,
		-0.414081, 0.105206, -0.904140,
		0.755475, 0.593787, -0.276902,
		18.663027, 19.509987, 16.279675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309353, 18.896782, 15.863372>,  <18.134193, 19.094336, 16.473507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309353, 18.896782, 15.863372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.639421, 19.098238, 15.965693>,  <18.837463, 19.219112, 16.027084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.639421, 19.098238, 15.965693>,  <18.309353, 18.896782, 15.863372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639421, 19.098238, 15.965693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564877, -0.734372, -0.376314,
		-0.001673, 0.455021, -0.890479,
		0.825174, 0.503640, 0.255802,
		18.886974, 19.249331, 16.042433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.659613, 18.739115, 15.333673>,  <18.309353, 18.896782, 15.863372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.659613, 18.739115, 15.333673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932196, 18.880133, 15.590214>,  <19.095745, 18.964743, 15.744138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932196, 18.880133, 15.590214>,  <18.659613, 18.739115, 15.333673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932196, 18.880133, 15.590214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649136, -0.695877, -0.307210,
		0.337996, 0.625673, -0.703059,
		0.681455, 0.352545, 0.641350,
		19.136633, 18.985897, 15.782619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208046, 18.785769, 14.960719>,  <18.659613, 18.739115, 15.333673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208046, 18.785769, 14.960719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.360229, 18.782080, 15.330620>,  <19.451540, 18.779865, 15.552560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.360229, 18.782080, 15.330620>,  <19.208046, 18.785769, 14.960719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.360229, 18.782080, 15.330620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786998, -0.521919, -0.328990,
		0.485681, 0.852945, -0.191309,
		0.380459, -0.009224, 0.924752,
		19.474367, 18.779312, 15.608046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856119, 19.003212, 14.845771>,  <19.208046, 18.785769, 14.960719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856119, 19.003212, 14.845771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.848742, 18.772118, 15.172177>,  <19.844315, 18.633461, 15.368021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.848742, 18.772118, 15.172177>,  <19.856119, 19.003212, 14.845771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848742, 18.772118, 15.172177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733063, -0.562819, -0.381907,
		0.679910, 0.591148, 0.433897,
		-0.018442, -0.577736, 0.816015,
		19.843208, 18.598797, 15.416982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.627285, 18.828032, 14.923216>,  <19.856119, 19.003212, 14.845771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.627285, 18.828032, 14.923216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.418184, 18.593040, 15.170310>,  <20.292723, 18.452045, 15.318566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.418184, 18.593040, 15.170310>,  <20.627285, 18.828032, 14.923216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.418184, 18.593040, 15.170310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641782, -0.748165, -0.168418,
		0.561110, 0.308411, 0.768139,
		-0.522753, -0.587479, 0.617735,
		20.261358, 18.416796, 15.355631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.097651, 18.443398, 15.281853>,  <20.627285, 18.828032, 14.923216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.097651, 18.443398, 15.281853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.764465, 18.233438, 15.351886>,  <20.564554, 18.107464, 15.393906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.764465, 18.233438, 15.351886>,  <21.097651, 18.443398, 15.281853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764465, 18.233438, 15.351886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527547, -0.848809, -0.034890,
		0.166925, 0.063302, 0.983935,
		-0.832965, -0.524896, 0.175083,
		20.514576, 18.075970, 15.404410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.307770, 17.988562, 15.818859>,  <21.097651, 18.443398, 15.281853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.307770, 17.988562, 15.818859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.976204, 17.818676, 15.673248>,  <20.777264, 17.716745, 15.585882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.976204, 17.818676, 15.673248>,  <21.307770, 17.988562, 15.818859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976204, 17.818676, 15.673248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304630, -0.888557, 0.343026,
		-0.469147, 0.173446, 0.865920,
		-0.828916, -0.424714, -0.364027,
		20.727530, 17.691261, 15.564040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.080685, 17.617512, 16.295643>,  <21.307770, 17.988562, 15.818859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.080685, 17.617512, 16.295643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.928455, 17.478989, 15.952661>,  <20.837118, 17.395874, 15.746871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.928455, 17.478989, 15.952661>,  <21.080685, 17.617512, 16.295643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.928455, 17.478989, 15.952661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474176, -0.869136, 0.140569,
		-0.793928, -0.353088, 0.494983,
		-0.380574, -0.346310, -0.857457,
		20.814283, 17.375095, 15.695423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906029, 16.944853, 16.448229>,  <21.080685, 17.617512, 16.295643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906029, 16.944853, 16.448229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.932659, 16.955826, 16.049267>,  <20.948637, 16.962410, 15.809890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.932659, 16.955826, 16.049267>,  <20.906029, 16.944853, 16.448229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.932659, 16.955826, 16.049267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297926, -0.954568, -0.006367,
		-0.952264, -0.296729, -0.071722,
		0.066575, 0.027431, -0.997404,
		20.952631, 16.964056, 15.750046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647142, 16.375010, 16.278551>,  <20.906029, 16.944853, 16.448229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647142, 16.375010, 16.278551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.864767, 16.497963, 15.966266>,  <20.995342, 16.571735, 15.778894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.864767, 16.497963, 15.966266>,  <20.647142, 16.375010, 16.278551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.864767, 16.497963, 15.966266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353346, -0.927882, -0.119086,
		-0.761014, -0.211071, -0.613439,
		0.544063, 0.307382, -0.780712,
		21.027987, 16.590178, 15.732052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552731, 15.930782, 15.771787>,  <20.647142, 16.375010, 16.278551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552731, 15.930782, 15.771787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.905672, 16.082119, 15.659848>,  <21.117437, 16.172920, 15.592685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.905672, 16.082119, 15.659848>,  <20.552731, 15.930782, 15.771787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.905672, 16.082119, 15.659848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392226, -0.919843, -0.006908,
		-0.260028, -0.103668, -0.960020,
		0.882351, 0.378341, -0.279846,
		21.170378, 16.195621, 15.575894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.746380, 15.424400, 15.258341>,  <20.552731, 15.930782, 15.771787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.746380, 15.424400, 15.258341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.084545, 15.628407, 15.321795>,  <21.287443, 15.750810, 15.359868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.084545, 15.628407, 15.321795>,  <20.746380, 15.424400, 15.258341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.084545, 15.628407, 15.321795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529518, -0.839200, -0.123907,
		0.069933, 0.188754, -0.979531,
		0.845411, 0.510015, 0.158637,
		21.338169, 15.781411, 15.369387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258966, 15.157342, 14.677938>,  <20.746380, 15.424400, 15.258341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258966, 15.157342, 14.677938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.476879, 15.303010, 14.980088>,  <21.607626, 15.390410, 15.161379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.476879, 15.303010, 14.980088>,  <21.258966, 15.157342, 14.677938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476879, 15.303010, 14.980088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512621, -0.857502, 0.043701,
		0.663652, 0.363414, -0.653832,
		0.544781, 0.364170, 0.755377,
		21.640314, 15.412261, 15.206701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.019487, 15.261325, 14.506562>,  <21.258966, 15.157342, 14.677938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.019487, 15.261325, 14.506562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.918169, 15.156116, 14.878941>,  <21.857378, 15.092991, 15.102367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.918169, 15.156116, 14.878941>,  <22.019487, 15.261325, 14.506562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.918169, 15.156116, 14.878941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475703, -0.871806, -0.116882,
		0.842347, 0.413248, 0.345944,
		-0.253294, -0.263022, 0.930947,
		21.842180, 15.077210, 15.158224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.664824, 15.175097, 14.978180>,  <22.019487, 15.261325, 14.506562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.664824, 15.175097, 14.978180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.346567, 14.953981, 15.077280>,  <22.155613, 14.821313, 15.136740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.346567, 14.953981, 15.077280>,  <22.664824, 15.175097, 14.978180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.346567, 14.953981, 15.077280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530315, -0.833292, -0.156176,
		0.292779, 0.007125, 0.956154,
		-0.795642, -0.552787, 0.247749,
		22.107874, 14.788145, 15.151605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.451035, 15.257416, 15.009277>,  <22.664824, 15.175097, 14.978180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.451035, 15.257416, 15.009277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206799, 15.460893, 14.766491>,  <23.060257, 15.582979, 14.620819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206799, 15.460893, 14.766491>,  <23.451035, 15.257416, 15.009277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206799, 15.460893, 14.766491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576123, -0.811188, -0.100285,
		-0.543378, 0.288454, 0.788374,
		-0.610592, 0.508693, -0.606967,
		23.023621, 15.613501, 14.584401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.491116, 15.935631, 15.245175>,  <23.451035, 15.257416, 15.009277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.491116, 15.935631, 15.245175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.806028, 16.156532, 15.135483>,  <23.994976, 16.289074, 15.069667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.806028, 16.156532, 15.135483>,  <23.491116, 15.935631, 15.245175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.806028, 16.156532, 15.135483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588808, 0.805362, -0.068530,
		0.183009, 0.215422, 0.959219,
		0.787282, 0.552254, -0.274231,
		24.042213, 16.322208, 15.053213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.553598, 16.491987, 15.645312>,  <23.491116, 15.935631, 15.245175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.553598, 16.491987, 15.645312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.733835, 16.597778, 15.304251>,  <23.841976, 16.661253, 15.099613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.733835, 16.597778, 15.304251>,  <23.553598, 16.491987, 15.645312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.733835, 16.597778, 15.304251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522594, 0.852501, -0.011739,
		0.723784, 0.450882, 0.522344,
		0.450591, 0.264477, -0.852654,
		23.869013, 16.677122, 15.048454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.693533, 17.147579, 15.674659>,  <23.553598, 16.491987, 15.645312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.693533, 17.147579, 15.674659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.723106, 17.094849, 15.279254>,  <23.740850, 17.063210, 15.042011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.723106, 17.094849, 15.279254>,  <23.693533, 17.147579, 15.674659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.723106, 17.094849, 15.279254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386330, 0.910040, -0.150255,
		0.919393, 0.393000, 0.016352,
		0.073932, -0.131826, -0.988512,
		23.745285, 17.055302, 14.982700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174406, 17.760290, 15.461325>,  <23.693533, 17.147579, 15.674659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174406, 17.760290, 15.461325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.940895, 17.628639, 15.164440>,  <23.800789, 17.549648, 14.986309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.940895, 17.628639, 15.164440>,  <24.174406, 17.760290, 15.461325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.940895, 17.628639, 15.164440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467499, 0.883664, -0.024146,
		0.663813, 0.332888, -0.669730,
		-0.583778, -0.329127, -0.742212,
		23.765762, 17.529902, 14.941776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.154116, 18.311695, 14.941519>,  <24.174406, 17.760290, 15.461325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.154116, 18.311695, 14.941519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.850677, 18.082594, 14.817268>,  <23.668615, 17.945133, 14.742718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.850677, 18.082594, 14.817268>,  <24.154116, 18.311695, 14.941519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.850677, 18.082594, 14.817268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549603, 0.818549, -0.167076,
		0.349956, 0.043979, -0.935733,
		-0.758596, -0.572751, -0.310627,
		23.623098, 17.910769, 14.724080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.927034, 18.562704, 14.295981>,  <24.154116, 18.311695, 14.941519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.927034, 18.562704, 14.295981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.610521, 18.366526, 14.442039>,  <23.420612, 18.248819, 14.529675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.610521, 18.366526, 14.442039>,  <23.927034, 18.562704, 14.295981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.610521, 18.366526, 14.442039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570677, 0.806787, -0.153042,
		-0.219535, -0.329480, -0.918285,
		-0.791285, -0.490446, 0.365145,
		23.373137, 18.219391, 14.551583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329809, 18.669216, 13.855033>,  <23.927034, 18.562704, 14.295981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329809, 18.669216, 13.855033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.141783, 18.576624, 14.195727>,  <23.028967, 18.521069, 14.400145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.141783, 18.576624, 14.195727>,  <23.329809, 18.669216, 13.855033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.141783, 18.576624, 14.195727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589793, 0.800300, -0.108002,
		-0.656644, -0.553117, -0.512719,
		-0.470066, -0.231479, 0.851737,
		23.000763, 18.507181, 14.451248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.748608, 18.626421, 13.647468>,  <23.329809, 18.669216, 13.855033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.748608, 18.626421, 13.647468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.704954, 18.669821, 14.042703>,  <22.678762, 18.695860, 14.279844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.704954, 18.669821, 14.042703>,  <22.748608, 18.626421, 13.647468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.704954, 18.669821, 14.042703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610751, 0.776945, -0.152771,
		-0.784265, -0.620149, -0.018526,
		-0.109134, 0.108498, 0.988088,
		22.672215, 18.702370, 14.339129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.959480, 18.677553, 13.782293>,  <22.748608, 18.626421, 13.647468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.959480, 18.677553, 13.782293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.171057, 18.853920, 14.072346>,  <22.298002, 18.959740, 14.246377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.171057, 18.853920, 14.072346>,  <21.959480, 18.677553, 13.782293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.171057, 18.853920, 14.072346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561699, 0.822396, -0.090330,
		-0.636172, -0.359526, 0.682661,
		0.528942, 0.440915, 0.725131,
		22.329739, 18.986195, 14.289885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460375, 18.840559, 14.221249>,  <21.959480, 18.677553, 13.782293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460375, 18.840559, 14.221249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.767254, 19.086094, 14.295669>,  <21.951382, 19.233414, 14.340321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.767254, 19.086094, 14.295669>,  <21.460375, 18.840559, 14.221249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767254, 19.086094, 14.295669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608399, 0.788283, -0.091984,
		-0.203124, -0.042624, 0.978225,
		0.767197, 0.613836, 0.186051,
		21.997414, 19.270245, 14.351484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189192, 19.271053, 14.703658>,  <21.460375, 18.840559, 14.221249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189192, 19.271053, 14.703658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504042, 19.465710, 14.552073>,  <21.692951, 19.582504, 14.461122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504042, 19.465710, 14.552073>,  <21.189192, 19.271053, 14.703658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504042, 19.465710, 14.552073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535311, 0.844197, -0.027802,
		0.306390, 0.224747, 0.924994,
		0.787126, 0.486642, -0.378963,
		21.740179, 19.611702, 14.438383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239607, 19.871901, 15.201281>,  <21.189192, 19.271053, 14.703658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.239607, 19.871901, 15.201281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.445524, 19.966726, 14.871726>,  <21.569075, 20.023621, 14.673993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.445524, 19.966726, 14.871726>,  <21.239607, 19.871901, 15.201281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.445524, 19.966726, 14.871726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436241, 0.899726, -0.013695,
		0.738025, 0.366463, 0.566590,
		0.514795, 0.237062, -0.823886,
		21.599962, 20.037846, 14.624560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588339, 20.480028, 15.419811>,  <21.239607, 19.871901, 15.201281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588339, 20.480028, 15.419811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.556293, 20.475073, 15.021128>,  <21.537067, 20.472099, 14.781918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.556293, 20.475073, 15.021128>,  <21.588339, 20.480028, 15.419811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556293, 20.475073, 15.021128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248569, 0.968582, 0.007940,
		0.965296, 0.248387, -0.080675,
		-0.080112, -0.012389, -0.996709,
		21.532259, 20.471355, 14.722115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.865953, 21.143059, 15.255691>,  <21.588339, 20.480028, 15.419811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.865953, 21.143059, 15.255691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.665913, 21.024544, 14.930210>,  <21.545889, 20.953434, 14.734921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.665913, 21.024544, 14.930210>,  <21.865953, 21.143059, 15.255691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.665913, 21.024544, 14.930210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377875, 0.920132, -0.102801,
		0.779172, 0.256067, -0.572120,
		-0.500102, -0.296289, -0.813702,
		21.515882, 20.935658, 14.686099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968431, 21.704458, 14.784458>,  <21.865953, 21.143059, 15.255691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968431, 21.704458, 14.784458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.659597, 21.481287, 14.662736>,  <21.474297, 21.347385, 14.589703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.659597, 21.481287, 14.662736>,  <21.968431, 21.704458, 14.784458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659597, 21.481287, 14.662736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429055, 0.810848, -0.398043,
		0.468823, -0.176760, -0.865425,
		-0.772086, -0.557927, -0.304304,
		21.427971, 21.313910, 14.571445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839708, 21.943537, 14.154511>,  <21.968431, 21.704458, 14.784458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839708, 21.943537, 14.154511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.502537, 21.764492, 14.273919>,  <21.300234, 21.657064, 14.345564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.502537, 21.764492, 14.273919>,  <21.839708, 21.943537, 14.154511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502537, 21.764492, 14.273919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496352, 0.861070, -0.110425,
		-0.207620, -0.241251, -0.947994,
		-0.842929, -0.447612, 0.298520,
		21.249659, 21.630209, 14.363475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.364264, 22.080593, 13.596678>,  <21.839708, 21.943537, 14.154511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.364264, 22.080593, 13.596678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.139311, 22.009634, 13.919727>,  <21.004339, 21.967058, 14.113557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.139311, 22.009634, 13.919727>,  <21.364264, 22.080593, 13.596678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139311, 22.009634, 13.919727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512009, 0.841653, -0.171659,
		-0.649287, -0.510049, -0.564160,
		-0.562381, -0.177398, 0.807624,
		20.970596, 21.956415, 14.162015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742409, 22.242786, 13.469631>,  <21.364264, 22.080593, 13.596678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742409, 22.242786, 13.469631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.730253, 22.268082, 13.868646>,  <20.722960, 22.283258, 14.108054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.730253, 22.268082, 13.868646>,  <20.742409, 22.242786, 13.469631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.730253, 22.268082, 13.868646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591612, 0.803269, -0.068944,
		-0.805650, -0.592250, 0.013003,
		-0.030387, 0.063237, 0.997536,
		20.721138, 22.287052, 14.167907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.938762, 17.816904, 21.437813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812446, 17.438652, 21.406672>,  <15.736656, 17.211700, 21.387987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812446, 17.438652, 21.406672>,  <15.938762, 17.816904, 21.437813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812446, 17.438652, 21.406672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903571, -0.274674, -0.328807,
		0.289544, -0.174181, 0.941183,
		-0.315790, -0.945629, -0.077855,
		15.717709, 17.154963, 21.383316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554094, 17.419687, 21.434072>,  <15.938762, 17.816904, 21.437813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554094, 17.419687, 21.434072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282881, 17.169283, 21.279991>,  <16.120153, 17.019041, 21.187542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282881, 17.169283, 21.279991>,  <16.554094, 17.419687, 21.434072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282881, 17.169283, 21.279991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681869, -0.340017, -0.647645,
		0.274456, -0.701783, 0.657400,
		-0.678033, -0.626010, -0.385204,
		16.079472, 16.981480, 21.164431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858603, 16.768375, 21.444414>,  <16.554094, 17.419687, 21.434072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858603, 16.768375, 21.444414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581236, 16.794676, 21.157402>,  <16.414816, 16.810455, 20.985195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581236, 16.794676, 21.157402>,  <16.858603, 16.768375, 21.444414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581236, 16.794676, 21.157402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640023, -0.401218, -0.655282,
		-0.330970, -0.913620, 0.236130,
		-0.693418, 0.065751, -0.717529,
		16.373211, 16.814400, 20.942142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107271, 16.295153, 20.913425>,  <16.858603, 16.768375, 21.444414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107271, 16.295153, 20.913425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794868, 16.430365, 20.703373>,  <16.607426, 16.511492, 20.577341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794868, 16.430365, 20.703373>,  <17.107271, 16.295153, 20.913425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794868, 16.430365, 20.703373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361049, -0.441706, -0.821303,
		-0.509579, -0.831042, 0.222930,
		-0.781007, 0.338030, -0.525131,
		16.560566, 16.531773, 20.545834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855326, 15.764579, 20.577246>,  <17.107271, 16.295153, 20.913425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855326, 15.764579, 20.577246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711489, 16.076752, 20.372652>,  <16.625187, 16.264055, 20.249895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711489, 16.076752, 20.372652>,  <16.855326, 15.764579, 20.577246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711489, 16.076752, 20.372652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280910, -0.432181, -0.856918,
		-0.889821, -0.451824, -0.063822,
		-0.359593, 0.780432, -0.511486,
		16.603611, 16.310881, 20.219206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379221, 15.535866, 19.996872>,  <16.855326, 15.764579, 20.577246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379221, 15.535866, 19.996872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505793, 15.901693, 19.896124>,  <16.581736, 16.121189, 19.835676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505793, 15.901693, 19.896124>,  <16.379221, 15.535866, 19.996872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505793, 15.901693, 19.896124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297510, -0.347794, -0.889116,
		-0.900755, 0.206409, -0.382145,
		0.316429, 0.914568, -0.251869,
		16.600721, 16.176064, 19.820562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060179, 15.612445, 19.329554>,  <16.379221, 15.535866, 19.996872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060179, 15.612445, 19.329554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376392, 15.855990, 19.355911>,  <16.566120, 16.002117, 19.371727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376392, 15.855990, 19.355911>,  <16.060179, 15.612445, 19.329554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376392, 15.855990, 19.355911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290769, -0.278457, -0.915377,
		-0.538991, 0.742796, -0.397168,
		0.790533, 0.608864, 0.065896,
		16.613552, 16.038651, 19.375679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.978194, 16.188295, 18.889166>,  <16.060179, 15.612445, 19.329554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.978194, 16.188295, 18.889166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374426, 16.175837, 18.942511>,  <16.612165, 16.168362, 18.974518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374426, 16.175837, 18.942511>,  <15.978194, 16.188295, 18.889166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.374426, 16.175837, 18.942511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119713, -0.276020, -0.953667,
		0.066513, 0.960647, -0.269691,
		0.990578, -0.031146, 0.133361,
		16.671598, 16.166492, 18.982519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230194, 16.356329, 18.167130>,  <15.978194, 16.188295, 18.889166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230194, 16.356329, 18.167130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559605, 16.207630, 18.338530>,  <16.757250, 16.118410, 18.441370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559605, 16.207630, 18.338530>,  <16.230194, 16.356329, 18.167130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559605, 16.207630, 18.338530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227138, -0.476081, -0.849562,
		0.519822, 0.796963, -0.307626,
		0.823525, -0.371748, 0.428498,
		16.806662, 16.096106, 18.467079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.571585, 16.093487, 17.563280>,  <16.230194, 16.356329, 18.167130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.571585, 16.093487, 17.563280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796810, 15.942304, 17.857248>,  <16.931946, 15.851594, 18.033628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796810, 15.942304, 17.857248>,  <16.571585, 16.093487, 17.563280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.796810, 15.942304, 17.857248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410472, -0.643933, -0.645649,
		0.717267, 0.665206, -0.207435,
		0.563064, -0.377956, 0.734920,
		16.965729, 15.828917, 18.077724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372963, 16.163713, 17.429371>,  <16.571585, 16.093487, 17.563280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372963, 16.163713, 17.429371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314177, 15.837615, 17.653435>,  <17.278904, 15.641956, 17.787872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314177, 15.837615, 17.653435>,  <17.372963, 16.163713, 17.429371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314177, 15.837615, 17.653435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361511, -0.571401, -0.736757,
		0.920712, 0.094225, 0.378697,
		-0.146967, -0.815244, 0.560159,
		17.270086, 15.593041, 17.821482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967073, 15.802137, 17.371716>,  <17.372963, 16.163713, 17.429371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967073, 15.802137, 17.371716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680080, 15.543950, 17.476475>,  <17.507885, 15.389038, 17.539330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680080, 15.543950, 17.476475>,  <17.967073, 15.802137, 17.371716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.680080, 15.543950, 17.476475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361426, -0.666367, -0.652171,
		0.595475, -0.373264, 0.711395,
		-0.717482, -0.645469, 0.261898,
		17.464836, 15.350309, 17.555044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623993, 16.163330, 17.539028>,  <17.967073, 15.802137, 17.371716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623993, 16.163330, 17.539028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454567, 16.370306, 17.241613>,  <18.352911, 16.494492, 17.063164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454567, 16.370306, 17.241613>,  <18.623993, 16.163330, 17.539028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454567, 16.370306, 17.241613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904573, -0.197765, 0.377672,
		0.048377, 0.832553, 0.551829,
		-0.423564, 0.517440, -0.743538,
		18.327497, 16.525537, 17.018553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214643, 16.307089, 18.030991>,  <18.623993, 16.163330, 17.539028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214643, 16.307089, 18.030991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435724, 16.284195, 18.363556>,  <19.568373, 16.270458, 18.563095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435724, 16.284195, 18.363556>,  <19.214643, 16.307089, 18.030991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.435724, 16.284195, 18.363556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488923, -0.830180, 0.267874,
		0.674889, -0.554550, -0.486826,
		0.552702, -0.057235, 0.831411,
		19.601536, 16.267025, 18.612980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417850, 15.646998, 18.080833>,  <19.214643, 16.307089, 18.030991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417850, 15.646998, 18.080833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511654, 15.259555, 18.113832>,  <19.567936, 15.027089, 18.133631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511654, 15.259555, 18.113832>,  <19.417850, 15.646998, 18.080833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511654, 15.259555, 18.113832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163541, 0.044343, 0.985539,
		-0.958259, -0.244606, -0.148008,
		0.234506, -0.968608, 0.082496,
		19.582006, 14.968972, 18.138580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817806, 15.276712, 18.453798>,  <19.417850, 15.646998, 18.080833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817806, 15.276712, 18.453798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172184, 15.096977, 18.499752>,  <19.384811, 14.989136, 18.527325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172184, 15.096977, 18.499752>,  <18.817806, 15.276712, 18.453798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172184, 15.096977, 18.499752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164989, -0.073842, 0.983527,
		-0.433454, -0.890304, -0.139556,
		0.885944, -0.449339, 0.114884,
		19.437967, 14.962175, 18.534218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822956, 14.591220, 18.832357>,  <18.817806, 15.276712, 18.453798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.822956, 14.591220, 18.832357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195635, 14.719520, 18.900541>,  <19.419243, 14.796499, 18.941452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195635, 14.719520, 18.900541>,  <18.822956, 14.591220, 18.832357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195635, 14.719520, 18.900541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198356, 0.056141, 0.978521,
		0.304291, -0.945499, 0.115929,
		0.931698, 0.320750, 0.170462,
		19.475145, 14.815744, 18.951679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047028, 14.140466, 19.364985>,  <18.822956, 14.591220, 18.832357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047028, 14.140466, 19.364985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.231897, 14.495084, 19.373329>,  <19.342819, 14.707854, 19.378336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.231897, 14.495084, 19.373329>,  <19.047028, 14.140466, 19.364985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.231897, 14.495084, 19.373329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135657, 0.047436, 0.989620,
		0.876352, -0.460205, 0.142190,
		0.462173, 0.886545, 0.020859,
		19.370550, 14.761047, 19.379587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.416430, 14.135096, 20.046621>,  <19.047028, 14.140466, 19.364985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.416430, 14.135096, 20.046621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.409014, 14.516706, 19.926964>,  <19.404564, 14.745673, 19.855169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.409014, 14.516706, 19.926964>,  <19.416430, 14.135096, 20.046621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.409014, 14.516706, 19.926964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058299, 0.297654, 0.952892,
		0.998127, 0.035105, 0.050101,
		-0.018538, 0.954028, -0.299143,
		19.403452, 14.802915, 19.837221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954075, 14.491886, 20.449963>,  <19.416430, 14.135096, 20.046621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954075, 14.491886, 20.449963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659958, 14.735553, 20.331125>,  <19.483488, 14.881753, 20.259823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659958, 14.735553, 20.331125>,  <19.954075, 14.491886, 20.449963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659958, 14.735553, 20.331125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180075, 0.247001, 0.952136,
		0.653391, 0.753597, -0.071922,
		-0.735292, 0.609166, -0.297092,
		19.439371, 14.918303, 20.241999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018589, 15.001474, 20.812998>,  <19.954075, 14.491886, 20.449963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018589, 15.001474, 20.812998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642771, 15.075470, 20.697739>,  <19.417280, 15.119867, 20.628582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642771, 15.075470, 20.697739>,  <20.018589, 15.001474, 20.812998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.642771, 15.075470, 20.697739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215810, 0.333438, 0.917739,
		0.265852, 0.924445, -0.273358,
		-0.939547, 0.184990, -0.288150,
		19.360907, 15.130967, 20.611294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922209, 15.687428, 21.019352>,  <20.018589, 15.001474, 20.812998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922209, 15.687428, 21.019352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580175, 15.486204, 20.969130>,  <19.374956, 15.365470, 20.938995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580175, 15.486204, 20.969130>,  <19.922209, 15.687428, 21.019352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.580175, 15.486204, 20.969130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206503, 0.108301, 0.972434,
		-0.475595, 0.857439, -0.196490,
		-0.855082, -0.503061, -0.125557,
		19.323650, 15.335286, 20.931463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.540197, 15.996585, 21.402382>,  <19.922209, 15.687428, 21.019352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.540197, 15.996585, 21.402382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276247, 15.702147, 21.342075>,  <19.117878, 15.525485, 21.305891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276247, 15.702147, 21.342075>,  <19.540197, 15.996585, 21.402382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276247, 15.702147, 21.342075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296403, 0.070632, 0.952447,
		-0.690442, 0.673183, -0.264789,
		-0.659874, -0.736094, -0.150766,
		19.078285, 15.481319, 21.296844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931057, 16.254396, 21.492596>,  <19.540197, 15.996585, 21.402382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931057, 16.254396, 21.492596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893059, 15.860327, 21.549740>,  <18.870260, 15.623885, 21.584026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893059, 15.860327, 21.549740>,  <18.931057, 16.254396, 21.492596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893059, 15.860327, 21.549740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482671, 0.171094, 0.858927,
		-0.870635, 0.012641, -0.491768,
		-0.094996, -0.985174, 0.142859,
		18.864559, 15.564775, 21.592598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185385, 16.100779, 21.750175>,  <18.931057, 16.254396, 21.492596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185385, 16.100779, 21.750175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419077, 15.795905, 21.861708>,  <18.559292, 15.612981, 21.928627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419077, 15.795905, 21.861708>,  <18.185385, 16.100779, 21.750175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.419077, 15.795905, 21.861708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429063, 0.001556, 0.903273,
		-0.688896, -0.647356, -0.326117,
		0.584232, -0.762186, 0.278829,
		18.594347, 15.567249, 21.945356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684536, 15.585903, 21.988153>,  <18.185385, 16.100779, 21.750175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684536, 15.585903, 21.988153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038069, 15.481194, 22.143236>,  <18.250189, 15.418369, 22.236286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038069, 15.481194, 22.143236>,  <17.684536, 15.585903, 21.988153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038069, 15.481194, 22.143236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418428, -0.071755, 0.905411,
		-0.209192, -0.962458, -0.172952,
		0.883831, -0.261773, 0.387709,
		18.303219, 15.402663, 22.259548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.611380, 14.978438, 22.260466>,  <17.684536, 15.585903, 21.988153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.611380, 14.978438, 22.260466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928040, 15.116426, 22.462172>,  <18.118036, 15.199219, 22.583195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928040, 15.116426, 22.462172>,  <17.611380, 14.978438, 22.260466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.928040, 15.116426, 22.462172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466827, -0.190932, 0.863492,
		0.394159, -0.918989, 0.009890,
		0.791651, 0.344970, 0.504267,
		18.165535, 15.219917, 22.613451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519278, 14.705895, 22.911835>,  <17.611380, 14.978438, 22.260466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.519278, 14.705895, 22.911835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.808105, 14.973870, 22.980883>,  <17.981401, 15.134655, 23.022312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.808105, 14.973870, 22.980883>,  <17.519278, 14.705895, 22.911835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.808105, 14.973870, 22.980883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260670, 0.032335, 0.964886,
		0.640832, -0.741712, 0.197981,
		0.722070, 0.669938, 0.172620,
		18.024727, 15.174851, 23.032669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414783, 14.071822, 23.173531>,  <17.519278, 14.705895, 22.911835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414783, 14.071822, 23.173531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088104, 13.853315, 23.247929>,  <16.892097, 13.722211, 23.292568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088104, 13.853315, 23.247929>,  <17.414783, 14.071822, 23.173531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088104, 13.853315, 23.247929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093194, -0.193230, -0.976718,
		0.569490, -0.815017, 0.106902,
		-0.816699, -0.546268, 0.185997,
		16.843094, 13.689435, 23.303728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499935, 13.482841, 22.893482>,  <17.414783, 14.071822, 23.173531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499935, 13.482841, 22.893482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101820, 13.470968, 22.930410>,  <16.862951, 13.463844, 22.952568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101820, 13.470968, 22.930410>,  <17.499935, 13.482841, 22.893482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101820, 13.470968, 22.930410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069991, -0.439085, -0.895715,
		0.067123, -0.897955, 0.434938,
		-0.995287, -0.029681, 0.092322,
		16.803234, 13.462064, 22.958107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324347, 12.715284, 22.649488>,  <17.499935, 13.482841, 22.893482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324347, 12.715284, 22.649488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025099, 12.980501, 22.638945>,  <16.845551, 13.139631, 22.632618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025099, 12.980501, 22.638945>,  <17.324347, 12.715284, 22.649488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025099, 12.980501, 22.638945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262665, -0.332382, -0.905831,
		-0.609367, -0.670744, 0.422819,
		-0.748117, 0.663043, -0.026361,
		16.800663, 13.179414, 22.631037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902880, 12.382924, 22.163160>,  <17.324347, 12.715284, 22.649488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902880, 12.382924, 22.163160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758528, 12.755661, 22.178318>,  <16.671917, 12.979303, 22.187412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758528, 12.755661, 22.178318>,  <16.902880, 12.382924, 22.163160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758528, 12.755661, 22.178318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117482, -0.005117, -0.993062,
		-0.925182, -0.362829, 0.111321,
		-0.360881, 0.931841, 0.037892,
		16.650263, 13.035213, 22.189686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294470, 12.354138, 21.732019>,  <16.902880, 12.382924, 22.163160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294470, 12.354138, 21.732019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393490, 12.740806, 21.758169>,  <16.452902, 12.972806, 21.773859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393490, 12.740806, 21.758169>,  <16.294470, 12.354138, 21.732019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393490, 12.740806, 21.758169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002861, 0.066746, -0.997766,
		-0.968871, 0.247182, 0.013757,
		0.247548, 0.966668, 0.065375,
		16.467754, 13.030806, 21.777782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907688, 12.653027, 21.169250>,  <16.294470, 12.354138, 21.732019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907688, 12.653027, 21.169250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188473, 12.930872, 21.232197>,  <16.356943, 13.097579, 21.269964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188473, 12.930872, 21.232197>,  <15.907688, 12.653027, 21.169250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188473, 12.930872, 21.232197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001645, 0.219372, -0.975640,
		-0.712214, 0.685120, 0.152848,
		0.701961, 0.694613, 0.157366,
		16.399061, 13.139256, 21.279408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.725717, 13.200394, 20.763327>,  <15.907688, 12.653027, 21.169250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.725717, 13.200394, 20.763327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104933, 13.289561, 20.854124>,  <16.332462, 13.343061, 20.908604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104933, 13.289561, 20.854124>,  <15.725717, 13.200394, 20.763327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104933, 13.289561, 20.854124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138146, 0.354276, -0.924881,
		-0.286592, 0.908183, 0.305073,
		0.948040, 0.222919, 0.226994,
		16.389345, 13.356437, 20.922222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803730, 13.771781, 20.395977>,  <15.725717, 13.200394, 20.763327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.803730, 13.771781, 20.395977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167620, 13.621318, 20.466297>,  <16.385954, 13.531040, 20.508490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167620, 13.621318, 20.466297>,  <15.803730, 13.771781, 20.395977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167620, 13.621318, 20.466297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259719, 0.185178, -0.947763,
		0.323954, 0.907863, 0.266156,
		0.909725, -0.376158, 0.175800,
		16.440536, 13.508471, 20.519037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155659, 14.285926, 20.039482>,  <15.803730, 13.771781, 20.395977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155659, 14.285926, 20.039482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384237, 13.961029, 20.086321>,  <16.521385, 13.766091, 20.114424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384237, 13.961029, 20.086321>,  <16.155659, 14.285926, 20.039482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.384237, 13.961029, 20.086321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331067, 0.097615, -0.938545,
		0.750894, 0.575096, 0.324688,
		0.571448, -0.812241, 0.117097,
		16.555672, 13.717357, 20.121450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914497, 14.466177, 19.845528>,  <16.155659, 14.285926, 20.039482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.914497, 14.466177, 19.845528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841063, 14.073499, 19.825264>,  <16.797001, 13.837892, 19.813107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841063, 14.073499, 19.825264>,  <16.914497, 14.466177, 19.845528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841063, 14.073499, 19.825264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293528, -0.005564, -0.955934,
		0.938156, -0.190369, 0.289177,
		-0.183589, -0.981697, -0.050658,
		16.785986, 13.778990, 19.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473373, 14.142841, 19.401859>,  <16.914497, 14.466177, 19.845528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473373, 14.142841, 19.401859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166418, 13.886372, 19.400408>,  <16.982244, 13.732490, 19.399536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166418, 13.886372, 19.400408>,  <17.473373, 14.142841, 19.401859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166418, 13.886372, 19.400408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047450, -0.051144, -0.997563,
		0.639427, -0.765689, 0.069671,
		-0.767386, -0.641175, -0.003629,
		16.936203, 13.694019, 19.399319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580959, 13.644363, 18.858915>,  <17.473373, 14.142841, 19.401859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580959, 13.644363, 18.858915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184469, 13.629720, 18.909727>,  <16.946575, 13.620934, 18.940214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184469, 13.629720, 18.909727>,  <17.580959, 13.644363, 18.858915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184469, 13.629720, 18.909727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119804, -0.157474, -0.980229,
		0.055889, -0.986845, 0.151706,
		-0.991223, -0.036609, 0.127029,
		16.887102, 13.618737, 18.947836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.891428, 15.269819, 27.499573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.191258, 15.325491, 27.758421>,  <14.371157, 15.358894, 27.913729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.191258, 15.325491, 27.758421>,  <13.891428, 15.269819, 27.499573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191258, 15.325491, 27.758421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620512, -0.488099, -0.613779,
		0.230433, 0.861620, -0.452230,
		0.749577, 0.139179, 0.647120,
		14.416131, 15.367245, 27.952557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.387362, 15.632749, 27.124699>,  <13.891428, 15.269819, 27.499573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.387362, 15.632749, 27.124699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.550398, 15.441616, 27.435966>,  <14.648219, 15.326937, 27.622726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.550398, 15.441616, 27.435966>,  <14.387362, 15.632749, 27.124699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550398, 15.441616, 27.435966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583774, -0.518945, -0.624424,
		0.702197, 0.708783, 0.067430,
		0.407588, -0.477832, 0.778170,
		14.672674, 15.298266, 27.669418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057841, 15.577280, 26.918777>,  <14.387362, 15.632749, 27.124699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057841, 15.577280, 26.918777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.029912, 15.303450, 27.209013>,  <15.013154, 15.139152, 27.383154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.029912, 15.303450, 27.209013>,  <15.057841, 15.577280, 26.918777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.029912, 15.303450, 27.209013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497281, -0.654432, -0.569588,
		0.864775, 0.321052, 0.386121,
		-0.069823, -0.684576, 0.725590,
		15.008965, 15.098077, 27.426689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743984, 15.339140, 27.009972>,  <15.057841, 15.577280, 26.918777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743984, 15.339140, 27.009972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.473401, 15.066846, 27.122402>,  <15.311051, 14.903469, 27.189861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.473401, 15.066846, 27.122402>,  <15.743984, 15.339140, 27.009972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473401, 15.066846, 27.122402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490426, -0.701084, -0.517652,
		0.549441, -0.212323, 0.808105,
		-0.676459, -0.680735, 0.281076,
		15.270464, 14.862625, 27.206724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147827, 14.720044, 27.218224>,  <15.743984, 15.339140, 27.009972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.147827, 14.720044, 27.218224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.769966, 14.609981, 27.146759>,  <15.543249, 14.543942, 27.103880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.769966, 14.609981, 27.146759>,  <16.147827, 14.720044, 27.218224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769966, 14.609981, 27.146759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325661, -0.720549, -0.612172,
		0.039711, -0.636472, 0.770277,
		-0.944652, -0.275159, -0.178660,
		15.486570, 14.527432, 27.093161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163847, 13.972922, 27.208153>,  <16.147827, 14.720044, 27.218224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163847, 13.972922, 27.208153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.833740, 14.082088, 27.010386>,  <15.635675, 14.147589, 26.891726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.833740, 14.082088, 27.010386>,  <16.163847, 13.972922, 27.208153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833740, 14.082088, 27.010386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385763, -0.366974, -0.846473,
		-0.412457, -0.889295, 0.197570,
		-0.825267, 0.272919, -0.494419,
		15.586160, 14.163963, 26.862061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895924, 13.362775, 26.873207>,  <16.163847, 13.972922, 27.208153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895924, 13.362775, 26.873207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.744171, 13.669232, 26.665710>,  <15.653119, 13.853106, 26.541212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.744171, 13.669232, 26.665710>,  <15.895924, 13.362775, 26.873207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744171, 13.669232, 26.665710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259730, -0.449927, -0.854462,
		-0.888037, -0.458900, -0.028296,
		-0.379382, 0.766144, -0.518742,
		15.630357, 13.899076, 26.510088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831791, 13.044209, 26.301195>,  <15.895924, 13.362775, 26.873207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831791, 13.044209, 26.301195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.800123, 13.423357, 26.177729>,  <15.781123, 13.650846, 26.103649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.800123, 13.423357, 26.177729>,  <15.831791, 13.044209, 26.301195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800123, 13.423357, 26.177729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148367, -0.294988, -0.943912,
		-0.985759, -0.120524, -0.117279,
		-0.079168, 0.947869, -0.308668,
		15.776373, 13.707718, 26.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530645, 13.067444, 25.571709>,  <15.831791, 13.044209, 26.301195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530645, 13.067444, 25.571709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.673107, 13.441114, 25.563068>,  <15.758584, 13.665317, 25.557884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.673107, 13.441114, 25.563068>,  <15.530645, 13.067444, 25.571709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.673107, 13.441114, 25.563068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265011, -0.123150, -0.956349,
		-0.896060, 0.334883, -0.291428,
		0.356154, 0.934177, -0.021602,
		15.779953, 13.721368, 25.556587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274796, 13.396746, 24.970612>,  <15.530645, 13.067444, 25.571709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274796, 13.396746, 24.970612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.600058, 13.599949, 25.084249>,  <15.795215, 13.721871, 25.152431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.600058, 13.599949, 25.084249>,  <15.274796, 13.396746, 24.970612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600058, 13.599949, 25.084249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352890, -0.042137, -0.934716,
		-0.462873, 0.860321, -0.213535,
		0.813153, 0.508009, 0.284095,
		15.844004, 13.752352, 25.169477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262350, 13.879871, 24.433592>,  <15.274796, 13.396746, 24.970612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262350, 13.879871, 24.433592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.633042, 13.875120, 24.583807>,  <15.855458, 13.872270, 24.673935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.633042, 13.875120, 24.583807>,  <15.262350, 13.879871, 24.433592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633042, 13.875120, 24.583807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375298, -0.018380, -0.926722,
		0.017910, 0.999760, -0.012576,
		0.926731, -0.011878, 0.375537,
		15.911061, 13.871556, 24.696468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671539, 14.388969, 24.053806>,  <15.262350, 13.879871, 24.433592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.671539, 14.388969, 24.053806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.938464, 14.147456, 24.228226>,  <16.098619, 14.002548, 24.332878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.938464, 14.147456, 24.228226>,  <15.671539, 14.388969, 24.053806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938464, 14.147456, 24.228226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482640, -0.095332, -0.870615,
		0.567233, 0.791427, 0.227794,
		0.667312, -0.603784, 0.436050,
		16.138659, 13.966321, 24.359041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399307, 14.603127, 23.932425>,  <15.671539, 14.388969, 24.053806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399307, 14.603127, 23.932425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.417955, 14.209185, 23.999220>,  <16.429144, 13.972819, 24.039297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.417955, 14.209185, 23.999220>,  <16.399307, 14.603127, 23.932425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417955, 14.209185, 23.999220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418605, -0.132522, -0.898447,
		0.906971, 0.111788, 0.406088,
		0.046620, -0.984856, 0.166989,
		16.431942, 13.913728, 24.049316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056316, 14.520840, 23.621397>,  <16.399307, 14.603127, 23.932425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056316, 14.520840, 23.621397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.917564, 14.149096, 23.671940>,  <16.834312, 13.926050, 23.702265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.917564, 14.149096, 23.671940>,  <17.056316, 14.520840, 23.621397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917564, 14.149096, 23.671940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439124, -0.279971, -0.853690,
		0.828760, -0.240642, 0.505220,
		-0.346881, -0.929359, 0.126358,
		16.813499, 13.870289, 23.709846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752050, 14.608635, 23.598364>,  <17.056316, 14.520840, 23.621397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752050, 14.608635, 23.598364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.892862, 14.975480, 23.523550>,  <17.977350, 15.195587, 23.478662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.892862, 14.975480, 23.523550>,  <17.752050, 14.608635, 23.598364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892862, 14.975480, 23.523550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186458, 0.264532, 0.946180,
		0.917229, -0.298209, 0.264126,
		0.352029, 0.917112, -0.187033,
		17.998470, 15.250613, 23.467440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178513, 14.781968, 24.075356>,  <17.752050, 14.608635, 23.598364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178513, 14.781968, 24.075356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.114557, 15.142150, 23.913557>,  <18.076183, 15.358259, 23.816479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.114557, 15.142150, 23.913557>,  <18.178513, 14.781968, 24.075356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114557, 15.142150, 23.913557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222359, 0.366382, 0.903505,
		0.961765, 0.234403, 0.141644,
		-0.159888, 0.900455, -0.404495,
		18.066591, 15.412287, 23.792208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580189, 15.335690, 24.448883>,  <18.178513, 14.781968, 24.075356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580189, 15.335690, 24.448883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.285927, 15.546333, 24.278475>,  <18.109369, 15.672720, 24.176229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.285927, 15.546333, 24.278475>,  <18.580189, 15.335690, 24.448883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285927, 15.546333, 24.278475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208611, 0.422233, 0.882157,
		0.644433, 0.737835, -0.200761,
		-0.735654, 0.526610, -0.426022,
		18.065231, 15.704316, 24.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655947, 16.010914, 24.667576>,  <18.580189, 15.335690, 24.448883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655947, 16.010914, 24.667576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281670, 16.006456, 24.526522>,  <18.057102, 16.003782, 24.441889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281670, 16.006456, 24.526522>,  <18.655947, 16.010914, 24.667576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281670, 16.006456, 24.526522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300805, 0.547506, 0.780867,
		0.184370, 0.836727, -0.515650,
		-0.935694, -0.011141, -0.352636,
		18.000961, 16.003115, 24.420731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454729, 16.656820, 24.565748>,  <18.655947, 16.010914, 24.667576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454729, 16.656820, 24.565748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.115295, 16.453009, 24.622723>,  <17.911636, 16.330723, 24.656908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.115295, 16.453009, 24.622723>,  <18.454729, 16.656820, 24.565748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.115295, 16.453009, 24.622723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311803, 0.699148, 0.643405,
		-0.427418, 0.501570, -0.752158,
		-0.848583, -0.509528, 0.142437,
		17.860720, 16.300150, 24.665453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933153, 17.243637, 24.783604>,  <18.454729, 16.656820, 24.565748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933153, 17.243637, 24.783604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.753452, 16.898094, 24.874752>,  <17.645632, 16.690769, 24.929441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.753452, 16.898094, 24.874752>,  <17.933153, 17.243637, 24.783604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.753452, 16.898094, 24.874752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370305, 0.412166, 0.832462,
		-0.813048, 0.289604, -0.505057,
		-0.449251, -0.863857, 0.227869,
		17.618677, 16.638937, 24.943113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215115, 17.342457, 24.991976>,  <17.933153, 17.243637, 24.783604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215115, 17.342457, 24.991976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.264751, 16.988453, 25.171467>,  <17.294535, 16.776051, 25.279161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.264751, 16.988453, 25.171467>,  <17.215115, 17.342457, 24.991976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264751, 16.988453, 25.171467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461656, 0.348804, 0.815604,
		-0.878336, -0.308368, -0.365287,
		0.124093, -0.885011, 0.448727,
		17.301979, 16.722950, 25.306086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559771, 16.994366, 25.065952>,  <17.215115, 17.342457, 24.991976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559771, 16.994366, 25.065952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.809605, 16.873386, 25.353958>,  <16.959505, 16.800798, 25.526762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.809605, 16.873386, 25.353958>,  <16.559771, 16.994366, 25.065952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809605, 16.873386, 25.353958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581322, 0.435599, 0.687254,
		-0.521496, -0.847808, 0.096248,
		0.624585, -0.302449, 0.720013,
		16.996981, 16.782652, 25.569962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094463, 16.869814, 25.593851>,  <16.559771, 16.994366, 25.065952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094463, 16.869814, 25.593851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.462513, 16.874388, 25.750437>,  <16.683342, 16.877132, 25.844389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.462513, 16.874388, 25.750437>,  <16.094463, 16.869814, 25.593851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462513, 16.874388, 25.750437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360102, 0.417646, 0.834206,
		-0.153957, -0.908538, 0.388402,
		0.920122, 0.011432, 0.391466,
		16.738550, 16.877817, 25.867876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976112, 16.617773, 26.194263>,  <16.094463, 16.869814, 25.593851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976112, 16.617773, 26.194263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.326706, 16.805666, 26.236454>,  <16.537062, 16.918402, 26.261768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.326706, 16.805666, 26.236454>,  <15.976112, 16.617773, 26.194263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.326706, 16.805666, 26.236454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311719, 0.386764, 0.867897,
		0.366876, -0.793582, 0.485416,
		0.876489, 0.469724, 0.105481,
		16.589651, 16.946587, 26.268097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180706, 16.522556, 26.962811>,  <15.976112, 16.617773, 26.194263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180706, 16.522556, 26.962811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.381279, 16.831059, 26.805977>,  <16.501623, 17.016159, 26.711876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.381279, 16.831059, 26.805977>,  <16.180706, 16.522556, 26.962811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381279, 16.831059, 26.805977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268598, 0.569550, 0.776832,
		0.822449, -0.284214, 0.492748,
		0.501431, 0.771256, -0.392086,
		16.531708, 17.062435, 26.688351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625744, 16.797192, 27.512571>,  <16.180706, 16.522556, 26.962811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625744, 16.797192, 27.512571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.559132, 17.107386, 27.268969>,  <16.519165, 17.293503, 27.122807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.559132, 17.107386, 27.268969>,  <16.625744, 16.797192, 27.512571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559132, 17.107386, 27.268969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171488, 0.585441, 0.792371,
		0.971010, 0.236390, 0.035493,
		-0.166529, 0.775486, -0.609007,
		16.509172, 17.340031, 27.086267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963009, 17.358809, 27.848915>,  <16.625744, 16.797192, 27.512571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963009, 17.358809, 27.848915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.711020, 17.532307, 27.591232>,  <16.559826, 17.636406, 27.436623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.711020, 17.532307, 27.591232>,  <16.963009, 17.358809, 27.848915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711020, 17.532307, 27.591232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397890, 0.532102, 0.747362,
		0.666947, 0.727141, -0.162628,
		-0.629972, 0.433743, -0.644206,
		16.522028, 17.662430, 27.397970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065434, 18.064346, 27.889820>,  <16.963009, 17.358809, 27.848915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065434, 18.064346, 27.889820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.258654, 18.266584, 28.175768>,  <17.374586, 18.387928, 28.347336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.258654, 18.266584, 28.175768>,  <17.065434, 18.064346, 27.889820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258654, 18.266584, 28.175768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859112, 0.116015, 0.498464,
		0.169087, -0.854934, 0.490406,
		0.483048, 0.505598, 0.714867,
		17.403568, 18.418262, 28.390228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.838443, 15.694419, 26.583599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.200345, 15.533353, 26.639135>,  <9.417486, 15.436713, 26.672457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.200345, 15.533353, 26.639135>,  <8.838443, 15.694419, 26.583599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.200345, 15.533353, 26.639135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072618, -0.175372, -0.981820,
		0.419693, 0.898391, -0.129428,
		0.904756, -0.402665, 0.138842,
		9.471772, 15.412554, 26.680788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.244495, 16.037750, 26.082897>,  <8.838443, 15.694419, 26.583599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.244495, 16.037750, 26.082897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.464449, 15.715198, 26.169960>,  <9.596421, 15.521666, 26.222198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.464449, 15.715198, 26.169960>,  <9.244495, 16.037750, 26.082897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.464449, 15.715198, 26.169960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009421, -0.254588, -0.967004,
		0.835188, 0.533790, -0.132397,
		0.549883, -0.806383, 0.217658,
		9.629414, 15.473283, 26.235258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.752752, 16.174147, 25.571077>,  <9.244495, 16.037750, 26.082897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.752752, 16.174147, 25.571077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.732736, 15.793736, 25.693094>,  <9.720725, 15.565491, 25.766304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.732736, 15.793736, 25.693094>,  <9.752752, 16.174147, 25.571077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.732736, 15.793736, 25.693094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159784, -0.309114, -0.937506,
		0.985883, 0.001826, 0.167427,
		-0.050042, -0.951023, 0.305042,
		9.717723, 15.508430, 25.784607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.392550, 15.830672, 25.286749>,  <9.752752, 16.174147, 25.571077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.392550, 15.830672, 25.286749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.126037, 15.548496, 25.383430>,  <9.966128, 15.379190, 25.441439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.126037, 15.548496, 25.383430>,  <10.392550, 15.830672, 25.286749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.126037, 15.548496, 25.383430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139794, -0.436544, -0.888756,
		0.732479, -0.558374, 0.389478,
		-0.666283, -0.705441, 0.241702,
		9.926151, 15.336864, 25.455940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.732817, 15.154030, 25.269468>,  <10.392550, 15.830672, 25.286749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.732817, 15.154030, 25.269468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.337294, 15.106366, 25.233553>,  <10.099980, 15.077767, 25.212004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.337294, 15.106366, 25.233553>,  <10.732817, 15.154030, 25.269468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337294, 15.106366, 25.233553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142789, -0.581270, -0.801085,
		0.043267, -0.804939, 0.591778,
		-0.988807, -0.119161, -0.089787,
		10.040651, 15.070618, 25.206617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.609504, 14.425476, 25.239147>,  <10.732817, 15.154030, 25.269468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.609504, 14.425476, 25.239147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.337415, 14.626889, 25.026073>,  <10.174161, 14.747737, 24.898230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.337415, 14.626889, 25.026073>,  <10.609504, 14.425476, 25.239147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337415, 14.626889, 25.026073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229911, -0.543477, -0.807325,
		-0.696016, -0.671631, 0.253918,
		-0.680223, 0.503532, -0.532684,
		10.133348, 14.777948, 24.866268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.723158, 14.002915, 24.628109>,  <10.609504, 14.425476, 25.239147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.723158, 14.002915, 24.628109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.446072, 14.277133, 24.538509>,  <10.279820, 14.441664, 24.484749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.446072, 14.277133, 24.538509>,  <10.723158, 14.002915, 24.628109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.446072, 14.277133, 24.538509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125223, -0.420196, -0.898752,
		-0.710258, -0.594528, 0.376922,
		-0.692714, 0.685545, -0.223999,
		10.238257, 14.482796, 24.471310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.167109, 13.670741, 24.235701>,  <10.723158, 14.002915, 24.628109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.167109, 13.670741, 24.235701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.124634, 14.059162, 24.150114>,  <10.099149, 14.292214, 24.098763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.124634, 14.059162, 24.150114>,  <10.167109, 13.670741, 24.235701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.124634, 14.059162, 24.150114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044653, -0.219623, -0.974562,
		-0.993343, -0.093931, 0.066682,
		-0.106186, 0.971052, -0.213967,
		10.092778, 14.350478, 24.085924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.638691, 13.734750, 23.682261>,  <10.167109, 13.670741, 24.235701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.638691, 13.734750, 23.682261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.872390, 14.058980, 23.666147>,  <10.012609, 14.253518, 23.656479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.872390, 14.058980, 23.666147>,  <9.638691, 13.734750, 23.682261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.872390, 14.058980, 23.666147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013545, -0.059368, -0.998144,
		-0.811462, 0.582618, -0.045664,
		0.584248, 0.810575, -0.040283,
		10.047664, 14.302153, 23.654062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.452286, 14.122120, 23.152754>,  <9.638691, 13.734750, 23.682261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.452286, 14.122120, 23.152754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.827751, 14.249619, 23.205379>,  <10.053031, 14.326118, 23.236956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.827751, 14.249619, 23.205379>,  <9.452286, 14.122120, 23.152754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.827751, 14.249619, 23.205379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131953, 0.020480, -0.991044,
		-0.318587, 0.947619, -0.022836,
		0.938664, 0.318747, 0.131565,
		10.109350, 14.345243, 23.244848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.529634, 14.604620, 22.553011>,  <9.452286, 14.122120, 23.152754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.529634, 14.604620, 22.553011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.905910, 14.527365, 22.664579>,  <10.131677, 14.481011, 22.731520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.905910, 14.527365, 22.664579>,  <9.529634, 14.604620, 22.553011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.905910, 14.527365, 22.664579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290774, 0.035435, -0.956135,
		0.174781, 0.980532, 0.089493,
		0.940692, -0.193137, 0.278920,
		10.188118, 14.469423, 22.748255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.902274, 15.065519, 22.226103>,  <9.529634, 14.604620, 22.553011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.902274, 15.065519, 22.226103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.180248, 14.799088, 22.334476>,  <10.347033, 14.639229, 22.399500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.180248, 14.799088, 22.334476>,  <9.902274, 15.065519, 22.226103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.180248, 14.799088, 22.334476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459023, 0.120894, -0.880160,
		0.553502, 0.736019, 0.389759,
		0.694934, -0.666079, 0.270935,
		10.388728, 14.599264, 22.415756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.678195, 15.375804, 22.093172>,  <9.902274, 15.065519, 22.226103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.678195, 15.375804, 22.093172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.692453, 14.976271, 22.106199>,  <10.701009, 14.736550, 22.114016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.692453, 14.976271, 22.106199>,  <10.678195, 15.375804, 22.093172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.692453, 14.976271, 22.106199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287928, -0.020942, -0.957423,
		0.956989, 0.043506, 0.286845,
		0.035647, -0.998834, 0.032568,
		10.703148, 14.676620, 22.115969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302485, 15.199495, 21.743706>,  <10.678195, 15.375804, 22.093172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302485, 15.199495, 21.743706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.057162, 14.883632, 21.736881>,  <10.909968, 14.694114, 21.732786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.057162, 14.883632, 21.736881>,  <11.302485, 15.199495, 21.743706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.057162, 14.883632, 21.736881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218189, -0.148623, -0.964523,
		0.759110, -0.595271, 0.263447,
		-0.613307, -0.789660, -0.017061,
		10.873170, 14.646733, 21.731764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.948166, 15.348127, 21.674967>,  <11.302485, 15.199495, 21.743706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.948166, 15.348127, 21.674967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.137461, 15.657145, 21.505627>,  <12.251038, 15.842555, 21.404022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.137461, 15.657145, 21.505627>,  <11.948166, 15.348127, 21.674967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137461, 15.657145, 21.505627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371743, 0.610813, 0.699082,
		0.798658, -0.173454, 0.576245,
		0.473236, 0.772542, -0.423350,
		12.279431, 15.888907, 21.378622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236746, 15.702765, 22.254721>,  <11.948166, 15.348127, 21.674967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236746, 15.702765, 22.254721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.209384, 15.961696, 21.951065>,  <12.192966, 16.117054, 21.768871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.209384, 15.961696, 21.951065>,  <12.236746, 15.702765, 22.254721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209384, 15.961696, 21.951065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289336, 0.715345, 0.636056,
		0.954780, 0.263155, 0.138362,
		-0.068405, 0.647326, -0.759137,
		12.188863, 16.155893, 21.723324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.587995, 16.298203, 22.474804>,  <12.236746, 15.702765, 22.254721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.587995, 16.298203, 22.474804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.337723, 16.420219, 22.187618>,  <12.187559, 16.493429, 22.015306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.337723, 16.420219, 22.187618>,  <12.587995, 16.298203, 22.474804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.337723, 16.420219, 22.187618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181867, 0.837969, 0.514522,
		0.758583, 0.452500, -0.468823,
		-0.625681, 0.305044, -0.717964,
		12.150019, 16.511732, 21.972229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.641345, 17.051680, 22.490700>,  <12.587995, 16.298203, 22.474804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.641345, 17.051680, 22.490700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.309810, 17.013275, 22.270224>,  <12.110888, 16.990232, 22.137938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.309810, 17.013275, 22.270224>,  <12.641345, 17.051680, 22.490700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.309810, 17.013275, 22.270224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458704, 0.680675, 0.571203,
		0.320339, 0.726267, -0.608210,
		-0.828839, -0.096010, -0.551188,
		12.061158, 16.984472, 22.104868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.368785, 17.704073, 22.275757>,  <12.641345, 17.051680, 22.490700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.368785, 17.704073, 22.275757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.060955, 17.448792, 22.284273>,  <11.876257, 17.295624, 22.289383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.060955, 17.448792, 22.284273>,  <12.368785, 17.704073, 22.275757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060955, 17.448792, 22.284273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558334, 0.688698, 0.462556,
		-0.309866, 0.344085, -0.886334,
		-0.769575, -0.638201, 0.021290,
		11.830083, 17.257332, 22.290661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.738432, 18.130379, 22.345701>,  <12.368785, 17.704073, 22.275757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.738432, 18.130379, 22.345701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.570727, 17.779350, 22.438732>,  <11.470104, 17.568733, 22.494551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.570727, 17.779350, 22.438732>,  <11.738432, 18.130379, 22.345701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.570727, 17.779350, 22.438732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532447, 0.445178, 0.719942,
		-0.735337, 0.178010, -0.653906,
		-0.419261, -0.877570, 0.232575,
		11.444949, 17.516079, 22.508505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.986680, 18.281576, 22.446249>,  <11.738432, 18.130379, 22.345701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.986680, 18.281576, 22.446249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.077951, 17.933695, 22.621313>,  <11.132714, 17.724966, 22.726351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.077951, 17.933695, 22.621313>,  <10.986680, 18.281576, 22.446249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.077951, 17.933695, 22.621313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559452, 0.250779, 0.790015,
		-0.796836, -0.425115, -0.429336,
		0.228179, -0.869705, 0.437661,
		11.146405, 17.672783, 22.752611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.319968, 18.136007, 22.919058>,  <10.986680, 18.281576, 22.446249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.319968, 18.136007, 22.919058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.634279, 17.922283, 23.043680>,  <10.822865, 17.794048, 23.118454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.634279, 17.922283, 23.043680>,  <10.319968, 18.136007, 22.919058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.634279, 17.922283, 23.043680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244423, 0.194464, 0.949969,
		-0.568166, -0.822614, 0.022207,
		0.785776, -0.534312, 0.311554,
		10.870012, 17.761990, 23.137146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081928, 17.725605, 23.440928>,  <10.319968, 18.136007, 22.919058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081928, 17.725605, 23.440928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.475841, 17.744358, 23.507874>,  <10.712188, 17.755610, 23.548040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.475841, 17.744358, 23.507874>,  <10.081928, 17.725605, 23.440928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.475841, 17.744358, 23.507874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171987, 0.123846, 0.977283,
		0.025088, -0.991193, 0.130024,
		0.984780, 0.046880, 0.167366,
		10.771275, 17.758423, 23.558083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.241995, 17.291565, 24.104282>,  <10.081928, 17.725605, 23.440928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.241995, 17.291565, 24.104282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.552548, 17.536669, 24.045284>,  <10.738881, 17.683731, 24.009886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.552548, 17.536669, 24.045284>,  <10.241995, 17.291565, 24.104282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.552548, 17.536669, 24.045284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013915, 0.250630, 0.967983,
		0.630107, -0.749474, 0.203111,
		0.776384, 0.612759, -0.147495,
		10.785463, 17.720497, 24.001036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.859889, 17.046076, 24.514025>,  <10.241995, 17.291565, 24.104282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.859889, 17.046076, 24.514025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.912033, 17.436102, 24.442190>,  <10.943319, 17.670118, 24.399090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.912033, 17.436102, 24.442190>,  <10.859889, 17.046076, 24.514025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.912033, 17.436102, 24.442190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154194, 0.158991, 0.975165,
		0.979403, -0.154814, -0.129623,
		0.130360, 0.975066, -0.179587,
		10.951141, 17.728622, 24.388313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250586, 17.141747, 25.062267>,  <10.859889, 17.046076, 24.514025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250586, 17.141747, 25.062267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.152084, 17.505024, 24.926891>,  <11.092983, 17.722990, 24.845667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.152084, 17.505024, 24.926891>,  <11.250586, 17.141747, 25.062267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.152084, 17.505024, 24.926891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163038, 0.383033, 0.909233,
		0.955394, 0.168723, -0.242394,
		-0.246253, 0.908195, -0.338439,
		11.078208, 17.777483, 24.825359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.701311, 17.679249, 25.175776>,  <11.250586, 17.141747, 25.062267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.701311, 17.679249, 25.175776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.390218, 17.929966, 25.156748>,  <11.203562, 18.080397, 25.145330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.390218, 17.929966, 25.156748>,  <11.701311, 17.679249, 25.175776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.390218, 17.929966, 25.156748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202675, 0.321676, 0.924904,
		0.595025, 0.709687, -0.377213,
		-0.777732, 0.626793, -0.047569,
		11.156898, 18.118004, 25.142477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.903368, 18.184692, 25.645157>,  <11.701311, 17.679249, 25.175776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.903368, 18.184692, 25.645157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.512341, 18.263454, 25.615252>,  <11.277724, 18.310713, 25.597309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.512341, 18.263454, 25.615252>,  <11.903368, 18.184692, 25.645157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.512341, 18.263454, 25.615252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012501, 0.300098, 0.953827,
		0.210251, 0.933365, -0.290904,
		-0.977568, 0.196906, -0.074763,
		11.219070, 18.322527, 25.592823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.345240, 18.789669, 25.396778>,  <11.903368, 18.184692, 25.645157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.345240, 18.789669, 25.396778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.725602, 18.881754, 25.479509>,  <12.953820, 18.937006, 25.529148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.725602, 18.881754, 25.479509>,  <12.345240, 18.789669, 25.396778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.725602, 18.881754, 25.479509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273824, -0.314452, -0.908923,
		-0.144209, 0.920935, -0.362052,
		0.950907, 0.230214, 0.206827,
		13.010874, 18.950817, 25.541557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568502, 19.176809, 24.780426>,  <12.345240, 18.789669, 25.396778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568502, 19.176809, 24.780426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.910074, 19.053131, 24.947855>,  <13.115018, 18.978924, 25.048311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.910074, 19.053131, 24.947855>,  <12.568502, 19.176809, 24.780426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.910074, 19.053131, 24.947855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365956, -0.215051, -0.905444,
		0.369971, 0.926365, -0.070488,
		0.853931, -0.309193, 0.418572,
		13.166253, 18.960373, 25.073427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151896, 19.537329, 24.454741>,  <12.568502, 19.176809, 24.780426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151896, 19.537329, 24.454741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.304564, 19.202110, 24.610689>,  <13.396166, 19.000978, 24.704258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.304564, 19.202110, 24.610689>,  <13.151896, 19.537329, 24.454741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304564, 19.202110, 24.610689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528417, -0.148236, -0.835943,
		0.758354, 0.525073, 0.386261,
		0.381673, -0.838048, 0.389873,
		13.419066, 18.950695, 24.727652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852222, 19.650248, 24.245441>,  <13.151896, 19.537329, 24.454741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852222, 19.650248, 24.245441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.796077, 19.265368, 24.338795>,  <13.762389, 19.034439, 24.394806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.796077, 19.265368, 24.338795>,  <13.852222, 19.650248, 24.245441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.796077, 19.265368, 24.338795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362535, -0.269295, -0.892216,
		0.921340, -0.040625, 0.386631,
		-0.140364, -0.962201, 0.233384,
		13.753967, 18.976707, 24.408810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267601, 19.306557, 23.805044>,  <13.852222, 19.650248, 24.245441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267601, 19.306557, 23.805044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.074363, 18.996302, 23.967527>,  <13.958420, 18.810148, 24.065018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.074363, 18.996302, 23.967527>,  <14.267601, 19.306557, 23.805044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074363, 18.996302, 23.967527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218057, -0.555902, -0.802137,
		0.847979, -0.298932, 0.437688,
		-0.483096, -0.775637, 0.406209,
		13.929434, 18.763611, 24.089390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.669970, 18.715590, 23.803022>,  <14.267601, 19.306557, 23.805044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.669970, 18.715590, 23.803022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.291801, 18.585707, 23.813953>,  <14.064900, 18.507776, 23.820511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.291801, 18.585707, 23.813953>,  <14.669970, 18.715590, 23.803022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.291801, 18.585707, 23.813953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184591, -0.602780, -0.776262,
		0.268531, -0.728849, 0.629819,
		-0.945419, -0.324709, 0.027326,
		14.008176, 18.488295, 23.822151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683237, 18.015039, 24.008402>,  <14.669970, 18.715590, 23.803022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683237, 18.015039, 24.008402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.354873, 18.100086, 23.796402>,  <14.157854, 18.151114, 23.669203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.354873, 18.100086, 23.796402>,  <14.683237, 18.015039, 24.008402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.354873, 18.100086, 23.796402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226939, -0.730205, -0.644437,
		-0.524025, -0.649303, 0.551183,
		-0.820912, 0.212616, -0.529998,
		14.108599, 18.163872, 23.637402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447642, 17.393095, 23.719088>,  <14.683237, 18.015039, 24.008402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447642, 17.393095, 23.719088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.255000, 17.654375, 23.485374>,  <14.139415, 17.811144, 23.345146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.255000, 17.654375, 23.485374>,  <14.447642, 17.393095, 23.719088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255000, 17.654375, 23.485374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002808, -0.665538, -0.746358,
		-0.876384, -0.361090, 0.318692,
		-0.481605, 0.653202, -0.584281,
		14.110518, 17.850336, 23.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.945888, 16.993767, 23.356005>,  <14.447642, 17.393095, 23.719088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.945888, 16.993767, 23.356005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.018467, 17.312407, 23.125351>,  <14.062015, 17.503590, 22.986958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.018467, 17.312407, 23.125351>,  <13.945888, 16.993767, 23.356005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018467, 17.312407, 23.125351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107950, -0.598960, -0.793470,
		-0.977458, 0.081727, -0.194673,
		0.181449, 0.796598, -0.576635,
		14.072902, 17.551386, 22.952360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935129, 16.666651, 22.660944>,  <13.945888, 16.993767, 23.356005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935129, 16.666651, 22.660944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.073749, 17.037096, 22.601326>,  <14.156920, 17.259363, 22.565556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.073749, 17.037096, 22.601326>,  <13.935129, 16.666651, 22.660944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073749, 17.037096, 22.601326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539938, -0.326873, -0.775642,
		-0.767053, 0.188322, -0.613322,
		0.346550, 0.926115, -0.149047,
		14.177713, 17.314930, 22.556612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791287, 16.849392, 21.967289>,  <13.935129, 16.666651, 22.660944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791287, 16.849392, 21.967289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.111968, 17.039112, 22.112787>,  <14.304377, 17.152945, 22.200087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.111968, 17.039112, 22.112787>,  <13.791287, 16.849392, 21.967289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111968, 17.039112, 22.112787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550857, -0.350057, -0.757639,
		-0.232017, 0.807773, -0.541914,
		0.801701, 0.474302, 0.363748,
		14.352478, 17.181402, 22.221912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031835, 17.210058, 21.466080>,  <13.791287, 16.849392, 21.967289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031835, 17.210058, 21.466080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.345604, 17.182281, 21.712610>,  <14.533865, 17.165615, 21.860529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.345604, 17.182281, 21.712610>,  <14.031835, 17.210058, 21.466080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345604, 17.182281, 21.712610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594116, -0.201164, -0.778820,
		0.178066, 0.977093, -0.116541,
		0.784423, -0.069443, 0.616327,
		14.580931, 17.161449, 21.897509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577013, 17.612120, 21.229172>,  <14.031835, 17.210058, 21.466080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577013, 17.612120, 21.229172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789973, 17.378479, 21.474243>,  <14.917749, 17.238295, 21.621286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789973, 17.378479, 21.474243>,  <14.577013, 17.612120, 21.229172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789973, 17.378479, 21.474243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712246, -0.082026, -0.697121,
		0.457446, 0.807524, 0.372355,
		0.532400, -0.584103, 0.612678,
		14.949693, 17.203247, 21.658047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172155, 17.811466, 21.110312>,  <14.577013, 17.612120, 21.229172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172155, 17.811466, 21.110312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.244683, 17.465458, 21.297443>,  <15.288200, 17.257853, 21.409721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.244683, 17.465458, 21.297443>,  <15.172155, 17.811466, 21.110312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.244683, 17.465458, 21.297443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712839, -0.212114, -0.668482,
		0.677483, 0.454696, 0.578159,
		0.181321, -0.865020, 0.467829,
		15.299080, 17.205952, 21.437792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.544991, 20.058493, 10.715115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.529884, 20.115965, 10.319553>,  <9.520821, 20.150448, 10.082216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.529884, 20.115965, 10.319553>,  <9.544991, 20.058493, 10.715115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.529884, 20.115965, 10.319553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725106, 0.684883, 0.071818,
		0.687601, -0.714347, -0.130048,
		-0.037765, 0.143681, -0.988903,
		9.518555, 20.159069, 10.022882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.849626, 20.474400, 11.230116>,  <9.544991, 20.058493, 10.715115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.849626, 20.474400, 11.230116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.124096, 20.757042, 11.160982>,  <10.288778, 20.926628, 11.119502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.124096, 20.757042, 11.160982>,  <9.849626, 20.474400, 11.230116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.124096, 20.757042, 11.160982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445054, 0.595726, 0.668609,
		0.575397, -0.381871, 0.723252,
		0.686182, 0.706601, -0.172826,
		10.329948, 20.969023, 11.109132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.129273, 20.720938, 11.836507>,  <9.849626, 20.474400, 11.230116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.129273, 20.720938, 11.836507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156507, 21.007593, 11.558862>,  <10.172848, 21.179586, 11.392275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156507, 21.007593, 11.558862>,  <10.129273, 20.720938, 11.836507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.156507, 21.007593, 11.558862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411296, 0.654017, 0.634899,
		0.908955, 0.242259, 0.339279,
		0.068084, 0.716640, -0.694112,
		10.176932, 21.222586, 11.350628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.474116, 21.271738, 12.151376>,  <10.129273, 20.720938, 11.836507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.474116, 21.271738, 12.151376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.245742, 21.386837, 11.843809>,  <10.108717, 21.455896, 11.659269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.245742, 21.386837, 11.843809>,  <10.474116, 21.271738, 12.151376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.245742, 21.386837, 11.843809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276592, 0.814401, 0.510144,
		0.772999, 0.503936, -0.385383,
		-0.570937, 0.287747, -0.768916,
		10.074461, 21.473162, 11.613134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.587795, 22.001812, 11.932794>,  <10.474116, 21.271738, 12.151376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.587795, 22.001812, 11.932794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.215165, 21.910603, 11.819534>,  <9.991587, 21.855877, 11.751579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.215165, 21.910603, 11.819534>,  <10.587795, 22.001812, 11.932794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.215165, 21.910603, 11.819534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319892, 0.884184, 0.340422,
		0.172731, 0.407705, -0.896627,
		-0.931576, -0.228023, -0.283148,
		9.935693, 21.842196, 11.734590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.307667, 22.463943, 11.409084>,  <10.587795, 22.001812, 11.932794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.307667, 22.463943, 11.409084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.045121, 22.301575, 11.663459>,  <9.887594, 22.204153, 11.816083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.045121, 22.301575, 11.663459>,  <10.307667, 22.463943, 11.409084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.045121, 22.301575, 11.663459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119580, 0.888238, 0.443548,
		-0.744908, 0.215084, -0.631547,
		-0.656363, -0.405922, 0.635936,
		9.848212, 22.179798, 11.854239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.602367, 22.780924, 11.406171>,  <10.307667, 22.463943, 11.409084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.602367, 22.780924, 11.406171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.636978, 22.610867, 11.766563>,  <9.657744, 22.508833, 11.982799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.636978, 22.610867, 11.766563>,  <9.602367, 22.780924, 11.406171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.636978, 22.610867, 11.766563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303393, 0.850172, 0.430303,
		-0.948929, -0.310584, -0.055422,
		0.086527, -0.425142, 0.900982,
		9.662936, 22.483324, 12.036858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.006969, 22.683245, 11.764657>,  <9.602367, 22.780924, 11.406171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.006969, 22.683245, 11.764657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.296313, 22.748663, 12.032986>,  <9.469919, 22.787914, 12.193983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.296313, 22.748663, 12.032986>,  <9.006969, 22.683245, 11.764657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.296313, 22.748663, 12.032986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422166, 0.873549, 0.242257,
		-0.546376, -0.458438, 0.700934,
		0.723360, 0.163546, 0.670823,
		9.513321, 22.797728, 12.234233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.662716, 22.704733, 12.476845>,  <9.006969, 22.683245, 11.764657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.662716, 22.704733, 12.476845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.974575, 22.945593, 12.408070>,  <9.161691, 23.090109, 12.366804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.974575, 22.945593, 12.408070>,  <8.662716, 22.704733, 12.476845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.974575, 22.945593, 12.408070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601626, 0.796433, 0.061169,
		0.173770, 0.055751, 0.983207,
		0.779648, 0.602152, -0.171938,
		9.208469, 23.126238, 12.356488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.291410, 22.938309, 13.031583>,  <8.662716, 22.704733, 12.476845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.291410, 22.938309, 13.031583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.135843, 23.046583, 12.679339>,  <8.042503, 23.111547, 12.467993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.135843, 23.046583, 12.679339>,  <8.291410, 22.938309, 13.031583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.135843, 23.046583, 12.679339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631682, -0.774141, 0.041019,
		-0.670612, 0.572218, 0.472065,
		-0.388917, 0.270687, -0.880609,
		8.019168, 23.127789, 12.415156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.587313, 23.011042, 13.110595>,  <8.291410, 22.938309, 13.031583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.587313, 23.011042, 13.110595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.679554, 22.932262, 12.729431>,  <7.734898, 22.884995, 12.500733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.679554, 22.932262, 12.729431>,  <7.587313, 23.011042, 13.110595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.679554, 22.932262, 12.729431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722785, -0.690321, -0.032237,
		-0.651464, 0.696182, -0.301539,
		0.230601, -0.196947, -0.952909,
		7.748734, 22.873178, 12.443559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.973042, 22.900433, 12.712949>,  <7.587313, 23.011042, 13.110595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.973042, 22.900433, 12.712949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.245213, 22.704491, 12.494937>,  <7.408516, 22.586926, 12.364130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.245213, 22.704491, 12.494937>,  <6.973042, 22.900433, 12.712949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.245213, 22.704491, 12.494937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654377, -0.740936, -0.151010,
		-0.329859, 0.459406, -0.824706,
		0.680429, -0.489856, -0.545029,
		7.449342, 22.557533, 12.331429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.502071, 22.519587, 12.284125>,  <6.973042, 22.900433, 12.712949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.502071, 22.519587, 12.284125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.855127, 22.336620, 12.240829>,  <7.066961, 22.226841, 12.214852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.855127, 22.336620, 12.240829>,  <6.502071, 22.519587, 12.284125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.855127, 22.336620, 12.240829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457174, -0.888920, 0.028518,
		-0.109260, 0.024313, -0.993716,
		0.882641, -0.457417, -0.108239,
		7.119920, 22.199396, 12.208358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.546617, 22.062010, 11.671632>,  <6.502071, 22.519587, 12.284125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.546617, 22.062010, 11.671632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.795925, 21.923513, 11.952103>,  <6.945509, 21.840416, 12.120385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.795925, 21.923513, 11.952103>,  <6.546617, 22.062010, 11.671632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.795925, 21.923513, 11.952103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413034, -0.907125, -0.080798,
		0.664031, -0.239251, -0.708394,
		0.623270, -0.346243, 0.701178,
		6.982906, 21.819641, 12.162456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.693007, 21.460367, 11.429870>,  <6.546617, 22.062010, 11.671632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.693007, 21.460367, 11.429870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.810170, 21.431482, 11.811234>,  <6.880467, 21.414152, 12.040052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.810170, 21.431482, 11.811234>,  <6.693007, 21.460367, 11.429870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.810170, 21.431482, 11.811234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378711, -0.924354, 0.046339,
		0.877942, -0.374640, -0.298097,
		0.292907, -0.072210, 0.953410,
		6.898042, 21.409819, 12.097257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.961222, 20.797220, 11.481127>,  <6.693007, 21.460367, 11.429870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.961222, 20.797220, 11.481127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.891879, 20.891600, 11.863598>,  <6.850273, 20.948227, 12.093081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.891879, 20.891600, 11.863598>,  <6.961222, 20.797220, 11.481127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.891879, 20.891600, 11.863598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546584, -0.830683, 0.105886,
		0.819264, -0.504275, 0.272972,
		-0.173357, 0.235950, 0.956177,
		6.839871, 20.962385, 12.150451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.930604, 20.180773, 11.776952>,  <6.961222, 20.797220, 11.481127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.930604, 20.180773, 11.776952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.766505, 20.423702, 12.049086>,  <6.668046, 20.569460, 12.212366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.766505, 20.423702, 12.049086>,  <6.930604, 20.180773, 11.776952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.766505, 20.423702, 12.049086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677718, -0.702208, 0.218178,
		0.610241, -0.371568, 0.699673,
		-0.410248, 0.607322, 0.680335,
		6.643431, 20.605900, 12.253186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.808261, 19.714525, 12.393858>,  <6.930604, 20.180773, 11.776952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.808261, 19.714525, 12.393858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.586339, 20.035221, 12.482767>,  <6.453185, 20.227638, 12.536113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.586339, 20.035221, 12.482767>,  <6.808261, 19.714525, 12.393858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.586339, 20.035221, 12.482767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749600, -0.597611, 0.284536,
		0.360956, -0.008752, 0.932542,
		-0.554807, 0.801738, 0.222272,
		6.419896, 20.275743, 12.549449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.657095, 19.732803, 13.055010>,  <6.808261, 19.714525, 12.393858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.657095, 19.732803, 13.055010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.368351, 19.950851, 12.884476>,  <6.195105, 20.081680, 12.782155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.368351, 19.950851, 12.884476>,  <6.657095, 19.732803, 13.055010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.368351, 19.950851, 12.884476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687897, -0.632517, 0.355978,
		-0.075613, 0.550241, 0.831575,
		-0.721859, 0.545121, -0.426336,
		6.151793, 20.114388, 12.756575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.220857, 19.927065, 13.587295>,  <6.657095, 19.732803, 13.055010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.220857, 19.927065, 13.587295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.981512, 20.001646, 13.275603>,  <5.837905, 20.046394, 13.088589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.981512, 20.001646, 13.275603>,  <6.220857, 19.927065, 13.587295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.981512, 20.001646, 13.275603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661230, -0.664146, 0.348835,
		-0.452479, 0.723979, 0.520690,
		-0.598363, 0.186455, -0.779228,
		5.802003, 20.057583, 13.041835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.498852, 20.172497, 13.899130>,  <6.220857, 19.927065, 13.587295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.498852, 20.172497, 13.899130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.460732, 19.987484, 13.546543>,  <5.437860, 19.876476, 13.334991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.460732, 19.987484, 13.546543>,  <5.498852, 20.172497, 13.899130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.460732, 19.987484, 13.546543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602656, -0.677970, 0.420907,
		-0.792290, 0.571333, -0.214137,
		-0.095299, -0.462532, -0.881466,
		5.432142, 19.848724, 13.282104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.793468, 19.923182, 13.868718>,  <5.498852, 20.172497, 13.899130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.793468, 19.923182, 13.868718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.010347, 19.733587, 13.591199>,  <5.140475, 19.619831, 13.424687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.010347, 19.733587, 13.591199>,  <4.793468, 19.923182, 13.868718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.010347, 19.733587, 13.591199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553301, -0.822817, 0.129727,
		-0.632359, 0.313541, -0.708388,
		0.542199, -0.473986, -0.693799,
		5.173007, 19.591391, 13.383060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.351250, 19.383224, 13.664546>,  <4.793468, 19.923182, 13.868718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.351250, 19.383224, 13.664546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.688570, 19.264013, 13.485649>,  <4.890961, 19.192486, 13.378311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.688570, 19.264013, 13.485649>,  <4.351250, 19.383224, 13.664546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.688570, 19.264013, 13.485649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320597, -0.946847, 0.026448,
		-0.431352, 0.121081, -0.894022,
		0.843299, -0.298029, -0.447243,
		4.941559, 19.174604, 13.351477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.105349, 18.810812, 13.158528>,  <4.351250, 19.383224, 13.664546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.105349, 18.810812, 13.158528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.487886, 18.756142, 13.261853>,  <4.717409, 18.723339, 13.323848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.487886, 18.756142, 13.261853>,  <4.105349, 18.810812, 13.158528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.487886, 18.756142, 13.261853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123576, -0.990114, -0.066361,
		0.264828, 0.031543, -0.963780,
		0.956345, -0.136674, 0.258312,
		4.774790, 18.715139, 13.339347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.256698, 18.165361, 12.788329>,  <4.105349, 18.810812, 13.158528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.256698, 18.165361, 12.788329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.571758, 18.211071, 13.030501>,  <4.760795, 18.238497, 13.175804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.571758, 18.211071, 13.030501>,  <4.256698, 18.165361, 12.788329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.571758, 18.211071, 13.030501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008203, -0.980616, 0.195766,
		0.616066, -0.159162, -0.771447,
		0.787652, 0.114276, 0.605430,
		4.808054, 18.245354, 13.212131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.822623, 17.758879, 12.579573>,  <4.256698, 18.165361, 12.788329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.822623, 17.758879, 12.579573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.924488, 17.826542, 12.960421>,  <4.985607, 17.867140, 13.188930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.924488, 17.826542, 12.960421>,  <4.822623, 17.758879, 12.579573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.924488, 17.826542, 12.960421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020309, -0.983429, 0.180151,
		0.966817, -0.065214, -0.247007,
		0.254662, 0.169157, 0.952120,
		5.000886, 17.877289, 13.246057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.293272, 17.236338, 12.793248>,  <4.822623, 17.758879, 12.579573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.293272, 17.236338, 12.793248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.133130, 17.360197, 13.138231>,  <5.037045, 17.434513, 13.345222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.133130, 17.360197, 13.138231>,  <5.293272, 17.236338, 12.793248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.133130, 17.360197, 13.138231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214596, -0.946687, 0.240274,
		0.890879, -0.088885, 0.445460,
		-0.400355, 0.309649, 0.862458,
		5.013024, 17.453093, 13.396969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.642874, 16.788656, 13.441258>,  <5.293272, 17.236338, 12.793248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.642874, 16.788656, 13.441258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.295855, 16.931051, 13.580187>,  <5.087643, 17.016487, 13.663544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.295855, 16.931051, 13.580187>,  <5.642874, 16.788656, 13.441258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.295855, 16.931051, 13.580187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292419, -0.929981, 0.222771,
		0.402305, 0.091701, 0.910901,
		-0.867549, 0.355987, 0.347321,
		5.035590, 17.037848, 13.684383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.656490, 16.521194, 14.080485>,  <5.642874, 16.788656, 13.441258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.656490, 16.521194, 14.080485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.271394, 16.602833, 14.009520>,  <5.040337, 16.651815, 13.966940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.271394, 16.602833, 14.009520>,  <5.656490, 16.521194, 14.080485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.271394, 16.602833, 14.009520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268287, -0.803241, 0.531814,
		-0.033965, 0.559597, 0.828069,
		-0.962740, 0.204097, -0.177414,
		4.982572, 16.664062, 13.956295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.294585, 16.567240, 14.726815>,  <5.656490, 16.521194, 14.080485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.294585, 16.567240, 14.726815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.993706, 16.501144, 14.471662>,  <4.813179, 16.461487, 14.318569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.993706, 16.501144, 14.471662>,  <5.294585, 16.567240, 14.726815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.993706, 16.501144, 14.471662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262005, -0.813233, 0.519621,
		-0.604610, 0.557986, 0.568418,
		-0.752197, -0.165240, -0.637883,
		4.768046, 16.451572, 14.280296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.750900, 16.505785, 15.232379>,  <5.294585, 16.567240, 14.726815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.750900, 16.505785, 15.232379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.661857, 16.354168, 14.873097>,  <4.608431, 16.263197, 14.657528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.661857, 16.354168, 14.873097>,  <4.750900, 16.505785, 15.232379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.661857, 16.354168, 14.873097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279618, -0.857790, 0.431288,
		-0.933948, 0.347163, 0.084963,
		-0.222608, -0.379043, -0.898205,
		4.595074, 16.240456, 14.603636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.163342, 15.964170, 15.492312>,  <4.750900, 16.505785, 15.232379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.163342, 15.964170, 15.492312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.524910, 15.793316, 15.501084>,  <5.741852, 15.690804, 15.506348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.524910, 15.793316, 15.501084>,  <5.163342, 15.964170, 15.492312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.524910, 15.793316, 15.501084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366858, 0.800681, 0.473630,
		-0.219861, -0.420080, 0.880451,
		0.903922, -0.427133, 0.021929,
		5.796087, 15.665175, 15.507663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.348016, 16.001724, 16.220297>,  <5.163342, 15.964170, 15.492312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.348016, 16.001724, 16.220297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.664294, 15.979575, 15.976416>,  <5.854061, 15.966287, 15.830088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.664294, 15.979575, 15.976416>,  <5.348016, 16.001724, 16.220297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.664294, 15.979575, 15.976416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379885, 0.825357, 0.417700,
		0.480093, -0.561890, 0.673640,
		0.790695, -0.055370, -0.609701,
		5.901503, 15.962964, 15.793505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.933640, 16.024353, 16.697529>,  <5.348016, 16.001724, 16.220297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.933640, 16.024353, 16.697529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.047877, 16.108273, 16.323486>,  <6.116419, 16.158625, 16.099062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.047877, 16.108273, 16.323486>,  <5.933640, 16.024353, 16.697529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.047877, 16.108273, 16.323486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279501, 0.915091, 0.290669,
		0.916690, -0.344374, 0.202698,
		0.285586, 0.209799, -0.935107,
		6.133554, 16.171211, 16.042955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.575726, 16.344837, 16.726051>,  <5.933640, 16.024353, 16.697529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.575726, 16.344837, 16.726051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.457630, 16.460037, 16.361658>,  <6.386773, 16.529158, 16.143023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.457630, 16.460037, 16.361658>,  <6.575726, 16.344837, 16.726051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.457630, 16.460037, 16.361658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423505, 0.894145, 0.145426,
		0.856433, -0.342870, -0.385957,
		-0.295240, 0.288002, -0.910982,
		6.369058, 16.546438, 16.088364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.118485, 16.736135, 16.387285>,  <6.575726, 16.344837, 16.726051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.118485, 16.736135, 16.387285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.809517, 16.835810, 16.153610>,  <6.624137, 16.895615, 16.013405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.809517, 16.835810, 16.153610>,  <7.118485, 16.736135, 16.387285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.809517, 16.835810, 16.153610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328446, 0.943993, -0.031614,
		0.543592, -0.216294, -0.811002,
		-0.772419, 0.249185, -0.584188,
		6.577792, 16.910564, 15.978354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.362955, 17.101763, 15.768002>,  <7.118485, 16.736135, 16.387285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.362955, 17.101763, 15.768002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.978288, 17.210825, 15.779714>,  <6.747488, 17.276262, 15.786740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.978288, 17.210825, 15.779714>,  <7.362955, 17.101763, 15.768002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.978288, 17.210825, 15.779714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265302, 0.952076, -0.152201,
		-0.069374, -0.138599, -0.987916,
		-0.961666, 0.272655, 0.029279,
		6.689788, 17.292622, 15.788497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.260323, 17.535501, 15.137487>,  <7.362955, 17.101763, 15.768002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.260323, 17.535501, 15.137487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.960096, 17.630383, 15.384189>,  <6.779960, 17.687311, 15.532209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.960096, 17.630383, 15.384189>,  <7.260323, 17.535501, 15.137487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.960096, 17.630383, 15.384189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112085, 0.965527, -0.234936,
		-0.651218, -0.107207, -0.751280,
		-0.750568, 0.237202, 0.616752,
		6.734926, 17.701544, 15.569214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.619410, 17.965801, 14.805222>,  <7.260323, 17.535501, 15.137487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.619410, 17.965801, 14.805222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.607577, 18.075415, 15.189728>,  <6.600478, 18.141182, 15.420431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.607577, 18.075415, 15.189728>,  <6.619410, 17.965801, 14.805222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.607577, 18.075415, 15.189728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001683, 0.961698, -0.274104,
		-0.999561, -0.006490, -0.028908,
		-0.029580, 0.274033, 0.961265,
		6.598703, 18.157625, 15.478107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.472550, 18.641483, 14.752426>,  <6.619410, 17.965801, 14.805222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.472550, 18.641483, 14.752426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.583682, 18.605715, 15.135010>,  <6.650360, 18.584253, 15.364560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.583682, 18.605715, 15.135010>,  <6.472550, 18.641483, 14.752426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.583682, 18.605715, 15.135010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313852, 0.949469, -0.002397,
		-0.907914, 0.300853, 0.291855,
		0.277828, -0.089423, 0.956460,
		6.667030, 18.578888, 15.421947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.226489, 19.308313, 15.115593>,  <6.472550, 18.641483, 14.752426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.226489, 19.308313, 15.115593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.501581, 19.147657, 15.357490>,  <6.666636, 19.051264, 15.502627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.501581, 19.147657, 15.357490>,  <6.226489, 19.308313, 15.115593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.501581, 19.147657, 15.357490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418711, 0.899950, 0.121536,
		-0.593050, 0.169628, 0.787095,
		0.687730, -0.401642, 0.604741,
		6.707900, 19.027164, 15.538912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.181607, 19.677713, 15.734798>,  <6.226489, 19.308313, 15.115593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.181607, 19.677713, 15.734798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.552687, 19.531525, 15.704329>,  <6.775335, 19.443811, 15.686048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.552687, 19.531525, 15.704329>,  <6.181607, 19.677713, 15.734798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.552687, 19.531525, 15.704329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372606, 0.919104, 0.128115,
		0.023189, -0.147234, 0.988830,
		0.927700, -0.365473, -0.076173,
		6.830997, 19.421883, 15.681478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.600380, 20.086054, 16.234951>,  <6.181607, 19.677713, 15.734798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.600380, 20.086054, 16.234951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.859317, 19.928156, 15.974144>,  <7.014679, 19.833418, 15.817660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.859317, 19.928156, 15.974144>,  <6.600380, 20.086054, 16.234951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.859317, 19.928156, 15.974144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488315, 0.871613, -0.042879,
		0.585232, -0.290632, 0.756992,
		0.647342, -0.394745, -0.652016,
		7.053519, 19.809732, 15.778539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.242415, 20.226601, 16.500561>,  <6.600380, 20.086054, 16.234951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.242415, 20.226601, 16.500561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.307601, 20.195004, 16.107174>,  <7.346713, 20.176046, 15.871142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.307601, 20.195004, 16.107174>,  <7.242415, 20.226601, 16.500561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.307601, 20.195004, 16.107174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608657, 0.792561, 0.037199,
		0.776517, -0.604655, 0.177238,
		0.162964, -0.078992, -0.983465,
		7.356490, 20.171307, 15.812135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.801625, 20.467958, 16.439388>,  <7.242415, 20.226601, 16.500561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.801625, 20.467958, 16.439388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.689358, 20.467123, 16.055468>,  <7.621998, 20.466621, 15.825115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.689358, 20.467123, 16.055468>,  <7.801625, 20.467958, 16.439388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.689358, 20.467123, 16.055468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621863, 0.761324, -0.183502,
		0.731104, -0.648369, -0.212379,
		-0.280666, -0.002089, -0.959803,
		7.605158, 20.466496, 15.767527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.373121, 20.554655, 16.118916>,  <7.801625, 20.467958, 16.439388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.373121, 20.554655, 16.118916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.101686, 20.659918, 15.844611>,  <7.938826, 20.723076, 15.680028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.101686, 20.659918, 15.844611>,  <8.373121, 20.554655, 16.118916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.101686, 20.659918, 15.844611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484655, 0.861953, -0.148818,
		0.551931, -0.433344, -0.712450,
		-0.678588, 0.263155, -0.685761,
		7.898110, 20.738865, 15.638883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.752262, 20.833153, 15.614732>,  <8.373121, 20.554655, 16.118916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.752262, 20.833153, 15.614732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.383241, 20.960550, 15.527592>,  <8.161828, 21.036989, 15.475307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.383241, 20.960550, 15.527592>,  <8.752262, 20.833153, 15.614732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.383241, 20.960550, 15.527592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337309, 0.939819, -0.054438,
		0.187401, -0.123705, -0.974463,
		-0.922553, 0.318494, -0.217850,
		8.106475, 21.056099, 15.462236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.886228, 21.272099, 15.077236>,  <8.752262, 20.833153, 15.614732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.886228, 21.272099, 15.077236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.517424, 21.401350, 15.162546>,  <8.296142, 21.478901, 15.213733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.517424, 21.401350, 15.162546>,  <8.886228, 21.272099, 15.077236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.517424, 21.401350, 15.162546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266719, 0.929409, -0.255068,
		-0.280640, -0.178291, -0.943108,
		-0.922010, 0.323127, 0.213276,
		8.240821, 21.498289, 15.226529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.727792, 21.968655, 14.689460>,  <8.886228, 21.272099, 15.077236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.727792, 21.968655, 14.689460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.439063, 21.978542, 14.966115>,  <8.265826, 21.984474, 15.132109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.439063, 21.978542, 14.966115>,  <8.727792, 21.968655, 14.689460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.439063, 21.978542, 14.966115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148389, 0.981648, 0.119782,
		-0.675985, 0.189093, -0.712242,
		-0.721821, 0.024718, 0.691639,
		8.222517, 21.985958, 15.173607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.260222, 22.463299, 14.445759>,  <8.727792, 21.968655, 14.689460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.260222, 22.463299, 14.445759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.199051, 22.425533, 14.839246>,  <8.162348, 22.402874, 15.075337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.199051, 22.425533, 14.839246>,  <8.260222, 22.463299, 14.445759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.199051, 22.425533, 14.839246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276764, 0.951500, 0.134350,
		-0.948691, 0.292803, -0.119381,
		-0.152929, -0.094416, 0.983717,
		8.153172, 22.397209, 15.134360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.765202, 23.003468, 14.668136>,  <8.260222, 22.463299, 14.445759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.765202, 23.003468, 14.668136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.975162, 22.894665, 14.990747>,  <8.101138, 22.829382, 15.184315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.975162, 22.894665, 14.990747>,  <7.765202, 23.003468, 14.668136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.975162, 22.894665, 14.990747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145713, 0.962290, 0.229708,
		-0.838598, -0.003052, 0.544743,
		0.524902, -0.272008, 0.806530,
		8.132632, 22.813063, 15.232706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.522765, 23.415504, 15.208694>,  <7.765202, 23.003468, 14.668136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.522765, 23.415504, 15.208694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.894183, 23.291344, 15.290133>,  <8.117034, 23.216846, 15.338997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.894183, 23.291344, 15.290133>,  <7.522765, 23.415504, 15.208694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.894183, 23.291344, 15.290133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269822, 0.941029, 0.204111,
		-0.254950, -0.134591, 0.957542,
		0.928546, -0.310404, 0.203599,
		8.172747, 23.198223, 15.351213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.782814, 19.470953, 27.642826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.533045, 19.158861, 27.657433>,  <16.383183, 18.971605, 27.666197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.533045, 19.158861, 27.657433>,  <16.782814, 19.470953, 27.642826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533045, 19.158861, 27.657433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465185, 0.409034, 0.785045,
		-0.627454, 0.473213, -0.618362,
		-0.624424, -0.780231, 0.036518,
		16.345718, 18.924791, 27.668388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010870, 19.751202, 27.869278>,  <16.782814, 19.470953, 27.642826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010870, 19.751202, 27.869278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.020054, 19.357626, 27.940090>,  <16.025564, 19.121481, 27.982578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.020054, 19.357626, 27.940090>,  <16.010870, 19.751202, 27.869278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020054, 19.357626, 27.940090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682317, 0.114002, 0.722113,
		-0.730696, -0.137370, -0.668740,
		0.022959, -0.983938, 0.177030,
		16.026941, 19.062445, 27.993198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278390, 19.560978, 27.868893>,  <16.010870, 19.751202, 27.869278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278390, 19.560978, 27.868893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.472273, 19.267036, 28.058649>,  <15.588602, 19.090672, 28.172503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.472273, 19.267036, 28.058649>,  <15.278390, 19.560978, 27.868893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472273, 19.267036, 28.058649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701456, -0.002581, 0.712709,
		-0.522513, -0.678220, -0.516719,
		0.484707, -0.734855, 0.474392,
		15.617685, 19.046579, 28.200966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697388, 19.107143, 27.957838>,  <15.278390, 19.560978, 27.868893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697388, 19.107143, 27.957838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.006541, 19.041847, 28.203115>,  <15.192034, 19.002670, 28.350281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.006541, 19.041847, 28.203115>,  <14.697388, 19.107143, 27.957838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006541, 19.041847, 28.203115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629710, -0.078208, 0.772884,
		-0.078208, -0.983482, -0.163238,
		-0.772884, 0.163238, -0.613192,
		15.238406, 18.992876, 28.387074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.580785, 18.397461, 28.276175>,  <14.697388, 19.107143, 27.957838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.580785, 18.397461, 28.276175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.814296, 18.624002, 28.508881>,  <14.954402, 18.759928, 28.648504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.814296, 18.624002, 28.508881>,  <14.580785, 18.397461, 28.276175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.814296, 18.624002, 28.508881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668535, -0.071296, 0.740256,
		0.460723, -0.821073, 0.337006,
		0.583777, 0.566353, 0.581764,
		14.989429, 18.793909, 28.683409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433128, 18.162643, 28.864294>,  <14.580785, 18.397461, 28.276175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433128, 18.162643, 28.864294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.638214, 18.489897, 28.968435>,  <14.761266, 18.686249, 29.030920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.638214, 18.489897, 28.968435>,  <14.433128, 18.162643, 28.864294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638214, 18.489897, 28.968435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651130, 0.172878, 0.739015,
		0.559602, -0.548427, 0.621348,
		0.512713, 0.818133, 0.260355,
		14.792028, 18.735336, 29.046541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592548, 18.091318, 29.563089>,  <14.433128, 18.162643, 28.864294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592548, 18.091318, 29.563089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.599431, 18.479853, 29.468256>,  <14.603560, 18.712973, 29.411356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.599431, 18.479853, 29.468256>,  <14.592548, 18.091318, 29.563089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.599431, 18.479853, 29.468256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515766, 0.211758, 0.830147,
		0.856556, 0.107994, 0.504627,
		0.017208, 0.971337, -0.237083,
		14.604593, 18.771254, 29.397131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680946, 18.397598, 30.216370>,  <14.592548, 18.091318, 29.563089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680946, 18.397598, 30.216370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.579717, 18.717192, 29.998167>,  <14.518979, 18.908949, 29.867245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.579717, 18.717192, 29.998167>,  <14.680946, 18.397598, 30.216370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579717, 18.717192, 29.998167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409751, 0.422267, 0.808575,
		0.876389, 0.428150, 0.220521,
		-0.253073, 0.798985, -0.545506,
		14.503795, 18.956888, 29.834515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975821, 19.015154, 30.530439>,  <14.680946, 18.397598, 30.216370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975821, 19.015154, 30.530439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.655565, 19.112452, 30.311420>,  <14.463411, 19.170830, 30.180008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.655565, 19.112452, 30.311420>,  <14.975821, 19.015154, 30.530439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.655565, 19.112452, 30.311420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340296, 0.567554, 0.749721,
		0.493127, 0.786585, -0.371632,
		-0.800640, 0.243243, -0.547548,
		14.415374, 19.185425, 30.147156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894341, 19.624273, 30.713829>,  <14.975821, 19.015154, 30.530439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894341, 19.624273, 30.713829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.536898, 19.548376, 30.551123>,  <14.322432, 19.502838, 30.453499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.536898, 19.548376, 30.551123>,  <14.894341, 19.624273, 30.713829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536898, 19.548376, 30.551123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444664, 0.497638, 0.744735,
		0.061112, 0.846377, -0.529067,
		-0.893610, -0.189745, -0.406765,
		14.268814, 19.491453, 30.429092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525594, 20.274189, 30.660063>,  <14.894341, 19.624273, 30.713829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525594, 20.274189, 30.660063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.236954, 19.997320, 30.654556>,  <14.063769, 19.831200, 30.651253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.236954, 19.997320, 30.654556>,  <14.525594, 20.274189, 30.660063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236954, 19.997320, 30.654556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527424, 0.536752, 0.658575,
		-0.448460, 0.482488, -0.752389,
		-0.721601, -0.692172, -0.013764,
		14.020473, 19.789669, 30.650427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859663, 20.620249, 30.650381>,  <14.525594, 20.274189, 30.660063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859663, 20.620249, 30.650381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.753997, 20.257008, 30.780342>,  <13.690597, 20.039062, 30.858318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.753997, 20.257008, 30.780342>,  <13.859663, 20.620249, 30.650381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753997, 20.257008, 30.780342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716457, 0.410288, 0.564228,
		-0.645682, -0.083730, -0.759002,
		-0.264167, -0.908104, 0.324904,
		13.674747, 19.984577, 30.877813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.475331, 21.318531, 30.846613>,  <13.859663, 20.620249, 30.650381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.475331, 21.318531, 30.846613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.362810, 21.374077, 30.466806>,  <13.295298, 21.407404, 30.238922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.362810, 21.374077, 30.466806>,  <13.475331, 21.318531, 30.846613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.362810, 21.374077, 30.466806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818151, 0.482392, 0.312933,
		0.501495, 0.864878, -0.022087,
		-0.281304, 0.138864, -0.949518,
		13.278419, 21.415735, 30.181952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084169, 21.799412, 30.992226>,  <13.475331, 21.318531, 30.846613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084169, 21.799412, 30.992226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.038694, 21.748356, 30.598112>,  <13.011409, 21.717722, 30.361645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.038694, 21.748356, 30.598112>,  <13.084169, 21.799412, 30.992226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.038694, 21.748356, 30.598112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936189, 0.345764, 0.063231,
		0.332604, 0.929600, -0.158804,
		-0.113688, -0.127640, -0.985283,
		13.004588, 21.710064, 30.302526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.447325, 21.460901, 30.792500>,  <13.084169, 21.799412, 30.992226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.447325, 21.460901, 30.792500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.153459, 21.630051, 30.580294>,  <11.977139, 21.731541, 30.452971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.153459, 21.630051, 30.580294>,  <12.447325, 21.460901, 30.792500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.153459, 21.630051, 30.580294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208139, -0.603776, -0.769502,
		-0.645716, -0.675745, 0.355555,
		-0.734662, 0.422875, -0.530516,
		11.933059, 21.756912, 30.421139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.070508, 20.984953, 30.558737>,  <12.447325, 21.460901, 30.792500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.070508, 20.984953, 30.558737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.976834, 21.282595, 30.308468>,  <11.920630, 21.461180, 30.158306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.976834, 21.282595, 30.308468>,  <12.070508, 20.984953, 30.558737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.976834, 21.282595, 30.308468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116721, -0.617395, -0.777946,
		-0.965160, -0.255212, 0.057732,
		-0.234185, 0.744104, -0.625673,
		11.906579, 21.505825, 30.120766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.762744, 20.694603, 30.058437>,  <12.070508, 20.984953, 30.558737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.762744, 20.694603, 30.058437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.872639, 21.032064, 29.873930>,  <11.938576, 21.234541, 29.763226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.872639, 21.032064, 29.873930>,  <11.762744, 20.694603, 30.058437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872639, 21.032064, 29.873930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171052, -0.514960, -0.839974,
		-0.946182, 0.151871, -0.285787,
		0.274737, 0.843653, -0.461268,
		11.955060, 21.285160, 29.735550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.436818, 20.685213, 29.350061>,  <11.762744, 20.694603, 30.058437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.436818, 20.685213, 29.350061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.731421, 20.955482, 29.337259>,  <11.908183, 21.117643, 29.329578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.731421, 20.955482, 29.337259>,  <11.436818, 20.685213, 29.350061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.731421, 20.955482, 29.337259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217697, -0.281567, -0.934520,
		-0.640441, 0.681314, -0.354468,
		0.736508, 0.675672, -0.032007,
		11.952374, 21.158184, 29.327658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397824, 20.974142, 28.723623>,  <11.436818, 20.685213, 29.350061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397824, 20.974142, 28.723623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.770088, 21.065338, 28.838091>,  <11.993446, 21.120056, 28.906771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.770088, 21.065338, 28.838091>,  <11.397824, 20.974142, 28.723623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.770088, 21.065338, 28.838091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346461, -0.297680, -0.889579,
		-0.117630, 0.927042, -0.356029,
		0.930660, 0.227992, 0.286168,
		12.049286, 21.133736, 28.923941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.693925, 21.452650, 28.167046>,  <11.397824, 20.974142, 28.723623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.693925, 21.452650, 28.167046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.984224, 21.260351, 28.363890>,  <12.158404, 21.144972, 28.481997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.984224, 21.260351, 28.363890>,  <11.693925, 21.452650, 28.167046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.984224, 21.260351, 28.363890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381518, -0.313994, -0.869397,
		0.572480, 0.818712, -0.044466,
		0.725748, -0.480748, 0.492108,
		12.201949, 21.116127, 28.511522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.215456, 21.355759, 27.657961>,  <11.693925, 21.452650, 28.167046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.215456, 21.355759, 27.657961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.384752, 21.116917, 27.930529>,  <12.486330, 20.973612, 28.094069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.384752, 21.116917, 27.930529>,  <12.215456, 21.355759, 27.657961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.384752, 21.116917, 27.930529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546712, -0.431429, -0.717618,
		0.722477, 0.676266, 0.143845,
		0.423242, -0.597104, 0.681420,
		12.511724, 20.937786, 28.134954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.851331, 21.285805, 27.451849>,  <12.215456, 21.355759, 27.657961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.851331, 21.285805, 27.451849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.783268, 20.953556, 27.663929>,  <12.742430, 20.754206, 27.791178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.783268, 20.953556, 27.663929>,  <12.851331, 21.285805, 27.451849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.783268, 20.953556, 27.663929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370444, -0.552498, -0.746671,
		0.913136, 0.069357, 0.401711,
		-0.170158, -0.830623, 0.530199,
		12.732221, 20.704369, 27.822989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443067, 20.939337, 27.310171>,  <12.851331, 21.285805, 27.451849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443067, 20.939337, 27.310171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.195869, 20.668148, 27.469387>,  <13.047551, 20.505434, 27.564917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.195869, 20.668148, 27.469387>,  <13.443067, 20.939337, 27.310171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195869, 20.668148, 27.469387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287348, -0.666050, -0.688337,
		0.731789, -0.311012, 0.606429,
		-0.617994, -0.677974, 0.398040,
		13.010471, 20.464756, 27.588799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.886696, 20.355938, 27.489140>,  <13.443067, 20.939337, 27.310171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.886696, 20.355938, 27.489140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.519233, 20.209175, 27.430561>,  <13.298755, 20.121117, 27.395414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.519233, 20.209175, 27.430561>,  <13.886696, 20.355938, 27.489140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519233, 20.209175, 27.430561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364822, -0.645689, -0.670813,
		0.151566, -0.669675, 0.727023,
		-0.918658, -0.366907, -0.146447,
		13.243635, 20.099104, 27.386627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000691, 19.572144, 27.255037>,  <13.886696, 20.355938, 27.489140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000691, 19.572144, 27.255037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.631419, 19.700876, 27.170979>,  <13.409856, 19.778116, 27.120544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.631419, 19.700876, 27.170979>,  <14.000691, 19.572144, 27.255037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631419, 19.700876, 27.170979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007833, -0.562371, -0.826848,
		-0.384285, -0.761684, 0.521692,
		-0.923181, 0.321832, -0.210144,
		13.354465, 19.797426, 27.107935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558318, 18.925894, 27.125383>,  <14.000691, 19.572144, 27.255037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558318, 18.925894, 27.125383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.367826, 19.219187, 26.931240>,  <13.253531, 19.395163, 26.814754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.367826, 19.219187, 26.931240>,  <13.558318, 18.925894, 27.125383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.367826, 19.219187, 26.931240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159136, -0.614724, -0.772522,
		-0.864802, -0.290658, 0.409433,
		-0.476228, 0.733234, -0.485360,
		13.224958, 19.439157, 26.785631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.901003, 18.629639, 26.816095>,  <13.558318, 18.925894, 27.125383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.901003, 18.629639, 26.816095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.035632, 18.941259, 26.604513>,  <13.116410, 19.128233, 26.477564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.035632, 18.941259, 26.604513>,  <12.901003, 18.629639, 26.816095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035632, 18.941259, 26.604513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005218, -0.563263, -0.826262,
		-0.941643, 0.275338, -0.193644,
		0.336574, 0.779054, -0.528955,
		13.136604, 19.174976, 26.445827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.530701, 18.577318, 26.230812>,  <12.901003, 18.629639, 26.816095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.530701, 18.577318, 26.230812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.796631, 18.850250, 26.109201>,  <12.956189, 19.014009, 26.036236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.796631, 18.850250, 26.109201>,  <12.530701, 18.577318, 26.230812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.796631, 18.850250, 26.109201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055971, -0.451356, -0.890587,
		-0.744899, 0.575067, -0.338264,
		0.664825, 0.682331, -0.304027,
		12.996078, 19.054949, 26.017994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.693242, 18.868015, 26.085333>,  <12.530701, 18.577318, 26.230812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.693242, 18.868015, 26.085333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.354537, 18.660110, 26.040003>,  <11.151314, 18.535368, 26.012804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.354537, 18.660110, 26.040003>,  <11.693242, 18.868015, 26.085333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.354537, 18.660110, 26.040003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245140, 0.192179, 0.950249,
		-0.472124, 0.832415, -0.290144,
		-0.846762, -0.519761, -0.113326,
		11.100509, 18.504183, 26.006004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.214573, 19.286867, 26.403858>,  <11.693242, 18.868015, 26.085333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.214573, 19.286867, 26.403858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.050580, 18.922235, 26.391624>,  <10.952185, 18.703457, 26.384283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.050580, 18.922235, 26.391624>,  <11.214573, 19.286867, 26.403858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.050580, 18.922235, 26.391624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171624, 0.044167, 0.984172,
		-0.895801, 0.408742, -0.174557,
		-0.409982, -0.911581, -0.030586,
		10.927586, 18.648762, 26.382448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591847, 19.354694, 26.624416>,  <11.214573, 19.286867, 26.403858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591847, 19.354694, 26.624416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.641885, 18.965803, 26.703533>,  <10.671907, 18.732468, 26.751003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.641885, 18.965803, 26.703533>,  <10.591847, 19.354694, 26.624416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.641885, 18.965803, 26.703533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521442, 0.105177, 0.846780,
		-0.844067, -0.209064, -0.493805,
		0.125094, -0.972229, 0.197791,
		10.679413, 18.674135, 26.762871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.980328, 19.241665, 26.848576>,  <10.591847, 19.354694, 26.624416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.980328, 19.241665, 26.848576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.207338, 18.927757, 26.948212>,  <10.343545, 18.739412, 27.007994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.207338, 18.927757, 26.948212>,  <9.980328, 19.241665, 26.848576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.207338, 18.927757, 26.948212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441589, -0.034777, 0.896543,
		-0.694919, -0.618809, -0.366284,
		0.567527, -0.784772, 0.249092,
		10.377597, 18.692326, 27.022940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.553908, 18.671209, 27.206663>,  <9.980328, 19.241665, 26.848576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.553908, 18.671209, 27.206663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.934628, 18.616549, 27.316500>,  <10.163061, 18.583752, 27.382402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.934628, 18.616549, 27.316500>,  <9.553908, 18.671209, 27.206663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.934628, 18.616549, 27.316500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268825, 0.059364, 0.961358,
		-0.147675, -0.988839, 0.019766,
		0.951801, -0.136655, 0.274591,
		10.220169, 18.575552, 27.398876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.515226, 18.138044, 27.657381>,  <9.553908, 18.671209, 27.206663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.515226, 18.138044, 27.657381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.841259, 18.351948, 27.746532>,  <10.036879, 18.480289, 27.800024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.841259, 18.351948, 27.746532>,  <9.515226, 18.138044, 27.657381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.841259, 18.351948, 27.746532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317577, 0.090655, 0.943889,
		0.484548, -0.840127, 0.243719,
		0.815081, 0.534759, 0.222879,
		10.085784, 18.512375, 27.813396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773318, 17.776142, 28.291946>,  <9.515226, 18.138044, 27.657381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773318, 17.776142, 28.291946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.908035, 18.151659, 28.262987>,  <9.988866, 18.376968, 28.245611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.908035, 18.151659, 28.262987>,  <9.773318, 17.776142, 28.291946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908035, 18.151659, 28.262987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481602, 0.237826, 0.843504,
		0.809092, -0.249218, 0.532222,
		0.336793, 0.938791, -0.072399,
		10.009073, 18.433296, 28.241268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.899902, 17.024406, 28.599018>,  <9.773318, 17.776142, 28.291946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.899902, 17.024406, 28.599018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.883520, 16.719994, 28.857985>,  <9.873691, 16.537346, 29.013365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.883520, 16.719994, 28.857985>,  <9.899902, 17.024406, 28.599018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.883520, 16.719994, 28.857985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014236, -0.648341, -0.761217,
		0.999059, -0.021960, 0.037388,
		-0.040957, -0.761034, 0.647418,
		9.871233, 16.491684, 29.052210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.541645, 16.531925, 28.480339>,  <9.899902, 17.024406, 28.599018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.541645, 16.531925, 28.480339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.247103, 16.322134, 28.651314>,  <10.070377, 16.196259, 28.753899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.247103, 16.322134, 28.651314>,  <10.541645, 16.531925, 28.480339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.247103, 16.322134, 28.651314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023477, -0.611560, -0.790849,
		0.676187, -0.592382, 0.438012,
		-0.736356, -0.524479, 0.427437,
		10.026196, 16.164791, 28.779545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.790195, 15.778677, 28.552990>,  <10.541645, 16.531925, 28.480339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.790195, 15.778677, 28.552990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.390772, 15.787127, 28.572748>,  <10.151118, 15.792198, 28.584602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.390772, 15.787127, 28.572748>,  <10.790195, 15.778677, 28.552990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.390772, 15.787127, 28.572748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051875, -0.618280, -0.784244,
		0.013972, -0.785674, 0.618483,
		-0.998556, 0.021126, 0.049395,
		10.091205, 15.793466, 28.587566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.666980, 15.099784, 28.505020>,  <10.790195, 15.778677, 28.552990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.666980, 15.099784, 28.505020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.340042, 15.294333, 28.381477>,  <10.143880, 15.411061, 28.307352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.340042, 15.294333, 28.381477>,  <10.666980, 15.099784, 28.505020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.340042, 15.294333, 28.381477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118797, -0.666817, -0.735692,
		-0.563769, -0.564623, 0.602799,
		-0.817345, 0.486371, -0.308855,
		10.094839, 15.440244, 28.288820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.339515, 14.580263, 28.244690>,  <10.666980, 15.099784, 28.505020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.339515, 14.580263, 28.244690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.154156, 14.911336, 28.118069>,  <10.042940, 15.109980, 28.042097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.154156, 14.911336, 28.118069>,  <10.339515, 14.580263, 28.244690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.154156, 14.911336, 28.118069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237282, -0.460072, -0.855588,
		-0.853791, -0.321366, 0.409590,
		-0.463398, 0.827682, -0.316551,
		10.015137, 15.159640, 28.023104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.625782, 14.418073, 28.035631>,  <10.339515, 14.580263, 28.244690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.625782, 14.418073, 28.035631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.745808, 14.746004, 27.840555>,  <9.817823, 14.942763, 27.723509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.745808, 14.746004, 27.840555>,  <9.625782, 14.418073, 28.035631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.745808, 14.746004, 27.840555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250750, -0.425481, -0.869535,
		-0.920372, 0.383205, 0.077900,
		0.300065, 0.819829, -0.487689,
		9.835827, 14.991953, 27.694248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.172129, 14.487754, 27.440228>,  <9.625782, 14.418073, 28.035631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.172129, 14.487754, 27.440228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.469943, 14.738795, 27.349207>,  <9.648632, 14.889421, 27.294594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.469943, 14.738795, 27.349207>,  <9.172129, 14.487754, 27.440228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.469943, 14.738795, 27.349207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176603, -0.143553, -0.973758,
		-0.643800, 0.765184, 0.003956,
		0.744536, 0.627604, -0.227553,
		9.693304, 14.927076, 27.280941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.623182, 17.742411, 32.080662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.825366, 17.997206, 31.847851>,  <12.946676, 18.150084, 31.708164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.825366, 17.997206, 31.847851>,  <12.623182, 17.742411, 32.080662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825366, 17.997206, 31.847851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286805, -0.760218, -0.582933,
		-0.813789, 0.127721, -0.566952,
		0.505460, 0.636989, -0.582027,
		12.977004, 18.188303, 31.673243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488166, 17.635588, 31.285038>,  <12.623182, 17.742411, 32.080662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488166, 17.635588, 31.285038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.852796, 17.785421, 31.352825>,  <13.071573, 17.875322, 31.393497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.852796, 17.785421, 31.352825>,  <12.488166, 17.635588, 31.285038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.852796, 17.785421, 31.352825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380089, -0.610685, -0.694692,
		-0.156729, 0.697676, -0.699060,
		0.911574, 0.374584, 0.169467,
		13.126268, 17.897797, 31.403666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.791869, 17.789127, 30.718388>,  <12.488166, 17.635588, 31.285038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.791869, 17.789127, 30.718388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.125979, 17.753508, 30.935417>,  <13.326446, 17.732136, 31.065634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.125979, 17.753508, 30.935417>,  <12.791869, 17.789127, 30.718388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.125979, 17.753508, 30.935417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368823, -0.641111, -0.673013,
		0.407779, 0.762265, -0.502661,
		0.835276, -0.089048, 0.542573,
		13.376562, 17.726793, 31.098188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.288624, 17.819380, 30.277891>,  <12.791869, 17.789127, 30.718388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.288624, 17.819380, 30.277891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.479896, 17.664108, 30.593019>,  <13.594659, 17.570946, 30.782097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.479896, 17.664108, 30.593019>,  <13.288624, 17.819380, 30.277891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.479896, 17.664108, 30.593019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454753, -0.657978, -0.600220,
		0.751362, 0.645277, -0.138105,
		0.478178, -0.388179, 0.787822,
		13.623349, 17.547655, 30.829367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078735, 17.856064, 30.184631>,  <13.288624, 17.819380, 30.277891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078735, 17.856064, 30.184631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.979831, 17.546570, 30.417936>,  <13.920488, 17.360872, 30.557919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.979831, 17.546570, 30.417936>,  <14.078735, 17.856064, 30.184631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.979831, 17.546570, 30.417936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350971, -0.632594, -0.690395,
		0.903151, 0.034000, 0.427974,
		-0.247260, -0.773737, 0.583261,
		13.905653, 17.314449, 30.592915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543666, 17.413132, 30.022490>,  <14.078735, 17.856064, 30.184631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543666, 17.413132, 30.022490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.296315, 17.182066, 30.235624>,  <14.147904, 17.043427, 30.363504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.296315, 17.182066, 30.235624>,  <14.543666, 17.413132, 30.022490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296315, 17.182066, 30.235624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432426, -0.816248, -0.383076,
		0.656215, -0.006473, 0.754546,
		-0.618376, -0.577666, 0.532835,
		14.110803, 17.008766, 30.395475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.906835, 16.943724, 30.404200>,  <14.543666, 17.413132, 30.022490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.906835, 16.943724, 30.404200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.541977, 16.787178, 30.355490>,  <14.323063, 16.693251, 30.326263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.541977, 16.787178, 30.355490>,  <14.906835, 16.943724, 30.404200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541977, 16.787178, 30.355490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401701, -0.794567, -0.455302,
		0.081429, -0.464218, 0.881970,
		-0.912143, -0.391363, -0.121776,
		14.268334, 16.669769, 30.318956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917916, 16.188818, 30.446556>,  <14.906835, 16.943724, 30.404200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.917916, 16.188818, 30.446556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.583755, 16.248323, 30.234905>,  <14.383259, 16.284027, 30.107916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.583755, 16.248323, 30.234905>,  <14.917916, 16.188818, 30.446556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.583755, 16.248323, 30.234905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316655, -0.656601, -0.684547,
		-0.449259, -0.739422, 0.501419,
		-0.835401, 0.148762, -0.529125,
		14.333135, 16.292952, 30.076168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.651052, 15.552007, 30.212122>,  <14.917916, 16.188818, 30.446556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.651052, 15.552007, 30.212122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.440272, 15.805595, 29.985704>,  <14.313805, 15.957748, 29.849854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.440272, 15.805595, 29.985704>,  <14.651052, 15.552007, 30.212122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440272, 15.805595, 29.985704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070387, -0.631171, -0.772443,
		-0.846977, -0.446880, 0.287971,
		-0.526949, 0.633973, -0.566042,
		14.282187, 15.995788, 29.815891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219447, 15.167090, 29.899029>,  <14.651052, 15.552007, 30.212122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.219447, 15.167090, 29.899029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.211346, 15.483066, 29.653887>,  <14.206485, 15.672650, 29.506802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.211346, 15.483066, 29.653887>,  <14.219447, 15.167090, 29.899029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211346, 15.483066, 29.653887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236951, -0.591722, -0.770532,
		-0.971311, -0.160822, -0.175191,
		-0.020254, 0.789937, -0.612853,
		14.205270, 15.720047, 29.470032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.848930, 14.919260, 29.336218>,  <14.219447, 15.167090, 29.899029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.848930, 14.919260, 29.336218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.056645, 15.234526, 29.204075>,  <14.181274, 15.423685, 29.124788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.056645, 15.234526, 29.204075>,  <13.848930, 14.919260, 29.336218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056645, 15.234526, 29.204075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206266, -0.490727, -0.846547,
		-0.829334, 0.371460, -0.417400,
		0.519288, 0.788165, -0.330357,
		14.212432, 15.470975, 29.104967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674191, 14.867320, 28.667257>,  <13.848930, 14.919260, 29.336218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674191, 14.867320, 28.667257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.005583, 15.091307, 28.670288>,  <14.204418, 15.225698, 28.672106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.005583, 15.091307, 28.670288>,  <13.674191, 14.867320, 28.667257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005583, 15.091307, 28.670288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299195, -0.431146, -0.851232,
		-0.473395, 0.707496, -0.524735,
		0.828480, 0.559967, 0.007577,
		14.254127, 15.259297, 28.672562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202310, 14.264388, 28.342539>,  <13.674191, 14.867320, 28.667257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202310, 14.264388, 28.342539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.841909, 14.091586, 28.358389>,  <12.625669, 13.987906, 28.367899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.841909, 14.091586, 28.358389>,  <13.202310, 14.264388, 28.342539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841909, 14.091586, 28.358389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138079, 0.372169, 0.917837,
		-0.411256, 0.821501, -0.394975,
		-0.901001, -0.432004, 0.039624,
		12.571609, 13.961985, 28.370275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.881350, 14.748320, 28.654621>,  <13.202310, 14.264388, 28.342539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.881350, 14.748320, 28.654621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.667496, 14.414074, 28.705086>,  <12.539184, 14.213527, 28.735365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.667496, 14.414074, 28.705086>,  <12.881350, 14.748320, 28.654621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.667496, 14.414074, 28.705086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242311, 0.294597, 0.924391,
		-0.809600, 0.463641, -0.359980,
		-0.534635, -0.835613, 0.126160,
		12.507106, 14.163390, 28.742933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.181225, 14.998525, 28.719336>,  <12.881350, 14.748320, 28.654621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.181225, 14.998525, 28.719336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.240993, 14.647185, 28.900963>,  <12.276853, 14.436381, 29.009939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.240993, 14.647185, 28.900963>,  <12.181225, 14.998525, 28.719336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240993, 14.647185, 28.900963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278989, 0.403113, 0.871588,
		-0.948598, -0.256911, -0.184818,
		0.149418, -0.878349, 0.454068,
		12.285818, 14.383680, 29.037184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.671887, 15.008099, 29.226351>,  <12.181225, 14.998525, 28.719336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.671887, 15.008099, 29.226351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911009, 14.708008, 29.339338>,  <12.054482, 14.527953, 29.407131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911009, 14.708008, 29.339338>,  <11.671887, 15.008099, 29.226351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.911009, 14.708008, 29.339338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145846, 0.244699, 0.958567,
		-0.788264, -0.614232, 0.036864,
		0.597803, -0.750228, 0.282471,
		12.090350, 14.482940, 29.424080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365205, 14.736881, 29.788778>,  <11.671887, 15.008099, 29.226351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365205, 14.736881, 29.788778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.742532, 14.608679, 29.823254>,  <11.968928, 14.531757, 29.843939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.742532, 14.608679, 29.823254>,  <11.365205, 14.736881, 29.788778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.742532, 14.608679, 29.823254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014215, 0.298462, 0.954316,
		-0.331587, -0.898998, 0.286100,
		0.943317, -0.320506, 0.086187,
		12.025527, 14.512527, 29.849110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.316709, 14.279325, 30.386278>,  <11.365205, 14.736881, 29.788778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.316709, 14.279325, 30.386278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.687422, 14.408042, 30.308796>,  <11.909850, 14.485272, 30.262306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.687422, 14.408042, 30.308796>,  <11.316709, 14.279325, 30.386278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.687422, 14.408042, 30.308796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053221, 0.398008, 0.915837,
		0.371801, -0.859094, 0.351742,
		0.926786, 0.321788, -0.193702,
		11.965457, 14.504580, 30.250685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.731380, 14.187465, 30.989813>,  <11.316709, 14.279325, 30.386278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.731380, 14.187465, 30.989813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.986410, 14.443712, 30.818651>,  <12.139429, 14.597461, 30.715954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.986410, 14.443712, 30.818651>,  <11.731380, 14.187465, 30.989813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.986410, 14.443712, 30.818651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183202, 0.413427, 0.891916,
		0.748287, -0.647058, 0.146229,
		0.637577, 0.640620, -0.427904,
		12.177683, 14.635899, 30.690279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482158, 14.169166, 31.419039>,  <11.731380, 14.187465, 30.989813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482158, 14.169166, 31.419039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.429779, 14.511571, 31.219002>,  <12.398352, 14.717014, 31.098980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.429779, 14.511571, 31.219002>,  <12.482158, 14.169166, 31.419039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.429779, 14.511571, 31.219002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144209, 0.515519, 0.844656,
		0.980845, 0.038486, -0.190950,
		-0.130946, 0.856013, -0.500095,
		12.390495, 14.768374, 31.068974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840496, 14.574186, 31.793926>,  <12.482158, 14.169166, 31.419039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840496, 14.574186, 31.793926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.643263, 14.834743, 31.563255>,  <12.524923, 14.991077, 31.424852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.643263, 14.834743, 31.563255>,  <12.840496, 14.574186, 31.793926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.643263, 14.834743, 31.563255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047650, 0.682088, 0.729716,
		0.868676, 0.332332, -0.367365,
		-0.493083, 0.651392, -0.576678,
		12.495338, 15.030161, 31.390251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231760, 15.203467, 31.852739>,  <12.840496, 14.574186, 31.793926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231760, 15.203467, 31.852739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.864117, 15.307944, 31.734743>,  <12.643531, 15.370630, 31.663946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.864117, 15.307944, 31.734743>,  <13.231760, 15.203467, 31.852739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.864117, 15.307944, 31.734743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073231, 0.622404, 0.779263,
		0.387139, 0.737830, -0.552929,
		-0.919109, 0.261192, -0.294989,
		12.588384, 15.386302, 31.646246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149541, 15.898438, 31.753931>,  <13.231760, 15.203467, 31.852739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149541, 15.898438, 31.753931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.785746, 15.767527, 31.856474>,  <12.567469, 15.688979, 31.917999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.785746, 15.767527, 31.856474>,  <13.149541, 15.898438, 31.753931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.785746, 15.767527, 31.856474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125901, 0.804519, 0.580429,
		-0.396206, 0.495618, -0.772906,
		-0.909489, -0.327279, 0.256357,
		12.512899, 15.669343, 31.933380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887784, 16.530684, 31.935347>,  <13.149541, 15.898438, 31.753931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887784, 16.530684, 31.935347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.608486, 16.275768, 32.065773>,  <12.440907, 16.122818, 32.144028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.608486, 16.275768, 32.065773>,  <12.887784, 16.530684, 31.935347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.608486, 16.275768, 32.065773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313268, 0.681579, 0.661297,
		-0.643676, 0.359601, -0.675550,
		-0.698244, -0.637289, 0.326064,
		12.399014, 16.084581, 32.163593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.252775, 16.958847, 31.965807>,  <12.887784, 16.530684, 31.935347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.252775, 16.958847, 31.965807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.212086, 16.640282, 32.204262>,  <12.187672, 16.449142, 32.347336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.212086, 16.640282, 32.204262>,  <12.252775, 16.958847, 31.965807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.212086, 16.640282, 32.204262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528843, 0.550851, 0.645670,
		-0.842602, -0.249583, -0.477211,
		-0.101724, -0.796412, 0.596138,
		12.181569, 16.401358, 32.383102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573606, 16.883865, 32.143803>,  <12.252775, 16.958847, 31.965807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.573606, 16.883865, 32.143803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.765917, 16.717257, 32.452442>,  <11.881303, 16.617292, 32.637627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.765917, 16.717257, 32.452442>,  <11.573606, 16.883865, 32.143803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765917, 16.717257, 32.452442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613037, 0.469499, 0.635418,
		-0.626930, -0.778513, -0.029619,
		0.480775, -0.416520, 0.771600,
		11.910150, 16.592300, 32.683922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.177456, 17.450815, 31.641203>,  <11.573606, 16.883865, 32.143803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.177456, 17.450815, 31.641203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.844765, 17.666773, 31.589449>,  <10.645150, 17.796349, 31.558397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.844765, 17.666773, 31.589449>,  <11.177456, 17.450815, 31.641203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844765, 17.666773, 31.589449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337166, -0.676356, -0.654875,
		-0.441074, -0.501054, 0.744580,
		-0.831729, 0.539896, -0.129385,
		10.595246, 17.828741, 31.550634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.510923, 17.003580, 31.699749>,  <11.177456, 17.450815, 31.641203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.510923, 17.003580, 31.699749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.358480, 17.319769, 31.507954>,  <10.267015, 17.509483, 31.392878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.358480, 17.319769, 31.507954>,  <10.510923, 17.003580, 31.699749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.358480, 17.319769, 31.507954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489404, -0.612493, -0.620754,
		-0.784373, -0.001911, 0.620287,
		-0.381108, 0.790473, -0.479488,
		10.244148, 17.556911, 31.364107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.770475, 16.826471, 31.499228>,  <10.510923, 17.003580, 31.699749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.770475, 16.826471, 31.499228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.898421, 17.096298, 31.233101>,  <9.975189, 17.258194, 31.073425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.898421, 17.096298, 31.233101>,  <9.770475, 16.826471, 31.499228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.898421, 17.096298, 31.233101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375350, -0.554531, -0.742703,
		-0.869942, 0.487290, 0.075825,
		0.319865, 0.674569, -0.665315,
		9.994381, 17.298670, 31.033506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.234069, 16.852467, 31.022720>,  <9.770475, 16.826471, 31.499228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.234069, 16.852467, 31.022720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.532494, 17.026413, 30.821014>,  <9.711549, 17.130781, 30.699991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.532494, 17.026413, 30.821014>,  <9.234069, 16.852467, 31.022720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.532494, 17.026413, 30.821014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092216, -0.682519, -0.725027,
		-0.659459, 0.587417, -0.469100,
		0.746063, 0.434867, -0.504263,
		9.756312, 17.156874, 30.669735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.028122, 17.144419, 30.413681>,  <9.234069, 16.852467, 31.022720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.028122, 17.144419, 30.413681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.414200, 17.052223, 30.364246>,  <9.645846, 16.996906, 30.334585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.414200, 17.052223, 30.364246>,  <9.028122, 17.144419, 30.413681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.414200, 17.052223, 30.364246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233614, -0.547392, -0.803608,
		0.117575, 0.804509, -0.582186,
		0.965194, -0.230491, -0.123585,
		9.703758, 16.983076, 30.327171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.123331, 17.387838, 29.777336>,  <9.028122, 17.144419, 30.413681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.123331, 17.387838, 29.777336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.423234, 17.130013, 29.837200>,  <9.603176, 16.975317, 29.873119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.423234, 17.130013, 29.837200>,  <9.123331, 17.387838, 29.777336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.423234, 17.130013, 29.837200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256974, -0.492040, -0.831782,
		0.609777, 0.585176, -0.534548,
		0.749757, -0.644566, 0.149660,
		9.648161, 16.936642, 29.882097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.522948, 17.387419, 29.124176>,  <9.123331, 17.387838, 29.777336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.522948, 17.387419, 29.124176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.605268, 17.046148, 29.315899>,  <9.654661, 16.841385, 29.430933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.605268, 17.046148, 29.315899>,  <9.522948, 17.387419, 29.124176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.605268, 17.046148, 29.315899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096377, -0.505080, -0.857675,
		0.973837, 0.130317, -0.186172,
		0.205801, -0.853178, 0.479306,
		9.667008, 16.790195, 29.459690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.090122, 17.865061, 28.964148>,  <9.522948, 17.387419, 29.124176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.090122, 17.865061, 28.964148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.065584, 18.238173, 28.822073>,  <10.050861, 18.462040, 28.736828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.065584, 18.238173, 28.822073>,  <10.090122, 17.865061, 28.964148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.065584, 18.238173, 28.822073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016798, 0.356772, 0.934040,
		0.997975, 0.051332, -0.037555,
		-0.061345, 0.932780, -0.355188,
		10.047181, 18.518007, 28.715517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.665671, 18.279093, 29.313452>,  <10.090122, 17.865061, 28.964148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.665671, 18.279093, 29.313452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.383934, 18.534187, 29.188749>,  <10.214891, 18.687244, 29.113928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.383934, 18.534187, 29.188749>,  <10.665671, 18.279093, 29.313452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.383934, 18.534187, 29.188749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079734, 0.507480, 0.857966,
		0.705367, 0.579446, -0.408290,
		-0.704344, 0.637736, -0.311758,
		10.172631, 18.725508, 29.095222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953336, 18.919319, 29.330486>,  <10.665671, 18.279093, 29.313452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953336, 18.919319, 29.330486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.560196, 18.992130, 29.342289>,  <10.324312, 19.035816, 29.349371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.560196, 18.992130, 29.342289>,  <10.953336, 18.919319, 29.330486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.560196, 18.992130, 29.342289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154806, 0.727522, 0.668391,
		0.100199, 0.661496, -0.743225,
		-0.982851, 0.182027, 0.029507,
		10.265341, 19.046738, 29.351141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.902221, 19.601540, 29.125938>,  <10.953336, 18.919319, 29.330486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.902221, 19.601540, 29.125938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.567808, 19.524305, 29.331373>,  <10.367161, 19.477964, 29.454634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.567808, 19.524305, 29.331373>,  <10.902221, 19.601540, 29.125938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.567808, 19.524305, 29.331373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145934, 0.824069, 0.547370,
		-0.528919, 0.532568, -0.660769,
		-0.836031, -0.193086, 0.513586,
		10.316998, 19.466379, 29.485449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.709702, 20.188507, 29.215223>,  <10.902221, 19.601540, 29.125938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.709702, 20.188507, 29.215223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.444633, 20.036633, 29.473434>,  <10.285591, 19.945509, 29.628361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.444633, 20.036633, 29.473434>,  <10.709702, 20.188507, 29.215223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444633, 20.036633, 29.473434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063595, 0.830313, 0.553656,
		-0.746204, 0.407945, -0.526080,
		-0.662673, -0.379685, 0.645527,
		10.245831, 19.922728, 29.667093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.152885, 20.693975, 29.340321>,  <10.709702, 20.188507, 29.215223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.152885, 20.693975, 29.340321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.177342, 20.444130, 29.651735>,  <10.192017, 20.294222, 29.838583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.177342, 20.444130, 29.651735>,  <10.152885, 20.693975, 29.340321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.177342, 20.444130, 29.651735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066018, 0.780817, 0.621261,
		-0.995943, 0.013412, 0.088977,
		0.061142, -0.624615, 0.778535,
		10.195685, 20.256746, 29.885296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.688136, 20.880766, 29.717373>,  <10.152885, 20.693975, 29.340321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.688136, 20.880766, 29.717373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.917754, 20.684597, 29.979656>,  <10.055525, 20.566895, 30.137026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.917754, 20.684597, 29.979656>,  <9.688136, 20.880766, 29.717373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.917754, 20.684597, 29.979656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035623, 0.785080, 0.618369,
		-0.818048, -0.378330, 0.433202,
		0.574046, -0.490424, 0.655710,
		10.089968, 20.537470, 30.176369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.362443, 20.815607, 30.387285>,  <9.688136, 20.880766, 29.717373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.362443, 20.815607, 30.387285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.742336, 20.734867, 30.483004>,  <9.970272, 20.686422, 30.540434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.742336, 20.734867, 30.483004>,  <9.362443, 20.815607, 30.387285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.742336, 20.734867, 30.483004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055353, 0.644062, 0.762968,
		-0.308129, -0.737862, 0.600514,
		0.949733, -0.201852, 0.239296,
		10.027256, 20.674311, 30.554792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.310683, 20.595339, 31.080994>,  <9.362443, 20.815607, 30.387285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.310683, 20.595339, 31.080994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.669190, 20.739384, 30.977438>,  <9.884295, 20.825809, 30.915304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.669190, 20.739384, 30.977438>,  <9.310683, 20.595339, 31.080994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.669190, 20.739384, 30.977438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065454, 0.684733, 0.725849,
		0.438655, -0.633610, 0.637275,
		0.896268, 0.360110, -0.258889,
		9.938071, 20.847416, 30.899771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.032853, 14.158264, 17.295490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400281, 14.250929, 17.423592>,  <14.620738, 14.306527, 17.500452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400281, 14.250929, 17.423592>,  <14.032853, 14.158264, 17.295490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.400281, 14.250929, 17.423592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371164, 0.226981, 0.900398,
		0.135895, -0.945946, 0.294481,
		0.918570, 0.231660, 0.320255,
		14.675852, 14.320427, 17.519669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.039002, 13.835113, 17.899834>,  <14.032853, 14.158264, 17.295490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.039002, 13.835113, 17.899834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360939, 14.070357, 17.931721>,  <14.554101, 14.211504, 17.950853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360939, 14.070357, 17.931721>,  <14.039002, 13.835113, 17.899834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.360939, 14.070357, 17.931721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204266, 0.148381, 0.967605,
		0.557231, -0.795052, 0.239554,
		0.804841, 0.588112, 0.079720,
		14.602391, 14.246791, 17.955637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296581, 13.600098, 18.502123>,  <14.039002, 13.835113, 17.899834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296581, 13.600098, 18.502123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414888, 13.975997, 18.433544>,  <14.485872, 14.201536, 18.392397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414888, 13.975997, 18.433544>,  <14.296581, 13.600098, 18.502123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.414888, 13.975997, 18.433544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304368, 0.262831, 0.915576,
		0.905473, -0.218615, 0.363767,
		0.295768, 0.939748, -0.171447,
		14.503619, 14.257921, 18.382111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621305, 13.856643, 19.085758>,  <14.296581, 13.600098, 18.502123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621305, 13.856643, 19.085758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.519285, 14.193408, 18.895546>,  <14.458073, 14.395468, 18.781418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.519285, 14.193408, 18.895546>,  <14.621305, 13.856643, 19.085758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.519285, 14.193408, 18.895546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384244, 0.363047, 0.848854,
		0.887302, 0.399221, 0.230905,
		-0.255051, 0.841914, -0.475531,
		14.442770, 14.445982, 18.752886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696509, 14.382166, 19.579855>,  <14.621305, 13.856643, 19.085758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696509, 14.382166, 19.579855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484962, 14.569637, 19.296833>,  <14.358033, 14.682120, 19.127020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484962, 14.569637, 19.296833>,  <14.696509, 14.382166, 19.579855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484962, 14.569637, 19.296833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492378, 0.509610, 0.705593,
		0.691275, 0.721552, -0.038750,
		-0.528870, 0.468679, -0.707557,
		14.326301, 14.710241, 19.084566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729754, 15.172906, 19.734150>,  <14.696509, 14.382166, 19.579855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.729754, 15.172906, 19.734150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413947, 15.087479, 19.504002>,  <14.224463, 15.036222, 19.365913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413947, 15.087479, 19.504002>,  <14.729754, 15.172906, 19.734150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.413947, 15.087479, 19.504002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594446, 0.499259, 0.630377,
		0.152630, 0.839720, -0.521129,
		-0.789518, -0.213569, -0.575370,
		14.177092, 15.023408, 19.331390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324411, 15.743828, 19.751484>,  <14.729754, 15.172906, 19.734150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324411, 15.743828, 19.751484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056158, 15.470954, 19.634951>,  <13.895205, 15.307230, 19.565031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056158, 15.470954, 19.634951>,  <14.324411, 15.743828, 19.751484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056158, 15.470954, 19.634951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679065, 0.406540, 0.611224,
		-0.298529, 0.607742, -0.735887,
		-0.670634, -0.682184, -0.291333,
		13.854968, 15.266299, 19.547550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784353, 16.141169, 19.645790>,  <14.324411, 15.743828, 19.751484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784353, 16.141169, 19.645790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.637023, 15.772237, 19.692511>,  <13.548624, 15.550878, 19.720543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.637023, 15.772237, 19.692511>,  <13.784353, 16.141169, 19.645790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.637023, 15.772237, 19.692511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721569, 0.362825, 0.589658,
		-0.586237, 0.132908, -0.799163,
		-0.368327, -0.922330, 0.116799,
		13.526525, 15.495538, 19.727551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.036298, 16.095018, 19.402397>,  <13.784353, 16.141169, 19.645790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.036298, 16.095018, 19.402397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141595, 15.824729, 19.677816>,  <13.204773, 15.662555, 19.843067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141595, 15.824729, 19.677816>,  <13.036298, 16.095018, 19.402397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141595, 15.824729, 19.677816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778183, 0.273117, 0.565542,
		-0.570205, -0.684692, -0.453942,
		0.263243, -0.675726, 0.688548,
		13.220568, 15.622011, 19.884380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403038, 15.981214, 19.798210>,  <13.036298, 16.095018, 19.402397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403038, 15.981214, 19.798210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669145, 15.800184, 20.035728>,  <12.828809, 15.691566, 20.178240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669145, 15.800184, 20.035728>,  <12.403038, 15.981214, 19.798210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669145, 15.800184, 20.035728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651045, 0.037656, 0.758105,
		-0.365460, -0.890931, -0.269596,
		0.665267, -0.452575, 0.593798,
		12.868725, 15.664412, 20.213867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982815, 15.511852, 20.212421>,  <12.403038, 15.981214, 19.798210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982815, 15.511852, 20.212421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316709, 15.599023, 20.414700>,  <12.517045, 15.651325, 20.536066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316709, 15.599023, 20.414700>,  <11.982815, 15.511852, 20.212421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316709, 15.599023, 20.414700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550250, 0.294920, 0.781184,
		0.021101, -0.930339, 0.366093,
		0.834734, 0.217926, 0.505696,
		12.567129, 15.664401, 20.566408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836658, 15.258113, 20.854618>,  <11.982815, 15.511852, 20.212421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836658, 15.258113, 20.854618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137986, 15.514410, 20.913895>,  <12.318783, 15.668188, 20.949461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137986, 15.514410, 20.913895>,  <11.836658, 15.258113, 20.854618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137986, 15.514410, 20.913895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513624, 0.432476, 0.741050,
		0.410733, -0.634361, 0.654892,
		0.753318, 0.640742, 0.148191,
		12.363981, 15.706633, 20.958351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.679872, 14.661539, 21.270809>,  <11.836658, 15.258113, 20.854618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.679872, 14.661539, 21.270809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.299132, 14.544092, 21.306074>,  <11.070688, 14.473624, 21.327234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.299132, 14.544092, 21.306074>,  <11.679872, 14.661539, 21.270809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.299132, 14.544092, 21.306074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060090, -0.103318, -0.992832,
		0.300623, -0.950323, 0.080700,
		-0.951848, -0.293618, 0.088165,
		11.013577, 14.456007, 21.332523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.629960, 14.095226, 20.949259>,  <11.679872, 14.661539, 21.270809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.629960, 14.095226, 20.949259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.253032, 14.229082, 20.946476>,  <11.026875, 14.309396, 20.944807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.253032, 14.229082, 20.946476>,  <11.629960, 14.095226, 20.949259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.253032, 14.229082, 20.946476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023205, 0.044585, -0.998736,
		-0.333906, -0.941291, -0.049779,
		-0.942321, 0.334639, -0.006956,
		10.970335, 14.329473, 20.944389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.292070, 13.671496, 20.471186>,  <11.629960, 14.095226, 20.949259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.292070, 13.671496, 20.471186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037114, 13.977139, 20.510935>,  <10.884140, 14.160524, 20.534784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037114, 13.977139, 20.510935>,  <11.292070, 13.671496, 20.471186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.037114, 13.977139, 20.510935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144539, 0.008109, -0.989466,
		-0.756863, -0.645039, 0.105275,
		-0.637391, 0.764106, 0.099370,
		10.845897, 14.206370, 20.540747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733129, 13.362601, 20.211405>,  <11.292070, 13.671496, 20.471186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.733129, 13.362601, 20.211405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.668205, 13.756815, 20.191900>,  <10.629251, 13.993343, 20.180197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.668205, 13.756815, 20.191900>,  <10.733129, 13.362601, 20.211405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.668205, 13.756815, 20.191900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271789, -0.092157, -0.957934,
		-0.948571, -0.142227, 0.282815,
		-0.162308, 0.985535, -0.048761,
		10.619513, 14.052475, 20.177271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.087318, 13.354812, 20.157091>,  <10.733129, 13.362601, 20.211405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.087318, 13.354812, 20.157091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224022, 13.693447, 19.993879>,  <10.306044, 13.896628, 19.895952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224022, 13.693447, 19.993879>,  <10.087318, 13.354812, 20.157091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224022, 13.693447, 19.993879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431774, -0.244192, -0.868298,
		-0.834729, 0.472925, 0.282081,
		0.341758, 0.846588, -0.408031,
		10.326550, 13.947424, 19.871469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.584934, 13.571638, 19.741224>,  <10.087318, 13.354812, 20.157091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.584934, 13.571638, 19.741224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908924, 13.770135, 19.616207>,  <10.103318, 13.889234, 19.541197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908924, 13.770135, 19.616207>,  <9.584934, 13.571638, 19.741224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908924, 13.770135, 19.616207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345623, -0.026634, -0.937995,
		-0.473798, 0.867775, 0.149941,
		0.809975, 0.496243, -0.312542,
		10.151917, 13.919008, 19.522444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.350151, 13.897978, 19.133034>,  <9.584934, 13.571638, 19.741224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.350151, 13.897978, 19.133034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746661, 13.946294, 19.111923>,  <9.984567, 13.975284, 19.099257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746661, 13.946294, 19.111923>,  <9.350151, 13.897978, 19.133034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.746661, 13.946294, 19.111923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043474, -0.078378, -0.995975,
		-0.124440, 0.989579, -0.072442,
		0.991274, 0.120790, -0.052774,
		10.044044, 13.982531, 19.096090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.540136, 14.350477, 18.532064>,  <9.350151, 13.897978, 19.133034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.540136, 14.350477, 18.532064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.875994, 14.142900, 18.596186>,  <10.077508, 14.018353, 18.634659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.875994, 14.142900, 18.596186>,  <9.540136, 14.350477, 18.532064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.875994, 14.142900, 18.596186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103446, -0.136942, -0.985163,
		0.533197, 0.843767, -0.061299,
		0.839643, -0.518945, 0.160301,
		10.127887, 13.987216, 18.644276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.880217, 14.344042, 17.861055>,  <9.540136, 14.350477, 18.532064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.880217, 14.344042, 17.861055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.099500, 14.078237, 18.064188>,  <10.231070, 13.918754, 18.186068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.099500, 14.078237, 18.064188>,  <9.880217, 14.344042, 17.861055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.099500, 14.078237, 18.064188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366770, -0.354684, -0.860046,
		0.751630, 0.657741, 0.049283,
		0.548208, -0.664512, 0.507831,
		10.263962, 13.878883, 18.216537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.566851, 14.456083, 17.630856>,  <9.880217, 14.344042, 17.861055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.566851, 14.456083, 17.630856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.559045, 14.084492, 17.778704>,  <10.554361, 13.861537, 17.867413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.559045, 14.084492, 17.778704>,  <10.566851, 14.456083, 17.630856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.559045, 14.084492, 17.778704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426908, -0.342037, -0.837114,
		0.904084, 0.141459, 0.403263,
		-0.019514, -0.928978, 0.369620,
		10.553191, 13.805799, 17.889589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.293335, 14.186115, 17.625746>,  <10.566851, 14.456083, 17.630856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.293335, 14.186115, 17.625746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049023, 13.869495, 17.617767>,  <10.902435, 13.679523, 17.612980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049023, 13.869495, 17.617767>,  <11.293335, 14.186115, 17.625746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.049023, 13.869495, 17.617767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238933, -0.160231, -0.957725,
		0.754890, -0.589726, 0.286993,
		-0.610780, -0.791549, -0.019948,
		10.865788, 13.632030, 17.611782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720362, 13.511425, 17.333746>,  <11.293335, 14.186115, 17.625746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720362, 13.511425, 17.333746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326283, 13.450425, 17.302416>,  <11.089837, 13.413825, 17.283617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326283, 13.450425, 17.302416>,  <11.720362, 13.511425, 17.333746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.326283, 13.450425, 17.302416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136658, -0.422686, -0.895913,
		0.103520, -0.893353, 0.437269,
		-0.985194, -0.152501, -0.078327,
		11.030725, 13.404675, 17.278917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.714070, 12.911641, 16.893122>,  <11.720362, 13.511425, 17.333746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.714070, 12.911641, 16.893122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366356, 13.106440, 16.859232>,  <11.157727, 13.223318, 16.838898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366356, 13.106440, 16.859232>,  <11.714070, 12.911641, 16.893122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.366356, 13.106440, 16.859232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061695, -0.276948, -0.958902,
		-0.490446, -0.828332, 0.270792,
		-0.869285, 0.486996, -0.084724,
		11.105570, 13.252538, 16.833815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.031652, 12.659631, 17.550619>,  <11.714070, 12.911641, 16.893122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.031652, 12.659631, 17.550619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820785, 12.867197, 17.819786>,  <11.694263, 12.991737, 17.981287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820785, 12.867197, 17.819786>,  <12.031652, 12.659631, 17.550619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820785, 12.867197, 17.819786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377595, 0.852464, -0.361562,
		-0.761258, 0.063487, -0.645333,
		-0.527169, 0.518917, 0.672918,
		11.662634, 13.022872, 18.021662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421160, 12.351105, 18.215847>,  <12.031652, 12.659631, 17.550619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421160, 12.351105, 18.215847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600062, 11.996217, 18.261106>,  <12.707404, 11.783284, 18.288261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600062, 11.996217, 18.261106>,  <12.421160, 12.351105, 18.215847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.600062, 11.996217, 18.261106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137026, -0.057043, -0.988923,
		0.883847, 0.457807, 0.096059,
		0.447256, -0.887220, 0.113149,
		12.734240, 11.730051, 18.295052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.937140, 12.355016, 18.733856>,  <12.421160, 12.351105, 18.215847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.937140, 12.355016, 18.733856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749860, 12.419683, 19.081339>,  <12.637492, 12.458484, 19.289829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749860, 12.419683, 19.081339>,  <12.937140, 12.355016, 18.733856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749860, 12.419683, 19.081339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883580, -0.075991, -0.462074,
		-0.008688, -0.983915, 0.178424,
		-0.468200, 0.161666, 0.868707,
		12.609400, 12.468184, 19.341951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.642655, 12.175601, 18.419458>,  <12.937140, 12.355016, 18.733856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.642655, 12.175601, 18.419458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999630, 12.316996, 18.531605>,  <14.213815, 12.401833, 18.598892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999630, 12.316996, 18.531605>,  <13.642655, 12.175601, 18.419458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.999630, 12.316996, 18.531605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075121, -0.496322, 0.864882,
		0.444875, -0.792914, -0.416382,
		0.892436, 0.353486, 0.280366,
		14.267361, 12.423041, 18.615715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766525, 11.627270, 18.890358>,  <13.642655, 12.175601, 18.419458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766525, 11.627270, 18.890358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.024611, 11.923041, 18.967243>,  <14.179461, 12.100504, 19.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.024611, 11.923041, 18.967243>,  <13.766525, 11.627270, 18.890358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.024611, 11.923041, 18.967243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024507, -0.271487, 0.962130,
		0.763610, -0.616068, -0.193288,
		0.645213, 0.739429, 0.192212,
		14.218174, 12.144870, 19.024906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423542, 11.325832, 19.194534>,  <13.766525, 11.627270, 18.890358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423542, 11.325832, 19.194534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.389569, 11.712658, 19.290514>,  <14.369185, 11.944753, 19.348103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.389569, 11.712658, 19.290514>,  <14.423542, 11.325832, 19.194534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.389569, 11.712658, 19.290514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109701, -0.230279, 0.966921,
		0.990329, 0.108444, -0.086530,
		-0.084931, 0.967063, 0.239949,
		14.364090, 12.002777, 19.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725352, 11.293874, 19.801933>,  <14.423542, 11.325832, 19.194534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725352, 11.293874, 19.801933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.565204, 11.659986, 19.819639>,  <14.469114, 11.879654, 19.830263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.565204, 11.659986, 19.819639>,  <14.725352, 11.293874, 19.801933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565204, 11.659986, 19.819639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091991, -0.088207, 0.991845,
		0.911723, 0.393036, 0.119513,
		-0.400372, 0.915283, 0.044264,
		14.445092, 11.934571, 19.832918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023381, 11.574706, 20.436092>,  <14.725352, 11.293874, 19.801933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023381, 11.574706, 20.436092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.696977, 11.789220, 20.349813>,  <14.501134, 11.917929, 20.298046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.696977, 11.789220, 20.349813>,  <15.023381, 11.574706, 20.436092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.696977, 11.789220, 20.349813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233365, 0.035748, 0.971732,
		0.528836, 0.843279, 0.095980,
		-0.816010, 0.536285, -0.215697,
		14.452173, 11.950106, 20.285105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.081763, 12.147528, 20.870068>,  <15.023381, 11.574706, 20.436092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.081763, 12.147528, 20.870068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697274, 12.099037, 20.770988>,  <14.466580, 12.069942, 20.711540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697274, 12.099037, 20.770988>,  <15.081763, 12.147528, 20.870068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.697274, 12.099037, 20.770988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261710, 0.117849, 0.957925,
		-0.086935, 0.985604, -0.145005,
		-0.961223, -0.121226, -0.247697,
		14.408907, 12.062670, 20.696680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611576, 12.609599, 21.183430>,  <15.081763, 12.147528, 20.870068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611576, 12.609599, 21.183430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.329636, 12.346949, 21.076078>,  <14.160471, 12.189358, 21.011667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.329636, 12.346949, 21.076078>,  <14.611576, 12.609599, 21.183430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.329636, 12.346949, 21.076078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359900, 0.005005, 0.932977,
		-0.611275, 0.754199, -0.239848,
		-0.704851, -0.656627, -0.268377,
		14.118180, 12.149961, 20.995565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011452, 12.875111, 21.470337>,  <14.611576, 12.609599, 21.183430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011452, 12.875111, 21.470337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921123, 12.495681, 21.381603>,  <13.866925, 12.268023, 21.328363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921123, 12.495681, 21.381603>,  <14.011452, 12.875111, 21.470337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.921123, 12.495681, 21.381603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549667, -0.063933, 0.832933,
		-0.804282, 0.310029, -0.506963,
		-0.225822, -0.948575, -0.221833,
		13.853376, 12.211108, 21.315054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312597, 12.711249, 21.578239>,  <14.011452, 12.875111, 21.470337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312597, 12.711249, 21.578239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491051, 12.355362, 21.616951>,  <13.598123, 12.141829, 21.640179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491051, 12.355362, 21.616951>,  <13.312597, 12.711249, 21.578239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.491051, 12.355362, 21.616951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494449, -0.154898, 0.855294,
		-0.745979, -0.429428, -0.509025,
		0.446134, -0.889718, 0.096779,
		13.624891, 12.088447, 21.645985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837209, 12.397614, 21.887171>,  <13.312597, 12.711249, 21.578239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837209, 12.397614, 21.887171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138506, 12.140494, 21.942938>,  <13.319284, 11.986223, 21.976398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138506, 12.140494, 21.942938>,  <12.837209, 12.397614, 21.887171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.138506, 12.140494, 21.942938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454086, -0.354853, 0.817242,
		-0.475850, -0.678888, -0.559176,
		0.753241, -0.642799, 0.139417,
		13.364478, 11.947655, 21.984762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.459876, 11.738859, 22.096201>,  <12.837209, 12.397614, 21.887171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.459876, 11.738859, 22.096201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.830657, 11.767774, 22.243462>,  <13.053125, 11.785123, 22.331818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.830657, 11.767774, 22.243462>,  <12.459876, 11.738859, 22.096201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.830657, 11.767774, 22.243462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367039, -0.028606, 0.929766,
		0.077746, -0.996973, 0.000017,
		0.926951, 0.072292, 0.368152,
		13.108743, 11.789459, 22.353907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.377695, 11.420509, 22.767530>,  <12.459876, 11.738859, 22.096201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.377695, 11.420509, 22.767530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733178, 11.601947, 22.794220>,  <12.946467, 11.710810, 22.810234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733178, 11.601947, 22.794220>,  <12.377695, 11.420509, 22.767530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733178, 11.601947, 22.794220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103874, 0.057458, 0.992929,
		0.446554, -0.889354, 0.098181,
		0.888707, 0.453595, 0.066723,
		12.999790, 11.738026, 22.814238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617178, 11.272960, 23.433844>,  <12.377695, 11.420509, 22.767530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617178, 11.272960, 23.433844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847920, 11.590014, 23.354883>,  <12.986366, 11.780246, 23.307507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847920, 11.590014, 23.354883>,  <12.617178, 11.272960, 23.433844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847920, 11.590014, 23.354883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148637, 0.339482, 0.928795,
		0.803208, -0.506440, 0.313647,
		0.576856, 0.792635, -0.197399,
		13.020977, 11.827804, 23.295664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185875, 11.258804, 23.983585>,  <12.617178, 11.272960, 23.433844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185875, 11.258804, 23.983585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168280, 11.625751, 23.825344>,  <13.157722, 11.845920, 23.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168280, 11.625751, 23.825344>,  <13.185875, 11.258804, 23.983585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168280, 11.625751, 23.825344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085351, 0.391088, 0.916387,
		0.995379, 0.074075, 0.061096,
		-0.043987, 0.917367, -0.395604,
		13.155084, 11.900962, 23.706663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.639301, 11.623944, 24.343908>,  <13.185875, 11.258804, 23.983585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.639301, 11.623944, 24.343908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418863, 11.925736, 24.201330>,  <13.286600, 12.106812, 24.115784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418863, 11.925736, 24.201330>,  <13.639301, 11.623944, 24.343908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418863, 11.925736, 24.201330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198014, 0.533209, 0.822483,
		0.810607, 0.382686, -0.443247,
		-0.551096, 0.754480, -0.356446,
		13.253534, 12.152081, 24.094397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970190, 12.198323, 24.446245>,  <13.639301, 11.623944, 24.343908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970190, 12.198323, 24.446245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598592, 12.328999, 24.376684>,  <13.375633, 12.407404, 24.334948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598592, 12.328999, 24.376684>,  <13.970190, 12.198323, 24.446245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.598592, 12.328999, 24.376684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036878, 0.549272, 0.834830,
		0.368249, 0.769140, -0.522318,
		-0.928995, 0.326688, -0.173904,
		13.319893, 12.427005, 24.324512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998102, 12.897755, 24.631950>,  <13.970190, 12.198323, 24.446245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998102, 12.897755, 24.631950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.605619, 12.823895, 24.654354>,  <13.370130, 12.779578, 24.667797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.605619, 12.823895, 24.654354>,  <13.998102, 12.897755, 24.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.605619, 12.823895, 24.654354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092716, 0.705733, 0.702385,
		-0.169225, 0.683992, -0.709590,
		-0.981207, -0.184651, 0.056011,
		13.311257, 12.768499, 24.671158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.698950, 13.530798, 24.807358>,  <13.998102, 12.897755, 24.631950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.698950, 13.530798, 24.807358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388474, 13.288066, 24.875809>,  <13.202188, 13.142426, 24.916880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388474, 13.288066, 24.875809>,  <13.698950, 13.530798, 24.807358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388474, 13.288066, 24.875809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259851, 0.555182, 0.790095,
		-0.574462, 0.568796, -0.588613,
		-0.776190, -0.606831, 0.171129,
		13.155617, 13.106016, 24.927147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.987344, 13.963479, 25.061628>,  <13.698950, 13.530798, 24.807358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.987344, 13.963479, 25.061628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.982725, 13.587943, 25.199293>,  <12.979954, 13.362621, 25.281891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.982725, 13.587943, 25.199293>,  <12.987344, 13.963479, 25.061628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.982725, 13.587943, 25.199293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133422, 0.342552, 0.929977,
		-0.990992, -0.035181, -0.129218,
		-0.011547, -0.938840, 0.344160,
		12.979261, 13.306291, 25.302542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.416538, 13.922284, 25.517935>,  <12.987344, 13.963479, 25.061628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.416538, 13.922284, 25.517935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611156, 13.583388, 25.603216>,  <12.727927, 13.380051, 25.654385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611156, 13.583388, 25.603216>,  <12.416538, 13.922284, 25.517935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611156, 13.583388, 25.603216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128674, 0.171884, 0.976677,
		-0.864127, -0.502632, -0.025388,
		0.486546, -0.847241, 0.213206,
		12.757120, 13.329216, 25.667177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928190, 13.503572, 25.964262>,  <12.416538, 13.922284, 25.517935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928190, 13.503572, 25.964262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306997, 13.393898, 26.031172>,  <12.534282, 13.328094, 26.071318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306997, 13.393898, 26.031172>,  <11.928190, 13.503572, 25.964262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306997, 13.393898, 26.031172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198128, -0.088791, 0.976146,
		-0.252795, -0.957568, -0.138411,
		0.947016, -0.274188, 0.167276,
		12.591103, 13.311642, 26.081354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.865253, 12.828600, 26.335371>,  <11.928190, 13.503572, 25.964262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.865253, 12.828600, 26.335371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215304, 13.008718, 26.406237>,  <12.425335, 13.116788, 26.448757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215304, 13.008718, 26.406237>,  <11.865253, 12.828600, 26.335371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215304, 13.008718, 26.406237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259248, 0.127153, 0.957404,
		0.408586, -0.883780, 0.228013,
		0.875127, 0.450294, 0.177166,
		12.477842, 13.143806, 26.459387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.137290, 12.533024, 26.872847>,  <11.865253, 12.828600, 26.335371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.137290, 12.533024, 26.872847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.345877, 12.874061, 26.859213>,  <12.471028, 13.078683, 26.851032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.345877, 12.874061, 26.859213>,  <12.137290, 12.533024, 26.872847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.345877, 12.874061, 26.859213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148401, 0.129956, 0.980351,
		0.840268, -0.506162, 0.194294,
		0.521466, 0.852591, -0.034083,
		12.502316, 13.129838, 26.848988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562263, 12.487171, 27.500168>,  <12.137290, 12.533024, 26.872847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562263, 12.487171, 27.500168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547028, 12.873520, 27.397684>,  <12.537887, 13.105329, 27.336195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547028, 12.873520, 27.397684>,  <12.562263, 12.487171, 27.500168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547028, 12.873520, 27.397684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029224, 0.255207, 0.966445,
		0.998847, 0.044297, 0.018507,
		-0.038088, 0.965871, -0.256207,
		12.535602, 13.163281, 27.320822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.087756, 12.821184, 27.984140>,  <12.562263, 12.487171, 27.500168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.087756, 12.821184, 27.984140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.829215, 13.098152, 27.855902>,  <12.674090, 13.264333, 27.778959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.829215, 13.098152, 27.855902>,  <13.087756, 12.821184, 27.984140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.829215, 13.098152, 27.855902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005242, 0.424175, 0.905565,
		0.763020, 0.583634, -0.277797,
		-0.646353, 0.692421, -0.320595,
		12.635309, 13.305879, 27.759724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315434, 13.471640, 28.275970>,  <13.087756, 12.821184, 27.984140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315434, 13.471640, 28.275970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.937874, 13.553969, 28.172676>,  <12.711337, 13.603368, 28.110699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.937874, 13.553969, 28.172676>,  <13.315434, 13.471640, 28.275970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.937874, 13.553969, 28.172676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153456, 0.419042, 0.894905,
		0.292406, 0.884330, -0.363949,
		-0.943902, 0.205825, -0.258236,
		12.654703, 13.615717, 28.095205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
