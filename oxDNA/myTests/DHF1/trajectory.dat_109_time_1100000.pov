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
	<3.968250, 5.239293, 3.340393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.960955, 4.859116, 3.464537>,  <3.956578, 4.631009, 3.539023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.960955, 4.859116, 3.464537>,  <3.968250, 5.239293, 3.340393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.960955, 4.859116, 3.464537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940352, 0.121773, 0.317661,
		-0.339713, -0.286054, -0.895973,
		-0.018237, -0.950445, 0.310360,
		3.955484, 4.573982, 3.557645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.399515, 4.860753, 3.027313>,  <3.968250, 5.239293, 3.340393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.399515, 4.860753, 3.027313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479364, 4.678696, 3.374414>,  <3.527273, 4.569461, 3.582675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479364, 4.678696, 3.374414>,  <3.399515, 4.860753, 3.027313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.479364, 4.678696, 3.374414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953576, 0.113550, 0.278924,
		-0.225483, -0.883148, -0.411347,
		0.199623, -0.455143, 0.867753,
		3.539251, 4.542152, 3.634740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.998759, 4.319064, 3.197848>,  <3.399515, 4.860753, 3.027313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.998759, 4.319064, 3.197848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095964, 4.411163, 3.574768>,  <3.154287, 4.466423, 3.800920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095964, 4.411163, 3.574768>,  <2.998759, 4.319064, 3.197848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.095964, 4.411163, 3.574768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970014, 0.053513, 0.237085,
		0.004162, -0.971661, 0.236342,
		0.243013, 0.230242, 0.942302,
		3.168868, 4.480237, 3.857458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.635279, 3.860960, 3.609822>,  <2.998759, 4.319064, 3.197848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.635279, 3.860960, 3.609822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.729142, 4.169769, 3.846098>,  <2.785460, 4.355055, 3.987864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.729142, 4.169769, 3.846098>,  <2.635279, 3.860960, 3.609822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.729142, 4.169769, 3.846098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920222, -0.019393, 0.390915,
		0.313251, -0.635298, 0.705883,
		0.234658, 0.772024, 0.590690,
		2.799540, 4.401376, 4.023305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.511907, 3.736922, 4.329852>,  <2.635279, 3.860960, 3.609822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.511907, 3.736922, 4.329852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488622, 4.134048, 4.288036>,  <2.474651, 4.372324, 4.262947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488622, 4.134048, 4.288036>,  <2.511907, 3.736922, 4.329852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488622, 4.134048, 4.288036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943240, -0.020403, 0.331483,
		0.326969, 0.117901, 0.937652,
		-0.058213, 0.992816, -0.104538,
		2.471158, 4.431893, 4.256675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.273158, 4.027727, 4.971448>,  <2.511907, 3.736922, 4.329852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.273158, 4.027727, 4.971448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.187585, 4.281624, 4.674440>,  <2.136241, 4.433962, 4.496236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.187585, 4.281624, 4.674440>,  <2.273158, 4.027727, 4.971448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.187585, 4.281624, 4.674440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937420, 0.080377, 0.338798,
		0.274731, 0.768532, 0.577825,
		-0.213933, 0.634742, -0.742519,
		2.123405, 4.472047, 4.451684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.004196, 4.765134, 5.215343>,  <2.273158, 4.027727, 4.971448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.004196, 4.765134, 5.215343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868369, 4.626701, 4.865503>,  <1.786873, 4.543642, 4.655600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868369, 4.626701, 4.865503>,  <2.004196, 4.765134, 5.215343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.868369, 4.626701, 4.865503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929297, -0.020162, 0.368782,
		-0.145263, 0.937987, -0.314767,
		-0.339566, -0.346083, -0.874598,
		1.766499, 4.522877, 4.603124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.615492, 5.278588, 4.861540>,  <2.004196, 4.765134, 5.215343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.615492, 5.278588, 4.861540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.508691, 4.900665, 4.785595>,  <1.444610, 4.673912, 4.740028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.508691, 4.900665, 4.785595>,  <1.615492, 5.278588, 4.861540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.508691, 4.900665, 4.785595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853698, 0.140485, 0.501461,
		-0.447111, 0.295976, -0.844091,
		-0.267003, -0.944808, -0.189862,
		1.428590, 4.617223, 4.728636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.524979, 5.631241, 5.809443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596554, 5.890144, 5.513054>,  <0.639499, 6.045486, 5.335221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596554, 5.890144, 5.513054>,  <0.524979, 5.631241, 5.809443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.596554, 5.890144, 5.513054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741787, 0.583503, 0.330570,
		0.646323, 0.490492, 0.584537,
		0.178937, 0.647257, -0.740972,
		0.650235, 6.084321, 5.290762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.118468, 4.983348, 5.769933>,  <0.524979, 5.631241, 5.809443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.118468, 4.983348, 5.769933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.108301, 5.091995, 5.385105>,  <0.102201, 5.157183, 5.154208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.108301, 5.091995, 5.385105>,  <0.118468, 4.983348, 5.769933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.108301, 5.091995, 5.385105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957194, -0.270959, -0.101787,
		-0.288329, -0.923475, -0.253103,
		-0.025417, 0.271617, -0.962070,
		0.100676, 5.173481, 5.096484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.165591, 4.447650, 5.175073>,  <0.118468, 4.983348, 5.769933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.165591, 4.447650, 5.175073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.307465, 4.800316, 5.050579>,  <0.392589, 5.011915, 4.975883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.307465, 4.800316, 5.050579>,  <0.165591, 4.447650, 5.175073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.307465, 4.800316, 5.050579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820150, -0.453214, -0.349216,
		-0.448947, -0.131396, -0.883845,
		0.354685, 0.881665, -0.311234,
		0.413870, 5.064815, 4.957209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.737586, 4.280426, 4.719701>,  <0.165591, 4.447650, 5.175073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.737586, 4.280426, 4.719701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.783688, 4.677757, 4.721107>,  <0.811349, 4.916156, 4.721951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.783688, 4.677757, 4.721107>,  <0.737586, 4.280426, 4.719701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.783688, 4.677757, 4.721107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896101, -0.102444, -0.431866,
		-0.428625, 0.052926, -0.901931,
		0.115254, 0.993330, 0.003517,
		0.818264, 4.975756, 4.722163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.979868, 4.295549, 4.050579>,  <0.737586, 4.280426, 4.719701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.979868, 4.295549, 4.050579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.118475, 4.608864, 4.257030>,  <1.201639, 4.796853, 4.380901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.118475, 4.608864, 4.257030>,  <0.979868, 4.295549, 4.050579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.118475, 4.608864, 4.257030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889928, -0.100551, -0.444879,
		-0.296570, 0.613476, -0.731910,
		0.346518, 0.783285, 0.516129,
		1.222430, 4.843850, 4.411869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.212341, 4.791689, 3.583993>,  <0.979868, 4.295549, 4.050579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.212341, 4.791689, 3.583993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.443134, 4.803001, 3.910500>,  <1.581610, 4.809789, 4.106403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.443134, 4.803001, 3.910500>,  <1.212341, 4.791689, 3.583993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.443134, 4.803001, 3.910500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816711, -0.030416, -0.576245,
		0.008532, 0.999137, -0.040646,
		0.576984, 0.028279, 0.816266,
		1.616229, 4.811485, 4.155379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.853329, 5.265033, 3.452879>,  <1.212341, 4.791689, 3.583993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.853329, 5.265033, 3.452879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.925840, 5.012199, 3.754238>,  <1.969347, 4.860499, 3.935054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.925840, 5.012199, 3.754238>,  <1.853329, 5.265033, 3.452879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.925840, 5.012199, 3.754238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961071, -0.048570, -0.271998,
		0.208517, 0.773377, 0.598672,
		0.181279, -0.632083, 0.753398,
		1.980224, 4.822575, 3.980258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.517652, 5.432869, 3.807718>,  <1.853329, 5.265033, 3.452879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.517652, 5.432869, 3.807718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.444113, 5.041809, 3.848507>,  <2.399989, 4.807173, 3.872980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.444113, 5.041809, 3.848507>,  <2.517652, 5.432869, 3.807718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.444113, 5.041809, 3.848507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967828, -0.198172, -0.155040,
		0.171783, 0.070188, 0.982631,
		-0.183848, -0.977651, 0.101972,
		2.388958, 4.748514, 3.879099>
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
