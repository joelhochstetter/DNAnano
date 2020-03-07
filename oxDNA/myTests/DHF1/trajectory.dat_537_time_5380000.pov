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
	<0.112557, 2.813917, 0.897082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.261841, 3.103390, 1.129288>,  <0.351411, 3.277073, 1.268611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.261841, 3.103390, 1.129288>,  <0.112557, 2.813917, 0.897082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.261841, 3.103390, 1.129288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251072, 0.523592, -0.814134,
		-0.893127, 0.449595, 0.013713,
		0.373211, 0.723682, 0.580515,
		0.373804, 3.320494, 1.303442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.088690, 3.598210, 0.692396>,  <0.112557, 2.813917, 0.897082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.088690, 3.598210, 0.692396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.260460, 3.627541, 0.885357>,  <0.469950, 3.645139, 1.001133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.260460, 3.627541, 0.885357>,  <-0.088690, 3.598210, 0.692396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.260460, 3.627541, 0.885357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391071, 0.486115, -0.781508,
		-0.291809, 0.870813, 0.395642,
		0.872875, 0.073327, 0.482402,
		0.522323, 3.649539, 1.030078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.261620, 4.203023, 0.426199>,  <-0.088690, 3.598210, 0.692396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.261620, 4.203023, 0.426199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.567747, 4.050644, 0.633724>,  <0.751423, 3.959216, 0.758239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.567747, 4.050644, 0.633724>,  <0.261620, 4.203023, 0.426199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.567747, 4.050644, 0.633724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643272, 0.424963, -0.636873,
		0.022140, 0.821148, 0.570286,
		0.765318, -0.380949, 0.518813,
		0.797342, 3.936359, 0.789368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.636354, 4.656114, 0.790190>,  <0.261620, 4.203023, 0.426199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.636354, 4.656114, 0.790190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862452, 4.344040, 0.682999>,  <0.998110, 4.156796, 0.618684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862452, 4.344040, 0.682999>,  <0.636354, 4.656114, 0.790190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.862452, 4.344040, 0.682999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633580, 0.618621, -0.464634,
		0.528277, 0.092846, 0.843980,
		0.565243, -0.780185, -0.267978,
		1.032025, 4.109984, 0.602605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.341322, 4.869587, 0.938252>,  <0.636354, 4.656114, 0.790190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.341322, 4.869587, 0.938252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.389652, 4.562256, 0.686832>,  <1.418651, 4.377857, 0.535981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.389652, 4.562256, 0.686832>,  <1.341322, 4.869587, 0.938252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.389652, 4.562256, 0.686832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790881, 0.457176, -0.406814,
		0.599924, -0.447953, 0.662895,
		0.120826, -0.768328, -0.628548,
		1.425900, 4.331758, 0.498268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.018098, 4.768404, 0.970144>,  <1.341322, 4.869587, 0.938252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.018098, 4.768404, 0.970144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.897440, 4.623711, 0.617290>,  <1.825045, 4.536895, 0.405578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.897440, 4.623711, 0.617290>,  <2.018098, 4.768404, 0.970144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.897440, 4.623711, 0.617290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671136, 0.576606, -0.465941,
		0.677189, -0.732581, 0.068841,
		-0.301646, -0.361732, -0.882134,
		1.806946, 4.515191, 0.352650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.592120, 4.631051, 0.656630>,  <2.018098, 4.768404, 0.970144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.592120, 4.631051, 0.656630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.325817, 4.615452, 0.358570>,  <2.166036, 4.606092, 0.179734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.325817, 4.615452, 0.358570>,  <2.592120, 4.631051, 0.656630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.325817, 4.615452, 0.358570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604722, 0.556827, -0.569433,
		0.437126, -0.829712, -0.347128,
		-0.665756, -0.038998, -0.745149,
		2.126090, 4.603752, 0.135025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.973396, 4.426491, 0.095343>,  <2.592120, 4.631051, 0.656630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.973396, 4.426491, 0.095343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.655052, 4.637421, -0.023678>,  <2.464046, 4.763978, -0.095090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.655052, 4.637421, -0.023678>,  <2.973396, 4.426491, 0.095343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.655052, 4.637421, -0.023678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604933, 0.671572, -0.427840,
		-0.025784, -0.520499, -0.853473,
		-0.795859, 0.527325, -0.297551,
		2.416294, 4.795618, -0.112943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.012151, 5.922894, 5.201755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.833481, 5.967113, 4.846619>,  <2.726279, 5.993645, 4.633537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.833481, 5.967113, 4.846619>,  <3.012151, 5.922894, 5.201755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.833481, 5.967113, 4.846619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461190, -0.878790, 0.122605,
		-0.766672, 0.464227, 0.443518,
		-0.446675, 0.110548, -0.887840,
		2.699478, 6.000278, 4.580266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.269420, 5.899579, 5.332604>,  <3.012151, 5.922894, 5.201755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.269420, 5.899579, 5.332604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373314, 5.798580, 4.959770>,  <2.435650, 5.737981, 4.736070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373314, 5.798580, 4.959770>,  <2.269420, 5.899579, 5.332604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.373314, 5.798580, 4.959770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509280, -0.855888, 0.089940,
		-0.820471, 0.451332, -0.350895,
		0.259734, -0.252497, -0.932086,
		2.451234, 5.722831, 4.680144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.663995, 5.815691, 4.910887>,  <2.269420, 5.899579, 5.332604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.663995, 5.815691, 4.910887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958420, 5.590981, 4.759827>,  <2.135075, 5.456155, 4.669190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958420, 5.590981, 4.759827>,  <1.663995, 5.815691, 4.910887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.958420, 5.590981, 4.759827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541062, -0.823524, 0.170471,
		-0.406771, 0.078855, -0.910120,
		0.736063, -0.561775, -0.377651,
		2.179239, 5.422448, 4.646531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.377233, 5.403418, 4.384262>,  <1.663995, 5.815691, 4.910887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.377233, 5.403418, 4.384262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698112, 5.220360, 4.537643>,  <1.890640, 5.110525, 4.629673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698112, 5.220360, 4.537643>,  <1.377233, 5.403418, 4.384262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698112, 5.220360, 4.537643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567363, -0.784325, 0.250867,
		0.185945, -0.418803, -0.888836,
		0.802199, -0.457645, 0.383454,
		1.938772, 5.083066, 4.652679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.352215, 4.670768, 4.129657>,  <1.377233, 5.403418, 4.384262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.352215, 4.670768, 4.129657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.597816, 4.638214, 4.443695>,  <1.745178, 4.618681, 4.632118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.597816, 4.638214, 4.443695>,  <1.352215, 4.670768, 4.129657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.597816, 4.638214, 4.443695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439999, -0.861076, 0.254851,
		0.655285, -0.501921, -0.564514,
		0.614005, -0.081385, 0.785095,
		1.782018, 4.613799, 4.679224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.618945, 3.880549, 4.221213>,  <1.352215, 4.670768, 4.129657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.618945, 3.880549, 4.221213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.659966, 4.073662, 4.569099>,  <1.684578, 4.189529, 4.777831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.659966, 4.073662, 4.569099>,  <1.618945, 3.880549, 4.221213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.659966, 4.073662, 4.569099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443896, -0.760230, 0.474348,
		0.890191, -0.434709, 0.136341,
		0.102553, 0.482782, 0.869715,
		1.690731, 4.218496, 4.830014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.692947, 3.293402, 4.725295>,  <1.618945, 3.880549, 4.221213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.692947, 3.293402, 4.725295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.589874, 3.611626, 4.944633>,  <1.528030, 3.802560, 5.076237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.589874, 3.611626, 4.944633>,  <1.692947, 3.293402, 4.725295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.589874, 3.611626, 4.944633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430917, -0.602570, 0.671729,
		0.864818, -0.063199, 0.498092,
		-0.257683, 0.795560, 0.548347,
		1.512569, 3.850293, 5.109138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.899712, 3.118515, 5.354834>,  <1.692947, 3.293402, 4.725295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.899712, 3.118515, 5.354834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.617340, 3.396370, 5.410179>,  <1.447917, 3.563083, 5.443387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.617340, 3.396370, 5.410179>,  <1.899712, 3.118515, 5.354834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.617340, 3.396370, 5.410179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475008, -0.609215, 0.635000,
		0.525388, 0.382541, 0.760020,
		-0.705929, 0.694636, 0.138364,
		1.405561, 3.604761, 5.451688>
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
