--
-- PostgreSQL database dump
--

-- Dumped from database version 11.13
-- Dumped by pg_dump version 13.3

-- Started on 2021-11-07 16:41:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 197 (class 1259 OID 41056)
-- Name: DIGIMON; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DIGIMON" (
    "NUMBER" integer NOT NULL,
    "DIGIMON" character varying(30),
    "STAGE" character varying(30),
    "TYPE" character varying(30),
    "ATTRIBUTE" character varying(30),
    "MEMORY" integer,
    "EQUIP_SLOTS" integer,
    "LV50_HP" integer,
    "LV50_SP" integer,
    "LV50_ATK" integer,
    "LV50_DEF" integer,
    "LV50_INT" integer,
    "LV50_SPD" integer
);


ALTER TABLE public."DIGIMON" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 41080)
-- Name: MOVES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MOVES" (
    "NUMBER" integer NOT NULL,
    "MOVE_NAME" character varying(30),
    "SP_COST" character varying(30),
    "TYPE" character varying(30),
    "POWER" character varying(30),
    "ATTRIBUTE" character varying(30),
    "INHERITABLE" integer NOT NULL,
    "DESCRIPTION" character varying(200),
    CONSTRAINT "MOVES_INHERITABLE_check" CHECK ((("INHERITABLE" = 0) OR ("INHERITABLE" = 1)))
);


ALTER TABLE public."MOVES" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 41048)
-- Name: Test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Test" (
);


ALTER TABLE public."Test" OWNER TO postgres;

--
-- TOC entry 2818 (class 0 OID 41056)
-- Dependencies: 197
-- Data for Name: DIGIMON; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DIGIMON" ("NUMBER", "DIGIMON", "STAGE", "TYPE", "ATTRIBUTE", "MEMORY", "EQUIP_SLOTS", "LV50_HP", "LV50_SP", "LV50_ATK", "LV50_DEF", "LV50_INT", "LV50_SPD") FROM stdin;
1	Kuramon	Baby	Free	Neutral	2	0	590	77	79	69	68	95
2	Pabumon	Baby	Free	Neutral	2	0	950	62	76	76	69	68
3	Punimon	Baby	Free	Neutral	2	0	870	50	97	87	50	75
4	Botamon	Baby	Free	Neutral	2	0	690	68	77	95	76	61
5	Poyomon	Baby	Free	Neutral	2	0	540	98	54	59	95	86
6	Koromon	In-Training	Free	Fire	3	0	940	52	109	93	52	76
7	Tanemon	In-Training	Free	Plant	3	0	1030	64	85	82	73	69
8	Tsunomon	In-Training	Free	Earth	3	0	930	54	107	92	54	76
9	Tsumemon	In-Training	Free	Dark	3	0	930	64	108	64	54	93
10	Tokomon	In-Training	Free	Neutral	3	0	640	86	76	74	74	103
11	Nyaromon	In-Training	Free	Light	3	0	540	107	54	64	103	94
12	Pagumon	In-Training	Free	Dark	3	0	550	103	60	63	102	93
13	Yokomon	In-Training	Free	Plant	3	0	1040	64	82	82	75	69
14	Bukamon	In-Training	Free	Water	3	0	830	93	54	74	103	69
15	Motimon	In-Training	Free	Neutral	3	0	1030	63	82	81	78	69
16	Wanyamon	In-Training	Free	Wind	3	0	830	82	79	75	75	82
17	Agumon	Rookie	Vaccine	Fire	5	1	1030	59	131	103	54	86
18	Agumon (Blk)	Rookie	Virus	Fire	5	1	1020	56	124	108	56	85
19	Armadillomon	Rookie	Free	Earth	4	1	1160	85	67	111	65	72
20	Impmon	Rookie	Virus	Dark	5	1	530	114	83	65	114	102
21	Elecmon	Rookie	Data	Electric	4	1	930	93	82	79	79	90
22	Otamamon	Rookie	Virus	Water	4	1	930	105	52	75	113	78
23	Gaomon	Rookie	Data	Neutral	5	1	1030	69	118	74	66	101
24	Gazimon	Rookie	Virus	Dark	4	1	970	71	123	64	59	102
25	Gabumon	Rookie	Data	Fire	5	1	980	88	94	81	79	91
26	Gabumon (Blk)	Rookie	Virus	Fire	5	1	950	83	99	89	74	91
27	Guilmon	Rookie	Virus	Fire	5	1	1050	69	133	74	54	101
28	Kudamon	Rookie	Vaccine	Light	5	1	590	128	53	74	117	105
29	Keramon	Rookie	Free	Dark	5	1	1030	74	123	69	61	101
30	Gotsumon	Rookie	Data	Earth	5	1	790	79	93	118	90	72
31	Goblimon	Rookie	Virus	Earth	4	1	1050	51	115	110	51	84
32	Gomamon	Rookie	Vaccine	Water	5	1	1160	69	93	93	81	79
33	Syakomon	Rookie	Virus	Water	4	1	870	100	53	86	112	78
34	Solarmon	Rookie	Vaccine	Light	4	1	1030	88	69	108	71	77
35	Terriermon	Rookie	Vaccine	Wind	4	1	690	93	84	75	84	112
36	Tentomon	Rookie	Vaccine	Plant	4	1	750	79	86	110	93	73
37	ToyAgumon	Rookie	Vaccine	Neutral	4	1	1110	87	72	112	63	71
38	Dorumon	Rookie	Data	Neutral	5	1	1020	65	128	79	56	101
39	Hagurumon	Rookie	Virus	Electric	4	1	1090	91	66	110	69	71
40	Patamon	Rookie	Data	Wind	4	1	880	93	79	74	92	90
41	Hackmon	Rookie	Data	Fire	5	1	1030	59	118	108	63	85
42	Palmon	Rookie	Data	Plant	5	1	1140	65	103	90	80	79
43	DemiDevimon	Rookie	Virus	Dark	4	1	650	87	89	76	89	111
44	Biyomon	Rookie	Vaccine	Wind	4	1	830	93	85	79	85	91
45	Falcomon	Rookie	Vaccine	Wind	5	1	740	93	94	79	79	113
46	Veemon	Rookie	Free	Neutral	5	1	1040	74	130	74	53	101
47	Salamon	Rookie	Vaccine	Light	4	1	540	118	59	69	119	97
48	Betamon	Rookie	Virus	Water	4	1	870	101	61	76	113	78
49	Hawkmon	Rookie	Free	Wind	5	1	690	88	99	79	83	114
50	Lalamon	Rookie	Data	Plant	4	1	1100	74	87	87	79	79
51	Lucemon	Rookie	Vaccine	Light	14	1	1230	148	59	104	208	119
52	Renamon	Rookie	Data	Plant	5	1	930	93	89	74	89	93
53	Lopmon	Rookie	Data	Earth	4	1	790	79	103	68	103	85
54	Wormmon	Rookie	Free	Plant	4	1	760	76	92	111	90	71
55	IceDevimon	Champion	Virus	Water	8	1	990	94	140	89	118	92
56	Aquilamon	Champion	Free	Wind	8	1	840	108	109	89	89	143
57	Ankylomon	Champion	Free	Earth	6	2	1330	98	89	133	79	79
58	Ikkakumon	Champion	Vaccine	Water	8	1	1330	84	118	102	94	90
59	Wizardmon	Champion	Data	Dark	8	1	690	138	74	79	143	118
60	Woodmon	Champion	Virus	Plant	6	2	1480	74	109	103	89	88
61	ExVeemon	Champion	Free	Neutral	8	1	1030	118	104	94	94	118
62	Angemon	Champion	Vaccine	Light	8	1	940	94	128	89	128	99
63	Ogremon	Champion	Virus	Earth	8	1	1230	64	155	118	64	97
64	Guardromon	Champion	Virus	Electric	6	2	990	84	108	138	103	79
65	GaoGamon	Champion	Data	Wind	8	1	740	108	109	94	99	138
66	Kabuterimon	Champion	Vaccine	Plant	6	2	890	89	108	128	116	81
67	ShellNumemon	Champion	Virus	Water	6	2	1280	103	79	148	74	79
68	Gargomon	Champion	Vaccine	Electric	6	2	1030	103	109	99	89	108
69	Garurumon	Champion	Vaccine	Fire	8	1	890	108	99	94	94	138
70	Garurumon (Blk)	Champion	Virus	Fire	8	1	890	108	109	104	79	133
71	Kyubimon	Champion	Data	Fire	8	1	740	138	59	84	138	128
72	Growlmon	Champion	Virus	Fire	8	1	1180	79	143	113	69	109
73	Kurisarimon	Champion	Free	Dark	8	1	1280	84	153	79	64	113
74	Greymon	Champion	Vaccine	Fire	8	1	1230	74	148	118	64	104
75	Greymon (Blue)	Champion	Virus	Fire	8	1	1280	74	153	118	59	99
76	Clockmon	Champion	Data	Electric	6	2	1030	118	64	101	133	92
77	Kuwagamon	Champion	Virus	Plant	6	2	1180	69	153	113	59	99
78	Gekomon	Champion	Virus	Water	6	2	1130	123	68	89	128	90
79	Geremon	Champion	Virus	Electric	6	2	1380	99	104	128	64	78
80	GoldNumemon	Champion	Virus	Light	6	2	1130	124	59	84	143	88
81	Cyclonemon	Champion	Virus	Earth	6	2	940	84	131	128	93	81
82	Sunflowmon	Champion	Data	Plant	6	2	1180	113	64	89	141	86
83	Seadramon	Champion	Data	Water	6	2	1080	118	64	99	134	88
84	GeoGreymon	Champion	Vaccine	Fire	8	1	1330	89	143	84	64	118
85	Sukamon	Champion	Virus	Earth	6	2	1430	98	89	133	69	79
86	Starmon	Champion	Data	Neutral	6	2	1080	98	104	109	91	101
87	Stingmon	Champion	Free	Plant	8	1	1130	84	143	74	74	133
88	Socerimon	Champion	Vaccine	Water	8	1	1030	123	64	93	148	90
89	Tankmon	Champion	Data	Electric	6	2	940	84	113	141	98	81
90	Tyrannomon	Champion	Data	Fire	6	2	1230	59	148	125	59	97
91	Gatomon	Champion	Vaccine	Light	8	1	640	143	69	79	143	123
92	Devimon	Champion	Virus	Dark	8	1	990	94	133	84	125	97
93	Togemon	Champion	Data	Plant	8	1	1330	84	108	113	93	90
94	Dorugamon	Champion	Data	Earth	8	1	1180	84	138	89	69	123
95	Nanimon	Champion	Virus	Earth	6	2	1070	84	108	133	98	81
96	Numemon	Champion	Virus	Earth	6	2	1380	99	84	138	69	83
97	Birdramon	Champion	Vaccine	Fire	8	1	940	113	94	84	109	128
98	Bakemon	Champion	Virus	Dark	6	2	590	148	64	74	138	128
99	Veedramon	Champion	Vaccine	Wind	8	1	1180	84	138	113	64	114
100	PlatinumSukamon	Champion	Virus	Neutral	6	2	1380	98	79	138	79	79
101	BlackGatomon	Champion	Virus	Dark	8	1	690	133	84	84	133	118
102	Vegiemon	Champion	Virus	Plant	6	2	1380	79	113	106	87	88
103	Peckmon	Champion	Vaccine	Wind	8	1	790	113	104	84	94	148
104	Meramon	Champion	Data	Fire	6	2	1130	69	138	113	79	99
105	Frigimon	Champion	Vaccine	Water	6	2	1380	83	103	98	99	90
106	Leomon	Champion	Vaccine	Earth	8	1	1180	69	143	123	71	97
107	Reppamon	Champion	Vaccine	Light	8	1	790	118	94	99	99	143
108	Waspmon	Champion	Virus	Electric	6	2	1180	74	133	99	74	113
109	MegaKabuterimon	Ultimate	Vaccine	Plant	12	2	1430	115	94	163	109	92
110	Antylamon	Ultimate	Data	Neutral	12	2	940	123	124	109	114	168
111	Andromon	Ultimate	Vaccine	Electric	12	2	1040	94	133	157	133	95
112	Meteormon	Ultimate	Data	Earth	12	2	1090	104	123	163	128	89
113	Infermon	Ultimate	Free	Dark	14	1	1330	99	198	89	74	153
114	Myotismon	Ultimate	Virus	Dark	14	1	1290	113	148	99	148	110
115	AeroVeedramon	Ultimate	Vaccine	Wind	14	1	1430	94	163	99	94	153
116	Etemon	Ultimate	Virus	Dark	12	2	1130	133	104	119	129	133
117	Angewomon	Ultimate	Vaccine	Light	14	1	890	163	69	94	188	143
118	Okuwamon	Ultimate	Virus	Plant	12	2	1330	74	158	158	74	119
119	Garudamon	Ultimate	Vaccine	Fire	12	2	1040	123	124	109	129	143
120	Gigadramon	Ultimate	Virus	Wind	12	2	1240	94	137	148	113	100
121	CannonBeemon	Ultimate	Virus	Electric	12	2	990	123	129	139	99	143
122	GrapLeomon	Ultimate	Vaccine	Electric	12	2	1580	89	163	99	79	143
123	Cyberdramon	Ultimate	Vaccine	Dark	14	1	1480	81	173	143	79	122
124	Shakkoumon	Ultimate	Free	Light	14	1	1530	135	84	158	139	92
125	Cherrymon	Ultimate	Virus	Plant	12	2	1630	108	113	133	114	100
126	Silphymon	Ultimate	Free	Wind	14	1	1040	138	119	119	124	158
127	SuperStarmon	Ultimate	Data	Light	12	2	1180	128	122	134	109	120
128	SkullGreymon	Ultimate	Virus	Dark	14	1	1230	79	203	153	69	119
129	Zudomon	Ultimate	Vaccine	Water	12	2	1630	84	150	128	104	102
130	Taomon	Ultimate	Data	Dark	12	2	990	148	69	104	173	138
131	Chirinmon	Ultimate	Vaccine	Light	14	1	940	133	124	119	124	168
132	Digitamamon	Ultimate	Data	Neutral	12	2	1380	89	128	148	111	102
133	SkullMeramon	Ultimate	Data	Fire	12	2	1530	79	183	133	70	113
134	ShogunGekomon	Ultimate	Virus	Water	12	2	1980	96	113	113	99	97
135	DoruGreymon	Ultimate	Data	Fire	14	1	1480	84	161	153	84	116
136	Knightmon	Ultimate	Data	Neutral	12	2	1140	109	135	158	123	92
137	Datamon	Ultimate	Virus	Electric	12	2	1180	133	74	114	175	102
138	Paildramon	Ultimate	Free	Neutral	14	1	1280	133	139	124	109	128
139	Panjyamon	Ultimate	Vaccine	Water	12	2	1280	128	124	114	111	126
140	Pumpkinmon	Ultimate	Data	Earth	10	3	1480	97	123	108	119	111
141	Piximon	Ultimate	Data	Light	12	2	990	123	104	104	134	153
142	BlackKingNumemon	Ultimate	Virus	Dark	10	3	1580	113	89	168	89	89
143	BlueMeramon	Ultimate	Virus	Fire	12	2	1140	109	148	94	133	119
144	Vademon	Ultimate	Virus	Dark	10	3	1130	165	64	94	173	97
145	Whamon	Ultimate	Vaccine	Water	12	2	1680	93	123	123	124	100
146	MagnaAngemon	Ultimate	Vaccine	Light	14	1	1180	143	98	119	163	105
147	MachGaogamon	Ultimate	Data	Wind	12	2	1480	89	158	89	89	158
148	Mamemon	Ultimate	Data	Earth	10	3	1480	113	111	153	84	97
149	MegaSeadramon	Ultimate	Data	Water	12	2	1330	138	86	114	158	102
150	Megadramon	Ultimate	Virus	Wind	12	2	1430	79	158	148	69	119
151	WarGrowlmon	Ultimate	Virus	Fire	14	1	1430	84	178	138	87	116
152	MetalGreymon	Ultimate	Vaccine	Fire	14	1	1530	84	168	148	80	113
153	MetalGreymon (Blue)	Ultimate	Virus	Fire	14	1	1670	84	173	143	69	110
154	MetalTyrannomon	Ultimate	Virus	Electric	12	2	1090	104	130	178	118	92
155	MetalMamemon	Ultimate	Data	Electric	10	3	1040	99	123	153	128	103
156	Monzaemon	Ultimate	Vaccine	Neutral	12	2	1580	93	128	118	119	100
157	Crowmon	Ultimate	Vaccine	Wind	12	2	890	128	119	104	119	173
158	RizeGreymon	Ultimate	Vaccine	Fire	14	1	1530	94	178	109	69	143
159	Lilamon	Ultimate	Data	Plant	12	2	1280	148	69	104	168	114
160	Rapidmon	Ultimate	Vaccine	Electric	12	2	1180	113	114	109	119	143
161	Lillymon	Ultimate	Data	Plant	12	2	890	153	74	94	163	158
162	Lucemon FM	Ultimate	Virus	Neutral	22	1	1390	139	163	114	203	139
163	LadyDevimon	Ultimate	Virus	Dark	14	1	890	163	99	94	158	143
164	WereGarurumon	Ultimate	Vaccine	Earth	12	2	1430	89	178	89	79	153
165	WereGarurumon (Blk)	Ultimate	Virus	Earth	12	2	1480	79	183	104	69	148
166	Wisemon	Ultimate	Virus	Dark	12	2	790	168	69	84	198	133
167	Alphamon	Mega	Vaccine	Neutral	22	1	1390	128	158	183	158	130
168	UlforceVeedramon	Mega	Vaccine	Wind	22	1	1680	129	188	109	104	198
169	Ebemon	Mega	Virus	Electric	16	3	1230	178	74	114	198	129
170	Imperialdramon DM	Mega	Free	Fire	20	2	1730	143	139	139	139	148
171	Imperialdramon FM	Mega	Free	Neutral	20	2	1780	114	198	124	114	153
172	Vikemon	Mega	Free	Water	18	3	1780	105	158	143	129	133
173	VenomMyotismon	Mega	Virus	Dark	20	2	1540	120	193	104	148	138
174	WarGreymon	Mega	Vaccine	Fire	20	2	1630	98	193	163	99	140
175	Examon	Mega	Data	Wind	22	1	1630	148	174	129	129	153
176	Ophanimon	Mega	Vaccine	Light	20	2	840	183	104	164	193	153
177	Gaiomon	Mega	Virus	Fire	18	3	1630	99	203	129	94	158
178	ChaosGallantmon	Mega	Virus	Dark	22	1	1340	139	178	139	163	144
179	Gankoomon	Mega	Data	Fire	22	1	2080	90	188	163	109	138
180	Kuzuhamon	Mega	Data	Dark	18	3	1380	163	84	129	193	139
181	GranKuwagamon	Mega	Virus	Plant	18	3	1530	88	178	178	89	140
182	GroundLocomon	Mega	Data	Electric	18	3	1140	114	144	213	133	128
183	Craniamon	Mega	Vaccine	Earth	22	1	1630	143	124	208	134	124
184	Kerpymon (Good)	Mega	Vaccine	Light	20	1	1290	188	94	104	208	158
185	SaberLeomon	Mega	Data	Wind	18	3	1680	99	228	104	84	163
186	Sakuyamon	Mega	Data	Light	18	3	990	178	94	114	188	173
187	Jesmon	Mega	Data	Neutral	22	1	1480	119	198	149	114	168
188	ShineGreymon	Mega	Vaccine	Light	20	2	1880	114	203	109	84	158
189	Justimon	Mega	Vaccine	Light	18	3	1530	99	193	158	99	144
190	Kentaurosmon	Mega	Vaccine	Light	22	1	1140	153	139	154	154	183
191	Seraphimon	Mega	Vaccine	Light	20	2	1480	162	94	144	198	135
192	MegaGargomon	Mega	Vaccine	Electric	18	3	1430	132	149	139	119	144
193	TigerVespamon	Mega	Virus	Electric	18	3	1630	104	193	114	99	173
194	Titamon	Mega	Virus	Earth	18	3	1930	99	183	128	114	129
195	Dianamon	Mega	Data	Water	20	1	790	178	89	154	198	183
196	Diaboromon	Mega	Free	Dark	20	2	1680	114	243	104	79	173
197	Creepymon	Mega	Virus	Dark	22	1	1440	133	183	114	183	140
198	Gallantmon	Mega	Virus	Light	22	1	1480	148	149	154	149	148
199	Dynasmon	Mega	Data	Wind	22	1	1680	114	213	129	94	178
200	Leopardmon	Mega	Data	Light	22	1	990	188	124	114	183	188
201	Leopardmon LM	Mega	Data	Earth	25	1	1290	153	159	129	139	218
202	HiAndromon	Mega	Vaccine	Electric	18	3	1190	114	153	178	138	124
203	Barbamon	Mega	Virus	Dark	22	1	1330	184	84	129	233	133
204	BanchoLeomon	Mega	Vaccine	Earth	18	3	1630	84	193	188	80	138
205	Piedmon	Mega	Virus	Dark	18	3	890	178	129	104	183	163
206	Puppetmon	Mega	Virus	Plant	18	3	1140	114	163	163	148	124
207	PlatinumNumemon	Mega	Virus	Neutral	16	3	1830	132	94	178	109	120
208	BlackWarGreymon	Mega	Virus	Fire	20	2	1730	93	183	178	89	140
209	PrinceMamemon	Mega	Data	Neutral	16	3	1630	137	104	173	109	130
210	Plesiomon	Mega	Data	Water	18	3	1680	153	74	114	188	129
211	HerculesKabuterimon	Mega	Vaccine	Plant	18	3	1680	128	114	168	124	124
212	Beelzemon	Mega	Virus	Dark	22	1	1680	114	228	119	99	168
213	Belphemon SM	Mega	Virus	Dark	22	1	1730	178	89	114	203	139
214	Hououmon	Mega	Vaccine	Fire	18	3	1390	173	84	99	193	158
215	Magnadramon	Mega	Vaccine	Light	20	2	1880	168	89	124	183	129
216	Boltmon	Mega	Data	Electric	18	3	1580	83	198	163	84	140
217	Mastemon	Mega	Vaccine	Neutral	22	1	1340	144	173	134	173	149
218	MarineAngemon	Mega	Vaccine	Water	18	3	1190	198	64	89	203	153
219	Minervamon	Mega	Virus	Neutral	20	1	1580	114	208	114	119	168
220	MirageGaogamon	Mega	Data	Wind	18	3	1480	114	183	114	109	178
221	Machinedramon	Mega	Virus	Electric	18	3	1240	114	173	183	128	124
222	MetalEtemon	Mega	Virus	Earth	18	3	1630	128	134	188	89	124
223	MetalGarurumon	Mega	Data	Water	18	3	1140	143	154	129	129	178
224	MetalGarurumon (Blk)	Mega	Virus	Electric	18	3	1190	128	163	173	133	130
225	MetalSeadramon	Mega	Data	Water	18	3	1430	148	99	139	168	129
226	RustTyranomon	Mega	Virus	Electric	18	3	1680	83	218	163	74	140
227	Leviamon	Mega	Virus	Water	22	1	1730	120	168	158	144	133
228	Lilithmon	Mega	Virus	Dark	22	1	940	203	99	104	223	173
229	Ravemon	Mega	Vaccine	Wind	18	3	1040	143	139	119	139	203
230	Crusadermon	Mega	Virus	Dark	22	1	1240	153	144	139	144	193
231	Rosemon	Mega	Data	Plant	18	3	1330	147	144	129	149	144
232	Lotosmon	Mega	Data	Plant	18	3	940	188	74	109	213	168
233	Imperialdramon PM	Ultra	Vaccine	Light	25	1	1530	158	154	154	154	153
234	Omnimon	Ultra	Vaccine	Light	25	1	1680	104	208	168	134	144
235	Omnimon Zwart	Ultra	Vaccine	Dark	25	1	1490	139	153	193	158	134
236	Belphemon RM	Ultra	Virus	Dark	25	0	1780	84	247	168	109	140
237	Lucemon SM	Ultra	Virus	Dark	25	0	1490	173	89	124	233	158
238	Flamedramon	Armor	Free	Fire	8	3	1130	93	119	99	89	138
239	Magnamon	Armor	Free	Earth	22	2	1240	124	168	208	148	124
240	Rapidmon (Armor)	Armor	Vaccine	Light	18	3	1140	114	158	178	158	124
241	Kerpymon (Blk)	Mega	Virus	Dark	20	1	1290	188	94	94	223	153
242	Beelzemon BM	Mega	Virus	Dark	25	1	1680	114	238	124	104	178
243	Darkdramon	Mega	Virus	Electric	18	3	1580	94	188	148	99	139
244	Chaosmon	Ultra	Vaccine	Neutral	25	2	1080	129	318	94	89	188
245	Valkyrimon	Mega	Free	Wind	18	3	1330	139	148	129	129	168
246	ShineGreymon BM	Mega	Vaccine	Fire	22	2	1980	114	228	104	84	168
247	MirageGaogamon BM	Mega	Data	Light	20	2	1440	124	178	104	158	174
248	Ravemon BM	Mega	Vaccine	Wind	20	2	1040	133	149	139	144	213
249	Rosemon BM	Mega	Data	Plant	20	2	1480	143	149	139	159	143
\.


--
-- TOC entry 2819 (class 0 OID 41080)
-- Dependencies: 198
-- Data for Name: MOVES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MOVES" ("NUMBER", "MOVE_NAME", "SP_COST", "TYPE", "POWER", "ATTRIBUTE", "INHERITABLE", "DESCRIPTION") FROM stdin;
1	Wolkenapalm I	3	Physical	65	Fire	1	Physical attack, 65 Fire damage to one foe. 95% accuracy.
2	Wolkenapalm II	6	Physical	85	Fire	1	Physical attack, 85 Fire damage to one foe. 95% accuracy.
3	Wolkenapalm III	9	Physical	105	Fire	1	Physical attack, 105 Fire damage to one foe. 95% accuracy.
4	Burst Flame I	3	Magic	55	Fire	1	Magic attack, 55 Fire damage to one foe. 95% accuracy.
5	Burst Flame II	6	Magic	75	Fire	1	Magic attack, 75 Fire damage to one foe. 95% accuracy.
6	Burst Flame III	9	Magic	95	Fire	1	Magic attack, 95 Fire damage to one foe. 95% accuracy.
7	Meteor Fall I	4	Physical	30	Fire	1	Physical attack, 30 Fire damage to all foes. 95% accuracy.
8	Meteor Fall II	7	Physical	45	Fire	1	Physical attack, 45 Fire damage to all foes. 95% accuracy.
9	Meteor Fall III	10	Physical	75	Fire	1	Physical attack, 75 Fire damage to all foes. 95% accuracy.
10	Panic Wisp	10	Magic	30	Fire	1	Magic attack, 30 Fire damage to one foe. Inflicts Panic status effect.
11	Ice Archery I	3	Physical	65	Water	1	Physical attack, 65 Water damage to one foe. 95% accuracy.
12	Ice Archery II	6	Physical	85	Water	1	Physical attack, 85 Water damage to one foe. 95% accuracy.
13	Ice Archery III	9	Physical	105	Water	1	Physical attack, 105 Water damage to one foe. 95% accuracy.
14	Hydro Water I	3	Magic	55	Water	1	Magic attack, 55 Water damage to one foe. 95% accuracy.
15	Hydro Water II	6	Magic	75	Water	1	Magic attack, 75 Water damage to one foe. 95% accuracy.
16	Hydro Water III	9	Magic	95	Water	1	Magic attack, 95 Water damage to one foe. 95% accuracy.
17	Ocean Wave I	4	Magic	20	Water	1	Magic attack, 20 Water damage to all foes. 95% accuracy.
18	Ocean Wave II	7	Magic	35	Water	1	Magic attack, 35 Water damage to all foes. 95% accuracy.
19	Ocean Wave III	10	Magic	65	Water	1	Magic attack, 65 Water damage to all foes. 95% accuracy.
20	Idle Bubble	10	Magic	30	Water	1	Magic attack, 30 Water damage to one foe. Inflicts Sleep status effect.
21	Crescent Leaf I	3	Physical	65	Plant	1	Physical attack, 65 Plant damage to one foe. 95% accuracy.
22	Crescent Leaf II	6	Physical	85	Plant	1	Physical attack, 85 Plant damage to one foe. 95% accuracy.
23	Crescent Leaf III	9	Physical	105	Plant	1	Physical attack, 105 Plant damage to one foe. 95% accuracy.
24	Gaia Element I	3	Magic	55	Plant	1	Magic attack, 55 Plant damage to one foe. 95% accuracy.
25	Gaia Element II	6	Magic	75	Plant	1	Magic attack, 75 Plant damage to one foe. 95% accuracy.
26	Gaia Element III	9	Magic	95	Plant	1	Magic attack, 95 Plant damage to one foe. 95% accuracy.
27	Rune Forest I	4	Magic	20	Plant	1	Magic attack, 20 Plant damage to all foes. 95% accuracy.
28	Rune Forest II	7	Magic	35	Plant	1	Magic attack, 35 Plant damage to all foes. 95% accuracy.
29	Rune Forest III	10	Magic	65	Plant	1	Magic attack, 65 Plant damage to all foes. 95% accuracy.
30	Venom Trap	10	Physical	40	Plant	1	Physical attack, 40 Plant damage to one foe. Inflicts Poison status effect.
31	Nanomachine Break I	3	Physical	65	Thunder	1	Physical attack, 65 Thunder damage to one foe. 95% accuracy.
32	Nanomachine Break II	6	Physical	85	Thunder	1	Physical attack, 85 Thunder damage to one foe. 95% accuracy.
33	Nanomachine Break III	9	Physical	105	Thunder	1	Physical attack, 105 Thunder damage to one foe. 95% accuracy.
34	Heaven's Thunder I	3	Magic	55	Thunder	1	Magic attack, 55 Thunder damage to one foe. 95% accuracy.
35	Heaven's Thunder II	6	Magic	75	Thunder	1	Magic attack, 75 Thunder damage to one foe. 95% accuracy.
36	Heaven's Thunder III	9	Magic	95	Thunder	1	Magic attack, 95 Thunder damage to one foe. 95% accuracy.
37	Thunder Fall I	4	Physical	30	Thunder	1	Physical attack, 30 Thunder damage to all foes. 95% accuracy.
38	Thunder Fall II	7	Physical	45	Thunder	1	Physical attack, 45 Thunder damage to all foes. 95% accuracy.
39	Thunder Fall III	10	Physical	75	Thunder	1	Physical attack, 75 Thunder damage to all foes. 95% accuracy.
40	Ripping Net	10	Physical	40	Thunder	1	Physical attack, 40 Thunder damage to one foe. Inflicts Paralyze status effect.
41	Comet Hammer I	3	Physical	65	Earth	1	Physical attack, 65 Earth damage to one foe. 95% accuracy.
42	Comet Hammer II	6	Physical	85	Earth	1	Physical attack, 85 Earth damage to one foe. 95% accuracy.
43	Comet Hammer III	9	Physical	105	Earth	1	Physical attack, 105 Earth damage to one foe. 95% accuracy.
44	Grand Rock I	3	Magic	55	Earth	1	Magic attack, 55 Earth damage to one foe. 95% accuracy.
45	Grand Rock II	6	Magic	75	Earth	1	Magic attack, 75 Earth damage to one foe. 95% accuracy.
46	Grand Rock III	9	Magic	95	Earth	1	Magic attack, 95 Earth damage to one foe. 95% accuracy.
47	Awesome Quake I	4	Physical	30	Earth	1	Physical attack, 30 Earth damage to all foes. 95% accuracy.
48	Awesome Quake II	7	Physical	45	Earth	1	Physical attack, 45 Earth damage to all foes. 95% accuracy.
49	Awesome Quake III	10	Physical	75	Earth	1	Physical attack, 75 Earth damage to all foes. 95% accuracy.
50	Shock	10	Physical	40	Earth	1	Physical attack, 40 Earth damage to one foe. Inflicts Stun status effect.
51	Wind Claw I	3	Physical	65	Wind	1	Physical attack, 65 Wind damage to one foe. 95% accuracy.
52	Wind Claw II	6	Physical	85	Wind	1	Physical attack, 85 Wind damage to one foe. 95% accuracy.
53	Wind Claw III	9	Physical	105	Wind	1	Physical attack, 105 Wind damage to one foe. 95% accuracy.
54	Sonic Void I	3	Magic	55	Wind	1	Magic attack, 55 Wind damage to one foe. 95% accuracy.
55	Sonic Void II	6	Magic	75	Wind	1	Magic attack, 75 Wind damage to one foe. 95% accuracy.
56	Sonic Void III	9	Magic	95	Wind	1	Magic attack, 95 Wind damage to one foe. 95% accuracy.
57	Gale Storm I	4	Physical	30	Wind	1	Physical attack, 30 Wind damage to all foes. 95% accuracy.
58	Gale Storm II	7	Physical	45	Wind	1	Physical attack, 45 Wind damage to all foes. 95% accuracy.
59	Gale Storm III	10	Physical	75	Wind	1	Physical attack, 75 Wind damage to all foes. 95% accuracy.
60	Texture Blow	10	Physical	40	Wind	1	Physical attack, 40 Wind damage to one foe. Inflicts Dot status effect.
61	Saint Knuckle I	3	Physical	65	Light	1	Physical attack, 65 Light damage to one foe. 95% accuracy.
62	Saint Knuckle II	6	Physical	85	Light	1	Physical attack, 85 Light damage to one foe. 95% accuracy.
63	Saint Knuckle III	9	Physical	105	Light	1	Physical attack, 105 Light damage to one foe. 95% accuracy.
64	Holy Light I	3	Magic	55	Light	1	Magic attack, 55 Light damage to one foe. 95% accuracy.
65	Holy Light II	6	Magic	75	Light	1	Magic attack, 75 Light damage to one foe. 95% accuracy.
66	Holy Light III	9	Magic	95	Light	1	Magic attack, 95 Light damage to one foe. 95% accuracy.
67	Shining Laser I	4	Magic	20	Light	1	Magic attack, 20 Light damage to all foes. 95% accuracy.
68	Shining Laser II	7	Magic	35	Light	1	Magic attack, 35 Light damage to all foes. 95% accuracy.
69	Shining Laser III	10	Magic	65	Light	1	Magic attack, 65 Light damage to all foes. 95% accuracy.
70	Support End	10	Magic	30	Light	1	Magic attack, 30 Light damage to one foe. Prevents the use of support skills.
71	Destruction Cannon I	3	Physical	65	Dark	1	Physical attack, 65 Dark damage to one foe. 95% accuracy.
72	Destruction Cannon II	6	Physical	85	Dark	1	Physical attack, 85 Dark damage to one foe. 95% accuracy.
73	Destruction Cannon III	9	Physical	105	Dark	1	Physical attack, 105 Dark damage to one foe. 95% accuracy.
74	Nightmare I	3	Magic	55	Dark	1	Magic attack, 55 Dark damage to one foe. 95% accuracy.
75	Nightmare II	6	Magic	75	Dark	1	Magic attack, 75 Dark damage to one foe. 95% accuracy.
76	Nightmare III	9	Magic	95	Dark	1	Magic attack, 95 Dark damage to one foe. 95% accuracy.
77	Hell Crusher I	4	Magic	20	Dark	1	Magic attack, 20 Dark damage to all foes. 95% accuracy.
78	Hell Crusher II	7	Magic	35	Dark	1	Magic attack, 35 Dark damage to all foes. 95% accuracy.
79	Hell Crusher III	10	Magic	65	Dark	1	Magic attack, 65 Dark damage to all foes. 95% accuracy.
80	Destruction	10	Physical	40	Dark	1	Physical attack, 40 Dark damage to one foe. 10% chance to inflict Death.
81	Heavy Strike I	3	Physical	70	Neutral	1	Physical attack, 70 Neutral damage to one foe. 95% accuracy.
82	Heavy Strike II	6	Physical	90	Neutral	1	Physical attack, 90 Neutral damage to one foe. 95% accuracy.
83	Heavy Strike III	9	Physical	110	Neutral	1	Physical attack, 110 Neutral damage to one foe. 95% accuracy.
84	Power Energy I	3	Magic	60	Neutral	1	Magic attack, 60 Neutral damage to one foe. 95% accuracy.
85	Power Energy II	6	Magic	80	Neutral	1	Magic attack, 80 Neutral damage to one foe. 95% accuracy.
86	Power Energy III	9	Magic	100	Neutral	1	Magic attack, 100 Neutral damage to one foe. 95% accuracy.
87	Mach Rush I	4	Physical	35	Neutral	1	Physical attack, 35 Neutral damage to all foes. 95% accuracy.
88	Mach Rush II	7	Physical	50	Neutral	1	Physical attack, 50 Neutral damage to all foes. 95% accuracy.
89	Mach Rush III	10	Physical	80	Neutral	1	Physical attack, 80 Neutral damage to all foes. 95% accuracy.
90	Physical Drain	3	Physical	50	Neutral	1	Physical attack, 50 Neutral damage to one foe. Absorb 10% SP.
91	Spirit Drain	3	Magic	40	Neutral	1	Magic attack, 40 Neutral damage to one foe. Absorb 10% SP.
92	Character Reversal	10	Magic	30	Neutral	1	Magic attack, 30 Neutral damage to one foe. Inflicts Bug status effect.
93	Heal	4	Support	0	Neutral	1	Restores a little HP for one party member.
94	X-Heal	8	Support	0	Neutral	1	Restores HP for one party member.
95	Final Heal	16	Support	0	Neutral	1	Restores a lot of HP for one party member.
96	Aura	10	Support	0	Neutral	1	Restores a little HP for all party members.
97	X-Aura	25	Support	0	Neutral	1	Restores HP for all party members.
98	Final Aura	40	Support	0	Neutral	1	Restores a lot of HP for all party members.
99	Revive	30	Support	0	Neutral	1	Revive one fallen party member with 50% HP.
100	Perfect Revival	60	Support	0	Neutral	1	Revive all fallen party members with full HP.
101	Anti-Poison	4	Support	0	Neutral	1	Recover Poison from one party member and restore some HP.
102	Anti-Panic	4	Support	0	Neutral	1	Recover Panic from one party member and restore some HP.
103	Anti-Paralysis	4	Support	0	Neutral	1	Recover Paralyze from one party member and restore some HP.
104	Anti-Sleep	4	Support	0	Neutral	1	Recover Sleep from one party member and restore some HP.
105	Anti-Stun	4	Support	0	Neutral	1	Recover Stun from one party member and restore some HP.
106	Anti-Dot	4	Support	0	Neutral	1	Recover Dot from one party member and restore some HP.
107	Anti-Bug	4	Support	0	Neutral	1	Recover Bug from one party member and restore some HP.
108	Restore	8	Support	0	Neutral	1	Remove all status effects from one party member and restore some HP.
109	Dispel	8	Support	0	Neutral	1	Remove basic debuffs from one party member and restore some HP.
110	Attack Charge	6	Support	0	Neutral	1	Increases ATK of one member by 10%.
111	Attack Charge Field	20	Support	0	Neutral	1	Increases ATK of all battle members by 10%.
112	Guard Charge	6	Support	0	Neutral	1	Increases DEF of one member by 10%.
113	Guard Charge Field	20	Support	0	Neutral	1	Increases DEF of all battle members by 10%.
114	Mental Charge	6	Support	0	Neutral	1	Increases INT of one member by 10%.
115	Mental Charge Field	20	Support	0	Neutral	1	Increases INT of all battle members by 10%.
116	Speed Charge	6	Support	0	Neutral	1	Increases SPD of one member by 10%.
117	Speed Charge Field	20	Support	0	Neutral	1	Increases SPD of all battle members by 10%.
118	Hit Charge	6	Support	0	Neutral	1	Increases ACC of one battle member by 10%.
119	Agility Charge	6	Support	0	Neutral	1	Increases EVA of one battle member by 10%.
120	Critical Charge	6	Support	0	Neutral	1	Increases CRIT of one battle member by 10%.
121	Attack Break	6	Support	0	Neutral	1	Reduces ATK of one enemy by 10%.
122	Attack Break Field	20	Support	0	Neutral	1	Reduces ATK of all enemies by 10%.
123	Guard Break	6	Support	0	Neutral	1	Reduces DEF of one enemy by 10%.
124	Guard Break Field	20	Support	0	Neutral	1	Reduces DEF of all enemies by 10%.
125	Mental Break	6	Support	0	Neutral	1	Reduces INT of one enemy by 10%.
126	Mental Break Field	20	Support	0	Neutral	1	Reduces INT of all enemies by 10%.
127	Speed Break	6	Support	0	Neutral	1	Reduces SPD of one enemy by 10%.
128	Speed Break Field	20	Support	0	Neutral	1	Reduces SPD of all enemies by 10%.
129	Acceleration Boost	6	Support	0	Neutral	1	Doubles damage output in the next turn.
130	Cross-Counter	6	Support	0	Neutral	1	Counterattacks the enemy when you receive a physical attack.
131	Mirror Reflection	6	Support	0	Neutral	1	Counterattacks the enemy when you receive a magic attack.
132	Status Barrier	16	Support	0	Neutral	1	Make one member immune to all status effects.
133	Safety Guard	32	Support	0	Neutral	1	Make one member endure all attacks that could kill you once.
134	Chain Plus	4	Support	0	Neutral	1	Increase COMBO for one member by 50%.
135	Chain Max	8	Support	0	Neutral	1	Increase COMBO for one member by 100%.
136	Chain Minus	4	Support	0	Neutral	1	Reduce COMBO for one enemy by 50%.
137	Chain Loss	8	Support	0	Neutral	1	Reduce COMBO for one enemy by 100%.
138	Escape Dash	0	Support	0	Neutral	1	Flee from a battle.
139	Bubbles	2	Magic	30	Water	0	Magic attack, 30 Water damage to one foe. 90% accuracy.
140	Pepper Breath	5	Physical	70	Fire	0	Physical attack, 70 Fire damage to one foe.
141	Spitfire Blast	5	Physical	35	Fire	0	Physical attack, 35 Fire damage to all foes. 10% chance of increasing ATK by 10%.
142	Diamond Shell	5	Physical	60	Earth	0	Physical attack, 60 Earth damage to one foe. 10% chance of increasing DEF by 10%.
143	Summon	5	Fixed	0	Neutral	0	Fixed damage of 100 to one foe. 30% chance of increasing INT by 10%.
144	Thunder Cloud	5	Magic	30	Electric	0	2 magic attacks, 30 Electric damage to one foe.
145	Lullaby Bubble	5	Magic	55	Water	0	Magic attack, 55 Water damage to one foe. 10% chance of putting target to sleep.
146	Double Backhand	5	Physical	20	Neutral	0	2 physical attacks, 20 Neutral damage to all foes.
147	Electric Stun Blast	5	Physical	65	Electric	0	Physical attack, 65 Electric damage to one foe. 15% chance of paralyzing target.
148	Blue Blaster	5	Physical	65	Fire	0	Physical attack, 65 Fire damage to one foe. 10% chance of reducing target's DEF by 10%.
149	Little Horn	5	Physical	70	Neutral	0	Physical attack, 70 Neutral damage to one foe. 10% chance of reducing target's DEF by 10%.
150	Rock Breaker	5	Physical	70	Earth	0	Physical attack, 70 Earth damage to one foe.
151	Blinding Ray	5	Magic	65	Light	0	Magic attack, 65 Light damage to one foe.
152	Crazy Giggle	5	Physical	75	Dark	0	Physical attack, 75 Dark damage to one foe.
153	Rock Fist	5	Physical	65	Earth	0	Physical attack, 65 Earth damage to one foe. 10% chance of increasing DEF by 10%.
154	Goblin Strike	5	Physical	65	Fire	0	Physical attack, 65 Fire damage to one foe. 10% chance of stunning target.
155	Marching Fishes	5	Physical	15	Water	0	1-3 physical attacks, 15 Water damage to all foes.
156	Black Pearl Blast	5	Magic	25	Water	0	Magic attack, 25 Water damage to all foes.
157	Shiny Ring	5	Physical	70	Dark	0	Physical attack, 70 Dark damage to one foe. Alwatys hits.
158	Terrier Tornado	5	Magic	20	Wind	0	Magic attack, 20 Wind damage to all foes.
159	Super Shocker	5	Magic	60	Electric	0	Magic attack, 60 Electric damage to one foe.
160	Plastic Blaze	5	Physical	60	Fire	0	Physical attack, 60 Fire damage to one foe. 10% chance of reducing target's INT by 10%.
161	Metal Cannon	5	Physical	70	Neutral	0	Physical attack, 70 Neutral damage to one foe. 30% chance of increasing DEF by 10%.
162	Cog Crusher	5	Physical	70	Dark	0	Physical attack, 70 Dark damage to one foe. Always hits.
163	Air Shot	5	Magic	50	Wind	0	Magic attack, 50 Wind damage to one foe. 10% chance of increasing SPD by 10%.
164	Fifth Rush	5	Physical	20	Earth	0	5 physical attacks, 20 Earth damage to one foe. 80% accuracy.
165	Poison Ivy	5	Physical	65	Plant	0	Physical attack, 65 Plant damage to one foe. 10% chance of poisoning target.
166	Demi Darts	5	Physical	20	Dark	0	Physical attack, 20 Dark damage to all foes, absorbs 5% into HP.
167	Spiral Twister	5	Magic	55	Fire	0	Magic attack, 55 Fire damage to one foe. 10% chance of increasing INT by 10%.
168	Ninja Blade	5	Physical	35	Wind	0	Physical attack, 35 Wind damage to all foes.
169	Veemon Headbutt	5	Physical	75	Neutral	0	Physical attack, 75 Neutral damage to one foe.
170	Puppy Howl	10	Magic	0	Light	0	INT-penetrating attack, Light damage to one foe. 10% chance of paralyzing target.
171	Electric Shock	5	Magic	55	Electric	0	Magic attack, 55 Electric damage to one foe. 10% chance of paralyzing target.
172	Feather Slash	10	Physical	0	Wind	0	DEF-penetrating attack, Wind damage to one foe.
173	Seed Blast	5	Physical	15	Plant	0	2 physical attacks, 15 Plant damage to all foes.
174	Grand Cross	30	Physical	0	Light	0	INT-penetrating attack, Light damage to all foes.
175	Diamond Storm	5	Magic	25	Plant	0	Magic attack, 25 Plant damage to all foes.
176	Blazing Ice	5	Magic	60	Water	0	Magic attack, 60 Water damage to one foe.
177	Sticky Net	5	Physical	65	Plant	0	Physical attack, 65 Plant damage to one foe. 30% chance of reducing target's SPD by 10%.
178	Frozen Claw	20	Physical	0	Water	0	DEF-penetrating attack, Water damage to one foe.
179	Glide Horn	10	Physical	85	Wind	0	Physical attack, 85 Wind damage to one foe. 15% chance of stunning target.
180	Tail Hammer	10	Physical	85	Earth	0	Physical attack, 85 Earth damage to one foe. 15% chance of stunning target.
181	Harpoon Torpedo	10	Physical	90	Fire	0	Physical attack, 90 Fire damage to one foe. Always hits.
182	Thunder Cloud II	10	Magic	75	Electric	0	Magic attack, 75 Electric damage to one foe. 10% chance of paralyzing target.
183	Branch Drain	10	Physical	75	Plant	0	Physical attack, 75 Plant damage to one foe, absorbs 20% into HP.
184	Vee Laser	10	Physical	95	Light	0	Physical attack, 95 Light damage to one foe.
185	Heaven's Knuckle	10	Physical	80	Light	0	Physical attack, 80 Light damage to one foe. 10% chance of increasing ATK & INT by 10%.
186	Pummel Whack	10	Physical	90	Dark	0	Physical attack, 90 Dark damage to one foe.
187	D-Grenade	10	Physical	40	Fire	0	Physical attack, 40 Fire damage to all foes. Always hits.
188	Spiral Blow	10	Physical	90	Wind	0	Physical attack, 90 Wind damage to one foe.
189	Electro Shocker	10	Magic	80	Electric	0	Magic attack, 80 Electric damage to one foe.
190	Mature Poop	10	Physical	75	Earth	0	Physical attack, 75 Earth damage to one foe. 30% chance of reducing target's INT by 10%.
191	Dumdum Uppercut	10	Physical	90	Neutral	0	Physical attack, 90 Neutral damage to one foe. 10% chance of stunning target.
192	Fox Fire	10	Physical	85	Fire	0	Physical attack, 85 Fire damage to one foe. 10% chance of increasing SPD by 10%.
193	Freeze Fang	10	Physical	85	Water	0	Physical attack, 85 Water damage to one foe. 10% chance of increasing SPD by 10%.
194	Will-o'-Wisp	10	Magic	30	Fire	0	Magic attack, 30 Fire damage to all foes.
195	Exhaust Flame	10	Physical	85	Fire	0	Physical attack, 85 Fire damage to one foe. 10% chance of increasing ATK by 10%.
196	Data Crusher	10	Physical	90	Dark	0	Physical attack, 90 Dark damage to one foe. 5% chance of instantly killing target.
197	Mega Flame	10	Physical	95	Fire	0	Physical attack, 95 Fire damage to one foe.
198	Bit Fire	10	Physical	30	Fire	0	3 physical attacks, 30 Fire damage to one foe.
199	Chrono Breaker	10	Fixed	0	Neutral	0	Fixed damage of 150 to one foe. 30% chance of reducing target's SPD by 10%.
200	Scissor Claw	20	Physical	0	Neutral	0	DEF-penetrating attack, Neutral damage to one foe.
201	Symphony Crusher	20	Magic	0	Neutral	0	INT-penetrating attack, Neutral damage to one foe.
202	Hyper Smell	10	Physical	70	Earth	0	Physical attack, 70 Earth damage to one foe. 15% chance of confusing or paralyzing.
203	Golden Rush	10	Physical	10	Light	0	2 physical attacks, 10 Light damage to all foes. 1% chance of instantly killing target.
204	Hyper Heat	10	Physical	85	Fire	0	Physical attack, 85 Fire damage to one foe. 10% chance of reducing target's DEF by 10%.
205	Sunshine Beam	10	Magic	80	Light	0	Magic attack, 80 Light damage to one foe.
206	Ice Blast	10	Magic	75	Water	0	Magic attack, 75 Water damage to one foe. 10% chance of reducing target's SPD by 10%.
207	Mega Burst	10	Physical	45	Fire	0	Physical attack, 45 Fire damage to all foes.
208	Poop	10	Physical	75	Earth	0	Physical attack, 75 Earth damage to one foe. 30% chance of reducing target's SPD by 10%.
209	Meteor Shower	10	Physical	40	Neutral	0	Physical attack, 40 Neutral damage to all foes. 90% accuracy. Tends to critical more often.
210	Spiking Strike	20	Physical	0	Plant	0	DEF-penetrating attack, Plant damage to one foe. Tends to critical more often.
211	Crystal Cloud	10	Magic	30	Water	0	Magic attack, 30 Water damage to all foes.
212	Hyper Cannon	10	Physical	200	Fire	0	Physical attack, 200 Fire damage to one foe. Cannot move from recoil for one turn.
213	Fire Breath	10	Physical	90	Fire	0	Physical attack, 90 Fire damage to one foe. Tends to critical more often.
214	Lightning Paw	10	Fixed	0	Neutral	0	Fixed damage of 150 to one foe. 60% chance of confusing target.
215	Death Claw	10	Fixed	0	Neutral	0	Fixed damage of 200 to one foe. Absorbs 20% of the damage as HP.
216	Needle Spray	10	Physical	40	Plant	0	Physical attack, 40 Plant damage to all foes. 5% chance of paralyzing target.
217	Power Metal	10	Physical	90	Neutral	0	Physical attack, 90 Neutral damage to one foe. 30% chance of increasing attack by 10%.
218	Poop Dunk	10	Physical	80	Earth	0	Physical attack, 80 Earth damage to one foe. 30% chance of reducing target's DEF by 10%.
219	Poop Toss	10	Physical	75	Earth	0	Physical attack, 75 Earth damage to one foe. 30% chance of reducing target's ATK by 10%.
220	Meteor Wing	10	Magic	25	Fire	0	Magic attack, 25 Fire damage to all foes. 10% chance of increasing SPD by 10%.
221	Death Charm	10	Direct	0	Neutral	0	Reduce 10% HP from one enemy.
222	V-Nova Blast	10	Physical	105	Fire	0	Physical attack, 105 Fire damage to one foe. After use, receive 5% HP damage from recoil.
223	Rare Metal Poop	10	Physical	80	Earth	0	Physical attack, 80 Earth damage to one foe. Causes Knockback.
224	Super Stinky Jet	10	Magic	20	Earth	0	Magic attack, 20 Earth damage to all foes. 30% chance of reducing target's SPD by 10%.
225	Kunai Wing	10	Physical	30	Wind	0	3 physical attacks, 30 Wind damage to one foe.
226	Burning Fist	10	Physical	80	Fire	0	Physical attack, 80 Fire damage to one foe. 30% chance of increasing ATK by 10%.
227	Sub-zero Ice Punch	10	Physical	80	Water	0	Physical attack, 80 Water damage to one foe. 10% chance of stunning target.
228	Fist of the Beast King	10	Physical	95	Earth	0	Physical attack, 95 Earth damage to one foe.
229	Razor Wind	10	Physical	30	Neutral	0	2-4 physical attacks, 30 Neutral damage to one foe.
230	Turbo Stinger	10	Physical	25	Electric	0	4 physical attacks, 25 Electric damage to one foe.
231	Horn Buster	30	Magic	0	Electric	0	INT-penetrating attack, double Electric damage to one foe.
232	Bunny Blades	15	Physical	55	Wind	0	2 physical attacks, 55 Wind damage to one foe.
233	Spiral Sword	15	Physical	110	Electric	0	Physical attack, 110 Electric damage to one foe. Tends to critical more often.
234	Galactic Flare	15	Magic	55	Neutral	0	Magic attack, 55 Neutral damage to all foes.
235	Spider Shooter	15	Physical	30	Fire	0	4 physical attacks, 30 Fire damage to one foe. 5% chance of reducing target's DEF by 10%.
236	Night Raid	15	Magic	65	Dark	0	Magic attack, 65 Dark damage to all foes, absorbs 15% into HP.
237	Dragon Impulse	15	Physical	115	Wind	0	Physical attack, 115 Wind damage to one foe.
238	Love Serenade	30	Magic	0	Dark	0	INT-penetrating attack, Dark damage to all foes. 15% chance of paralyzing target.
239	Celestial Arrow	15	Magic	100	Light	0	Magic attack, 100 Light damage to one foe. Always hits.
240	Double Scissor Claw	30	Physical	0	Neutral	0	DEF-penetrating attack, double Neutral damage to one foe.
241	Shadow Wing	15	Magic	65	Fire	0	Magic attack, 65 Fire damage to all foes.
242	Genocidal Gears	15	Physical	60	Fire	0	Physical attack, 60 Fire damage to all foes.
243	Nitro Stinger	30	Physical	0	Electric	0	DEF-penetrating attack, double Electric damage to one foe.
244	The King of Fists	15	Physical	55	Wind	0	1-3 physical attacks, 55 Wind damage to one foe. 15% chance of stunning target.
245	Desolation Claw	15	Physical	115	Neutral	0	Physical attack, 115 Neutral damage to one foe. 10% chance of instantly killing target.
246	Disaster Blaster	15	Magic	65	Light	0	Magic attack, 65 Light damage to all foes.
247	Cherry Bomb	15	Physical	65	Plant	0	Physical attack, 65 Plant damage to all foes.
248	Top Gun	15	Magic	110	Wind	0	Magic attack, 110 Wind damage to one foe.
249	Superstar Uppercut	15	Physical	110	Light	0	Physical attack, 110 Light damage to one foe.
250	Oblivion Bird	15	Physical	110	Fire	0	Physical attack, 110 Fire damage to one foe. 30% chance of reducing target's DEF by 10%.
251	Vulcan's Hammer	15	Physical	115	Electric	0	Physical attack, 115 Electric damage to one foe.
252	Talisman of Light	15	Magic	105	Dark	0	Magic attack, 105 Dark damage to one foe.
253	Wind Cutter Sword	15	Physical	40	Wind	0	3 physical attacks, 40 Wind damage to one foe.
254	Nightmare Syndrome	15	Magic	0	Neutral	0	Reduce 15% HP from one enemy. 20% chance of putting target to sleep.
255	Heavy Metal Fire	15	Physical	110	Fire	0	Physical attack, 110 Fire damage to one foe. 30% chance of increasing DEF by 10%.
256	Musical Fist	30	Magic	0	Neutral	0	INT-penetrating attack, Neutral damage to all with 10% chance of reducing ATK/INT by 10%.
257	Metal Meteor	15	Physical	115	Earth	0	Physical attack, 115 Earth damage to one foe.
258	Berserk Sword	15	Direct	0	Neutral	0	Inflict Death on one enemy. 30% accuracy.
259	Digital Bomb	15	Magic	80	Fire	0	Magic attack, 80 Fire damage to one foe. 5% chance of reducing base stats by 10%.
260	Death Parade Blaster	15	Physical	40	Light	0	2 physical attacks, 40 Light damage to all foes.
261	Fist of Ice	15	Physical	110	Water	0	Physical attack, 110 Water damage to one foe. 15% chance of stunning target.
262	Trick or Treat	15	Physical	100	Neutral	0	Physical attack, 100 Neutral damage to one foe. Decrease target's INT by 10%.
263	Pit Bomb	15	Magic	105	Fire	0	Magic attack, 105 Fire damage to one foe.
264	Dark Pupil	15	Physical	110	Dark	0	Physical attack, 110 Dark damage to one foe. 20% chance of poisoning target.
265	Cold Flame	15	Physical	100	Fire	0	Physical attack, 100 Fire damage to one foe. 10% chance of increasing INT by 10%.
266	Unidentified Flying Kiss	15	Magic	95	Dark	0	Magic attack, 95 Dark damage to one foe. 15% chance of dotting target.
267	Tidal Wave	15	Magic	65	Water	0	Magic attack, 65 Water damage to all foes.
268	Heaven's Gate	15	Magic	100	Light	0	Magic attack, 100 Light damage to one foe. 10% chance of instantly killing target.
269	Winning Knuckle	15	Physical	115	Neutral	0	Physical attack, 115 Neutral damage to one foe. 20% chance of stunning target.
270	Smile Bomber	15	Physical	110	Fire	0	Physical attack, 110 Fire damage to one foe. Always hits.
271	Lightning Javelin	15	Magic	105	Electric	0	Magic attack, 105 Electric damage to one foe.
272	Genocide Attack	15	Physical	110	Fire	0	Physical attack, 110 Fire damage to one foe. Tends to critical more often.
273	Atomic Blaster	15	Physical	250	Electric	0	Physical attack, 250 Electric damage to one foe. Cannot move from recoil for one turn.
274	Giga Destroyer	15	Physical	115	Fire	0	Physical attack, 115 Fire damage to one foe.
275	Revenge Flame	15	Direct	0	Neutral	0	Counterattack the enemy when you receive a physical or magic attack.
276	Nuclear Laser	30	Physical	0	Electric	0	DEF-penetrating attack, Electric damage to one foe. 30% chance of increasing DEF by 10%.
277	Energy Bomb	15	Magic	100	Electric	0	Magic attack, 100 Electric damage to one foe. Always hits.
278	Hearts Attack	30	Magic	0	Neutral	0	INT-penetrating attack, Neutral damage to one foe. 20% chance of confusing target.
279	Savage Emperor	15	Magic	105	Light	0	Magic attack, 105 Light damage to one foe.
280	Trident Revolver	15	Physical	40	Fire	0	3 physical attacks, 40 Fire damage to one foe.
281	Lila Shower	15	Magic	60	Plant	0	Magic attack, 60 Plant damage to all foes. 20% chance of poisoning target.
282	Golden Triangle I	15	Magic	90	Electric	0	Magic attack, 90 Electric damage to one foe. 5% chance of increasing base stats by 10%.
283	Flower Cannon	15	Magic	105	Plant	0	Magic attack, 105 Plant damage to one foe.
284	Dead or Alive	25	Magic	110	Neutral	0	Magic attack, 110 Neutral damage to one foe. 10% to inflict a status effect, 5% chance of instantly killing target.
285	Darkness Wave	15	Magic	35	Dark	0	2 magic attacks, 35 Dark damage to all foes.
286	Wolf Claw	15	Physical	120	Neutral	0	Physical attack, 120 Neutral damage to one foe.
287	Full Moon Kick	15	Physical	110	Earth	0	Physical attack, 110 Earth damage to one foe. 30% chance of increasing SPD by 10%.
288	Pandora Dialogue	15	Magic	0	Neutral	0	Reduces HP of all foes by 20%. Receive damage equal to 10% of HP from recoil.
289	Blade of the Dragon King	25	Physical	30	Light	0	3-6 physical attacks, 30 Light damage to one foe.
290	The Ray of Victory	25	Physical	100	Light	0	Physical attack, 100 Light damage to all. Always hits. 10% chance increasing SPD by 10%.
291	Brain Rupture	20	Magic	115	Electric	0	Magic attack, 115 Electric damage to one foe. 20% chance of confusing target.
292	Megadeath	20	Magic	95	Dark	0	Magic attack, 95 Dark damage to all foes.
293	Positron Laser	20	Physical	150	Light	0	Physical attack, 150 Light damage to one foe.
294	Arctic Blizzard	20	Physical	125	Water	0	Physical attack, 125 Water damage to one foe. 25% chance of stunning target.
295	Venom Infusion	20	Physical	135	Dark	0	Physical attack, 135 Dark damage to one foe. 30% chance of poisoning target.
296	Terra Force	20	Physical	90	Fire	0	Physical attack, 90 Fire damage to all foes. 30% chance of increasing ATK by 20%.
297	Pendragon's Glory	25	Physical	135	Wind	0	Physical attack, 135 Wind damage to one foe.
298	Eden's Javelin	20	Magic	120	Light	0	Magic attack, 120 Light damage to one foe. 30% chance of increasing INT by 20%.
299	Will-O'-Wisp Slash	20	Physical	65	Fire	0	2 physical attacks, 65 Fire damage to one foe.
300	Demonic Disaster	25	Physical	140	Dark	0	Physical attack, 140 Dark damage to one foe.
301	Quake!Blast!Fire!Father!	25	Physical	35	Fire	0	4 physical attacks, 35 Fire damage to one foe.
302	Taizoukai Mandala	20	Magic	70	Dark	0	Magic attack, 70 Dark damage to all foes. Cancel target's positive effects.
303	Dimension Scissor	40	Physical	0	Plant	0	DEF-penetrating attack, double Plant damage to one foe. Tends to critical more often.
304	Destruction Crush	20	Magic	80	Earth	0	Magic attack, 80 Earth damage to all foes.
305	Waltz's End	25	Physical	30	Neutral	0	3 physical attacks, 30 Neutral damage to all foes.
306	Heaven's Judgment	20	Magic	90	Light	0	Magic attack, 90 Light damage to all foes. Tends to critical more often.
307	Howling Crusher	20	Physical	65	Earth	0	2 physical attacks, 65 Earth damage to one foe.
308	Amethyst Mandala	20	Magic	70	Light	0	Magic attack, 70 Light damage to all foes. Cancel target's positive effects.
309	Judgement of the Blade	25	Physical	30	Neutral	0	5 physical attacks, 30 Neutral damage to one foe.
310	GeoGrey Sword	20	Physical	130	Fire	0	Physical attack, 130 Fire damage to one foe. Increases ATK by 10%.
311	Justice Kick	20	Physical	130	Neutral	0	Physical attack, 130 Neutral damage to one foe. 1% chance of increasing ATK by 50%.
312	Bifrost	25	Magic	120	Light	0	Magic attack, 120 Light damage to one foe. Increases SPD by 10%.
313	Strike of the Seven Stars	20	Magic	15	Light	0	7 magic attacks, 15 Light damage to all foes.
314	Burst Shot	20	Physical	50	Fire	0	2 physical attacks, 50 Fire damage to all foes.
315	Mach Stinger V	20	Physical	20	Electric	0	6 physical attacks, 20 Electric damage to one foe. Tends to critical more often.
316	Soul Core Attack	40	Physical	0	Earth	0	DEF-penetrating attack, double Earth damage to one foe.
317	Good Night Moon	20	Magic	125	Light	0	Magic attack, 125 Light damage to one foe. Puts target to sleep.
318	Catastrophe Cannon	20	Physical	80	Fire	0	3 physical attacks, 80 Fire damage to a foe. Cannot move from recoil for one turn.
319	Flame Inferno	25	Magic	90	Fire	0	Magic attack, 90 Fire damage to all foes.
320	Lightning Joust	25	Physical	140	Light	0	Physical attack, 140 Light damage to one foe. 30% chance of increasing DEF by 10%.
321	Wyvern's Breath	25	Physical	110	Wind	0	Physical attack, 110 Wind damage to all foes. Receive recoil damage equal to 20% of HP.
322	Extinction Wave	25	Magic	80	Light	0	Magic attack, 80 Light damage to all foes. Always hits.
323	Vulcan Crusher	30	Physical	145	Earth	0	Physical attack, 145 Earth damage to one foe. 35% chance of stunning target. 95% accuracy.
324	Atomic Ray	20	Physical	125	Electric	0	Physical attack, 125 Electric damage to one foe. 20% chance of stunning target.
325	Pandemonium Lost	25	Magic	80	Dark	0	Magic attack, 80 Dark damage to all foes, absorbs 20% into HP.
326	Flashy Boss Punch	20	Physical	130	Light	0	Physical attack, 130 Light damage to one foe. 50% chance of stunning target.
327	Trump Sword	20	Magic	35	Neutral	0	4 magic attacks, 35 Neutral damage to one foe.
328	Puppet Pummel	20	Physical	125	Earth	0	Physical attack, 125 Earth damage to one foe. 25% chance of stunning target.
329	Platinum Junk	20	Physical	30	Earth	0	4 physical attacks, 30 Earth damage to one foe. 30% chance of reducing target's ATK by 10%.
330	Dark Terra Force	20	Physical	100	Dark	0	Physical attack, 100 Dark damage to all foes. 30% chance of increasing DEF by 20%.
331	Smile Warhead	20	Physical	130	Neutral	0	Physical attack, 130 Neutral damage to one foe. 50% chance to cause knockback.
332	Sorrow Blue	40	Magic	0	Water	0	INT-penetrating attack, Water damage to all foes. 25% chance of putting target to sleep.
333	Giga Blaster	20	Magic	120	Electric	0	Magic attack, 120 Electric damage to one foe.
334	Double Impact	25	Physical	20	Dark	0	8 physical attacks, 20 Dark damage to one foe. 90% accuracy.
335	Eternal Nightmare	50	Magic	0	Dark	0	INT-penetrating attack, Dark damage to all foes. 50% chance of putting target to sleep.
336	Starlight Explosion	20	Magic	80	Fire	0	Magic attack, 80 Fire damage to all foes.
337	Fire Tornado	20	Magic	80	Light	0	Magic attack, 80 Light damage to all foes.
338	Tomahawk Stinger	20	Physical	130	Neutral	0	Physical attack, 130 Neutral damage to one foe. 15% chance of confusing target.
339	Chaos Degradation	25	Direct	0	Neutral	0	Reduces HP of all foes by 25%.
340	Ocean Love	20	Support	0	Neutral	0	Restore HP to all battle members and recover all status effects.
341	Strike Roll	20	Physical	140	Neutral	0	Physical attack, 140 Neutral damage to one foe. Tends to critical more often.
342	Full Moon Blaster	20	Physical	135	Light	0	Physical attack, 135 Light damage to one foe. Always hits.
343	Infinity Cannon	20	Physical	115	Electric	0	Physical attack, 115 Electric damage to all foes. 80% accuracy.
344	Banana Slip	20	Magic	115	Dark	0	Magic attack, 115 Dark damage to one foe. 80% chance of stunning target.
345	Ice Wolf Claw	20	Physical	45	Water	0	2 physical attacks, 45 Water damage to all foes.
346	River of Power	20	Magic	120	Water	0	Magic attack, 120 Water damage to one foe.
347	Terrors Cluster	20	Physical	125	Electric	0	Physical attack, 125 Electric damage to one foe. 25% chance of paralyzing target.
348	Biting Crush	25	Physical	145	Neutral	0	Physical attack, 145 Neutral damage to one foe. 15% chance of instantly killing target.
349	Phantom Pain	50	Magic	0	Dark	0	INT-penetrating attack, triple Dark damage to one foe. 35% chance of poisoning target.
350	Celestial Blade	20	Magic	80	Electric	0	Magic attack, 80 Electric damage to all foes.
351	Spiral Masquerade	25	Physical	30	Dark	0	4 physical attacks, 30 Dark damage to one foe. 30% chance of increasing SPD by 20%.
352	Thorn Whip	20	Physical	120	Plant	0	Physical attack, 120 Plant damage to one foe, absorbs 50% into HP. 15% chance of paralyzing target.
353	Seven's Fantasia	20	Magic	75	Light	0	Magic attack, 75 Light damage to all foes. 20% chance of confusing target.
354	Lightning Spear	40	Magic	0	Electric	0	INT-penetrating attack, double Electric damage to one foe. Tends to critical more often.
355	Corona Destroyer	50	Physical	0	Dark	0	DEF-penetrating attack, double Dark damage to one foe. Absorbs 20% of the damage as HP.
356	Dark Roar	15	Physical	130	Dark	0	Physical attack, 130 Dark damage to one foe. 90% accuracy, tends to critical more often.
357	Fenrir Sword	15	Physical	130	Water	0	Physical attack, 130 Water damage to one foe. 15% chance of instantly killing target.
358	Final Shining Burst	20	Physical	200	Fire	0	Physical attack, 200 Fire damage to all foes. Decreases ATK by 10%.
359	Full Moon Meteor Impact	20	Physical	120	Light	0	Physical attack, 120 Light damage to one foe. 30% chance of stunning and tends to critical.
360	Mourning Dance	20	Physical	20	Dark	0	8 physical attacks, 20 Dark damage to one foe. Damage tends to fluctuate.
361	Aguichant L\\E8vres	30	Magic	0	Light	0	INT-penetrating Light attack on one foe and absorbs 50% of the damage as HP.
362	Omni Sword	30	Physical	150	Neutral	0	Physical attack, 150 Neutral damage to one foe. 10% chance of dotting target.
363	Transcendent Sword	30	Physical	115	Fire	0	Physical attack, 115 Fire damage to all foes.
364	Gift of Darkness	60	Physical	0	Dark	0	DEF-penetrating attack, triple Dark damage to one foe.
365	Divine Atonement	30	Magic	105	Light	0	Magic attack, 105 Light damage to all foes.
366	Bantyo Blade	20	Physical	150	Neutral	0	Physical attack, 150 Neutral damage to one foe. Damage tends to fluctuate.
367	Flaming Fist	10	Physical	50	Fire	0	Physical attack, 50 Fire damage to all foes.
368	S-Gold Solar Storm	25	Magic	75	Light	0	Magic attack, 75 Light damage to all foes. Increases DEF by 10%.
369	Golden Triangle	20	Magic	110	Light	0	Magic attack, 110 Light damage to one foe. Increases base stats by 10%.
370	Soul Digitalization	25	Magic	95	Neutral	0	Magic attack, 95 Neutral damage to all foes. 5% chance of instantly killing target.
371	Victory Sword	25	Physical	65	Wind	0	2 physical attacks, 65 Wind damage to one foe.
372	Great Tornado	40	Physical	0	Fire	0	DEF-penetrating attack, double Fire damage to one foe.
373	Dragonic Impact	50	Physical	100	Fire	0	Physical attack, 100 Fire damage to all foes. Also knocks back targets.
374	Judecca Prison	25	Magic	115	Dark	0	Magic attack, 115 Dark damage to one foe. Always hits and undoes any stat reductions.
375	Table Flip	25	Physical	100	Earth	0	Physical attack, 100 Earth damage to all foes. 70% accuracy. Tends to critical more often.
376	Breath of the Gods	25	Support	0	Neutral	0	Nullifies any damage received until next turn.
377	Weltgeist	25	Support	0	Neutral	0	Nullify all received damage until the next turn, and counterattacks when receiving physical or magic attacks.
378	Odin's Breath	25	Physical	105	Water	0	Physical attack, 105 Water damage to all foes. 10% chance of putting target to sleep.
379	Shield of the Just	25	Magic	115	Light	0	Magic attack, 115 Light damage to one foe. Always hits. Cancels negative effects on itself.
380	Dragon's Roar	25	Physical	55	Fire	0	2 physical attacks, 55 Fire damage to a foe and absorbs 50% of the damage as HP.
381	Black Aura Blast	25	Magic	110	Dark	0	Magic attack, 110 Dark damage to one foe. Decrease target's DEF by 10%
382	Black Tornado	40	Physical	0	Dark	0	DEF-penetrating attack, double Dark damage to one foe.
383	Garuru Tomahawk	20	Physical	140	Neutral	0	Physical attack, 140 Neutral damage to one foe. Always hits.
384	Fist of Athena	50	Physical	0	Fire	0	DEF-penetrating attack, triple Fire damage to one foe. 30% chance of stunning target.
385	Supreme Cannon	30	Magic	130	Water	0	Magic attack, 130 Water damage to one foe.
386	Dark Prominence	30	Magic	0	Dark	0	INT-penetrating Dark attack to one foe. 50% chance of crystallizing target.
387	Plasma Shoot	25	Physical	35	Fire	0	3 physical attacks, 35 Fire damage to all foes.
\.


--
-- TOC entry 2817 (class 0 OID 41048)
-- Dependencies: 196
-- Data for Name: Test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Test"  FROM stdin;
\.


--
-- TOC entry 2693 (class 2606 OID 41060)
-- Name: DIGIMON DIGIMON_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DIGIMON"
    ADD CONSTRAINT "DIGIMON_pkey" PRIMARY KEY ("NUMBER");


--
-- TOC entry 2695 (class 2606 OID 41085)
-- Name: MOVES MOVES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MOVES"
    ADD CONSTRAINT "MOVES_pkey" PRIMARY KEY ("NUMBER");


-- Completed on 2021-11-07 16:41:07

--
-- PostgreSQL database dump complete
--

