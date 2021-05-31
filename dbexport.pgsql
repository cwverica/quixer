--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

SET default_table_access_method = heap;

--
-- Name: favorites; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.favorites (
    user_id integer NOT NULL,
    recipe_id integer NOT NULL,
    user_notes text,
    user_rating integer
);


ALTER TABLE public.favorites OWNER TO cwverica;

--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.ingredients (
    id integer NOT NULL,
    name text NOT NULL,
    category text,
    notes text
);


ALTER TABLE public.ingredients OWNER TO cwverica;

--
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: cwverica
--

CREATE SEQUENCE public.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredients_id_seq OWNER TO cwverica;

--
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cwverica
--

ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;


--
-- Name: recipe_ingredients; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.recipe_ingredients (
    recipe_id integer NOT NULL,
    ingredient_id integer NOT NULL,
    measurement text
);


ALTER TABLE public.recipe_ingredients OWNER TO cwverica;

--
-- Name: recipes; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.recipes (
    id integer NOT NULL,
    name text NOT NULL,
    category text,
    "process_EN" text,
    "process_ES" text,
    "process_FR" text,
    "process_DE" text,
    "process_IT" text,
    image_url text,
    alcoholic boolean NOT NULL,
    created_on text
);


ALTER TABLE public.recipes OWNER TO cwverica;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: cwverica
--

CREATE SEQUENCE public.recipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO cwverica;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cwverica
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: tools; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.tools (
    id integer NOT NULL,
    name text NOT NULL,
    substitues text
);


ALTER TABLE public.tools OWNER TO cwverica;

--
-- Name: tools_id_seq; Type: SEQUENCE; Schema: public; Owner: cwverica
--

CREATE SEQUENCE public.tools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tools_id_seq OWNER TO cwverica;

--
-- Name: tools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cwverica
--

ALTER SEQUENCE public.tools_id_seq OWNED BY public.tools.id;


--
-- Name: user_ingredients; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.user_ingredients (
    user_id integer NOT NULL,
    ingredient_id integer NOT NULL
);


ALTER TABLE public.user_ingredients OWNER TO cwverica;

--
-- Name: user_tools; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.user_tools (
    user_id integer NOT NULL,
    tool_id integer NOT NULL
);


ALTER TABLE public.user_tools OWNER TO cwverica;

--
-- Name: users; Type: TABLE; Schema: public; Owner: cwverica
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    username text NOT NULL,
    image_url text,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO cwverica;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: cwverica
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO cwverica;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cwverica
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: ingredients id; Type: DEFAULT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: tools id; Type: DEFAULT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.tools ALTER COLUMN id SET DEFAULT nextval('public.tools_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.favorites (user_id, recipe_id, user_notes, user_rating) FROM stdin;
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.ingredients (id, name, category, notes) FROM stdin;
1	Galliano	\N	\N
2	Ginger ale	\N	\N
3	Ice	\N	\N
4	Gin	\N	\N
5	Grand Marnier	\N	\N
6	Lemon Juice	\N	\N
7	Grenadine	\N	\N
8	Amaretto	\N	\N
9	Baileys irish cream	\N	\N
10	Cognac	\N	\N
11	Creme de Cassis	\N	\N
12	Champagne	\N	\N
13	Kahlua	\N	\N
14	Frangelico	\N	\N
15	151 proof rum	\N	\N
16	Wild Turkey	\N	\N
17	Heavy cream	\N	\N
18	Milk	\N	\N
19	Egg White	\N	\N
20	Dark rum	\N	\N
21	Lemon juice	\N	\N
22	Sambuca	\N	\N
23	Absolut Vodka	\N	\N
24	Tonic water	\N	\N
25	Whisky	\N	\N
26	Coffee	\N	\N
27	Red wine	\N	\N
28	Peach schnapps	\N	\N
29	Pepsi Cola	\N	\N
30	Orange juice	\N	\N
31	Dry Vermouth	\N	\N
32	Apricot brandy	\N	\N
33	Powdered sugar	\N	\N
34	Applejack	\N	\N
35	Grapefruit juice	\N	\N
36	gin	\N	\N
37	Peach Bitters	\N	\N
38	Mint	\N	\N
39	Grain alcohol	\N	\N
40	Espresso	\N	\N
41	Honey	\N	\N
42	Cocoa powder	\N	\N
43	Vanilla vodka	\N	\N
44	White Creme de Menthe	\N	\N
45	Orange Bitters	\N	\N
46	Green Chartreuse	\N	\N
47	Sweet Vermouth	\N	\N
48	Strawberry schnapps	\N	\N
49	Cranberry juice	\N	\N
50	Club soda	\N	\N
51	Triple sec	\N	\N
52	Egg white	\N	\N
53	Creme de Cacao	\N	\N
54	Vodka	\N	\N
55	Light cream	\N	\N
56	Brandy	\N	\N
57	Lager	\N	\N
58	Cider	\N	\N
59	Blackcurrant cordial	\N	\N
60	Light rum	\N	\N
61	Lime	\N	\N
62	Sugar	\N	\N
63	Soda water	\N	\N
64	Peachtree schnapps	\N	\N
65	Surge	\N	\N
66	Apple juice	\N	\N
67	Maraschino cherry	\N	\N
68	Pisang Ambon	\N	\N
69	Lemonade	\N	\N
70	Beer	\N	\N
71	Root beer	\N	\N
72	Coca-Cola	\N	\N
73	7-Up	\N	\N
74	Lemon	\N	\N
75	Maraschino liqueur	\N	\N
76	Orange bitters	\N	\N
77	Cherry	\N	\N
78	Prosecco	\N	\N
79	Campari	\N	\N
80	Soda Water	\N	\N
81	Lillet Blanc	\N	\N
82	Rum	\N	\N
83	Gold rum	\N	\N
84	Pernod	\N	\N
85	Lime Juice	\N	\N
86	Angostura Bitters	\N	\N
87	Grape Soda	\N	\N
88	Tequila	\N	\N
89	Sugar Syrup	\N	\N
90	Rose	\N	\N
91	Strawberries	\N	\N
92	Peach nectar	\N	\N
93	Orgeat syrup	\N	\N
94	Sweet and sour	\N	\N
95	Olive	\N	\N
96	Nutmeg	\N	\N
97	Ricard	\N	\N
98	Peychaud bitters	\N	\N
99	Water	\N	\N
100	Bourbon	\N	\N
101	Lemon peel	\N	\N
102	Cointreau	\N	\N
103	Cherry brandy	\N	\N
104	Lime peel	\N	\N
105	Cloves	\N	\N
106	Cinnamon	\N	\N
107	Irish cream	\N	\N
108	Goldschlager	\N	\N
109	Brown sugar	\N	\N
110	Passion fruit juice	\N	\N
111	lemon juice	\N	\N
112	Sugar syrup	\N	\N
113	Creme de Mure	\N	\N
114	Tomato Juice	\N	\N
115	Orange Juice	\N	\N
116	Salt	\N	\N
117	Vermouth	\N	\N
118	Rye whiskey	\N	\N
119	Amaro Montenegro	\N	\N
120	Ruby Port	\N	\N
121	Blood Orange	\N	\N
122	Orange Peel	\N	\N
123	Lime juice	\N	\N
124	Scotch	\N	\N
125	Bitters	\N	\N
126	Blue Curacao	\N	\N
127	Carbonated water	\N	\N
128	Orange	\N	\N
129	Wine	\N	\N
130	Iced tea	\N	\N
131	Peach Vodka	\N	\N
132	Advocaat	\N	\N
133	maraschino liqueur	\N	\N
134	Everclear	\N	\N
135	Jim Beam	\N	\N
136	Jack Daniels	\N	\N
137	Blueberry schnapps	\N	\N
138	Sour mix	\N	\N
139	Apricot Brandy	\N	\N
140	Rye Whiskey	\N	\N
141	Maraschino Liqueur	\N	\N
142	Maraschino Cherry	\N	\N
143	Allspice	\N	\N
144	Orange spiral	\N	\N
145	Blended whiskey	\N	\N
146	Pineapple juice	\N	\N
147	Blackberry brandy	\N	\N
148	Orange peel	\N	\N
149	Coffee brandy	\N	\N
150	Lime vodka	\N	\N
151	Sherry	\N	\N
152	Maple syrup	\N	\N
153	Chocolate syrup	\N	\N
154	Sirup of roses	\N	\N
155	Vanilla extract	\N	\N
156	Cream	\N	\N
157	Angostura bitters	\N	\N
158	Fruit punch	\N	\N
159	Creme de Banane	\N	\N
160	Pineapple Juice	\N	\N
161	Midori melon liqueur	\N	\N
162	Fruit	\N	\N
163	Fruit juice	\N	\N
164	Crown Royal	\N	\N
165	Ouzo	\N	\N
166	Sprite	\N	\N
167	Chambord raspberry liqueur	\N	\N
168	Corona	\N	\N
169	Bacardi Limon	\N	\N
170	Orange Curacao	\N	\N
171	Grapefruit Juice	\N	\N
172	Hot Chocolate	\N	\N
173	Cherry Heering	\N	\N
174	Irish Whiskey	\N	\N
175	Wormwood	\N	\N
176	White Rum	\N	\N
177	Roses sweetened lime juice	\N	\N
178	Cranberry Juice	\N	\N
179	Hot Sauce	\N	\N
180	Worcestershire Sauce	\N	\N
181	Soy Sauce	\N	\N
182	Whiskey	\N	\N
183	lemon	\N	\N
184	Dark Rum	\N	\N
185	Creme De Banane	\N	\N
186	Coconut Liqueur	\N	\N
187	Elderflower cordial	\N	\N
188	Blackberries	\N	\N
189	Apple brandy	\N	\N
190	Benedictine	\N	\N
191	Sloe gin	\N	\N
192	Cachaca	\N	\N
193	Pineapple	\N	\N
194	Egg	\N	\N
195	Lemon-lime soda	\N	\N
196	Drambuie	\N	\N
197	Absolut Citron	\N	\N
198	Egg yolk	\N	\N
199	Whipping cream	\N	\N
200	Pisco	\N	\N
201	Jägermeister	\N	\N
202	Anis	\N	\N
203	Peppermint schnapps	\N	\N
204	Johnnie Walker	\N	\N
205	Pina colada mix	\N	\N
206	Daiquiri mix	\N	\N
207	Absolut Kurant	\N	\N
208	Tea	\N	\N
209	Spiced rum	\N	\N
210	Banana liqueur	\N	\N
211	Kiwi liqueur	\N	\N
212	Bitter lemon	\N	\N
213	Malibu rum	\N	\N
214	Black Sambuca	\N	\N
215	Southern Comfort	\N	\N
216	Absinthe	\N	\N
217	Half-and-half	\N	\N
218	Limeade	\N	\N
219	Mountain Dew	\N	\N
220	Port	\N	\N
221	Egg Yolk	\N	\N
222	Triple Sec	\N	\N
223	Fresh Lemon Juice	\N	\N
224	Blended Scotch	\N	\N
225	Honey syrup	\N	\N
226	Ginger Syrup	\N	\N
227	Islay single malt Scotch	\N	\N
228	Falernum	\N	\N
229	Añejo rum	\N	\N
230	blackstrap rum	\N	\N
231	Hpnotiq	\N	\N
232	Banana Liqueur	\N	\N
233	Tomato juice	\N	\N
234	Worcestershire sauce	\N	\N
235	Tabasco sauce	\N	\N
236	Yoghurt	\N	\N
237	Banana	\N	\N
238	Asafoetida	\N	\N
239	Ginger	\N	\N
240	Cayenne pepper	\N	\N
241	Celery salt	\N	\N
242	Cardamom	\N	\N
243	Black pepper	\N	\N
244	Coriander	\N	\N
245	Anise	\N	\N
246	Licorice root	\N	\N
247	Condensed milk	\N	\N
248	Coconut syrup	\N	\N
249	Ale	\N	\N
250	Guinness stout	\N	\N
251	Erin Cream	\N	\N
252	Whipped cream	\N	\N
253	Grape soda	\N	\N
254	Candy	\N	\N
255	Jello	\N	\N
256	Vanilla ice-cream	\N	\N
257	Strawberry liqueur	\N	\N
258	Godiva liqueur	\N	\N
259	Vanilla Ice-Cream	\N	\N
260	Butterscotch schnapps	\N	\N
261	Green Creme de Menthe	\N	\N
262	Coconut milk	\N	\N
263	Sweet and Sour	\N	\N
264	Ginger Beer	\N	\N
265	Cucumber	\N	\N
266	Figs	\N	\N
267	Thyme	\N	\N
268	Tonic Water	\N	\N
269	Rosemary Syrup	\N	\N
270	Irish whiskey	\N	\N
271	Peach brandy	\N	\N
272	Anisette	\N	\N
273	Carrot	\N	\N
274	Apple	\N	\N
275	Vanilla	\N	\N
276	Caramel coloring	\N	\N
277	Kool-Aid	\N	\N
278	White rum	\N	\N
279	Passion fruit syrup	\N	\N
280	Coconut liqueur	\N	\N
281	Coffee liqueur	\N	\N
282	Hot Damn	\N	\N
283	Apple cider	\N	\N
284	Zima	\N	\N
285	Lime juice cordial	\N	\N
286	orange juice	\N	\N
287	Raisins	\N	\N
288	Blueberries	\N	\N
289	Passoa	\N	\N
290	Tia maria	\N	\N
291	Mango	\N	\N
292	Fresca	\N	\N
293	Cherry liqueur	\N	\N
294	Oreo cookie	\N	\N
295	Apple schnapps	\N	\N
296	Cranberry vodka	\N	\N
297	Apfelkorn	\N	\N
298	Schweppes Russchian	\N	\N
299	Cherries	\N	\N
300	Rumple Minze	\N	\N
301	Olive Brine	\N	\N
302	Fresh Lime Juice	\N	\N
303	Ginger beer	\N	\N
304	Rosemary	\N	\N
305	White Wine	\N	\N
306	Aperol	\N	\N
307	Apricot Nectar	\N	\N
308	Pomegranate juice	\N	\N
309	Agave Syrup	\N	\N
310	Pepper	\N	\N
311	Lemon vodka	\N	\N
312	Curacao	\N	\N
313	Chocolate liqueur	\N	\N
314	Chocolate ice-cream	\N	\N
315	Tropicana	\N	\N
316	Aquavit	\N	\N
317	Raspberry Liqueur	\N	\N
318	pineapple juice	\N	\N
319	Rosso Vermouth	\N	\N
320	Lillet	\N	\N
321	Bailey	\N	\N
322	Jagermeister	\N	\N
323	Apple Schnapps	\N	\N
324	Yellow Chartreuse	\N	\N
325	Kummel	\N	\N
326	demerara Sugar	\N	\N
327	Raspberry syrup	\N	\N
328	Grape juice	\N	\N
329	Mint syrup	\N	\N
330	Chocolate	\N	\N
331	Peppermint extract	\N	\N
332	Food coloring	\N	\N
333	Almond flavoring	\N	\N
334	Carbonated soft drink	\N	\N
335	Sherbet	\N	\N
336	Firewater	\N	\N
337	Absolut Peppar	\N	\N
338	Corn syrup	\N	\N
339	Gold tequila	\N	\N
340	Cream of coconut	\N	\N
341	Pineapple Syrup	\N	\N
342	St. Germain	\N	\N
343	Lavender	\N	\N
344	7-up	\N	\N
345	Cherry Juice	\N	\N
346	Red Chili Flakes	\N	\N
347	Basil	\N	\N
348	Malibu Rum	\N	\N
349	Melon Liqueur	\N	\N
350	Apricot	\N	\N
351	Glycerine	\N	\N
352	Angelica root	\N	\N
353	Almond	\N	\N
354	Marjoram leaves	\N	\N
355	Chocolate milk	\N	\N
356	Maui	\N	\N
357	Raspberry vodka	\N	\N
358	Vanilla syrup	\N	\N
359	Raspberry Vodka	\N	\N
360	Dubonnet Rouge	\N	\N
361	Cranberries	\N	\N
362	Guava juice	\N	\N
363	Yukon Jack	\N	\N
364	Agave syrup	\N	\N
365	Dr. Pepper	\N	\N
366	Coconut rum	\N	\N
367	Apple Brandy	\N	\N
368	Light Rum	\N	\N
369	Orgeat Syrup	\N	\N
370	Berries	\N	\N
371	Sarsaparilla	\N	\N
372	Blackcurrant squash	\N	\N
373	Tennessee whiskey	\N	\N
374	Kiwi	\N	\N
375	Papaya	\N	\N
376	Pink lemonade	\N	\N
377	Chocolate Sauce	\N	\N
378	Salted Chocolate	\N	\N
379	Dark Creme de Cacao	\N	\N
380	Kirschwasser	\N	\N
381	Melon liqueur	\N	\N
382	Cornstarch	\N	\N
383	Butter	\N	\N
384	Marshmallows	\N	\N
385	Cherry Grenadine	\N	\N
386	Whipped Cream	\N	\N
387	caramel sauce	\N	\N
388	chocolate sauce	\N	\N
389	Mini-snickers bars	\N	\N
390	Fennel seeds	\N	\N
391	Cantaloupe	\N	\N
392	Hot chocolate	\N	\N
393	Watermelon	\N	\N
394	Cumin seed	\N	\N
395	Grapes	\N	\N
396	Mezcal	\N	\N
\.


--
-- Data for Name: recipe_ingredients; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.recipe_ingredients (recipe_id, ingredient_id, measurement) FROM stdin;
15997	1	2 1/2 shots 
15997	2	Not provided, use judgement
15997	3	Not provided, use judgement
17222	4	1 3/4 shot 
17222	5	1 Shot 
17222	6	1/4 Shot
17222	7	1/8 Shot
13501	8	1/3 
13501	9	1/3 
13501	10	1/3 
17203	11	1 part 
17203	12	5 parts 
14229	13	1/3 part 
14229	9	1/3 part 
14229	14	1/3 part 
15288	15	1/2 shot Bacardi 
15288	16	1/2 shot 
17225	4	2 shots 
17225	7	1/2 shot 
17225	17	1/2 shot 
17225	18	1/2 shot
17225	19	1/2 Fresh
17837	20	2 oz 
17837	21	1 oz 
17837	7	1 tsp 
13332	13	1/3 shot 
13332	22	1/3 shot 
13332	5	1/3 shot 
13938	23	1 oz 
13938	4	1 oz 
13938	24	4 oz 
14610	15	1 oz Bacardi 
14610	16	1 oz 
15853	9	1/3 
15853	5	1/3 
15853	13	1/4 
16262	25	4 cl 
16262	9	8 cl 
16262	26	Not provided, use judgement
17141	27	1/3 part 
17141	28	1 shot 
17141	29	1/3 part 
17141	30	1/3 part 
17208	31	1/2 oz 
17208	4	1 oz 
17208	32	1/2 oz 
17208	21	1/2 tsp 
17208	7	1 tsp 
17208	33	Not provided, use judgement
17833	34	1 1/2 oz 
17833	35	1 oz 
17187	36	6 cl
17187	37	2 dashes
17187	38	2 Fresh leaves
12764	26	1 part 
12764	39	2 parts 
12776	40	Not provided, use judgement
12776	41	Unsweetened 
12776	42	Not provided, use judgement
14598	43	2 1/2 oz 
14598	5	1 splash 
14598	30	Fill with 
15328	22	2 cl 
15328	9	2 cl 
15328	44	2 cl 
17254	45	1 dash
17254	46	1 oz
17254	4	1 oz
17254	47	1 oz
17839	48	2 oz 
17839	30	2 oz 
17839	49	2 oz 
17839	50	Not provided, use judgement
11149	4	1 1/2 oz 
11149	51	1 oz 
11149	21	1 tsp 
11149	7	1/2 tsp 
11149	52	1 
11872	53	1/2 oz white 
11872	8	1/2 oz 
11872	51	1/2 oz 
11872	54	1/2 oz 
11872	55	1 oz 
12450	4	1 1/2 oz 
12450	47	1/2 oz 
12450	56	1/2 oz 
13128	57	1/2 pint 
13128	58	1/2 pint 
13128	59	1 dash 
11000	60	2-3 oz 
11000	61	Juice of 1 
11000	62	2 tsp 
11000	38	2-4 
11000	63	Not provided, use judgement
14888	64	4 shots 
14888	65	4 shots 
15106	30	4 cl 
15106	35	3 cl 
15106	66	1 cl 
15106	67	1 
15266	54	3 parts
15266	68	1 part 
15266	66	6 parts 
15266	21	1 1/2 part 
15266	69	Not provided, use judgement
15691	70	Not provided, use judgement
15691	71	Not provided, use judgement
15691	69	Not provided, use judgement
15691	72	 slice\n
15691	73	Not provided, use judgement
15691	11	Not provided, use judgement
15691	74	Not provided, use judgement
17185	4	2 oz 
17185	75	1/4 tsp 
17185	21	1/4 tsp 
17185	76	2 dashes 
17185	77	1 
16031	70	12 oz 
16031	73	12 oz 
17205	12	Chilled 
17205	30	2 oz 
17215	78	6 cl
17215	79	4 cl
17215	80	splash
17218	4	6 cl
17218	54	1.5 cl
17218	81	0.75 cl
17241	82	1 1/2 oz
17241	83	1 1/2 oz
17241	15	1 oz
17241	84	1 tsp
17241	7	1 tsp
17241	85	1 tsp
17241	86	1 drop
17253	87	3 oz
17253	88	1 1/2 oz
17255	4	2 1/2 oz
17255	85	1/2 oz
17255	89	1/2 oz
17255	61	1
178352	90	750 ml
178352	62	1/2 cup
178352	91	8 oz
178352	6	2-3 oz
17835	20	1 1/2 oz 
17835	92	2 oz 
17835	30	3 oz 
11023	20	2 oz 
11023	13	1 oz 
11023	52	1 
11690	60	1 oz 
11690	93	1/2 oz 
11690	51	1/2 oz 
11690	94	1 1/2 oz 
11690	77	1 
11728	4	1 2/3 oz 
11728	31	1/3 oz 
11728	95	1 
11993	20	1 1/2 oz 
11993	13	1/2 oz 
11993	55	1 oz 
11993	96	1/8 tsp grated 
12127	97	1 tsp 
12127	62	1/2 tsp superfine 
12127	98	2 dashes 
12127	99	1 tsp 
12127	100	2 oz 
12127	101	1 twist of 
12130	56	1 oz 
12130	8	1 oz 
12130	55	1 oz 
12196	10	2 oz 
12196	102	1/2 oz 
12196	21	1 oz 
12444	60	1 oz 
12444	47	1/2 oz 
12444	74	Juice of 1/2 
12444	33	1 tsp 
12444	52	1 
12446	20	2 oz 
12446	103	1/2 oz 
12704	61	Juice of 1 
12704	62	1 tblsp 
12704	63	 (seltzer water)\n
12704	104	Not provided, use judgement
12768	26	1/2 cup black 
12768	18	1/2 cup 
12768	62	1-2 tsp 
13020	27	1 bottle 
13020	62	1/2 cup 
13020	30	1 cup 
13020	21	1 cup 
13020	105	Not provided, use judgement
13020	106	Not provided, use judgement
13222	107	1/2 oz 
13222	108	1/2 oz 
17176	61	½
17176	109	2 tsp
17176	110	4 cl
17176	2	top up with
17176	3	fill
11003	4	1 oz 
11003	79	1 oz 
11003	47	1 oz 
15933	22	1 1/2 oz 
15933	71	Add 10 oz 
15933	3	cubes
17193	56	1 1/2 oz 
17193	44	1/2 oz 
17195	12	6 oz 
17195	28	1 oz 
17210	4	4 cl
17210	111	1.5 cl
17210	112	1 cl
17210	113	1.5 cl
17217	88	6 cl
17217	114	3 cl
17217	115	3 cl
17217	85	1.5 cl
17217	89	1 dash
17217	116	1 pinch
17228	4	1 1/2 shot 
17228	117	1 1/2 shot 
17827	118	2 oz
17827	79	1 oz
17827	31	1 oz
178349	54	1 oz
178349	119	1 oz
178349	120	1 oz
178349	121	1 tsp
178349	86	Dash
178349	122	Garnish with
17836	60	1 1/2 oz 
17836	51	1 1/2 tsp 
17836	123	1 tblsp 
17836	62	1 tsp 
17836	52	1 
17836	38	1 
17840	124	1 1/2 oz 
17840	47	1 oz 
17840	31	1 oz 
17840	76	2 dashes 
11046	34	1 oz 
11046	51	1 oz 
11046	21	1 oz 
11060	124	1 1/2 oz 
11060	47	1/2 oz 
11060	31	1/2 oz 
11060	125	2 dashes 
11120	4	1 1/2 oz 
11120	51	1/2 oz 
11120	126	1/2 oz 
11120	125	2 dashes 
11120	67	1 
11120	101	1 twist of 
11006	60	1 1/2 oz 
11006	61	Juice of 1/2 
11006	33	1 tsp 
11410	4	2 oz 
11410	74	Juice of 1/2 
11410	33	1 tsp 
11410	127	Not provided, use judgement
11417	4	2 oz 
11417	21	1 oz 
11417	62	1/2 tsp superfine 
11417	128	1 
11417	67	1 
11422	54	1 oz 
11422	8	1 oz 
11422	17	1 oz 
11600	54	1 oz 
11600	51	1 oz 
11600	123	1 oz 
11936	125	3 dashes 
11936	4	2 oz 
12093	60	2 oz 
12093	21	1 oz 
12093	62	1/2 tsp superfine 
12093	128	1 
12093	67	1 
12388	124	1 1/2 oz 
12388	129	1 oz Green Ginger 
12388	30	1 oz 
13539	54	1 1/2 oz 
13539	130	6 oz 
13539	21	 to taste\n
13581	131	2-3 oz
13581	72	Not provided, use judgement
14195	132	1 1/2 oz 
14195	69	8-10 oz cold 
14195	74	1 slice 
14195	3	cubes
17180	4	4.5 cl
17180	111	1.5 cl
17180	133	1.5 cl
15409	26	3 parts 
15409	134	1 part 
16985	135	1 part 
16985	136	1 part 
16985	16	1 oz 
17105	126	Not provided, use judgement
17105	137	Not provided, use judgement
17105	54	Not provided, use judgement
17105	138	Not provided, use judgement
17105	73	Not provided, use judgement
17190	4	7 parts
17190	139	4 parts
17190	115	3 parts 
178310	140	2 oz
178310	31	1 oz
178310	141	1/4 oz
178310	86	3 dashes
178310	142	1
178322	62	60 ml
178322	143	1 tblsp
178322	82	20 cl
178322	85	90 ml
178322	12	6 cl
178322	144	Garnish with
11014	4	1/2 oz 
11014	53	1/2 oz white 
11014	55	2 oz 
11014	96	Not provided, use judgement
11020	145	1 1/2 oz 
11020	31	1 oz 
11020	146	1 oz 
11021	31	1 oz 
11021	100	1 oz 
11021	147	1 1/2 tsp 
11021	21	1 1/2 tsp 
11021	101	1 twist of 
11055	47	1 1/2 tsp 
11055	4	1 1/2 oz 
11055	125	2 dashes 
11124	4	2 oz 
11124	31	1/2 oz 
11124	125	2 dashes 
11124	75	1/2 tsp 
11124	67	1 
11320	4	1 1/2 oz 
11320	2	4 oz 
11320	61	1 
11375	8	1/2 oz 
11375	53	1/2 oz 
11375	55	2 oz 
11408	4	2 oz 
11408	21	1 oz 
11408	62	1/2 tsp superfine 
11408	7	1/2 tsp 
11408	67	1 
11408	128	1 
11415	4	2 oz 
11415	74	Juice of 1/2 
11415	33	1 tsp 
11415	99	1 tsp 
11415	148	Twist of 
11416	4	2 oz 
11416	127	1 oz 
11416	62	1 cube 
11416	38	4 
11416	128	1 slice 
11416	77	1 
11420	4	2 oz 
11420	99	2 tsp 
11420	33	1/2 tsp 
11420	101	1 twist of 
11423	124	1 1/2 oz 
11423	8	3/4 oz 
11424	54	1 1/2 oz 
11424	8	3/4 oz 
11938	4	1 1/2 oz 
11938	7	1 tsp 
11938	55	1 tsp 
11938	52	1 
11987	149	1 oz 
11987	150	1 1/2 oz 
11987	151	1/2 oz cream 
12097	82	2 oz light or dark 
12097	33	2 tsp 
12097	101	1 twist of 
12097	99	2 tsp 
12107	35	5 oz 
12107	4	1 1/2 oz 
12107	116	1/4 tsp 
12436	60	3 oz 
12436	152	1 oz 
12436	21	1 oz 
12560	7	1 part 
12560	30	4 parts 
12560	146	4 parts 
12572	146	10 cl 
12572	110	6 cl 
12572	21	1 cl 
12572	7	1 cl 
12618	21	5 cl 
12618	30	15 cl 
12618	112	2-3 cl 
12618	63	Not provided, use judgement
12668	153	2 tblsp 
12668	18	6 oz whole 
12668	63	6 oz 
12756	54	4 cl 
12756	123	1 dash 
12756	63	Not provided, use judgement
12758	131	5 parts 
12758	21	3 parts 
12758	1	1 part 
12758	154	1 part 
12856	99	1 cup 
12856	109	3/4-1 cup 
12856	26	4 tsp 
12856	82	1 cup 
12856	155	4 tsp 
12944	27	1 L 
12944	99	125 ml 
12944	62	60 gr 
12944	106	1 
12944	105	3 
12944	101	1 tblsp 
11007	88	1 1/2 oz 
11007	51	1/2 oz 
11007	123	1 oz 
11007	116	Not provided, use judgement
13162	13	1 cl 
13162	9	1 cl 
13162	14	1 1/2 
13162	26	4 cl hot 
13162	156	Not provided, use judgement
11008	47	3/4 oz 
11008	100	2 1/2 oz Blended 
11008	157	dash 
11008	3	2 or 3 
11008	67	1 
11008	148	1 twist of 
14378	70	3/4 bottle 
14378	8	1 shot 
14378	30	1 oz 
14978	82	mikey bottle 
14978	2	large bottle 
14978	158	355 ml frozen 
14978	30	355 ml frozen 
14978	3	crushed 
15182	54	2 cl 
15182	159	1 cl 
15182	30	Not provided, use judgement
17209	82	4.5 cl
17209	1	1.5 cl
17209	160	6 cl
17209	85	 1 dash
17209	78	top up 
15941	79	1 oz 
15941	47	1 oz red 
15941	101	Twist of 
15941	148	Twist of 
16178	4	2 jiggers 
16178	54	1 jigger 
16178	7	3 dashes 
16178	123	1 shot 
16178	62	Around rim put 1 pinch 
16178	112	3 dashes 
16178	63	Fill to top with 
16311	136	1 oz 
16311	161	1/2 oz 
16311	138	2 oz 
16333	82	1 part 
16333	54	1 part 
16333	88	1 part 
16333	51	1/2 part 
16333	162	Not provided, use judgement
16333	3	Not provided, use judgement
16333	116	1-3 pint 
16333	163	Not provided, use judgement
16419	164	1 shot 
16419	13	1 shot 
16419	156	Fill with 
16963	54	1 1/4 oz Stoli 
16963	165	1/4 oz 
16991	158	2 part 
16991	166	1 part 
16991	88	2 shots 
16991	15	Float Bacardi 
17178	9	2/3 oz
17178	167	1/3 oz
17178	112	1 tsp
17178	62	2 pinches
17035	168	1 
17035	169	1 shot 
17197	4	1 1/2 oz 
17197	62	2 tsp superfine 
17197	21	1 1/2 oz 
17197	12	4 oz Chilled 
17197	128	1 
17197	67	1 
17227	47	2 shots 
17227	31	1 shot 
17227	80	Top up with\r\n
17249	4	1 1/2 oz
17249	170	3/4 oz
17249	85	3/4 oz
17249	86	1 dash
17249	45	1 dash
17252	54	1 1/2 oz
17252	171	3 oz
17825	172	4 oz
17825	46	1 oz
17825	173	1 oz
17828	174	2 oz
17828	47	1 oz
17828	46	1/2 oz
178311	15	1 shot
178311	124	1/2 shot
178311	125	3 drops
178311	175	1 Fresh
178311	3	cubes
178316	176	6 cl
178316	41	2 cl
178316	6	2 cl
178318	54	1 oz
178318	177	1 oz
178318	178	1 oz
178318	166	Top
178343	70	4 oz
178343	114	4 oz
178343	85	1 tblsp
178343	179	Dash
178343	180	Dash
178343	181	Dash
178345	182	50 ml
178345	41	15 ml
178345	106	1
178345	183	1
178345	105	2
178350	184	1 shot
178350	79	1 shot
178350	185	1/2 shot
178350	160	Top
178350	85	Top
178354	4	1 shot
178354	186	1 shot
178354	187	25 ml
178354	85	30 ml
178354	188	Garnish with
11024	8	1/2 oz 
11024	53	1/2 oz white 
11024	55	2 oz 
11034	32	1/2 oz 
11034	189	1/2 oz 
11034	4	1 oz 
11052	4	2 oz 
11052	129	1 oz Green Ginger 
11052	190	1 tsp 
11052	61	1 
11106	47	1 oz 
11106	191	1 1/2 oz 
11106	101	1 twist of 
11202	62	2 tsp
11202	61	1 
11202	192	2 1/2 oz 
11239	60	1 1/4 oz 
11239	103	1 1/2 tsp 
11239	55	1 tblsp 
11288	60	2 oz 
11288	61	Juice of 1/2 
11288	72	Not provided, use judgement
11407	4	2 oz 
11407	127	Not provided, use judgement
11407	33	Not provided, use judgement
11407	144	Not provided, use judgement
11407	101	Not provided, use judgement
11418	4	1 1/2 oz 
11418	7	1 tsp 
11418	33	1 tblsp 
11418	193	3 chunks
11418	91	2 
11418	127	Not provided, use judgement
12055	4	1 oz 
12055	94	2 oz 
12055	194	1 whole 
12055	72	Not provided, use judgement
12071	82	2 oz light or dark 
12071	195	4 oz 
12071	74	1 
12101	124	1 1/2 oz 
12101	196	1/2 oz 
12101	101	1 twist of 
12308	32	1 oz 
12308	30	1 oz 
12308	94	1 oz 
12518	124	1 1/2 oz 
12518	129	1 oz Green Ginger 
12752	1	1/2 oz 
12752	197	1/2 oz 
12752	74	 wedge\n
12752	62	Bacardi 
12752	15	Not provided, use judgement
12910	198	6 
12910	62	1/4 cup 
12910	18	2 cups 
12910	60	1/2 cup 
12910	100	1/2 cup 
12910	155	1 tsp 
12910	116	1/4 tsp 
12910	199	1 cup 
12910	52	6 
12910	96	Ground 
13058	27	1 bottle 
13058	74	2 
13058	30	1 cup 
13058	128	3 
13058	146	1 cup 
13196	54	5 cl 
13196	61	1/2 
13196	157	4 dashes 
13196	24	1 dl Schweppes 
13196	3	4 
13198	13	1 part 
13198	161	1 part 
13198	9	1 part 
13214	200	2 oz 
13214	21	1 oz 
13214	62	1-2 tblsp 
13214	3	1
13214	19	Not provided, use judgement
13377	54	1 1/2 oz 
13377	49	4 oz 
13377	35	1 oz 
13395	161	1/2 oz 
13395	201	1/2 oz 
13395	108	1/2 oz 
13751	20	1-2 shot 
13751	61	Squeeze 
13751	72	Fill with 
13751	3	Not provided, use judgement
13775	147	1 oz 
13775	202	1 oz 
13807	203	Not provided, use judgement
13807	13	Not provided, use judgement
13807	9	Not provided, use judgement
13837	11	1 part 
13837	12	5 parts 
13847	136	1 oz 
13847	8	1 oz 
13899	136	1/3 oz 
13899	204	1/3 oz 
13899	135	1/3 oz 
13936	15	5 oz Bacardi 
13936	205	frozen 
13936	206	frozen 
13940	4	2 oz dry 
13940	73	4 oz 
13940	21	0.75 oz 
14181	26	Not provided, use judgement
14181	18	1/2 oz 
14181	51	1/2 oz 
14181	56	Not provided, use judgement
14366	23	1 1/2 shot 
14366	102	1 1/2 shot 
14366	74	Juice of 1 wedge 
14456	207	4 cl 
14456	208	Turkish apple 
14456	62	 (if needed)\n
14538	9	1/3 oz 
14538	13	1/3 oz 
14538	22	1/3 oz 
14608	209	1 oz 
14608	2	Not provided, use judgement
14730	54	1/4 
14730	210	1/4 
14730	30	1/4 
14730	28	1/4 
14752	211	1 part 
14752	212	2 parts 
14752	3	cubes
15006	16	1 oz 
15006	8	3/4 oz 
15006	146	1 splash 
15254	201	1/2 oz 
15254	71	1/2 oz 
15427	213	1 1/2 cl 
15427	28	1 1/2 cl 
15427	126	1 1/2 cl 
15427	94	3 cl 
15761	214	25 ml 
15761	30	Add 250 ml 
16041	215	750 ml 
16041	30	1 L 
16041	29	750 ml 
16196	216	2/5 
16196	88	2/5 
16196	7	1/5 
16250	213	1 1/2 oz 
16250	147	1 oz 
16250	30	3-4 oz 
16250	146	3-4 oz 
16250	49	3-4 oz 
16942	167	1 shot 
16942	54	1 shot 
16942	63	Fill with 
16967	54	2 oz 
16967	217	2 oz 
16967	218	2 oz 
16967	3	Not provided, use judgement
16967	96	Not provided, use judgement
16986	215	2 oz 
16986	51	1/2 oz 
16986	61	2 wedges 
16986	138	2 oz 
17120	134	1 fifth 
17120	54	1 fifth Smirnoff red label 
17120	219	2 L 
17120	65	2 L 
17120	21	1 small bottle 
17120	82	1 pint 
17192	56	3 parts
17192	220	9 parts
17192	221	2 parts
17194	4	4cl
17194	222	3cl
17194	6	2cl
17206	38	4 fresh 
17206	100	2 1/2 oz 
17206	33	1 tsp 
17206	99	2 tsp 
17226	4	1 shot 
17226	10	1 shot 
17226	11	1 shot 
17226	223	1/8 shot 
17230	4	2 oz 
17230	7	1 tsp 
17230	183	Juice of 1/2 
17230	80	Top up with
17230	61	Garnish
17256	4	1 1/2 oz
17256	47	1 1/2 oz
17256	141	1 tsp
17256	86	2 dashes
17829	224	2 oz
17829	6	3/4 oz
17829	225	2 tsp
17829	226	2 tsp
17829	227	1/4 oz
17830	61	1/2
17830	228	1/3 oz
17830	86	2 dashes
17830	229	1 oz
17830	230	1 oz
178319	231	2 oz
178319	160	1 oz
178319	232	1 oz
11113	54	1 1/2 oz 
11113	233	3 oz 
11113	21	1 dash 
11113	234	1/2 tsp 
11113	235	2-3 drops 
11113	61	1 wedge 
11117	54	1 oz 
11117	126	1 oz 
11117	69	Not provided, use judgement
11117	77	Not provided, use judgement
11129	145	2 oz 
11129	74	Juice of 1/2 
11129	33	1 tsp 
11129	52	1 
11129	77	1 
11164	56	2 oz 
11164	194	1 whole 
11164	62	1 tsp superfine 
11164	55	1/2 oz 
11164	96	1/8 tsp grated 
11170	56	2 oz 
11170	74	Juice of 1/2 
11170	33	1/2 tsp 
11170	77	1 
11222	60	2 oz 
11222	51	1 1/2 tsp 
11222	123	1 1/2 tsp 
11222	75	1 1/2 tsp 
11324	124	2 1/2 oz 
11324	31	1 1/2 tsp 
11324	101	1 twist of 
11382	145	2 oz 
11382	190	1/2 oz 
11382	74	Juice of 1/4 
11382	61	Juice of 1/2 
11419	123	1 1/2 oz 
11419	62	1 tsp superfine 
11419	4	2 oz 
11419	125	1 dash 
11419	50	3 oz 
11433	4	1 1/2 oz 
11433	51	1 oz 
11433	146	1 oz 
11433	7	1/2 tsp 
11433	193	1 
11658	124	2 oz 
11658	196	1/2 oz 
11658	31	1/2 oz 
11658	101	1 twist of 
11662	4	1 1/2 oz 
11662	75	1/2 oz 
11662	76	2 dashes 
12067	62	1 tsp superfine 
12067	50	3 oz 
12067	74	1 
12067	20	2 oz 
12067	67	1 
12067	128	1 
12158	124	1 1/2 oz 
12158	61	Juice of 1/2 
12158	33	1/2 tsp 
12158	74	1/2 slice 
12158	77	1 
12162	54	2 oz 
12162	30	Not provided, use judgement
12190	151	1 1/2 oz cream 
12190	55	2 tsp 
12190	33	1 tsp 
12190	194	1 whole 
12190	96	Not provided, use judgement
12402	4	2 oz 
12402	21	1 oz 
12402	62	1 tsp superfine 
12402	50	3 oz 
12402	67	1 
12402	128	1 
12674	236	1 cup fruit 
12674	237	1 
12674	30	4 oz frozen 
12674	162	1/2 piece textural 
12674	3	6 
12692	236	1 cup 
12692	99	2 cups cold 
12692	116	1 tsp 
12692	238	1 pinch 
12694	236	2 cups 
12694	3	4-6 
12694	62	Not provided, use judgement
12694	61	Not provided, use judgement
12694	116	Not provided, use judgement
12702	239	2 pieces 
12702	99	1 gal 
12702	74	1 lb 
12702	62	1 cup 
12702	240	ground 
12726	233	2 cups 
12726	21	1-2 tblsp 
12726	241	1 dash 
12770	26	1/4 cup instant 
12770	62	1/4 cup 
12770	99	1/4 cup hot 
12770	18	4 cups cold 
12774	99	2 cups 
12774	208	3-4 tsp 
12774	239	1 chunk dried 
12774	242	3-4 crushed 
12774	105	3 
12774	106	1 piece 
12774	243	1-2 whole 
12774	62	 to taste\n
12774	18	Not provided, use judgement
12782	26	6 tblsp ground
12782	244	1/4 tsp 
12782	242	4-5 whole green 
12782	62	Not provided, use judgement
12782	199	Not provided, use judgement
12782	3	Not provided, use judgement
12790	54	1 bottle 
12790	62	50 gr 
12790	245	50 ml pure 
12790	246	1 tblsp 
12790	175	1 
12820	124	1 cup 
12820	217	1 1/4 cup 
12820	247	1 can sweetened 
12820	248	3 drops 
12820	153	1 tblsp 
17186	4	1 1/2 oz 
17186	7	2 tsp 
17186	74	Juice of 1/2 
17186	52	1 
12988	99	3 cups 
12988	62	1 cup 
12988	105	12 
12988	106	2 
12988	101	1 
12988	27	750 ml 
12988	56	1/4 cup 
13056	27	2 oz white or 
13056	195	5 oz 
13056	3	cubes
11009	54	2 oz 
11009	123	2 oz 
11009	2	8 oz 
13282	249	1 part Bass pale 
13282	250	1 part 
13405	22	30 ml white 
13405	251	30 ml 
13405	132	5 ml 
14087	164	1 shot 
14087	8	1 shot 
14087	49	1 shot 
14209	26	6 oz 
14209	167	2 oz 
14209	42	2 tblsp 
14209	252	Not provided, use judgement
14360	207	3/4 oz 
14360	161	3/4 oz 
14360	49	1 oz 
14360	166	1 splash 
14364	69	1 can 
14364	54	5 oz 
14364	82	7 oz 
14364	2	About 1 bottle 
14622	54	1/3 part 
14622	253	1/3 part 
14622	30	1/3 part 
14622	3	lots 
14622	254	1 dash 
14642	13	1 oz 
14642	15	1 oz Bacardi 
14642	7	1 dash 
14956	54	2 cups 
14956	255	3 packages 
14956	99	3 cups 
15082	164	1 1/2 oz 
15082	28	1 oz 
15082	167	1/2 oz 
15082	49	1 oz 
15346	20	1 shot 
15346	60	2 shots 
15346	54	1 shot 
15346	30	1 shot 
15511	13	2 oz 
15511	18	8 oz 
15511	256	2 scoops 
15639	13	1/2 oz 
15639	107	1/2 oz 
15639	8	1/2 oz 
15639	15	1/2 oz Bacardi 
15639	156	1 oz 
16108	197	2 oz 
16108	170	1/2 oz 
16108	257	1 splash 
16108	30	1 oz 
16990	258	2 shots 
16990	18	Not provided, use judgement
16995	30	4 oz 
16995	82	1 oz 
16995	54	1 oz 
16995	156	1 package 
16995	3	Over 
17122	14	1 part 
17122	164	1 part 
17135	169	1 part 
17135	72	2 parts 
17220	259	2 scoops 
17220	260	1 part 
17220	18	full glass 
17220	54	2 parts 
17200	261	3/4 oz 
17200	53	3/4 oz white 
17200	55	3/4 oz 
17207	60	3 oz 
17207	262	3 tblsp 
17207	193	3 tblsp 
17219	176	3 cl
17219	1	1.5 cl
17219	222	1.5 cl
17219	85	1.5 cl
17267	82	3 parts
17267	184	1 part
17267	210	1 part
17267	7	1 part
17267	160	2 parts
17267	115	2 parts
17267	263	1 part
11005	4	1 2/3 oz 
11005	31	1/3 oz 
11005	95	1 
178315	4	5 cl
178315	85	2 cl
178315	264	10 cl
178315	265	Chopped
178315	183	Chopped
178317	83	6 cl
178317	115	2 cl
178317	85	2 cl
178317	222	2 jiggers
178344	54	2 oz
178344	41	1 tsp
178344	266	3
178344	267	1 Sprig
178344	86	2 dashes
178344	268	Top
178347	88	1 2/3 oz
178347	79	1/4 oz
178347	85	3/4 oz
178347	115	1/2 oz
178347	269	1/2 oz
178347	116	Dash
11029	208	6 oz hot 
11029	8	2 oz 
11029	252	Chilled 
11050	60	1 1/2 oz 
11050	32	1 oz 
11050	51	1 tsp 
11050	21	1/2 oz 
11050	52	1 
11050	128	1 
11112	88	1 oz 
11112	233	2 oz 
11112	21	1 dash 
11112	235	1 dash 
11112	241	1 dash 
11112	74	1 slice 
11147	100	2 oz 
11147	21	1 oz 
11147	62	1/2 tsp superfine 
11147	128	1 
11147	67	1 
11242	60	1 oz 
11242	220	1 oz 
11242	74	Juice of 1/2 
11242	33	1 tsp 
11242	52	1 
11242	127	Not provided, use judgement
11251	56	2 oz 
11251	51	1/2 oz 
11251	21	1 tblsp 
11528	270	1 oz 
11528	271	1/2 oz 
11528	30	1 oz 
11528	94	1 oz 
11528	128	1 slice 
11528	77	1 
11580	100	2 oz 
11580	21	1 oz 
11580	62	1 tsp superfine 
11580	50	3 oz 
11580	67	1 
11580	128	1 
11870	103	1/2 oz 
11870	4	1 1/2 oz 
11870	30	4 oz 
11870	2	Not provided, use judgement
12256	56	1 1/2 oz 
12256	272	1 1/2 oz 
12362	88	2 oz 
12362	21	1 tblsp 
12362	7	3/4 oz 
12362	52	1 
12362	2	Not provided, use judgement
12370	88	2 oz 
12370	74	Juice of 1/2 
12370	33	1 tsp 
12370	77	1 
11004	145	2 oz 
11004	74	Juice of 1/2 
11004	33	1/2 tsp 
11004	77	1 
12564	66	2 cups 
12564	273	1 large 
12670	66	1 can frozen 
12670	91	1 cup 
12670	62	2 tblsp 
12670	74	1 
12670	274	1 
12670	63	1 L 
12670	3	Not provided, use judgement
12762	8	1 part 
12762	201	1 part 
12762	13	1 part 
12762	18	2 1/2 parts 
12800	99	2 cups 
12800	62	2 cups white 
12800	26	1/2 cup instant 
12800	275	1/2
12800	54	1 1/2 cup
12800	276	Not provided, use judgement
12876	134	2 pint 
12876	129	1 bottle Boone Strawberry Hill 
12876	30	1/2 gal 
12876	277	1 gal Tropical Berry 
13066	7	Not provided, use judgement
13066	13	Not provided, use judgement
13066	9	Not provided, use judgement
13206	61	2 
13206	62	2 tblsp 
13206	278	2-3 oz 
13206	3	crushed 
13423	54	2 cl Smirnoff 
13423	215	2 cl 
13423	279	2 cl 
13423	94	6 cl 
13423	50	1 dash 
13497	58	1/2 pint hard 
13497	57	1/2 pint 
13497	126	1 shot 
13971	270	1 1/2 oz 
13971	26	8 oz 
13971	62	1 tsp 
13971	252	1 tblsp 
14071	54	2 cl 
14071	280	1 cl 
14071	126	1 cl 
14071	166	Fill with 
14095	281	1 shot 
14095	60	1 shot Jamaican 
14095	3	cubes
14095	18	Not provided, use judgement
14466	13	Not provided, use judgement
14466	22	Not provided, use judgement
14466	9	Not provided, use judgement
14860	5	3 parts 
14860	26	1 part 
15330	54	1 oz 
15330	51	1 oz 
15330	30	1 oz 
15515	26	8 oz 
15515	136	4 oz 
15515	8	4 oz 
15515	252	Not provided, use judgement
15567	54	1/2 
15567	69	1/2 can 
15567	99	1/2 
15567	62	10 tsp 
15813	282	5 shots 
15813	208	very sweet 
15841	38	1/2 handful 
15841	21	3 cl 
15841	20	1/8 L Jamaican 
15841	50	1/8 L 
15841	157	8 drops 
16047	57	1 bottle 
16047	79	1 1/2 cl 
16273	69	1 can 
16273	99	3 cans 
16273	54	1 1/2 cup 
16289	88	3 oz 
16289	283	12 oz 
16951	13	1 oz 
16951	56	1/2 oz 
16951	26	Not provided, use judgement
16992	134	750 ml 
16992	54	1750 ml 
16992	28	1750 ml 
16992	30	1 gal 
16992	49	1 gal 
17027	284	12 oz 
17027	167	3 oz 
17066	54	30 ml 
17066	4	30 ml 
17066	285	45 ml 
17066	3	1/2 glass crushed 
17114	4	2 oz 
17114	49	5 oz 
17114	7	2 splashes 
17189	4	2 oz 
17189	190	1 tsp 
17189	30	1/2 oz 
17189	7	1 tsp 
17196	197	1 1/4 oz 
17196	123	1/4 oz 
17196	102	1/4 oz 
17196	49	1/4 cup 
17199	1	2 parts
17199	222	2 parts
17199	286	2 parts
17199	156	1 part
17202	101	1 long strip 
17202	56	2 oz 
17202	2	5 oz 
17202	125	2 dashes 
17251	79	1 oz
17251	47	1 oz
17251	118	1 1/4 oz
17251	122	1
178312	54	10 shots
178312	91	3 cups
178312	85	1/2 cup
178312	195	12 oz
178312	287	1 cup
178312	288	1 cup
178338	82	40 ml
178338	289	20 ml
178338	85	30 ml
178338	279	15 ml
178338	37	Dash
178338	38	Garnish with
178342	4	2 oz
178342	80	5 oz
178342	61	1/4
11026	8	1 1/2 oz 
11026	61	1 
11027	8	1 1/2 oz 
11027	123	1/2 oz 
11027	50	Not provided, use judgement
11053	12	Chilled 
11053	261	1 tsp 
11102	281	3/4 oz 
11102	54	1 1/2 oz 
11001	100	4.5 cL
11001	157	2 dashes
11001	62	1 cube
11001	99	dash
11119	229	1 1/2 oz 
11119	290	1/2 oz 
11119	54	1/2 oz 
11119	30	1 oz 
11119	21	1 tsp 
11146	62	1 tsp superfine 
11146	99	2 tsp 
11146	21	1 oz 
11146	100	2 oz 
11146	101	1 twist of 
11224	4	2 oz 
11224	21	1/2 oz 
11224	75	1 tsp 
11224	76	1 dash 
11224	198	1 
11403	4	2 oz 
11403	24	5 oz 
11403	61	1 
11524	60	1/2 oz 
11524	145	1 1/2 oz 
11524	74	Juice of 1/2 
11524	33	1 tsp 
11524	127	Not provided, use judgement
11558	145	1 1/2 oz 
11558	74	Juice of 1/2 
11558	33	1 tsp 
11558	220	1 tblsp
11558	52	1 
11558	127	Not provided, use judgement
11670	20	1 1/2 oz 
11670	290	1/2 oz 
11798	60	1 1/2 oz 
11798	35	3 oz 
11798	125	1 dash 
11844	145	2 oz 
11844	74	Juice of 1/2 
11844	62	1 tsp 
11844	27	 (Claret)\n
11844	77	Not provided, use judgement
12188	151	2 oz cream 
12188	33	1 tsp 
12188	194	1 whole 
12188	18	Not provided, use judgement
12188	96	Not provided, use judgement
12418	31	1 oz 
12418	4	1 oz 
12418	202	1/4 tsp 
12418	125	2 dashes 
12418	148	Twist of 
12528	54	2 oz 
12528	281	1 oz 
12528	55	Not provided, use judgement
12630	112	2 tsp 
12630	21	Not provided, use judgement
12630	2	Not provided, use judgement
12696	236	1 cup 
12696	99	2 cups cold 
12696	62	4 tblsp 
12696	116	pinch 
12696	21	2 tblsp 
12698	291	2 
12698	236	2 cups 
12698	62	1/2 cup 
12698	99	1 cup iced 
12724	18	2 cups 
12724	237	1 
12724	41	1 tblsp 
12766	209	1 1/2 cl 
12766	2	Not provided, use judgement
12766	61	Not provided, use judgement
12766	3	Not provided, use judgement
12786	208	1/4 cup Thai 
12786	99	1/2 cup boiling 
12786	247	2 tsp sweetened 
12786	3	cubes
12786	38	garnish
13024	27	2 bottles 
13024	62	1 cup 
13024	99	2 cups hot 
13024	274	1 cup
13024	128	 wedges\n
13024	61	 wedges\n
13024	74	Not provided, use judgement
13024	292	Not provided, use judgement
13072	54	2 oz 
13072	293	2 oz 
13072	49	4 oz 
13072	30	4 oz 
13086	69	5 oz 
13086	54	1 oz 
13086	126	1/2 oz 
13086	51	1/2 oz 
13086	62	Not provided, use judgement
13086	3	Not provided, use judgement
13190	54	1 shot 
13190	8	1 shot 
13190	191	1 shot 
13190	51	1 shot 
13190	49	Not provided, use judgement
13499	54	1 oz 
13499	13	1 oz 
13499	9	1 oz 
13499	256	2 scoops 
13499	294	1 
13683	73	1 part 
13683	295	1 part 
13731	8	1 1/2 oz 
13731	138	3 oz 
13825	13	1 oz 
13825	9	1 oz 
13825	108	dash 
13825	17	2 oz 
13825	26	2 oz Hazlenut 
14053	108	1 oz 
14053	260	1 oz 
14053	18	1 oz 
14167	54	1 1/2 oz 
14167	31	3/4 oz 
14167	95	1 
14356	9	3/4 oz 
14356	258	3/4 oz 
14356	13	3/4 oz 
14356	260	1/2 oz 
14356	18	 to fill\n
14688	201	1/2 oz 
14688	22	1/2 oz 
14688	54	1/2 oz 
14842	9	1 oz 
14842	44	3/4 oz 
14842	156	3/4 oz double 
15026	296	4 cl 
15026	297	2 cl 
15026	298	7 cl 
15026	66	8 cl 
15026	3	cubes
15086	168	1 bottle 
15086	169	1 oz 
15184	54	2 cl 
15184	159	2 cl 
15184	7	Not provided, use judgement
15184	30	Not provided, use judgement
15226	15	1 shot Bacardi 
15226	213	1 shot 
15226	146	1 shot 
15226	30	Not provided, use judgement
15226	7	Not provided, use judgement
15226	299	Not provided, use judgement
15403	54	2 oz 
15403	298	Not provided, use judgement
15743	26	1/2 
15743	28	1/2 
15849	32	1 qt 
15849	12	4 fifth 
15849	54	1 fifth 
15849	73	4 L 
15849	30	1/2 gal 
16998	54	1/2 oz 
16998	167	1/2 oz 
16998	64	1/2 oz 
16998	49	1/2 oz 
17015	54	1 shot 
17015	13	1 shot 
17015	72	1 dash 
17015	250	Fill with 
17060	108	1/2 oz 
17060	201	1/2 oz 
17060	300	1/2 oz 
17060	15	1/2 oz Bacardi 
17079	13	2 1/2 oz 
17079	9	1/2 oz 
17181	54	70ml/2fl oz
17181	31	1 tbsp
17181	301	2 tbsp
17181	74	1 wedge
17181	95	1
17188	60	1 1/2 oz 
17188	146	1 oz 
17188	75	1/2 tsp 
17188	7	1/2 tsp 
17188	67	1 
17223	4	2 shots 
17223	47	1 shot 
17223	115	1 shot 
17223	86	3 dashes 
17242	4	50 ml
17242	11	20 ml
17242	302	15 ml
17242	303	75 ml
17242	61	1
17242	239	1 long strip
17239	117	25 ml
17239	142	15 ml
17239	89	10 ml
17239	69	100 ml
17239	188	2
17245	4	50 ml
17245	126	15 ml
17245	268	100 ml
17245	304	Garnish with
17247	46	1 oz
17247	141	1 oz
17247	85	1 oz
178321	8	4 cl
178321	115	6 cl
178321	305	15 cl
178321	122	Garnish with
178325	306	100 ml
178325	78	150 ml
178325	80	Top
178328	82	2 shots
178328	307	1 shot
178328	308	1 shot
178328	183	Juice of 1/2
178328	80	Top
178331	82	1 shot
178331	186	1 shot
178331	288	Garnish with
178331	160	Dash
178331	78	Top
178348	88	2 shots
178348	171	Top
178348	85	Juice of 1
178348	309	1 tsp
178348	310	Dash
17834	4	1 1/2 oz 
17834	76	1 dash 
17834	128	Juice of 1/4 
17834	77	1 
11019	311	1 1/2 oz 
11019	51	1 dash 
11019	146	1 tblsp 
11118	88	1 1/2 oz 
11118	126	1 oz 
11118	123	1 oz 
11118	116	Coarse 
11128	60	3/4 oz 
11128	56	3/4 oz 
11128	51	3/4 oz 
11128	61	Juice of 1/2 
11157	62	1 tsp superfine 
11157	50	3 oz 
11157	74	1 
11157	56	2 oz 
11157	67	1 
11157	128	1 
11255	47	1 oz 
11255	191	1/2 oz 
11255	129	1/2 oz Muscatel 
11634	4	2 oz 
11634	55	2 tsp 
11634	33	1 tsp 
11634	74	Juice of 1/2
11634	52	1 
11634	127	Not provided, use judgement
11959	4	1 1/2 oz 
11959	53	3/4 oz white 
11965	220	1 1/2 oz 
11965	55	2 tsp 
11965	33	1 tsp 
11965	194	1 whole 
11965	96	Not provided, use judgement
12057	4	2 oz 
12057	74	Juice of 1/2 
12057	33	1 tsp 
12057	194	1 whole 
12057	127	Not provided, use judgement
12087	60	2 oz 
12087	18	1 cup 
12087	33	1 tsp 
12087	96	Not provided, use judgement
12138	124	2 oz 
12138	56	4 dashes 
12138	312	4 dashes 
12138	128	1 slice 
12138	38	1 
12562	7	1 cl 
12562	30	1 cl 
12562	146	2 cl 
12562	156	4 cl 
12728	236	1 cup 
12728	162	1 cup 
12728	3	Not provided, use judgement
12780	26	Not provided, use judgement
12780	106	Not provided, use judgement
12798	26	10 tblsp instant 
12798	155	4 tblsp 
12798	62	2 1/2 cups 
12798	54	1 qt 
12798	99	2 1/2 cups 
13328	313	1/2 shot 
13328	18	1/2 shot 
13328	8	1 dash 
13861	9	1 part 
13861	14	1 part 
13861	18	1 part 
14482	173	1 part 
14482	63	1 part 
14482	30	1 part 
14482	3	cubes
14586	209	1.5 oz 
14586	7	0.5 oz 
14586	30	4 oz 
14586	138	1 splash 
14594	102	5 cl 
14594	21	2 cl 
14594	3	cubes
14594	74	 or lime\n
15194	314	2 scoops 
15194	56	2 oz 
15194	8	2 oz 
15224	213	2 parts 
15224	315	2 parts 
15224	49	1 part 
15395	207	1/2 oz 
15395	5	1/4 oz 
15395	167	1/4 oz 
15395	161	1/4 oz 
15395	213	1/4 oz 
15395	8	1/4 oz 
15395	49	1/2 oz 
15395	146	1/4 oz 
15521	26	1 cup
15521	316	4 cl 
15521	62	By taste 
16405	8	1 shot 
16405	215	1 shot 
16405	3	cubes
16405	138	Not provided, use judgement
17006	15	2 oz light 
17006	277	1/2 tsp Tropical 
17108	72	1 dl 
17108	21	7 drops 
17213	54	4.5 cl
17213	317	1.5 cl
17213	318	1.5 cl
17824	4	50 ml
17824	187	15 ml
17824	319	15 ml
17824	268	75 ml
17824	61	2 Wedges
17824	239	1 Slice
17824	38	1 Large Sprig
17248	4	1 oz
17248	320	1 oz
17248	47	1 oz
17248	122	1
17250	4	3/4 oz
17250	222	3/4 oz
17250	81	3/4 oz
17250	6	3/4 oz
17250	216	1 dash
17268	82	4 parts
17268	184	2 parts
17268	289	1 part
17268	126	1 part
17268	263	6 parts
17268	3	cubes
17266	13	2 parts
17266	321	2 parts
17266	260	4 parts
17266	322	1 part
17266	108	1/2 part
178353	61	Chopped
178353	323	1 shot
178353	10	1 shot
178353	239	Top
17838	47	3/4 oz 
17838	151	1 1/2 oz dry 
17838	76	1 dash 
11012	215	1 oz 
11012	8	1 oz 
11012	191	1/2 oz 
11012	21	1 dash 
11013	76	2 dashes 
11013	4	1 1/2 oz 
11013	324	3/4 oz 
11013	101	Twist of 
11022	31	1 oz 
11022	4	1 oz 
11022	325	1/2 tsp 
11054	4	2 oz 
11054	5	1/2 oz 
11054	21	2 tsp 
11054	101	1 twist of 
11064	60	1 1/2 oz 
11064	51	1 tblsp 
11064	237	1 
11064	123	1 1/2 oz 
11064	62	1 tsp 
11064	77	1 
17177	326	2 tsp 
17177	61	1
17177	192	2 1/2 oz
11368	4	2 oz 
11368	51	1/2 oz 
178333	100	2 oz
178333	327	1/2 oz
178333	38	8
11387	60	1 1/2 oz 
11387	51	1 tblsp 
11387	123	1 1/2 oz 
11387	62	1 tsp 
11387	77	1 
11387	3	1 cup crushed 
11470	60	1 oz 
11470	146	1 oz 
11470	21	1 tsp 
11002	54	1/2 oz 
11002	60	1/2 oz 
11002	4	1/2 oz 
11002	88	1/2 oz 
11002	74	Juice of 1/2 
11002	72	1 splash 
11766	100	2 oz 
11766	20	1 oz 
11766	17	1/2 oz 
11989	27	2 oz 
11989	7	1 oz 
11989	195	Not provided, use judgement
11991	31	1/2 oz 
11991	4	1 1/2 oz 
11991	190	1 1/2 tsp 
12091	60	1 1/2 oz 
12091	30	5 oz 
12214	103	1/2 oz 
12214	7	1/2 oz 
12214	4	1 oz 
12214	94	2 oz 
12214	127	Not provided, use judgement
12214	77	Not provided, use judgement
12420	31	1 1/2 oz 
12420	4	1 1/2 oz 
12420	75	1/4 tsp 
12420	202	1/4 tsp 
12420	76	2 dashes 
12420	77	1 
12442	31	1 1/2 oz 
12442	11	3/4 oz 
12442	127	Not provided, use judgement
12452	54	1 1/2 oz 
12452	21	3 oz 
12452	328	3 oz unsweetened 
12452	33	1 tsp 
12452	128	1 slice 
12460	54	2 oz 
12460	24	Not provided, use judgement
12672	236	1 cup 
12672	163	1 cup 
12688	18	2 cups 
12688	153	Not provided, use judgement
12688	329	Not provided, use judgement
12734	330	125 gr
12734	18	3/4 L 
12734	99	Not provided, use judgement
12808	62	8 cups 
12808	99	6 cups 
12808	39	1 pint 
12808	331	1 oz pure 
12808	332	1 tblsp green 
12870	208	1 quart black 
12870	118	1 quart 
12870	27	1 fifth 
12870	82	1 pint Jamaican 
12870	56	1/2 pint 
12870	190	1 1/2 oz 
12870	30	1 pint 
12870	21	1/2 pint 
12890	49	4 cups 
12890	62	1 1/2 cup 
12890	146	4 cups 
12890	333	1 tblsp 
12890	2	2 qt 
12954	328	Not provided, use judgement
12954	334	, orange\n
12954	335	Not provided, use judgement
13070	336	1/2 oz 
13070	337	1/2 oz 
13070	235	1 dash 
13389	57	1/2 pint 
13389	58	1/2 pint sweet or dry 
13621	88	2 measures 
13621	30	Not provided, use judgement
13621	7	Not provided, use judgement
14065	8	2 oz 
14065	82	2 oz 
14065	277	4 oz Grape 
14272	54	1 shot 
14272	7	1 tblsp 
14272	30	Fill with 
14782	270	1 shot 
14782	9	3/4 shot 
14782	26	6 oz hot 
15801	161	1.5 oz 
15801	284	12 oz 
15825	82	1/6 glass 
15825	26	1/6 glass strong black 
15825	99	1/2 glass cold 
15825	252	Not provided, use judgement
16176	3	8 cubes
16176	54	3 oz 
16176	92	1.5 oz 
16176	28	1.5 oz 
16176	101	1 
16403	250	1/2 
16403	71	1/2 
17044	62	2 1/2 cups 
17044	338	1 cup 
17044	26	1 1/2 oz instant 
17044	155	2 oz 
17044	99	3 cups boiling 
17044	54	1 fifth 
17074	54	1 shot 
17074	213	1 shot 
17074	339	1 shot 
17074	30	1 splash 
17074	146	1 splash 
17074	340	1 splash 
17074	7	1 dash 
17074	3	crushed 
17074	193	1 wedge 
17168	51	1/2 jigger 
17168	8	3 shots 
17168	58	1/2 cup 
17168	3	Add 1/2 cup 
17182	200	5 cl
17182	85	2.5 cl
17182	341	2.5 cl
17182	342	1.5 cl
17182	86	2 Dashes
17182	310	Pinch
17182	343	2 sprigs
17191	20	1 part 
17191	93	1/2 part 
17191	30	2 parts 
17191	146	1 part 
17211	184	5 cl
17211	264	10 cl
178306	22	1 part
178306	107	1 part
178307	88	1 shot
178307	344	1 part
178313	345	1 bottle
178313	122	3
178313	346	1
178313	105	10
178313	239	6
178313	54	20 cl
178314	4	6 cl
178314	6	2 cl
178314	89	2 cl
178314	347	Whole
178320	348	1 oz
178320	232	1 oz
178320	160	Top
178330	4	1 shot
178330	349	1 shot
178330	45	1 dash
178330	6	1 dash
178330	78	Top
11016	56	1 oz 
11016	53	1 oz white 
11016	55	1 oz 
11016	96	Not provided, use judgement
11028	8	1 1/2 oz 
11028	44	3/4 oz 
11084	56	3/4 oz 
11084	4	3/4 oz 
11084	31	3/4 oz 
11084	127	Not provided, use judgement
11084	101	Not provided, use judgement
11338	56	3/4 oz 
11338	4	3/4 oz 
11338	47	3/4 oz 
11338	127	Not provided, use judgement
11338	101	Not provided, use judgement
11369	124	1 oz 
11369	47	1 oz 
11369	125	1 dash 
11369	112	1/4 tsp 
11396	4	1 1/2 oz 
11396	56	1 oz 
11396	47	1 oz 
11396	50	1 oz 
11602	100	2 oz 
11602	190	1/2 oz 
11604	100	3 oz 
11604	190	1/2 oz 
11604	101	1 twist of 
11666	127	Not provided, use judgement
11666	4	Not provided, use judgement
11666	31	Not provided, use judgement
11666	33	Not provided, use judgement
11666	144	Not provided, use judgement
11666	101	Not provided, use judgement
12198	56	1 oz 
12198	51	1/2 oz 
12198	74	Juice of 1/4 
12754	54	1 oz 
12754	28	3/4 oz 
12754	49	Not provided, use judgement
12754	35	Not provided, use judgement
12784	26	black
12784	62	Not provided, use judgement
12784	156	 pods\n
12784	242	Not provided, use judgement
12792	62	1 cup
12792	99	3/4 cup 
12792	350	2 
12792	333	1 tblsp 
12792	39	1/2 cup pure 
12792	56	1 cup 
12792	332	3 drops yellow 
12792	351	1/2 tsp 
12794	352	3 tblsp chopped
12794	353	1 tblsp chopped 
12794	143	1 cracked 
12794	106	1 one-inch 
12794	245	3-6 crushed 
12794	244	1/8 tsp powdered 
12794	354	1 tblsp fresh chopped 
12794	54	1.5 cup 
12794	62	1/2 cup granulated 
12794	99	1/4 cup 
12794	332	1 drop yellow 
13194	182	0.75 oz 
13194	282	0.25 oz 
13625	54	1 oz 
13625	9	1 1/2 oz 
13625	13	1/2 oz 
14446	277	1/2 oz Grape 
14446	54	1/2 oz 
14564	49	2 oz 
14564	63	2 oz 
14564	161	0.5 oz 
14564	159	0.5 oz 
14578	8	1 cl 
14578	30	4 oz 
14578	7	1/4 cl 
14584	23	2 shots 
14584	130	12 oz lemon 
14602	88	full glass 
14602	235	About 8 drops 
15423	57	16 oz 
15423	88	1.5 oz 
15615	210	1 shot 
15615	53	2 shots 
15615	314	2 scoops 
15615	153	1 oz 
15615	355	4 oz 
15615	252	1 
15615	77	1 
15615	237	1 piece 
17183	60	1 3/4 oz Bacardi 
17183	123	1 oz 
17183	112	1/2 tsp 
17183	7	1 dash 
16295	20	1 shot 
16295	128	1 slice 
16295	65	1/2 glass 
16295	49	1/2 glass 
17118	356	5 oz blue 
17118	219	5 oz 
17118	3	cubes
17167	357	2 oz 
17167	195	4 oz 
17167	3	Not provided, use judgement
17212	54	5 cl
17212	13	1 cl
17212	112	1 dash
17826	174	50 ml
17826	8	50 ml
17826	178	4 oz
178308	78	6 cl
178308	306	4 cl
178308	80	Top
178309	82	1 shot
178309	358	1/2 shot
178309	40	1 shot
178309	26	1 shot
178327	88	4 oz
178327	171	4 oz
178327	302	1 oz
178327	160	8 oz
178327	61	Garnish with
178327	310	Rimmed
178336	184	2 shots
178336	85	1 shot
178336	62	Dash
178336	288	Whole
178336	195	Top
178337	79	1 1/2 oz
178337	115	2 1/2 oz
178337	264	2 1/2 oz
178337	122	Garnish with
178355	4	2 oz
178355	6	0.75 oz
178355	89	0.75 oz
178355	188	Ground
178355	80	Top
178355	38	Garnish with
178356	359	50 ml
178356	178	25 ml
178356	69	25 ml
178356	126	10 ml
178356	89	10 ml
178356	85	Dash
178356	38	Sprig
11326	360	1 1/2 oz 
11326	4	3/4 oz 
11326	125	1 dash 
11326	101	1 twist of 
11462	54	1 oz 
11462	1	1/2 oz 
11462	30	4 oz 
11472	4	2 oz 
11472	51	1/2 oz 
11472	146	1 tblsp 
11566	4	1 1/2 oz 
11566	46	1/2 oz 
11566	324	1/2 oz 
11720	4	1 oz 
11720	31	1 oz 
11720	51	1/4 tsp 
11720	76	1 dash 
11720	77	1 
11983	60	3/4 oz 
11983	56	3/4 oz 
11983	74	Juice of 1/4 
11983	327	2 tsp 
12089	60	1 1/2 oz 
12089	15	1 tsp 
12089	33	1/2 tsp 
12089	125	1 dash 
12089	99	1 tsp 
12089	104	Twist of 
12186	60	1 oz Jamaican 
12186	272	1 tsp 
12186	7	1/2 tsp 
12186	74	Juice of 1/4 
12224	191	2 oz 
12224	31	1/4 tsp 
12224	76	1 dash 
12434	32	1 1/2 oz 
12434	30	1 tblsp 
12434	76	2 dashes 
12654	18	10 cl cold 
12654	30	4 cl 
12654	112	2 tsp 
12654	237	1/2 
12706	123	4 cl 
12706	4	2 cl 
12706	306	4 cl 
12750	18	2 cups 
12750	330	2 oz sweet 
12750	106	1/2 tsp 
12750	198	2 beaten 
12802	361	1/2 kg chopped 
12802	62	3/4 L 
12802	60	1/2 L 
12862	99	3/4 cup 
12862	239	2 tsp 
12862	362	2 cups 
12862	21	1 1/2 tblsp 
12862	193	1 1/2 cup 
12862	62	1 cup 
12862	146	3-4 cups 
12864	283	4 qt 
12864	109	1 cup 
12864	69	6 oz frozen 
12864	30	6 oz frozen 
12864	105	6 whole 
12864	143	6 whole 
12864	96	1 tsp ground 
12864	106	3 sticks 
12916	194	1/2 cup 
12916	62	3 tblsp 
12916	247	13 oz skimmed 
12916	18	3/4 cup skimmed 
12916	155	1 tsp 
12916	82	1 tsp 
12916	96	\n
13026	27	1 1/2 L 
13026	62	1 cup 
13026	74	1 large 
13026	128	1 large 
13026	274	1 large 
13026	56	3-4 oz plain 
13026	63	Not provided, use judgement
13192	82	1/2 oz 
13192	54	1/2 oz 
13192	4	1/2 oz 
13192	126	1/2 oz 
13192	138	2 oz 
13192	195	1 splash 
13204	197	2 oz 
13204	5	1 oz 
13204	21	2 oz sweetened 
13204	50	1 oz 
14372	197	2/3 
14372	123	1/3 
14372	3	Fill with 
14372	24	Top it up with 
14374	197	2/3 part 
14374	68	1/3 part 
14374	3	cubes
14374	212	Not provided, use judgement
17175	192	25 ml
17175	6	15 ml
17175	309	10 ml
17175	12	top up with
15178	363	1 part 
15178	103	1/2 part 
15178	215	1 part 
15178	94	1 splash 
15597	23	1 1/2 oz 
15597	28	1/2 oz 
15597	280	1/2 oz 
15597	49	1 1/2 oz 
15597	146	1 1/2 oz 
17020	201	1 oz 
17020	108	1 oz 
17198	10	1 1/2 oz 
17198	8	3/4 oz 
17201	82	12 parts
17201	171	8 parts
17201	141	3 parts
17201	85	3 parts
17216	88	4.5 cl
17216	85	1.5 cl
17216	364	2 spoons
178340	4	30 ml
178340	79	30 ml
178340	115	90 ml
178340	122	Garnish with
17831	60	2 oz 
17831	303	4 oz 
17831	101	1 twist of 
11025	8	1 1/2 oz 
11025	55	1 1/2 oz 
11227	12	Chilled 
11227	62	1 piece 
11227	125	2 dashes 
11227	101	1 twist of 
11227	10	1 dash
11542	189	1 1/2 oz 
11542	7	1 tsp 
11542	61	Juice of 1/2 
11664	47	3/4 oz 
11664	4	1 1/2 oz 
11961	7	1 tblsp 
11961	261	1/2 oz 
11963	220	2 1/2 oz 
11963	56	1/2 tsp 
12722	91	1 1/2 cup 
12722	41	4 tsp 
12722	99	1/2 cup 
12732	18	6 cups 
12732	330	3 oz Mexican 
12732	106	1 tsp powdered 
12732	194	3 
12736	17	2 oz 
12736	18	6-8 oz 
12736	106	1 stick 
12736	275	1 
12736	330	2 oz finely chopped dark 
12736	252	Fresh 
12772	13	2 tsp 
12772	26	Strong cold 
13032	92	46 oz 
13032	30	20 oz 
13032	109	1/2 cup 
13032	106	3 3-inch 
13032	105	1/2 tsp 
13032	123	2 tblsp 
13068	88	1/2 oz 
13068	235	1/2 oz 
13202	8	1 oz 
13202	54	1 oz 
13202	15	1 oz Bacardi 
13202	365	1 oz 
13202	70	1 oz 
14107	197	1 1/2 oz 
14107	94	3/4 oz 
14107	166	1/2 oz 
14107	63	3 oz 
14107	74	1 slice 
15200	366	1 oz 
15200	8	1/2 oz 
15200	30	4 oz 
15200	7	1/2 oz 
17184	56	1 oz 
17184	60	1 oz 
17184	51	1 oz 
17184	21	1 oz 
15951	3	cubes
15951	153	Not provided, use judgement
15951	103	Not provided, use judgement
15951	54	Not provided, use judgement
15951	18	Not provided, use judgement
16158	3	1 cup 
16158	88	2 oz 
16158	340	1/4 cup 
16158	123	3 tblsp fresh 
16354	54	1/3 oz 
16354	161	1/3 oz 
16354	94	1/3 oz 
16987	9	3/4 oz 
16987	100	3/4 oz 
16987	54	3/4 oz 
16987	30	2-3 oz 
178326	61	1
178326	183	1
178326	305	750 ml
178326	91	1 cup
178326	274	1 cup
178326	367	3 shots
178326	80	Top
178339	368	1 oz
178339	4	1 oz
178339	47	0.75 oz
178339	79	0.75 oz
178339	6	Dash
178339	369	Dash
178339	122	Garnish with
11205	145	2 oz 
11205	74	Juice of 1 
11205	61	Juice of 1 
11205	33	1 tblsp
11205	7	1/4 tsp
11205	127	Not provided, use judgement
12316	48	1/2 oz 
12316	60	1 oz 
12316	123	1 oz 
12316	33	1 tsp 
12316	91	1 oz 
12474	51	3/4 oz 
12474	4	3/4 oz 
12474	146	1 tblsp 
12744	62	5 tblsp 
12744	42	3 tblsp 
12744	116	1 dash 
12744	99	3 tblsp hot 
12744	18	2 cups 
12744	155	1/4 tsp 
12746	42	2 tsp 
12746	62	1 tsp 
12746	155	1/2 tsp 
12746	18	12 oz 
12760	165	1 part 
12760	9	1 part 
12760	4	2 parts 
12760	5	1/2 part 
13036	74	Juice of 1 
13036	62	1 tblsp 
13036	91	8-10 ripe 
13036	99	1 cup 
13042	146	46 oz chilled 
13042	50	28 oz 
13042	30	6 oz frozen 
13042	74	1 
13042	370	2 cups 
13042	12	1 bottle 
13675	22	1/4 glass 
13675	371	3/4 glass 
14306	8	1 part 
14306	138	1 part 
14306	30	1 part 
15092	30	1 part 
15092	66	1 part 
15092	146	1 part 
15092	3	Not provided, use judgement
15789	57	1/2 pint 
15789	58	1/2 pint 
15789	372	A little bit of 
16271	53	1 1/2 oz 
16271	126	1 oz 
16271	60	1/2 oz 
16275	3	4-5 
16275	373	2 oz 
16275	155	1 tsp 
16275	72	10-12 oz 
16485	13	1 oz 
16485	22	1 oz 
16485	126	1 oz 
16485	9	1 oz 
16943	54	1 oz 
16943	28	1 oz 
16943	30	3 oz 
16943	49	3 oz 
17094	8	1 shot 
17094	5	1 shot 
17094	215	1 shot 
17224	54	1 shot 
17224	178	2 shots 
17224	12	Top up with
178335	186	30 ml
178335	171	75 ml
178335	80	Top
11121	47	1 1/2 oz 
11121	124	1 1/2 oz 
11121	190	1 1/4 tsp 
11121	101	1 twist of 
11390	60	2 oz 
11390	123	1 tblsp 
11390	38	6 
11390	62	1 tsp 
12322	48	1/2 oz 
12322	88	1 oz 
12322	51	1/2 oz 
12322	21	1 oz 
12322	91	1 oz 
12322	116	Not provided, use judgement
12710	370	1 cup 
12710	274	2 
12714	374	3 
12714	375	1/2 
13535	166	1 L 
13535	376	2 cups 
13535	54	2 cups 
14133	102	1/2 oz 
14133	54	1 oz 
14133	61	Juice of 1/2 
14133	49	1 splash 
14282	13	3/4 oz 
14282	1	3/4 oz 
14282	63	Fill with 
14510	9	2 oz 
14510	256	2 scoops 
14510	156	Not provided, use judgement
16134	197	1 shot 
16134	30	1 shot 
16134	51	1 shot 
16134	2	Fill to top 
17005	8	1 jigger 
17005	74	Juice of 1/2 
17005	3	Not provided, use judgement
17005	67	Not provided, use judgement
17204	54	1/2 oz 
17204	88	1/2 oz 
17204	60	1/2 oz 
17204	4	1/2 oz 
17204	72	1 dash 
17204	101	Twist of 
17214	54	2.5 cl
17214	11	1.5 cl
17214	89	1 cl
17214	6	2.5 cl
178329	82	2 shots
178329	85	1 shot
178329	19	1 shot
178329	125	1 dash
178329	62	Ground
178329	96	Top
11010	32	1 oz 
11010	51	1 oz 
11010	61	Juice of 1 
11011	51	1 oz 
11011	32	1 oz 
11011	21	1/2 tsp 
11145	125	3 dashes 
11145	99	1 tsp 
11145	62	1 
11145	100	3 oz 
11145	128	1 
11145	67	1 
11339	32	3/4 oz 
11339	4	1 1/2 oz 
11339	31	3/4 oz 
11339	7	1 tsp 
11339	21	1/4 tsp 
11339	77	1 
11985	60	1 1/2 
11985	151	1/3 oz cream 
11985	61	Juice of 1/2 
12716	291	1 
12716	128	2 
16202	8	Not provided, use judgement
16202	94	Not provided, use judgement
16202	161	Not provided, use judgement
16202	146	Not provided, use judgement
17065	168	1 bottle 
17065	60	1 shot 
17229	82	1 shot 
17229	31	1/2 shot 
17229	10	1/2 shot 
17229	4	1/2 shot 
17229	302	1/4 shot
17229	89	1/4 shot
17229	99	1/2 shot 
17233	4	50 ml 
17233	313	30 ml 
17233	8	15 ml
17233	377	Garnish
17233	378	Grated
178323	54	1 shot
178323	89	1/2 shot
178323	110	Full Glass
12720	239	1 inch 
12720	74	1/4 
12720	99	1 cup hot 
14588	213	1/2 oz 
14588	60	1/2 oz 
14588	15	1/2 oz Bacardi 
14588	379	1 oz 
14588	102	1 oz 
14588	18	3 oz 
14588	280	1 oz 
14588	256	1 cup 
15675	54	2 oz 
15675	380	1 oz 
15675	257	1 tsp 
15675	91	5 
15675	298	Not provided, use judgement
16958	66	3 parts 
16958	213	1 part 
16958	106	3 dashes 
178334	216	2 shots
178334	12	Top
178346	192	60 ml
178346	61	1
178346	187	3 cl
17832	60	1 oz 
17832	229	1 oz 
17832	30	1 oz 
17832	21	1/2 oz 
17832	2	3 oz 
17832	101	1 twist of 
11243	13	1 oz 
11243	54	1/2 oz 
11243	314	5 oz 
11476	124	1 1/2 oz 
11476	47	3/4 oz 
11476	76	2 dashes 
11476	95	1 
12656	91	1/2 lb frozen 
12656	237	1 frozen 
12656	236	1 cup plain 
12656	18	1 cup 
12656	41	 to taste\n
16082	8	3/4 oz 
16082	379	1/2 oz 
16082	26	8 oz 
17002	20	1/2 oz 
17002	54	1/2 oz 
17002	51	1/2 oz 
17002	88	1/2 oz 
17002	381	1/2 oz 
17002	219	Fill with 
178341	4	1 shot
178341	115	Top
178341	6	Top
178341	269	25 ml
178341	80	Top
178341	304	Garnish with
178341	122	Garnish with
12730	42	1/2 cup 
12730	62	1 cup 
12730	382	7 tsp 
12730	99	1/2 cup 
12730	18	1 qt 
12738	330	12 oz fine 
12738	383	1 tsp 
12738	155	1/2 tsp 
12738	217	1 cup 
12738	384	mini 
12796	128	3 large 
12796	54	3 cups 
12796	62	1 1/3 cup superfine 
12914	194	6 
12914	62	1/4 cup 
12914	116	1/4 tsp 
12914	18	1 qt 
12914	155	1 tsp 
14157	117	4 cl 
14157	66	16 cl 
17174	4	1 oz
17174	88	1 oz
17174	54	1 oz
17174	278	1 oz
17174	222	1 oz
17174	385	1 oz
17174	94	1 oz
17174	50	3 oz
17221	259	3 cups 
17221	18	1 cup 
17221	258	1/2 cup 
17221	386	for topping
17221	387	4 tablespoons\r\n
17221	388	4 tablespoons\r\n
17221	389	15\r\n
11391	60	1 1/2 oz 
11391	193	4 chunks 
11391	123	1 tblsp 
11391	62	1/2 tsp 
12854	204	1 fifth 
12854	41	1 1/2 cup mild 
12854	352	2 tsp dried and chopped 
12854	390	1/4 tsp crushed 
12854	101	2 2 inch strips 
11786	56	1 oz 
11786	60	1/2 oz 
11786	100	1/2 oz 
11786	74	Juice of 1/2
11786	33	1 tblsp
11786	127	Not provided, use judgement
12708	391	Juice of 1/2 
12708	237	1 
14560	44	1/2 oz 
14560	215	3/4 oz 
14560	54	1/2 oz 
14560	392	Fill with 
15024	23	2 oz 
15024	49	4 oz 
15024	2	2 oz 
15024	3	Add 
15300	4	1/2 oz
15300	60	1/2 oz
15300	88	1/2 oz
15300	51	1/2 oz
15300	54	1/2 oz
15300	72	1/2 oz
15300	94	1-2 dash 
15300	125	1 wedge 
15300	74	Garnish with
178332	393	1/2 cup
178332	38	5
178332	171	1/3 Cup
178332	61	Juice of 1/2
178332	88	1 shot
12690	236	1/2 cup plain 
12690	99	1 1/4 cup cold 
12690	394	1/2 tsp ground roasted 
12690	116	1/4 tsp 
12690	38	1/4 tsp dried 
12718	239	1/4 inch 
12718	193	1/2 
12748	18	2 cups 
12748	330	4 oz chopped bittersweet or semi-sweet 
12748	148	3 2-inch strips 
12748	40	1/2 tsp instant 
12748	96	1/8 tsp ground 
13200	182	12 oz 
13200	70	12 oz 
13200	69	12 oz frozen 
13200	3	1 cup crushed 
16447	256	2 scoops 
16447	72	1 can 
16447	100	2 oz 
12712	395	1 cup 
12712	74	1/4 
12712	193	1/2 
16100	138	2 oz 
16100	8	2 oz 
16100	88	2 oz 
16100	30	Add splash 
12658	91	1/2 lb frozen 
12658	237	1 frozen 
12658	66	2 cups fresh 
16984	82	1 oz 
16984	54	1 oz 
16984	88	1 oz 
16984	4	1 oz 
16984	51	1 oz 
16984	167	1 oz 
16984	161	1 oz 
16984	213	1 oz 
14029	53	1 oz white 
14029	54	1 oz 
17246	396	2 oz
17246	313	3/4 oz
17246	281	1/2 oz
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.recipes (id, name, category, "process_EN", "process_ES", "process_FR", "process_DE", "process_IT", image_url, alcoholic, created_on) FROM stdin;
15997	GG	Ordinary Drink	Pour the Galliano liqueur over ice. Fill the remainder of the glass with ginger ale and thats all there is to it. You now have a your very own GG.	Not yet provided	Not yet provided	Den Galliano-Likör über Eis gießen. Füllen Sie den Rest des Glases mit Ginger Ale und das ist alles, was dazu gehört. Du hast jetzt ein eigenes GG.	Versare il liquore Galliano su ghiaccio.\r\nRiempi il resto del bicchiere con ginger ale e questo è tutto.\r\nOra hai il tuo GG personale.	https://www.thecocktaildb.com/images/media/drink/vyxwut1468875960.jpg	f	2016-07-18 22:06:00
17222	A1	Cocktail	Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.	Not yet provided	Not yet provided	Alle Zutaten in einen Cocktailshaker geben, mischen und über Eis in ein gekühltes Glas servieren.	Versare tutti gli ingredienti in uno shaker, mescolare e servire con ghiaccio in un bicchiere freddo.	https://www.thecocktaildb.com/images/media/drink/2x8thr1504816928.jpg	t	2017-09-07 21:42:09
13501	ABC	Shot	Layered in a shot glass.	Not yet provided	Not yet provided	Schichtaufbau in einem Schnapsglas.	Versa in ordine di lettera i vari ingredienti. 1/3 del bicchiere va riempito con l'Amaretto, 1/3 di Baileys e il restante di Cognac.	https://www.thecocktaildb.com/images/media/drink/tqpvqp1472668328.jpg	t	2016-08-31 19:32:08
17203	Kir	Ordinary Drink	Add the crème de cassis to the bottom of the glass, then top up with wine.	Not yet provided	Not yet provided	Gib die Creme de Cassis auf den Boden des Glases und füge dann Wein hinzu.	Aggiungere la crème de cassis sul fondo del bicchiere, quindi rabboccare con il vino.	https://www.thecocktaildb.com/images/media/drink/apneom1504370294.jpg	t	2017-09-02 17:38:14
14229	747	Shot	pour kaluha, then Baileys, then Frangelico not chilled and not layered -- SERVE!!!	Not yet provided	Not yet provided	Gießen Sie kaluha, dann Baileys, dann Frangelico nicht gekühlt und nicht geschichtet -- SERVE!!!!!!!!	Versa Kahlua, Baileys e poi Frangelico.	https://www.thecocktaildb.com/images/media/drink/xxsxqy1472668106.jpg	t	2016-08-31 19:28:26
15288	252	Shot	Add both ingredients to shot glass, shoot, and get drunk quick	Not yet provided	Not yet provided	Beide Zutaten in ein Schnapsglas geben.	Aggiungi entrambi gli ingredienti al bicchierino, bevi e ubriacati velocemente	https://www.thecocktaildb.com/images/media/drink/rtpxqw1468877562.jpg	t	2016-07-18 22:32:42
17225	Ace	Cocktail	Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.	Not yet provided	Not yet provided	Alle Zutaten in einem Cocktailshaker mit Eis schütteln und dann in einem kalten Glas abseihen.	Shakerare tutti gli ingredienti in uno shaker e ghiaccio, quindi filtrare in un bicchiere freddo.	https://www.thecocktaildb.com/images/media/drink/l3cd7f1504818306.jpg	t	2017-09-07 22:05:06
17837	Adam	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Cocktailglas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Agitare bene.Filtrare in un bicchiere da cocktail.	https://www.thecocktaildb.com/images/media/drink/v0at4i1582478473.jpg	t	2016-09-02 11:29:29
13332	B-53	Shot	Layer the Kahlua, Sambucca and Grand Marnier into a shot glas in that order. Better than B-52	Not yet provided	Not yet provided	Schichte die Kahlua, Sambucca und Grand Marnier in dieser Reihenfolge in ein Schnapsglas ein. Besser als B-52	Metti Kahlua, Sambuca e Grand Marnier in un bicchierino in quest'ordine. 	https://www.thecocktaildb.com/images/media/drink/rwqxrv1461866023.jpg	t	2016-04-28 18:53:43
13938	AT&T	Ordinary Drink	Pour Vodka and Gin over ice, add Tonic and Stir	Not yet provided	Not yet provided	Wodka und Gin über das Eis gießen, Tonic hinzufügen und umrühren.	Versare la vodka e il gin sul ghiaccio, aggiungere l'acqua tonica e mescolare	https://www.thecocktaildb.com/images/media/drink/rhhwmp1493067619.jpg	t	2017-04-24 22:00:19
14610	ACID	Shot	Poor in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.	Not yet provided	Not yet provided	Gering den 151 gefolgt von der 101, die mit einer Cola oder Dr. Pepper Chaser serviert wird.	Versa prima il Bacardi 151 seguito dal 101, servito con una Coca-Cola.	https://www.thecocktaildb.com/images/media/drink/xuxpxt1479209317.jpg	t	2016-11-15 11:28:37
15853	B-52	Shot	Layer ingredients into a shot glass. Serve with a stirrer.	Not yet provided	Not yet provided	Zutaten in ein Schnapsglas schichten. Mit einem Rührstab servieren.	Metti gli ingredienti in un bicchiere da shot a strati.\r\nServire con una paletta.	https://www.thecocktaildb.com/images/media/drink/5a3vg61504372070.jpg	t	2017-09-02 18:07:51
16262	H.D.	Coffee / Tea	Mix the whisky and Baileys Cream in a beer-glass (at least 50 cl). Fill the rest of the glass with coffee.	Not yet provided	Not yet provided	Den Whisky und die Baileys Cream in einem Bierglas (mind. 50 cl) mischen. Füllen Sie den Rest des Glases mit Kaffee.	Mescolare il whisky e la crema di Baileys in un bicchiere da birra (almeno 50 cl).\r\nRiempi il resto del bicchiere di caffè.	https://www.thecocktaildb.com/images/media/drink/upusyu1472667977.jpg	t	2016-08-31 19:26:18
17141	Smut	Punch / Party Drink	Throw it all together and serve real cold.	Not yet provided	Not yet provided	Schütte alles zusammen und serviere es kalt.	Metti tutto insieme e servi freddo.	https://www.thecocktaildb.com/images/media/drink/rx8k8e1504365812.jpg	t	2017-09-02 16:23:32
17208	Rose	Ordinary Drink	Shake together in a cocktail shaker, then strain into chilled glass. Garnish and serve.	Not yet provided	Not yet provided	In einem Cocktailshaker vermengen und dann in ein gekühltes Glas abseihen. Garnieren und servieren.	Shakerare insieme in uno shaker, quindi filtrare in un bicchiere freddo.\r\nGuarnire e servire.	https://www.thecocktaildb.com/images/media/drink/8kxbvq1504371462.jpg	t	2017-09-02 17:57:42
17833	A. J.	Ordinary Drink	Shake ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Not yet provided	Shakerare gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/l74qo91582480316.jpg	t	2016-09-02 11:16:58
17187	Derby	Ordinary Drink	Pour all ingredients into a mixing glass with ice. Stir. Strain into a cocktail glass. Garnish with a sprig of fresh mint in the drink.	Not yet provided	Not yet provided	Alle Zutaten in ein Mischglas mit Eis geben. Rühren. In ein Cocktailglas abseihen. Mit einem Zweig frischer Minze im Getränk garnieren.	Versare tutti gli ingredienti in un mixing glass con ghiaccio. Filtrare in un bicchiere da cocktail. Agitare. Guarnire con un rametto di menta fresca nella bevanda.	https://www.thecocktaildb.com/images/media/drink/52weey1606772672.jpg	t	2017-09-02 11:45:56
11422	Godchild	Ordinary Drink	Shake all ingredients well with cracked ice, strain into a champagne flute, and serve.	Not yet provided	Not yet provided	Alle Zutaten gut mit gebrochenem Eis schütteln, in ein Sektglas abseihen und servieren.	Shakerare bene tutti gli ingredienti con ghiaccio tritato, filtrare in un flute da champagne e servire.	https://www.thecocktaildb.com/images/media/drink/m5nhtr1504820829.jpg	t	2017-09-07 22:47:09
12764	Karsk	Ordinary Drink	Put a copper coin in a coffe-cup and fill up with coffee until you no longer see the coin, then add alcohol until you see the coin. Norwegian speciality.	Not yet provided	Not yet provided	Legen Sie eine Kupfermünze in eine Kaffeetasse und füllen Sie sie mit Kaffee, bis Sie die Münze nicht mehr sehen, dann fügen Sie Alkohol hinzu, bis Sie die Münze wieder sehen. Norwegische Spezialität.	Metti una moneta di rame in una tazza da caffè e riempila di caffè finché non vedi più la moneta, quindi aggiungi l'alcol finché non vedi la moneta. Specialità norvegese.	https://www.thecocktaildb.com/images/media/drink/808mxk1487602471.jpg	t	2017-02-20 14:54:31
12776	Melya	Coffee / Tea	Brew espresso. In a coffee mug, place 1 teaspoon of unsweetened powdered cocoa, then cover a teaspoon with honey and drizzle it into the cup. Stir while the coffee brews, this is the fun part. The cocoa seems to coat the honey without mixing, so you get a dusty, sticky mass that looks as though it will never mix. Then all at once, presto! It looks like dark chocolate sauce. Pour hot espresso over the honey, stirring to dissolve. Serve with cream.	Not yet provided	Not yet provided	Espresso zubereiten. In eine Kaffeetasse 1 Teelöffel ungesüßten, pulverisierten Kakao geben, dann einen Teelöffel Honig in die Tasse träufeln. Rühren Sie um, während der Kaffee brüht, das ist der lustige Teil. Der Kakao scheint den Honig ohne Mischen zu überziehen, so dass Sie eine dichte, klebrige Masse erhalten, die aussieht, als würde sie sich nie vermischen. Dann auf einmal, presto! Es sieht aus wie dunkle Schokoladensoße. Heißen Espresso über den Honig gießen und unter Rühren auflösen. Mit Sahne servieren.	Prepara l'espresso.\r\nIn una tazza da caffè, mettete 1 cucchiaino di cacao amaro in polvere, quindi coprite un cucchiaino con del miele e versatelo nella tazza.\r\nMescola mentre il caffè si prepara, questa è la parte divertente.\r\nIl cacao sembra ricoprire il miele senza mescolarsi, quindi si ottiene una massa polverosa e appiccicosa che sembra non si mescolerà mai.\r\nVersare l'espresso caldo sul miele, mescolando per scioglierlo.\r\nServire con la panna.	https://www.thecocktaildb.com/images/media/drink/xwtptq1441247579.jpg	f	2015-09-03 03:32:59
14598	50/50	Ordinary Drink	fill glass with crushed ice. Add vodka. Add a splash of grand-marnier. Fill with o.j.	Not yet provided	Not yet provided	Glas mit zerstoßenem Eis füllen. Füge Wodka hinzu. Füge einen Spritzer Grand-Marnier hinzu. Füllen Sie mit o.j.	Riempire un bicchiere con ghiaccio tritato.\r\nAggiungi la vodka.\r\nAggiungi un tocco di grand-Marnier.\r\nRiempi di succo d'arancia	https://www.thecocktaildb.com/images/media/drink/wwpyvr1461919316.jpg	t	2016-04-29 09:41:56
15328	Zorro	Coffee / Tea	add all and pour black coffee and add whipped cream on top.	Not yet provided	Not yet provided	Alles hinzufügen, schwarzen Kaffee einfüllen und mit Schlagsahne übergießen.	Aggiungere il tutto e versare il caffè nero e aggiungere sopra la panna montata.	https://www.thecocktaildb.com/images/media/drink/kvvd4z1485621283.jpg	t	2017-01-28 16:34:43
17254	Bijou	Cocktail	Stir in mixing glass with ice and strain\r\n	Not yet provided	Not yet provided	In Mischglas mit Eis verrühren und abseihen.	Mescolare nel mixing glass con ghiaccio e filtrare	https://www.thecocktaildb.com/images/media/drink/rysb3r1513706985.jpg	t	2017-12-19 18:09:45
17839	Affair	Ordinary Drink	Pour schnapps, orange juice, and cranberry juice over ice in a highball glass. Top with club soda and serve.	Not yet provided	Not yet provided	Gießen Sie Schnaps, Orangensaft und Cranberrysaft über Eis in ein Highball-Glas. Mit Club-Soda überziehen und servieren.	Versare la grappa, il succo d'arancia e il succo di mirtillo rosso sul ghiaccio in un bicchiere highball. Completare con la soda club e servire.	https://www.thecocktaildb.com/images/media/drink/h5za6y1582477994.jpg	t	2016-09-01 10:05:34
11149	Boxcar	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Sour Glas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Filtrare in un bicchiere sour.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/pwgtpa1504366376.jpg	t	2017-09-02 16:32:57
11872	Orgasm	Ordinary Drink	Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.	Not yet provided	Not yet provided	Not yet provided	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail fredda e servire.	https://www.thecocktaildb.com/images/media/drink/vr6kle1504886114.jpg	t	2017-09-08 16:55:14
12450	Victor	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/voapgc1492976416.jpg	t	2017-04-23 20:40:16
13128	Diesel	Beer	Pour the lager first then add the blackcurrant cordial. Top up with the cider. The colour sholud be very dark approaching the colour of Guiness.	Not yet provided	Not yet provided	Zuerst das Lagerbier gießen und dann die schwarze Johannisbeere hinzufügen. Mit dem Apfelmost auffüllen. Die Farbe sollte sehr dunkel sein und sich der Farbe von Guiness nähern.	Versare prima la birra chiara e poi lo sciroppo di ribes nero.\r\nRabboccare il sidro.\r\nIl colore dovrebbe essere molto scuro, avvicinandosi al colore della Guinness.	https://www.thecocktaildb.com/images/media/drink/sxrrqq1454512852.jpg	t	2016-02-03 15:20:52
11000	Mojito	Cocktail	Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.	Not yet provided	Not yet provided	Minzblätter mit Zucker und Limettensaft verrühren. Füge einen Spritzer Sodawasser hinzu und fülle das Glas mit gebrochenem Eis. Den Rum eingießen und mit Sodawasser übergießen. Garnieren und mit einem Strohhalm servieren.	Pestare le foglie di menta con lo zucchero e il succo di lime.\r\nAggiungere una spruzzata di acqua di seltz e riempi il bicchiere con ghiaccio tritato.\r\nVersare il rum e riempire con acqua di seltz.\r\nGuarnire con una fetta di lime, servire con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg	t	2016-11-04 09:17:09
14888	Zinger	Soft Drink / Soda	Get a shot glass and pour in three shots of the schnapps. Do the same with the Surge Cola. Then down it like Scheetz would.	Not yet provided	Not yet provided	Holen Sie sich ein Schnapsglas und geben Sie drei Schüsse des Schnapses hinein. Das Gleiche gilt für den Schwall Cola.	Prendi un bicchierino e versa tre shot di grappa.	https://www.thecocktaildb.com/images/media/drink/iixv4l1485620014.jpg	t	2017-01-28 16:13:34
15106	Apello	Other/Unknown	Stirr. Grnish with maraschino cherry.	Not yet provided	Not yet provided	Rühren. Mit Maraschinokirsche garnieren.	Versare tutti gli ingredienti in un mixing glass. Mescolate.\r\nGuarnire con una ciliegia al maraschino.	https://www.thecocktaildb.com/images/media/drink/uptxtv1468876415.jpg	f	2016-07-18 22:13:35
15266	Avalon	Ordinary Drink	Fill a tall glass with ice. Layer the Finlandia Vodka, lemon and apple juices, Pisang Ambon, and top up with lemonade. Stir slightly and garnish with a spiralled cucumber skin and a red cherry. The cucumber provides zest and looks attractive. This drink, created by Timo Haimi, took first prize in the 1991 Finlandia Vodka Long Drink Competition.	Not yet provided	Not yet provided	Füllen Sie ein hohes Glas mit Eis. Legen Sie den Finlandia Wodka, Zitronen- und Apfelsäfte, Pisang Ambon und geben Sie Limonade dazu. Leicht umrühren und mit einer spiralförmigen Gurkenhaut und einer roten Kirsche garnieren. Die Gurke sorgt für Schärfe und sieht attraktiv aus. Dieses von Timo Haimi kreierte Getränk erhielt 1991 den ersten Preis beim Finlandia Wodka Long Drink Wettbewerb.	Riempi un bicchiere alto di ghiaccio.\r\nVersare la Vodka, succhi di limone, mela, Pisang Ambon o un liquore alla banana e completare con la limonata.\r\nMescolare leggermente e guarnire con una buccia di cetriolo a spirale e una ciliegia rossa.\r\nIl cetriolo fornisce la scorza e sembra attraente.\r\nQuesta bevanda, creata da Timo Haimi, ha vinto il primo premio nel 1991 Finlandia Vodka Long Drink Competition.	https://www.thecocktaildb.com/images/media/drink/3k9qic1493068931.jpg	t	2017-04-24 22:22:11
15691	Zoksel	Soft Drink / Soda	No specific mixinginstructions, just poor every ingredient in one glass. The lemon goes with it.	Not yet provided	Not yet provided	Keine spezifischen Mischungsanweisungen, nur alle Zutaten in ein Glas geben. Dazu passt Zitrone.	Nessuna istruzione di miscelazione specifica, versa ogni ingrediente in un bicchiere.\r\n	https://www.thecocktaildb.com/images/media/drink/ft8ed01485620930.jpg	t	2017-01-28 16:28:50
17185	Casino	Ordinary Drink	Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.	Not yet provided	Not yet provided	Alle Zutaten in den Shaker mit Eiswürfeln geben. Gut schütteln. In ein gekühltes Cocktailglas abseihen. Mit einer Zitronenscheibe und einer Maraschinokirsche garnieren. Ohne Strohhalm servieren.	Versare tutti gli ingredienti in uno shaker con cubetti di ghiaccio.\r\nAgitare bene.\r\nFiltrare in una coppetta da cocktail ghiacciata.\r\nGuarnire con una scorza di limone e una ciliegia al maraschino.\r\nServire senza cannuccia.	https://www.thecocktaildb.com/images/media/drink/1mvjxg1504348579.jpg	t	2017-09-02 11:36:19
16031	Radler	Ordinary Drink	Pour beer into large mug, slowly add the 7-up (or Sprite).	Not yet provided	Not yet provided	Bier in einen großen Becher gießen, langsam den 7-up (oder Sprite) hinzufügen.	Versare la birra in una tazza grande, aggiungere lentamente il 7up (o Sprite).	https://www.thecocktaildb.com/images/media/drink/xz8igv1504888995.jpg	t	2017-09-08 17:43:15
17205	Mimosa	Ordinary Drink	Ensure both ingredients are well chilled, then mix into the glass. Serve cold.	Not yet provided	Not yet provided	Achten Sie darauf, dass beide Zutaten gut gekühlt sind, und mischen Sie sie dann in das Glas. Kalt servieren.	Assicurati che entrambi gli ingredienti siano ben raffreddati, quindi mescolali nel bicchiere.\r\nServire freddo.	https://www.thecocktaildb.com/images/media/drink/juhcuu1504370685.jpg	t	2017-09-02 17:44:45
17215	Spritz	Ordinary Drink	Build into glass over ice, garnish and serve.	Not yet provided	Not yet provided	Über Eis in Glas einfüllen, garnieren und servieren.	Build into glass over ice, garnish and serve.	https://www.thecocktaildb.com/images/media/drink/j9evx11504373665.jpg	t	2017-09-02 18:34:25
17218	Vesper	Cocktail	Shake over ice until well chilled, then strain into a deep goblet and garnish with a thin slice of lemon peel.	Not yet provided	Not yet provided	Über Eis schütteln, bis es gut abgekühlt ist, dann in einen tiefen Kelch abseihen und mit einer dünnen Scheibe Zitronenschale garnieren.	Shakerare sul ghiaccio fino a quando non si sarà ben raffreddato, quindi filtrare in un calice profondo e guarnire con una fetta sottile di scorza di limone.	https://www.thecocktaildb.com/images/media/drink/mtdxpa1504374514.jpg	t	2017-09-02 18:48:34
17241	Zombie	Cocktail	\r\nBlend at high speed for no more than 5 seconds.\r\n\r\nPour into a glass, add ice cubes to fill, then add the garnish.\r\n\r\n*Donn’s mix: Bring 3 crushed cinnamon sticks, 1 cup of sugar and 1 cup of water to a boil, stirring until the sugar is dissolved.\r\n\r\nSimmer for 2 minutes, then remove from the heat and let sit for at least 2 hours before straining into a clean glass bottle.\r\n\r\nThen add 1 part of the syrup and 2 parts of fresh grapefruit juice together.	Not yet provided	Not yet provided	Mixen Sie mit hoher Geschwindigkeit für nicht mehr als 5 Sekunden. In ein Glas gießen, Eiswürfel zum Füllen hinzufügen, dann die Garnitur hinzufügen. *Donnas Mix: 3 zerdrückte Zimtstangen, 1 Tasse Zucker und 1 Tasse Wasser unter Rühren zum Kochen bringen, bis der Zucker gelöst ist. 2 Minuten köcheln lassen, dann vom Herd nehmen und mindestens 2 Stunden ruhen lassen, bevor man in eine saubere Glasflasche abseiht. Dann 1 Teil des Sirups und 2 Teile frischen Grapefruitsaft dazugeben.	Frullare ad alta velocità per non più di 5 secondi.\r\nVersare in un bicchiere, aggiungere i cubetti di ghiaccio per farcire, quindi aggiungere la guarnizione.\r\n* Preparato per Donn: porta a ebollizione 3 bastoncini di cannella tritati, 1 tazza di zucchero e 1 tazza di acqua, mescolando fino a quando lo zucchero si è sciolto.\r\nCuocere a fuoco lento per 2 minuti, quindi togliere dal fuoco e lasciare riposare per almeno 2 ore prima di filtrare in una bottiglia di vetro pulita.\r\nQuindi aggiungere 1 parte di sciroppo e 2 parti di succo di pompelmo fresco insieme.	https://www.thecocktaildb.com/images/media/drink/2en3jk1509557725.jpg	t	2017-11-01 17:35:26
17253	Paloma	Cocktail	Stir together and serve over ice.	Not yet provided	Not yet provided	Zusammenrühren und über Eis servieren.	Mescolate e servite con ghiaccio.	https://www.thecocktaildb.com/images/media/drink/samm5j1513706393.jpg	t	2017-12-19 17:59:53
17255	Gimlet	Cocktail	Add all the ingredients to a shaker and fill with ice.\r\n\r\nShake, and strain into a chilled cocktail glass or an Old Fashioned glass filled with fresh ice.\r\n\r\nGarnish with a lime wheel.	Not yet provided	Not yet provided	Alle Zutaten in einen Shaker geben und mit Eis füllen. Schütteln und in ein gekühltes Cocktailglas oder ein mit frischem Eis gefülltes Old Fashioned Glas abseihen. Mit einer Limettenscheibe garnieren.	Aggiungere tutti gli ingredienti in uno shaker e riempire di ghiaccio, shakerare e filtrare in una coppetta da cocktail ghiacciata o in un bicchiere riempito con ghiaccio fresco.	https://www.thecocktaildb.com/images/media/drink/3xgldt1513707271.jpg	t	2017-12-19 18:14:32
11600	Kamikaze	Ordinary Drink	Shake all ingredients together with ice. Strain into glass, garnish and serve.	Not yet provided	Not yet provided	Alle Zutaten zusammen mit Eis schütteln. In ein Glas abseihen, garnieren und servieren.	Shakerare tutti gli ingredienti insieme al ghiaccio.Filtrare nel bicchiere, guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/d7ff7u1606855412.jpg	t	2017-09-02 18:26:44
12436	Van Vleet	Ordinary Drink	Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein old-fashioned Glas über Eiswürfel abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in un bicchiere vecchio stile su cubetti di ghiaccio e servire.	https://www.thecocktaildb.com/images/media/drink/fgq2bl1492975771.jpg	t	2017-04-23 20:29:31
178352	Frosé	Cocktail	Step 1\r\nPour rosé into a 13x9" pan and freeze until almost solid (it won't completely solidify due to the alcohol), at least 6 hours.\r\n\r\nStep 2\r\nMeanwhile, bring sugar and ½ cup water to a boil in a medium saucepan; cook, stirring constantly, until sugar dissolves, about 3 minutes. Add strawberries, remove from heat, and let sit 30 minutes to infuse syrup with strawberry flavor. Strain through a fine-mesh sieve into a small bowl (do not press on solids); cover and chill until cold, about 30 minutes.\r\n\r\nStep 3\r\nScrape rosé into a blender. Add lemon juice, 3½ ounces strawberry syrup, and 1 cup crushed ice and purée until smooth. Transfer blender jar to freezer and freeze until frosé is thickened (aim for milkshake consistency), 25–35 minutes.\r\n\r\nStep 4\r\nBlend again until frosé is slushy. Divide among glasses.\r\n\r\nStep 5\r\nDo Ahead: Rosé can be frozen 1 week ahead.	Not yet provided	Not yet provided	Not yet provided	Not yet provided	https://www.thecocktaildb.com/images/media/drink/b4cadp1619695347.jpg	t	\N
17835	Abilene	Ordinary Drink	Pour all of the ingredients into a highball glass almost filled with ice cubes. Stir well.	Not yet provided	Not yet provided	Not yet provided	Versare tutti gli ingredienti in un bicchiere highball riempito di cubetti di ghiaccio. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/smb2oe1582479072.jpg	t	2016-04-29 09:44:25
11023	Almeria	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Cocktailglas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Agitare bene.Filtrare in un bicchiere da cocktail.	https://www.thecocktaildb.com/images/media/drink/rwsyyu1483388181.jpg	t	2017-01-02 20:16:21
11690	Mai Tai	Ordinary Drink	Shake all ingredients with ice. Strain into glass. Garnish and serve with straw.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln. In ein Glas abseihen. Garnieren und mit Trinkhalm servieren.	Shakerare tutti gli ingredienti con ghiaccio.Filtrare nel bicchiere. 	https://www.thecocktaildb.com/images/media/drink/twyrrp1439907470.jpg	t	2015-08-18 15:17:50
11728	Martini	Cocktail	Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.	Not yet provided	Not yet provided	Direkt: Alle Zutaten in ein Mischglas mit Eiswürfeln geben. Gut umrühren. In einem gekühlten Martini-Cocktailglas abseihen. Den Saft aus der Zitronenschale auf das Getränk drücken oder mit Olive garnieren.	Versare tutti gli ingredienti nel mixing glass con cubetti di ghiaccio. Mescolare bene. Spremi la scorza di limone sulla bevanda o guarnisci con l'oliva.Filtrare in una coppetta da cocktail Martini ghiacciata. 	https://www.thecocktaildb.com/images/media/drink/71t8581504353095.jpg	t	2017-09-02 12:51:35
11993	Quentin	Ordinary Drink	In a shaker half-filled with ice cubes, combine the rum, Kahlua, and cream. Shake well. Strain into a cocktail glass and garnish with the nutmeg.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Rum, Kahlua und Sahne mischen. Gut schütteln. In ein Cocktailglas abseihen und mit der Muskatnuss garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unire il rum, il Kahlua e la panna. Filtrare in una coppetta da cocktail e guarnire con la noce moscata. Agitare bene.	https://www.thecocktaildb.com/images/media/drink/spxtqp1478963398.jpg	t	2016-11-12 15:09:58
12127	Sazerac	Ordinary Drink	Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the lemon peel for garnish.	Not yet provided	Not yet provided	Ein gekühltes old-fashioned Glas mit dem Absinth ausspülen, zerstoßenes Eis hinzufügen und beiseite stellen. Die restlichen Zutaten über das Eis geben und beiseite stellen. Entsorgen Sie das Eis und den überschüssigen Absinth aus dem vorbereiteten Glas und seihen Sie das Getränk in das Glas. Die Zitronenschale als Garnierung hinzufügen.	Sciacquare un bicchiere vecchio stile freddo con l'assenzio, aggiungere il ghiaccio tritato e metterlo da parte. Mescola gli ingredienti rimanenti sul ghiaccio e mettilo da parte. Togli il ghiaccio e l'assenzio in eccesso dal bicchiere precedentemente preparato e filtra la bevanda nel bicchiere .Aggiungere la scorza di limone per guarnire.	https://www.thecocktaildb.com/images/media/drink/vvpxwy1439907208.jpg	t	2015-08-18 15:13:28
12130	Scooter	Ordinary Drink	Shake all ingredients well with cracked ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten gut mit gebrochenem Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare bene tutti gli ingredienti con ghiaccio tritato, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/twuptu1483388307.jpg	t	2017-01-02 20:18:27
12196	Sidecar	Ordinary Drink	Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten in einen mit Eis gefüllten Cocktailshaker geben. Gut schütteln und in ein Cocktailglas abseihen.	Versare tutti gli ingredienti in uno shaker pieno di ghiaccio.Shakerare bene e filtrare nella coppetta da cocktail.	https://www.thecocktaildb.com/images/media/drink/x72sik1606854964.jpg	t	2015-08-18 15:07:32
12444	Vesuvio	Ordinary Drink	Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein old-fashioned Glas über Eiswürfel abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in un bicchiere vecchio stile su cubetti di ghiaccio e servire.	https://www.thecocktaildb.com/images/media/drink/26cq601492976203.jpg	t	2017-04-23 20:36:43
12446	Veteran	Ordinary Drink	Pour the rum and cherry brandy into an old-fashioned glass almost filled with ice cubes. Stir well.	Not yet provided	Not yet provided	Den Rum und Kirschlikör in ein old-fashioned Glas gießen, das fast mit Eiswürfeln gefüllt ist. Gut umrühren.	Versare il rum e il brandy di ciliegie in un bicchiere vecchio stile riempito per 2/3 di cubetti di ghiaccio. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/iwml9t1492976255.jpg	t	2017-04-23 20:37:36
12704	Limeade	Other/Unknown	In a large glass, put the lime juice and sugar, and stir well. Add cold seltzer water to fill. Put the lime peels in the glass. Drink. Repeat until limes or soda run out.	Not yet provided	Not yet provided	In einem großen Glas Limettensaft und Zucker anrühren. Füge kaltes Selterswasser zum Befüllen hinzu. Die Limettenschalen in das Glas geben. Trink. Wiederholen Sie dies, bis Limetten oder Soda aufgebraucht sind.	In un bicchiere grande mettere il succo di lime e lo zucchero e mescolare bene. Aggiungere acqua fredda di seltz per riempire. Ripeti finché i lime o la soda non si esauriscono. Mettere le bucce di lime nel bicchiere.	https://www.thecocktaildb.com/images/media/drink/5jdp5r1487603680.jpg	f	2017-02-20 15:14:40
12768	Frappé	Coffee / Tea	Mix together. Blend at highest blender speed for about 1 minute. Pour into a glass and drink with a straw. Notes: This works best if everything is cold (if you make fresh coffee, mix it with the milk and let it sit in the fridge for 1/2 hour. If it is not frothy, add more milk, or even just some more milk powder. The froth gradually turns to liquid at the bottom of the glass, so you will find that you can sit and drink this for about 1/2 hour, with more iced coffee continually appearing at the bottom. Very refreshing.	Not yet provided	Not yet provided	Zusammenmischen. Mischen Sie mit höchster Mischgeschwindigkeit für ca. 1 Minute. In ein Glas gießen und mit einem Strohhalm trinken. Notizen: Dies funktioniert am besten, wenn alles kalt ist (wenn Sie frischen Kaffee zubereiten, mischen Sie ihn mit der Milch und lassen Sie ihn 1/2 Stunde im Kühlschrank stehen. Wenn es nicht schaumig ist, füge mehr Milch oder sogar nur etwas mehr Milchpulver hinzu. Der Schaum verwandelt sich allmählich in Flüssigkeit am Boden des Glases, so dass Sie feststellen werden, dass Sie sitzen und dieses etwa 1/2 Stunde lang trinken können, wobei immer mehr Eiskaffee am Boden auftaucht. Sehr erfrischend.	Frullare alla massima velocità del frullatore per circa 1 minuto.\r\nVersare in un bicchiere e bere con una cannuccia.\r\nNote: Funziona meglio se tutto è freddo (se prepari il caffè fresco, mescolalo con il latte e lascialo riposare in frigo per mezz'ora.\r\nSe non è schiumoso, aggiungi altro latte o anche solo altro latte in polvere.\r\nLa schiuma diventa gradualmente liquida sul fondo del bicchiere, quindi scoprirai che puoi sederti e berlo per circa mezz'ora, con sempre più caffè freddo che compare sul fondo.\r\nMolto rinfrescante.	https://www.thecocktaildb.com/images/media/drink/vqwryq1441245927.jpg	f	2015-09-03 03:05:28
13020	Sangria	Punch / Party Drink	Mix all together in a pitcher and refrigerate. Add cloves and cinnamon sticks to taste. Serve in wine glasses.	Not yet provided	Not yet provided	Alles in einem Krug vermischen und im Kühlschrank aufbewahren. Nach Belieben Nelken und Zimtstangen hinzufügen. In Weingläsern servieren.	Mescolare il tutto in una brocca e conservare in frigorifero.\r\nAggiungere i chiodi di garofano e le stecche di cannella a piacere.\r\nServire in calici da vino.	https://www.thecocktaildb.com/images/media/drink/xrvxpp1441249280.jpg	t	2015-09-03 04:01:20
13222	Big Red	Shot	Pour ingredients into 1 ounce shot glass	Not yet provided	Not yet provided	Zutaten in 1 Schnapsglas gießen.	Versare gli ingredienti in un bicchierino da shot.	https://www.thecocktaildb.com/images/media/drink/yqwuwu1441248116.jpg	t	2015-09-03 03:41:56
17176	Ipamena	Ordinary Drink	Cut half a lime into pieces, place in a shaker, add the sugar and crush. Measure the passion fruit juice, add it to the shaker and fill up with ice cubes. Close the shaker and shake vigorously. Pour the liquid into a glass, top up with ginger ale, stir with a teaspoon and then garnish the rim of the glass with a slice of lime	Not yet provided	Not yet provided	Eine halbe Limette in Stücke schneiden, in einen Shaker geben, Zucker hinzufügen und zerdrücken. Passionsfruchtsaft abmessen, in den Shaker geben und mit Eiswürfeln auffüllen. Schließen Sie den Shaker und schütteln Sie ihn kräftig. Die Flüssigkeit in ein Glas gießen, mit Ginger Ale auffüllen, mit einem Teelöffel umrühren und dann den Rand des Glases mit einer Scheibe Limette garnieren.	Tagliare a pezzi mezzo lime, metterlo in uno shaker, aggiungere lo zucchero e schiacciare.\r\nMisurate il succo di frutto della passione, aggiungetelo allo shaker e riempitelo con cubetti di ghiaccio.\r\nChiudi lo shaker e agita energicamente.\r\nVersare il liquido in un bicchiere, rabboccare con ginger ale, mescolare con un cucchiaino e poi guarnire il bordo del bicchiere con una fetta di lime	https://www.thecocktaildb.com/images/media/drink/yswuwp1469090992.jpg	f	2016-07-21 09:49:52
11003	Negroni	Ordinary Drink	Stir into glass over ice, garnish and serve.	Not yet provided	Not yet provided	In ein Glas über das Eis gießen, garnieren und servieren.	Mescolare nel bicchiere con ghiaccio, guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg	t	2015-08-18 15:12:07
15933	Zambeer	Soft Drink / Soda	Mix sambuca with rootbeer and stir. Add ice	Not yet provided	Not yet provided	Sambuca mit Root Bier mischen und umrühren. Füge Eis hinzu.	Mescolare la sambuca con la birra alla radice e mescolare. Aggiungi il ghiaccio	https://www.thecocktaildb.com/images/media/drink/bje5401485619578.jpg	t	2017-01-28 16:06:18
17193	Stinger	Ordinary Drink	Pour in a mixing glass with ice, stir and strain into a cocktail glass. May also be served on rocks in a rocks glass.	Not yet provided	Not yet provided	In ein Mischglas mit Eis geben, umrühren und in ein Cocktailglas abseihen. Kann auch auf Eiswürfeln in einem Steinglas serviert werden.	Versare in un mixing glass con ghiaccio, mescolare e filtrare in una coppetta da cocktail.	https://www.thecocktaildb.com/images/media/drink/2ahv791504352433.jpg	t	2017-09-02 12:40:33
17195	Bellini	Ordinary Drink	Pour peach purée into chilled flute, add sparkling wine. Stir gently.	Not yet provided	Not yet provided	Pfirsichpüree in das gekühlte Sektglas gießen, Sekt hinzufügen. Vorsichtig umrühren.	Versare la purea di pesche in una flûte fredda, aggiungere lo spumante.\r\n	https://www.thecocktaildb.com/images/media/drink/eaag491504367543.jpg	t	2017-09-02 16:52:23
17210	Bramble	Ordinary Drink	Fill glass with crushed ice. Build gin, lemon juice and simple syrup over. Stir, and then pour blackberry liqueur over in a circular fashion to create marbling effect. Garnish with two blackberries and lemon slice.	Not yet provided	Not yet provided	Füllen Sie das Glas mit zerstoßenem Eis. Den Gin, den Zitronensaft und den Sirup dazugeben. Rühren Sie um und gießen Sie dann Brombeerlikör kreisförmig darüber, um einen Marmoriereffekt zu erzielen. Mit zwei Brombeeren und einer Zitronenscheibe garnieren.	Riempi il bicchiere con ghiaccio tritato.\r\nAggiungi gin, succo di limone e sciroppo semplice.\r\nMescolare e poi versare il liquore alla mora in modo circolare per creare un effetto marmorizzato.\r\nGuarnire con due more e una fetta di limone.	https://www.thecocktaildb.com/images/media/drink/lvzl3r1504372526.jpg	t	2017-09-02 18:15:26
11936	Pink Gin	Ordinary Drink	Pour the bitters into a wine glass. Swirl the glass to coat the inside with the bitters, shake out the excess. Pour the gin into the glass. Do not add ice.	Not yet provided	Not yet provided	Den Bitter in ein Weinglas gießen. Das Glas umrühren, um die Innenseite mit dem Bitter zu überziehen, den Überschuss ausschütten. Gießen Sie den Gin in das Glas. Füge kein Eis hinzu.	Distribuire nei bicchieri i cubetti di ghiaccio, i lamponi, il pepe e il gin e versare l’acqua tonica.	https://www.thecocktaildb.com/images/media/drink/qyr51e1504888618.jpg	t	2017-09-08 17:36:58
12093	Rum Sour	Ordinary Drink	In a shaker half-filled with ice cubes, combine the rum, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Rum, Zitronensaft und Zucker vermengen. Gut schütteln. In ein Sourglas abseihen und mit der Orangenscheibe und der Kirsche garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unire il rum, il succo di limone e lo zucchero. Agitare bene. Filtrare in un bicchiere sour e guarnire con la fetta d'arancia e la ciliegia.	https://www.thecocktaildb.com/images/media/drink/bylfi21504886323.jpg	t	2017-09-08 16:58:44
17217	Vampiro	Ordinary Drink	Vampiros may be made in a tall glass or an old fashioned glass. Bartenders may first "rim" the glass with Kosher Salt, which is done by placing a layer of Kosher Salt on a chopping board, moistening the glass' rim with lime juice or water, and then placing the upside down glass rim onto the Kosher Salt, so that the salt sticks to the moistened rim. The second step is to fill half the glass with ice and add one or two shooter glasses full of high quality Tequila. The next stage is to add the flavouring elements. This is done by squeezing a fresh lime into the glass, adding a few grains of salt, adding citrus-flavoured soda pop, until the glass is 4/5 full, and then adding spicy Viuda de Sanchez (or orange juice, lime juice and pico de gallo). The final step is to stir the ingredients so that the flavours are properly blended.	Not yet provided	Not yet provided	Vampiros können in einem hohen Glas oder einem old fashioned Glas zubereitet werden. Der Barkeeper kann das Glas zuerst mit Koscher-Salz "umsäumen", indem er eine Schicht Koscher-Salz auf ein Schneidebrett legt, den Glasrand mit Limettensaft oder Wasser anfeuchtet und dann den umgedrehten Glasrand auf das Koscher-Salz legt, so dass das Salz am angefeuchteten Rand haftet. Der zweite Schritt ist, das halbe Glas mit Eis zu füllen und ein oder zwei Schaugläser mit hochwertigem Tequila hinzuzufügen. Im nächsten Schritt werden die Aromastoffe hinzugefügt. Dazu wird eine frische Limette in das Glas gepresst, einige Salzkörner hinzugefügt, zitrusartiges Natron, bis das Glas 4/5 voll ist, und dann würziges Viuda de Sanchez (oder Orangensaft, Limettensaft und pico de gallo) hinzugefügt. Der letzte Schritt ist, die Zutaten so zu rühren, dass die Aromen richtig vermischt werden.	I vampiri possono essere realizzati in un bicchiere alto o in un bicchiere vecchio stile.\r\nI baristi possono prima "bordare" il bicchiere con il sale Kosher, che viene fatto mettendo uno strato di sale Kosher su un tagliere, inumidendo il bordo del bicchiere con succo di lime o acqua, quindi posizionando il bordo del vetro capovolto sul Kosher Sale, in modo che il sale si attacchi al bordo inumidito.\r\nIl secondo passo è riempire metà del bicchiere di ghiaccio e aggiungere uno o due bicchieri da shot pieni di Tequila di alta qualità.\r\nLa fase successiva consiste nell'aggiungere gli elementi aromatizzanti.\r\nQuesto viene fatto spremendo un lime fresco nel bicchiere, aggiungendo qualche granello di sale, aggiungendo soda pop aromatizzata agli agrumi, fino a quando il bicchiere non è pieno per 4/5, quindi aggiungere succo d'arancia/succo di lime.\r\nIl passaggio finale è mescolare gli ingredienti in modo che i sapori siano ben amalgamati.	https://www.thecocktaildb.com/images/media/drink/yfhn371504374246.jpg	t	2017-09-02 18:44:06
17228	Addison	Cocktail	Shake together all the ingredients and strain into a cold glass.	Not yet provided	Not yet provided	Alle Zutaten vermengen und in ein kaltes Glas abseihen.	Shakerare insieme tutti gli ingredienti e filtrare in un bicchiere freddo.	https://www.thecocktaildb.com/images/media/drink/yzva7x1504820300.jpg	t	2017-09-07 22:38:20
17827	Old Pal	Cocktail	Chill cocktail glass. Add ingredients to a mixing glass, and fill 2/3 full with ice. Stir about 20 seconds. Empty cocktail glass and strain into the glass. Garnish with a twist of lemon peel.	Not yet provided	Not yet provided	Cocktailglas kühl stellen. Geben Sie die Zutaten in ein Mischglas und füllen Sie 2/3 der Zutaten mit Eis. Etwa 20 Sekunden umrühren. Cocktailglas in das Glas abseihen. Mit einer Zitronenspirale garnieren.	Raffredda un bicchiere da cocktail.\r\nAggiungere gli ingredienti in un mixing glass e riempire con 2/3 di ghiaccio.\r\nMescola per circa 20 secondi.\r\nFiltrare nel bicchiere.\r\nGuarnire con una scorza di limone.	https://www.thecocktaildb.com/images/media/drink/x03td31521761009.jpg	t	2018-03-22 23:23:30
178349	Snowday	Cocktail	Stir all ingredients with ice. Strain into a chilled rocks glass over fresh ice. Express orange peel over drink and garnish.	Not yet provided	Not yet provided	Not yet provided	Mescola tutti gli ingredienti con il ghiaccio. Filtrare in un bicchiere con dei cubetti di ghiaccio. Spremi la scorza d'arancia sulla bevanda e guarnire.	https://www.thecocktaildb.com/images/media/drink/4n1ipk1614009624.jpg	t	\N
17836	Acapulco	Ordinary Drink	Combine and shake all ingredients (except mint) with ice and strain into an old-fashioned glass over ice cubes. Add the sprig of mint and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Minze) mit Eis mischen und schütteln und in ein old-fashioned Glas über Eiswürfel abseihen. Den Minzzweig dazugeben und servieren.	Unire e scuotere tutti gli ingredienti (tranne la menta) con ghiaccio e filtrare in un bicchiere vecchio stile su cubetti di ghiaccio.Aggiungere il rametto di menta e servire.	https://www.thecocktaildb.com/images/media/drink/il9e0r1582478841.jpg	t	2016-09-02 11:26:16
17840	Affinity	Ordinary Drink	In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut umrühren. In ein Cocktailglas abseihen.	In un mixing glass riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti. Filtrare in un bicchiere da cocktail. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/wzdtnn1582477684.jpg	t	2017-09-07 21:44:05
11046	Applecar	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/sbffau1504389764.jpg	t	2017-09-02 23:02:44
11060	Balmoral	Ordinary Drink	In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut umrühren. In ein Cocktailglas abseihen.	In un mixing glass riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti. Filtrare in un bicchiere da cocktail.Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/vysuyq1441206297.jpg	t	2015-09-02 16:04:57
11120	Bluebird	Ordinary Drink	In a mixing glass half-filled with crushed ice, combine the gin, triple sec, Curacao, and bitters. Stir well. Strain into a cocktail glass and garnish with the lemon twist and the cherry.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Crushed Ice gefüllt ist, den Gin, Triple Sec, Curacao und Bitter vermengen. Gut umrühren. In ein Cocktailglas abseihen und mit Zitronenschale und Kirsche garnieren.	In un mixing glass riempito a metà con ghiaccio tritato, unisci il gin, il triple sec, il Curacao e il bitter.Mescolare bene.Filtrare in una coppetta da cocktail e guarnire con la scorza di limone e la ciliegia.	https://www.thecocktaildb.com/images/media/drink/5jhyd01582579843.jpg	t	2015-09-02 17:06:11
11006	Daiquiri	Ordinary Drink	Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten in den Shaker mit Eiswürfel geben. Gut schütteln. In einem gekühlten Cocktailglas abseihen.	Versare tutti gli ingredienti nello shaker con cubetti di ghiaccio.Filtrare in una coppetta da cocktail ghiacciata. Agitare bene	https://www.thecocktaildb.com/images/media/drink/mrz9091589574515.jpg	t	2015-08-18 15:06:37
11410	Gin Fizz	Ordinary Drink	Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.	Not yet provided	Not yet provided	Alle Zutaten mit Eiswürfel schütteln, außer Sodawasser. In das Glas gießen. Mit Sodawasser auffüllen.	Shakerare tutti gli ingredienti con cubetti di ghiaccio, tranne l'acqua gassata. Versare nel bicchiere. Completare con acqua gassata.	https://www.thecocktaildb.com/images/media/drink/drtihp1606768397.jpg	t	2017-09-02 12:29:32
11417	Gin Sour	Ordinary Drink	In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Gin, Zitronensaft und Zucker mischen. Gut schütteln. In ein Sour Glas abseihen und mit der Orangenscheibe und der Kirsche garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci il gin, il succo di limone e lo zucchero.Filtrare in un bicchiere e guarnire con la fetta d'arancia e la ciliegia.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/noxp7e1606769224.jpg	t	2017-09-08 16:12:03
12388	Thriller	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Cocktailglas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Agitare bene.Filtrare in un bicchiere da cocktail.	https://www.thecocktaildb.com/images/media/drink/rvuswq1461867714.jpg	t	2016-04-28 19:21:54
13539	Ice Pick	Ordinary Drink	Put Vodka in glass fill with iced tea. Stir in lemon to taste.	Not yet provided	Not yet provided	Wodka in ein Glas geben und mit Eistee füllen. Nach Belieben Zitrone unterrühren.	Metti la vodka in un bicchiere con del tè freddo.\r\nMescolare il limone a piacere.	https://www.thecocktaildb.com/images/media/drink/ypsrqp1469091726.jpg	t	2016-07-21 10:02:06
13581	410 Gone	Ordinary Drink		Not yet provided	Not yet provided		Versa in un bicchiere tutti gli ingredienti. Agitare bene	https://www.thecocktaildb.com/images/media/drink/xtuyqv1472669026.jpg	t	2016-08-31 19:43:46
14195	Snowball	Ordinary Drink	Place one ice cube in the glass and add 1 1/2 oz of Advocaat. Fill up the glass with lemonade and decorate with a slice of lemon. Serve at once.	Not yet provided	Not yet provided	Einen Eiswürfel in das Glas geben und 4,5 cl. Advocaat hinzufügen. Das Glas mit Limonade füllen und mit einer Scheibe Zitrone dekorieren. Sofort servieren.	Riempite il bicchiere con la limonata e decorate con una fetta di limone.\r\n	https://www.thecocktaildb.com/images/media/drink/7ibfs61504735416.jpg	t	2017-09-06 23:03:36
17180	Aviation	Cocktail	Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.	Not yet provided	Not yet provided	Alle Zutaten in den mit Eis gefüllten Cocktailshaker geben. Gut schütteln und in ein Cocktailglas abseihen. Mit einer Kirsche garnieren.	Aggiungi tutti gli ingredienti in uno shaker pieno di ghiaccio.\r\nShakerare bene e filtrare in una coppetta da cocktail.\r\nGuarnire con una ciliegia.	https://www.thecocktaildb.com/images/media/drink/trbplb1606855233.jpg	t	2016-11-04 09:55:28
15409	Danbooka	Coffee / Tea	pour it in and mix it.	Not yet provided	Not yet provided	Einfüllen und vermengen.	Versare tutti gli ingredienti in un bicchiere, mescola bene.	https://www.thecocktaildb.com/images/media/drink/vurrxr1441246074.jpg	t	2015-09-03 03:07:55
16985	Shot-gun	Shot	Pour one part Jack Daneils and one part Jim Beam into shot glass then float Wild Turkey on top.	Not yet provided	Not yet provided	Gießen Sie ein Teil Jack Daniels und ein Teil Jim Beam in ein Schnapsglas und lassen Sie Wild Turkey darauf treiben.	Versare una parte di Jack Daniels e una parte diJim Beam nel bicchierino da shot, infine versare il Wild Turkey.	https://www.thecocktaildb.com/images/media/drink/2j1m881503563583.jpg	t	2017-08-24 09:33:03
17105	501 Blue	Ordinary Drink	Mix equal amounts into a glass with ice.	Not yet provided	Not yet provided	Mische gleiche Mengen in ein Glas mit Eis.	Mescolare quantità uguali in un bicchiere con ghiaccio.	https://www.thecocktaildb.com/images/media/drink/ywxwqs1461867097.jpg	t	2016-04-28 19:11:37
17190	Paradise	Ordinary Drink	Shake together over ice. Strain into cocktail glass and serve chilled.	Not yet provided	Not yet provided	Zusammen über Eis schütteln. In ein Cocktailglas abseihen und gekühlt servieren.	Shakerare tutti gli ingredienti insieme al ghiaccio. Filtrare nella coppetta da cocktail e servire freddo.	https://www.thecocktaildb.com/images/media/drink/ejozd71504351060.jpg	t	2017-09-02 12:17:40
178310	Brooklyn	Cocktail	Combine ingredients with ice and stir until well-chilled. Strain into a chilled cocktail glass.	Not yet provided	Not yet provided	Not yet provided	Unisci gli ingredienti con il ghiaccio e mescola finché non si saranno raffreddati. Filtrare in una coppetta da cocktail ghiacciata.	https://www.thecocktaildb.com/images/media/drink/ojsezf1582477277.jpg	t	\N
178322	Spice 75	Cocktail	Gently warm 60g golden caster sugar in a pan with 30ml water and 1 tbsp allspice. Cook gently until the sugar has dissolved, then leave the mixture to cool. Strain through a sieve lined with a coffee filter (or a double layer of kitchen paper).\r\n\r\nPour 60ml of the spiced syrup into a cocktail shaker along with 200ml rum and 90ml lime juice. Shake with ice and strain between six flute glasses. Top up with 600ml champagne and garnish each with an orange twist.	Not yet provided	Not yet provided	Not yet provided	Scaldare delicatamente 60 g di zucchero di canna in una padella con 30 ml di acqua e 1 cucchiaio di pimento. Cuocere a fuoco lento finché lo zucchero non si sarà sciolto, quindi lasciare raffreddare il composto. Filtrare al setaccio rivestito con un filtro da caffè (o un doppio strato di carta da cucina) .  Versare 60 ml di sciroppo speziato in uno shaker insieme a 200 ml di rum e 90 ml di succo di lime. Shakerare con ghiaccio e filtrare tra sei bicchieri flute. Riempire con 600 ml di champagne e guarnire ciascuno con un tocco d'arancia.	https://www.thecocktaildb.com/images/media/drink/0108c41576797064.jpg	t	\N
11014	Alexander	Ordinary Drink	Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln und in ein Cocktailglas abseihen. Muskatnuss darüber streuen und servieren.	Shakerare tutti gli ingredienti con ghiaccio e filtrare il contenuto in un bicchiere da cocktail. Cospargere di noce moscata e servire.	https://www.thecocktaildb.com/images/media/drink/0clus51606772388.jpg	t	2016-11-04 09:50:39
11020	Algonquin	Ordinary Drink	Combine and shake all ingredients with ice, strain contents into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis mischen und schütteln, Inhalt in ein Cocktailglas abseihen und servieren.	Unire e scuotere tutti gli ingredienti con ghiaccio, filtrare il contenuto in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/uwryxx1483387873.jpg	t	2017-01-02 20:11:13
11021	Allegheny	Ordinary Drink	Shake all ingredients (except lemon peel) with ice and strain into a cocktail glass. Top with the twist of lemon peel and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Zitronenschale) mit Eis schütteln und in ein Cocktailglas abseihen. Mit der Drehung der Zitronenschale garnieren und servieren.	Shakerare tutti gli ingredienti (tranne la buccia di limone) con ghiaccio e filtrare in una coppetta da cocktail.Completare con la scorza di limone e servire.	https://www.thecocktaildb.com/images/media/drink/uwvyts1483387934.jpg	t	2017-01-02 20:12:14
11055	Artillery	Ordinary Drink	Stir all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, in ein Cocktailglas abseihen und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/g1vnbe1493067747.jpg	t	2017-04-24 22:02:27
12560	Afterglow	Cocktail	Mix. Serve over ice.	Not yet provided	Not yet provided	Mischen. Auf Eis servieren.	Servire con ghiaccio.Mescolare.	https://www.thecocktaildb.com/images/media/drink/vuquyv1468876052.jpg	f	2016-07-18 22:07:32
11124	Boomerang	Ordinary Drink	In a mixing glass half-filled with ice cubes, combine the gin, vermouth, bitters, and maraschino liqueur. Stir well. Strain into a cocktail glass and garnish with the cherry.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Eiswürfeln gefüllt ist, den Gin, Wermut, Bitter und Maraschino-Likör vermengen. Gut umrühren. In ein Cocktailglas abseihen und mit der Kirsche garnieren.	In un mixing glass riempito a metà con cubetti di ghiaccio, unire il gin, il vermouth, il bitter e il liquore al maraschino.Mescolare bene.Filtrare in una coppetta da cocktail e guarnire con la ciliegia.	https://www.thecocktaildb.com/images/media/drink/3m6yz81504389551.jpg	t	2017-09-02 22:59:12
11320	Dragonfly	Ordinary Drink	In a highball glass almost filled with ice cubes, combine the gin and ginger ale. Stir well. Garnish with the lime wedge.	Not yet provided	Not yet provided	In einem Highball-Glas, das fast mit Eiswürfeln gefüllt ist, den Gin mit dem Ginger Ale vermengen. Gut umrühren. Mit dem Limettenkeil garnieren.	In un bicchiere highball quasi riempito con cubetti di ghiaccio, unire il gin e la ginger ale. Mescolare bene. Guarnire con lo spicchio di lime.	https://www.thecocktaildb.com/images/media/drink/uc63bh1582483589.jpg	t	2017-09-02 22:51:40
11375	Foxy Lady	Ordinary Drink	Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.	Not yet provided	Not yet provided	Not yet provided	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail fredda e servire.	https://www.thecocktaildb.com/images/media/drink/r9cz3q1504519844.jpg	t	2017-09-04 11:10:44
11408	Gin Daisy	Ordinary Drink	In a shaker half-filled with ice cubes, combine the gin, lemon juice, sugar, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the cherry and the orange slice.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Wein, Zitronensaft, Zucker und Grenadine vermengen. Gut schütteln. In ein old-fashioned Glas geben und mit der Kirsche und der Orangenscheibe garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unire il vino, il succo di limone, lo zucchero e la granatina.Versare in un bicchiere vecchio stile e guarnire con la ciliegia e la fetta d'arancia.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/z6e22f1582581155.jpg	t	2016-11-10 23:19:04
11415	Gin Sling	Ordinary Drink	Dissolve powdered sugar in mixture of water and juice of lemon. Add gin. Pour into an old-fashioned glass over ice cubes and stir. Add the twist of orange peel and serve.	Not yet provided	Not yet provided	Puderzucker in einer Mischung aus Wasser und Zitronensaft auflösen. Gin hinzufügen. In ein old-fashioned Glas über Eiswürfel gießen und umrühren. Die  Orangenspirale hinzufügen und servieren.	Sciogliere lo zucchero a velo in una miscela di acqua e succo di limone. Aggiungi il gin. Versare in un bicchiere vecchio stile con dei cubetti di ghiaccio e mescolare.Aggiungere la scorza d'arancia e servire.	https://www.thecocktaildb.com/images/media/drink/8cl9sm1582581761.jpg	t	2017-09-08 16:10:40
11416	Gin Smash	Ordinary Drink	Muddle sugar with carbonated water and mint sprigs in an old-fashioned glass. Add gin and 1 ice cube. Stir, add the orange slice and the cherry, and serve.	Not yet provided	Not yet provided	Den Zucker mit kohlensäurehaltigem Wasser und Minzzweigen in einem old-fashioned Glas vermengen. Gin und 1 Eiswürfel dazugeben. Umrühren, die Orangenscheibe und die Kirsche dazugeben und servieren.	Pestare lo zucchero con acqua gassata e rametti di menta in un bicchiere vecchio stile.Aggiungi il gin e 1 cubetto di ghiaccio.Mescolate, aggiungete la fetta d'arancia e la ciliegia e servite.	https://www.thecocktaildb.com/images/media/drink/iprva61606768774.jpg	t	2017-09-08 16:14:16
11420	Gin Toddy	Ordinary Drink	Mix powdered sugar and water in an old-fashioned glass. Add gin and one ice cube. Stir, add the twist of lemon peel, and serve.	Not yet provided	Not yet provided	Puderzucker und Wasser in einem old-fashioned Glas mischen. Gin und einen Eiswürfel dazugeben. Umrühren, Zitronenschale hinzufügen und servieren.	Mescolare lo zucchero a velo e l'acqua in un bicchiere vecchio stile. Aggiungi il gin e un cubetto di ghiaccio. Mescolare, aggiungere la scorza di limone e servire.	https://www.thecocktaildb.com/images/media/drink/jxstwf1582582101.jpg	t	2017-09-07 22:45:24
11423	Godfather	Ordinary Drink	Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.	Not yet provided	Not yet provided	Alle Zutaten direkt in ein old-fashioned Glas mit Eiswürfeln geben. Vorsichtig umrühren.	Versare tutti gli ingredienti direttamente nel bicchiere vecchio stile riempito di cubetti di ghiaccio. Mescola delicatamente.	https://www.thecocktaildb.com/images/media/drink/e5zgao1582582378.jpg	t	2017-09-02 17:15:28
11424	Godmother	Ordinary Drink	Pour vodka and amaretto into an old-fashioned glass over ice and serve.	Not yet provided	Not yet provided	Wodka und Amaretto in ein old-fashioned Glas über Eis gießen und servieren.	Versare la vodka e l'amaretto in un bicchiere vecchio stile con ghiaccio e servire.	https://www.thecocktaildb.com/images/media/drink/quksqg1582582597.jpg	t	2017-09-02 17:16:24
11938	Pink Lady	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/5ia6j21504887829.jpg	t	2017-09-08 17:23:49
11987	Queen Bee	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/rvvpxu1478963194.jpg	t	2016-11-12 15:06:34
12097	Rum Toddy	Ordinary Drink	Dissolve powdered sugar in water in an old-fashioned glass. Add rum and one ice cube and stir. Add the twist of lemon peel and serve.	Not yet provided	Not yet provided	Puderzucker in Wasser in einem old-fashioned Glas auflösen. Rum und einen Eiswürfel dazugeben und umrühren. Die Zitronenschale hinzufügen und servieren.	Sciogliere lo zucchero in acqua in un bicchiere vecchio stile. Aggiungere il rum e un cubetto di ghiaccio e mescolare. Aggiungere la scorza di limone e servire	https://www.thecocktaildb.com/images/media/drink/athdk71504886286.jpg	t	2017-09-08 16:58:06
12107	Salty Dog	Ordinary Drink	Pour all ingredients over ice cubes in a highball glass. Stir well and serve. (Vodka may be substituted for gin, if preferred.)	Not yet provided	Not yet provided	Alle Zutaten über Eiswürfel in ein Highball-Glas gießen. Gut umrühren und servieren. (Wodka kann durch Gin ersetzt werden, wenn gewünscht.)	Versare tutti gli ingredienti sui cubetti di ghiaccio in un bicchiere highball.Mescolate bene e servite.(La vodka può essere sostituita al gin, se si preferisce.)	https://www.thecocktaildb.com/images/media/drink/4vfge01504890216.jpg	t	2017-09-08 18:03:36
17249	Pegu Club	Cocktail	Shake, strain, up, cocktail glass	Not yet provided	Not yet provided	Schütteln, abseihen, auffüllen, Cocktailglas.	Agitare, filtrare, su un bicchiere da cocktail	https://www.thecocktaildb.com/images/media/drink/jfkemm1513703902.jpg	t	2017-12-19 17:18:23
12572	Bora Bora	Cocktail	Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of pineapple and one cherry.	Not yet provided	Not yet provided	In einem Mixer oder Shaker zubereiten, in einem Highball-Glas "On the Rocks" servieren. Mit 1 Scheibe Ananas und einer Kirsche garnieren.	Preparare in un frullatore o uno shaker, servire in un bicchiere highball con ghiaccio.Guarnire con 1 fetta di ananas e una ciliegia.	https://www.thecocktaildb.com/images/media/drink/xwuqvw1473201811.jpg	f	2016-09-06 23:43:31
12618	Orangeade	Cocktail	Place some ice cubes in a large tumbler or highball glass, add lemon juice, orange juice, sugar syrup, and stir well. Top up with cold soda water, serve with a drinking straw.	Not yet provided	Not yet provided	Legen Sie einige Eiswürfel in einen großen Becher oder ein Highball-Glas, geben Sie Zitronensaft, Orangensaft, Zuckersirup hinzu und rühren Sie gut um. Mit kaltem Sodawasser auffüllen, mit einem Trinkhalm servieren.	Mettere alcuni cubetti di ghiaccio in un grande bicchiere tumbler o highball, aggiungere il succo di limone, il succo d'arancia, lo sciroppo di zucchero e mescolare bene.Rabboccare con acqua fredda di soda, servire con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/ytsxxw1441167732.jpg	f	2015-09-02 05:22:12
12668	Egg Cream	Other/Unknown	Mix syrup and milk in a fountain glass. Add soda water, serve with a straw.	Not yet provided	Not yet provided	Sirup und Milch in einem Fontänenglas mischen. Mit Sodawasser aufgießen und mit einem Strohhalm servieren.	Mescolare lo sciroppo e il latte in un bicchiere da fontana. Aggiungere la soda water, servire con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/mvis731484430445.jpg	f	2017-01-14 21:47:26
12756	Autodafé	Ordinary Drink	Mix and fill up with soda water. Drunk by finns on a sunny day any time of the year and day.	Not yet provided	Not yet provided	Mischen und mit Sodawasser auffüllen. Getrunken von Finnen an einem sonnigen Tag zu jeder Jahreszeit und an jedem Tag.	Mescolare e riempire con acqua di seltz. Bevuto dai finlandesi in una giornata di sole in qualsiasi momento dell'anno e del giorno.	https://www.thecocktaildb.com/images/media/drink/7dkf0i1487602928.jpg	t	2017-02-20 15:02:08
12758	Gagliardo	Cocktail	Shake well and serve in a cocktail glass. This is a home cocktail of American/Internet Bar del Pozzo, Pavia, Italy.	Not yet provided	Not yet provided	Gut schütteln und in einem Cocktailglas servieren. Dies ist ein Cocktail aus American/Internet Bar del Pozzo, Pavia, Italien.	Shakerare bene e servire in una coppetta da cocktail.Questo è un cocktail casalingo dell'American / Internet Bar del Pozzo, Pavia, Italia.	https://www.thecocktaildb.com/images/media/drink/lyloe91487602877.jpg	t	2017-02-20 15:01:18
12856	Tia-Maria	Homemade Liqueur	Boil water, sugar and coffe for 10 mins and let cool. Add rum and vanilla. Put in clean bottle(s) and leave for 1 week before using.	Not yet provided	Not yet provided	Wasser, Zucker und Kaffee 10 Minuten lang kochen und abkühlen lassen. Rum und Vanille dazugeben. In saubere Flasche(n) geben und vor Gebrauch 1 Woche ruhen lassen.	Far bollire l'acqua, lo zucchero e il caffè per 10 minuti e lasciar raffreddare. Aggiungi rum e vaniglia. Mettere in bottiglie pulite e lasciare agire per 1 settimana prima dell'uso.	https://www.thecocktaildb.com/images/media/drink/sih81u1504367097.jpg	t	2017-09-02 16:44:58
12944	Gluehwein	Punch / Party Drink	Boil sugar and spices in water, leave in the water for 30 minutes. Strain the spiced water and mix with the wine. Heat slowly until short of boiling temperature. (To remove alcohol, let it boil for a while.) You may add lemon or orange juice to taste. Serve in irish coffee cup.	Not yet provided	Not yet provided	Zucker und Gewürze in Wasser kochen, 30 Minuten im Wasser ziehen lassen. Das gewürzte Wasser abgießen und mit dem Wein mischen. Langsam erhitzen, bis die Siedetemperatur erreicht ist. (Um Alkohol zu entfernen, lassen Sie ihn eine Weile kochen.) Sie können Zitronen- oder Orangensaft nach Belieben hinzufügen. In einer irischen Kaffeetasse servieren.	Far bollire lo zucchero e le spezie in acqua, lasciare in acqua per 30 minuti.\r\nFiltrate l'acqua speziata e mescolatela con il vino.\r\nRiscaldare lentamente fino a raggiungere la temperatura di ebollizione.\r\n(Per rimuovere l'alcol, lascialo bollire per un po '.) Puoi aggiungere succo di limone o arancia a piacere.\r\nServire in tazza di caffè irlandese.	https://www.thecocktaildb.com/images/media/drink/vuxwvt1468875418.jpg	f	2016-07-18 21:56:58
11007	Margarita	Ordinary Drink	Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.	Not yet provided	Not yet provided	Reiben Sie den Rand des Glases mit der Limettenscheibe, damit das Salz daran haftet. Achten Sie darauf, dass nur der äußere Rand angefeuchtet wird und streuen Sie das Salz darauf. Das Salz sollte sich auf den Lippen des Genießers befinden und niemals in den Cocktail einmischen. Die anderen Zutaten mit Eis schütteln und vorsichtig in das Glas geben.	Strofina il bordo del bicchiere con la fetta di lime per far aderire il sale.\r\nAvere cura di inumidire solo il bordo esterno e cospargere di sale.\r\nIl sale dovrebbe presentarsi alle labbra del bevitore e non mescolarsi mai al cocktail.\r\nShakerare gli altri ingredienti con ghiaccio, quindi versarli delicatamente nel bicchiere.	https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg	t	2015-08-18 14:42:59
13162	Afternoon	Coffee / Tea	Build into a suiting glass, with no ice. Cream on top if wanted. Served directly.	Not yet provided	Not yet provided	In ein passendes Glas geben, ohne Eis. Auf Wunsch mit Sahne überziehen. Direkt serviert.	Incorpora un bicchiere adatto, senza ghiaccio.\r\nCrema in cima se lo si desidera.\r\nServito direttamente.	https://www.thecocktaildb.com/images/media/drink/vyrurp1472667777.jpg	t	2016-08-31 19:22:57
11008	Manhattan	Cocktail	Stirred over ice, strained into a chilled glass, garnished, and served up.	Not yet provided	Not yet provided	Über Eis gerührt, in ein gekühltes Glas geseiht, garniert und serviert.	Mescolate su ghiaccio, filtrate in un bicchiere freddo, guarnite e servite.	https://www.thecocktaildb.com/images/media/drink/yk70e31606771240.jpg	t	2017-09-02 12:07:09
14378	Lunch Box	Beer	Fill a pint glass almost full with beer. Then fill the rest with orange juice (careful not to fill it to the top). Then take the shot of Amaretto and drop it in.	Not yet provided	Not yet provided	Füllen Sie ein Pintglas fast voll mit Bier. Dann den Rest mit Orangensaft füllen (darauf achten, ihn nicht nach oben zu füllen). Dann nimm den Schuss Amaretto und lass ihn rein.	Riempi un bicchiere da mezzo litro quasi pieno di birra.\r\nQuindi riempire il resto con succo d'arancia (attenzione a non riempirlo fino in cima).\r\nIn un bicchiere da shot versaci l'Amaretto, infine versare lo shot sul mix fatto in precedenza.	https://www.thecocktaildb.com/images/media/drink/qywpvt1454512546.jpg	t	2016-02-03 15:15:46
14978	Rum Punch	Punch / Party Drink	Mix all ingredients in a punch bowl and serve.	Not yet provided	Not yet provided	Alle Zutaten in einer Bowle mischen und servieren.	Mescolare tutti gli ingredienti in una ciotola da punch e servire.	https://www.thecocktaildb.com/images/media/drink/wyrsxu1441554538.jpg	t	2015-09-06 16:48:58
15182	After sex	Ordinary Drink	Pour the vodka and creme over some ice cubes in a tall glass and fill up with juice. to make it beuty full make the top of the glass with a grenadine and sugar	Not yet provided	Not yet provided	Gießen Sie den Wodka und die Sahne über einige Eiswürfel in ein hohes Glas und füllen Sie ihn mit Saft. Damit es voll ist, verzieren Sie die Oberseite des Glases mit einer Grenadine und Zucker.	Versare la vodka e la crema su alcuni cubetti di ghiaccio in un bicchiere alto e riempire di succo.\r\nPer renderlo bello, versare nella parte superiore del bicchiere un po’ di granatina e nei bordi mettere un po’ di zucchero	https://www.thecocktaildb.com/images/media/drink/xrl66i1493068702.jpg	t	2017-04-24 22:18:22
17209	Barracuda	Ordinary Drink	Shake pour ingredients with ice. Strain into glass, top with Sparkling wine.	Not yet provided	Not yet provided	Schütteln Sie die Zutaten mit Eis. In ein Glas abseihen, mit Sekt übergießen.	Shakerare e versare gli ingredienti con ghiaccio.\r\nFiltrare in un bicchiere, completare con spumante.	https://www.thecocktaildb.com/images/media/drink/jwmr1x1504372337.jpg	t	2017-09-02 18:12:17
15941	Americano	Ordinary Drink	Pour the Campari and vermouth over ice into glass, add a splash of soda water and garnish with half orange slice.	Not yet provided	Not yet provided	Den Campari und den Wermut über Eis in ein Glas gießen, einen Spritzer Sodawasser hinzufügen und mit einer halben Orangenscheibe garnieren.	Versare Campari e vermut su ghiaccio in un bicchiere, aggiungere un goccio di acqua di seltz e guarnire con mezza fetta d'arancia.	https://www.thecocktaildb.com/images/media/drink/709s6m1613655124.jpg	t	2016-11-04 09:52:06
16178	Jitterbug	Cocktail	Wet glass, dip rim in sugar. Then add Ice. Then add everything else. It's that simple!	Not yet provided	Not yet provided	Feuchtes Glas, Tauchrand in Zucker. Dann fügen Sie Eis hinzu. Dann füge alles andere hinzu. So einfach ist das!	Bagna il biicchiere, immergere il bordo nello zucchero.\r\nQuindi aggiungi ghiaccio.\r\nQuindi aggiungi tutto il resto.\r\nÈ così semplice!	https://www.thecocktaildb.com/images/media/drink/wwqvrq1441245318.jpg	t	2015-09-03 02:55:18
16311	Applejack	Cocktail	Add all ingredients into mixing glass, chill and strain into cocktail glass	Not yet provided	Not yet provided	Alle Zutaten in das Mischglas geben, kühlen und in das Cocktailglas abseihen.	Aggiungere tutti gli ingredienti nel mixing glass, raffreddare e filtrare in una coppetta da cocktail	https://www.thecocktaildb.com/images/media/drink/sutyqp1479209062.jpg	t	2016-11-15 11:24:22
16333	Adam Bomb	Punch / Party Drink	Add ice to blender (or to glass if prefer on the rocks) then fruit, and fruite juice depending on personal prefference then add the Rum, Vodka, Tequila, and triple sec. blend till smooth, rim glass with sugar or salt and pour mixture in. garnish with lemon or lime slice.	Not yet provided	Not yet provided	Eis in den Mixer (oder in ein Glas, wenn Sie lieber On the Rocks bevorzugen), dann Obst und Fruchtsaft je nach persönlicher Vorliebe, dann Rum, Wodka, Tequila und Triple Sec. zugeben, bis sie glattflächig sind, Glas mit Zucker oder Salz einrühren und die Mischung hineingeben. Mit Zitronen- oder Limonenscheibe garnieren.	Aggiungere il ghiaccio al frullatore (o al bicchiere se si preferisce con ghiaccio) poi la frutta e il succo di frutta a seconda delle preferenze personali, quindi aggiungere il rum, la vodka, la tequila e il triple sec.\r\nFrullare fino a che non diventa liscio, riempire l'orlo del bicchiere con zucchero o sale, e versare il composto.\r\nGuarnire con una fetta di limone o lime.	https://www.thecocktaildb.com/images/media/drink/tpxurs1454513016.jpg	t	2016-02-03 15:23:36
16419	Avalanche	Milk / Float / Shake	Mix in highball glass over ice, shake well.	Not yet provided	Not yet provided	In Highball-Glas über Eis mischen, gut schütteln.	Mescolare in un bicchiere highball con ghiaccio, agitare bene.	https://www.thecocktaildb.com/images/media/drink/uppqty1472720165.jpg	t	2016-09-01 09:56:05
16963	Zorbatini	Cocktail	Prepare like a Martini. Garnish with a green olive.	Not yet provided	Not yet provided	Wie ein Martini zubereiten. Mit einer grünen Olive garnieren.	Versare tutti gli ingredienti nel mixing glass con cubetti di ghiaccio.\r\nMescolare bene.\r\nFiltrare in una coppetta da cocktail Martini ghiacciata.\r\nGuarnisci con l'oliva.	https://www.thecocktaildb.com/images/media/drink/wtkqgb1485621155.jpg	t	2017-01-28 16:32:35
16991	Downshift	Punch / Party Drink	Start with the Sprite. Next comes the tequila. After that, add the Minute Maid Fruit Punch, then float the 151. Rocks optional.	Not yet provided	Not yet provided	Beginne mit dem Sprite. Als nächstes kommt der Tequila. Danach geben Sie die Minute Maid Fruit Punch hinzu, dann schwenken Sie die 151. Rocks optional.	Inizia con la Sprite.\r\nPoi versa la tequila.\r\nDopodiché, aggiungi il Minute Maid Fruit Punch, infine versare il 151.\r\nGhiaccio opzionale.	https://www.thecocktaildb.com/images/media/drink/y36z8c1503563911.jpg	t	2017-08-24 09:38:31
17178	Jam Donut	Shot	Coat the rim of a shot glass with sugar using sugar syrup to stick. Add the Chambord raspberry liqueur to the shot glass, and carefully layer the Baileys Irish Cream on top. Serve.	Not yet provided	Not yet provided	Den Rand eines Schnapsglases mit Zucker und Zuckersirup bestreichen. Geben Sie den Chambord Himbeerlikör in das Schnapsglas und geben Sie die Baileys Irish Cream vorsichtig darüber. Servieren.	Rivestire il bordo di un bicchierino di zucchero con lo sciroppo di zucchero per attaccare.\r\nAggiungere il liquore al lampone di Chambord nel bicchierino e sovrapporre con cura la crema irlandese Baileys.	https://www.thecocktaildb.com/images/media/drink/uuytrp1474039804.jpg	t	2016-09-16 16:30:04
17035	Buccaneer	Beer	Pour the corona into an 18oz beer glass pour the bacardi limon into the beer stir very gently	Not yet provided	Not yet provided	Gießen Sie die Korona in ein Bierglas und gießen Sie die Bacardi-Limone in das Bier. Rühren Sie sehr sanft.	Versare la corona in un bicchiere da birra da 530ml, versare il Bacardi Limon nella birra mescolando molto delicatamente	https://www.thecocktaildb.com/images/media/drink/upvtyt1441249023.jpg	t	2015-09-03 03:57:03
17197	French 75	Ordinary Drink	Combine gin, sugar, and lemon juice in a cocktail shaker filled with ice. Shake vigorously and strain into a chilled champagne glass. Top up with Champagne. Stir gently.	Not yet provided	Not yet provided	Gin, Zucker und Zitronensaft in einem mit Eis gefüllten Cocktailshaker mischen. Kräftig schütteln und in ein gekühltes Champagnerglas abseihen. Mit Champagner auffüllen. Vorsichtig umrühren.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci il gin, lo zucchero e il succo di limone.Mescolate bene e guarnite con la fetta d'arancia e la ciliegia.Completare con lo champagne.Versare in un bicchiere Collins.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/hrxfbl1606773109.jpg	t	2017-09-02 17:10:15
17227	Addington	Cocktail	Mix both the vermouth's in a shaker and strain into a cold glass. Top up with a squirt of Soda Water. 	Not yet provided	Not yet provided	Mischen Sie beide Wermutarten in einem Shaker und sieben Sie sie in ein kaltes Glas. Mit einem Spritzer Sodawasser auffüllen.	Rabboccare con l'acqua di seltz.Mescolare entrambi i vermut in uno shaker e filtrare in un bicchiere freddo.	https://www.thecocktaildb.com/images/media/drink/ib0b7g1504818925.jpg	t	2017-09-07 22:15:25
17252	Greyhound	Cocktail	Add the vodka to a Collins glass filled with ice.\nTop with grapefruit juice and stir.\n\n	Not yet provided	Not yet provided	Den Wodka in ein mit Eis gefülltes Collins-Glas geben. Mit Grapefruitsaft übergießen und umrühren.	Versa la vodka in un bicchiere Collins pieno di ghiaccio, aggiungi il succo di pompelmo e mescola.	https://www.thecocktaildb.com/images/media/drink/g5upn41513706732.jpg	t	2017-12-19 18:05:32
17825	Brigadier	Cocktail	Mix ingredients in a warmed mug and stir.	Not yet provided	Not yet provided	Die Zutaten in einem erwärmten Becher mischen und umrühren.	Mescolare gli ingredienti in una tazza calda e mescola.	https://www.thecocktaildb.com/images/media/drink/nl89tf1518947401.jpg	t	2018-02-18 09:50:01
17828	Tipperary	Cocktail	Stir over ice. Strain into chilled glass. Cut a wide swath of orange peel, and express the orange oils over the drink. Discard orange twist.	Not yet provided	Not yet provided	Über das Eis geben. In ein gekühltes Glas abseihen. Schneiden Sie einen breiten Streifen Orangenschale und geben Sie die Orangenöle über das Getränk. Entsorgen Sie den orangefarbenen Twist.	Mescola sul ghiaccio.\r\nFiltrare in un bicchiere freddo.	https://www.thecocktaildb.com/images/media/drink/b522ek1521761610.jpg	t	2018-03-22 23:33:30
178311	Broadside	Cocktail	Half fill the glass with ice cubes. Crush the wormwood and add to ice. Pour rum, scotch and butters, then serve!	Not yet provided	Not yet provided	Not yet provided	Riempire a metà il bicchiere con cubetti di ghiaccio. Schiacciare l'assenzio e aggiungerlo al ghiaccio. Versare rum, scotch e burro, quindi servire!	https://www.thecocktaildb.com/images/media/drink/l2o6xu1582476870.jpg	t	\N
178316	Honey Bee	Cocktail	Shake ingredients with crushed ice\r\n	Not yet provided	Not yet provided	Not yet provided	Shakerare gli ingredienti con ghiaccio tritato	https://www.thecocktaildb.com/images/media/drink/vu8l7t1582475673.jpg	t	\N
178318	747 Drink	Cocktail	Fill a Collins glass with ice.\r\nPour in vodka, lime cordial, and cranberry juice.\r\nFill up with Sprite.\r\nGarnish with a Lime wheel or some cranberries	Not yet provided	Not yet provided	Not yet provided	\r\nRiempi un bicchiere Collins di ghiaccio.\r\nVersare la vodka, lo sciroppo di lime e il succo di mirtillo rosso.\r\nRiempi con Sprite.\r\nGuarnire con una fetta di lime o dei mirtilli rossi	https://www.thecocktaildb.com/images/media/drink/i9suxb1582474926.jpg	t	\N
178343	Michelada	Cocktail	Mix the beer with tomato juice, freshly squeezed lime juice, and Worcestershire sauce, teriyaki sauce, soy sauce, or hot sauce.\r\nServed In a chilled, salt-rimmed glass\r\n	Not yet provided	Not yet provided	Not yet provided	Mescola la birra con succo di pomodoro, succo di lime appena spremuto e salsa Worcestershire, salsa teriyaki, salsa di soia o salsa piccante.\r\nServito in un bicchiere ghiacciato bordato di sale	https://www.thecocktaildb.com/images/media/drink/u736bd1605907086.jpg	t	\N
178345	Hot Toddy	Cocktail	STEP 1\r\nWhisk the whisky and honey together and split between 2 heatproof glasses. Add half of the cinnamon stick to each, then top up with 200ml boiling water.\r\n\r\nSTEP 2\r\nAdd a splash of lemon juice to each, then taste and add more to your preference. Finish each with a slice of lemon, studded with a clove, and serve immediately.	Not yet provided	Not yet provided	Not yet provided	PASSO 1\r\nSbatti il whisky e il miele insieme e dividi in 2 bicchieri. Aggiungere metà della stecca di cannella a ciascuna, quindi rabboccare con 200 ml di acqua bollente.\r\n\r\nPASSO 2\r\nAggiungi una spruzzata di succo di limone a ciascuno, quindi assaggia e aggiungi altro a tua preferenza. Terminate ciascuna con una fetta di limone, guarnire con uno spicchio, e servite subito.	https://www.thecocktaildb.com/images/media/drink/ggx0lv1613942306.jpg	t	\N
178350	The Galah	Cocktail	Mix together the alcoholic portions and top with Pineapple and Lime juice.	Not yet provided	Not yet provided	Not yet provided	Not yet provided	https://www.thecocktaildb.com/images/media/drink/sy7y6r1614775067.jpg	t	\N
178354	Pink Moon	Cocktail	Slowly shake in a shaker with ice, strain into a square whiskey glass. Top with fresh ice. Add the blackberries to garnish. Add flowers and a green leaf for a special look!	Not yet provided	Not yet provided	Not yet provided	Not yet provided	https://www.thecocktaildb.com/images/media/drink/lnjoc81619696191.jpg	t	\N
11024	Almond Joy	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/xutuqs1483388296.jpg	t	2017-01-02 20:18:16
11034	Angel Face	Ordinary Drink	Shake all ingredients with ice and strain contents into a cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln und in ein Cocktailglas abseihen.	Shakerare tutti gli ingredienti con ghiaccio e filtrare il contenuto in un bicchiere da cocktail.	https://www.thecocktaildb.com/images/media/drink/vaukir1606772580.jpg	t	2016-11-04 09:52:58
11052	Archbishop	Ordinary Drink	In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.	Not yet provided	Not yet provided	In einem old-fashioned Glas, das fast mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut umrühren.	In un bicchiere vecchio stile quasi riempito di cubetti di ghiaccio, unisci tutti gli ingredienti.Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/4g6xds1582579703.jpg	t	2015-09-02 16:21:47
11106	Blackthorn	Ordinary Drink	Stir sloe gin and vermouth with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.	Not yet provided	Not yet provided	Sloe Gin und Wermut mit Eis verrühren und in ein Cocktailglas abseihen. Die Zitronenschale hinzufügen und servieren.	Mescolare il prugnolo e il vermouth con ghiaccio e filtrare in un bicchiere da cocktail. Aggiungere la scorza di limone e servire.	https://www.thecocktaildb.com/images/media/drink/dgj92f1616098672.jpg	t	2015-09-02 16:57:10
11202	Caipirinha	Ordinary Drink	Place lime and sugar into old fashioned glass and muddle (mash the two ingredients together using a muddler or a wooden spoon). Fill the glass with ice and add the Cachaça.	Not yet provided	Not yet provided	Limette und Zucker in ein old-fashioned Glas geben und vermengen (die beiden Zutaten mit einem Mixer oder einem Holzlöffel vermengen). Füllen Sie das Glas mit Eis und geben Sie den Cacha dazu.	Mettere il lime e lo zucchero nel bicchiere vecchio stile e pestare (schiacciare i due ingredienti insieme usando un pestello o un cucchiaio di legno).Riempi il bicchiere di ghiaccio e aggiungi la Cachaça.	https://www.thecocktaildb.com/images/media/drink/jgvn7p1582484435.jpg	t	2016-07-21 09:42:01
11239	Cherry Rum	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/twsuvr1441554424.jpg	t	2015-09-06 16:47:04
11288	Cuba Libre	Ordinary Drink	Build all ingredients in a Collins glass filled with ice. Garnish with lime wedge.	Not yet provided	Not yet provided	Geben Sie alle Zutaten in ein mit Eis gefülltes Collins-Glas. Mit Limettenkeil garnieren.	Mettere tutti gli ingredienti in un bicchiere Collins pieno di ghiaccio. Guarnire con uno spicchio di lime.	https://www.thecocktaildb.com/images/media/drink/wmkbfj1606853905.jpg	t	2016-09-06 23:41:03
11407	Gin Cooler	Ordinary Drink	Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice and add gin. Fill with carbonated water and stir. Add the lemon peel and the orange spiral so that the end of the orange spiral dangles over rim of glass.	Not yet provided	Not yet provided	Puderzucker und 6 cl. kohlensäurehaltiges Wasser in einem Collins-Glas verrühren. Das Glas mit Eis füllen und Gin hinzufügen. Mit kohlensäurehaltigem Wasser auffüllen und umrühren. Fügen Sie die Zitronenschale und die Orangenspirale so hinzu, dass das Ende der Orangenspirale über den Glasrand baumelt.	Mescolare lo zucchero a velo 56g e acqua gassata in un bicchiere Collins. Riempi il bicchiere di ghiaccio e aggiungi il gin. Riempi con acqua gassata e mescola. Aggiungere la scorza di limone e la spirale di arancia in modo che l'estremità della spirale penda sul bordo del vetro.	https://www.thecocktaildb.com/images/media/drink/678xt11582481163.jpg	t	2016-11-10 23:21:49
11418	Gin Squirt	Ordinary Drink	Stir gin, grenadine, and powdered sugar with ice and strain into a highball glass over ice cubes. Fill with carbonated water and stir. Decorate with the pineapple chunks and the strawberries and serve.	Not yet provided	Not yet provided	Not yet provided	Mescolare gin, granatina e zucchero a velo con ghiaccio e filtrare in un bicchiere highball su cubetti di ghiaccio. Riempi con acqua gassata e mescola. Decorare con i pezzi di ananas e le fragole e servire.	https://www.thecocktaildb.com/images/media/drink/xrbhz61504883702.jpg	t	2017-09-08 16:15:02
12055	Royal Fizz	Ordinary Drink	Shake all ingredients (except cola) with ice and strain into a chilled collins glass. Fill with cola and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Cola) mit Eis schütteln und in ein gekühltes Collins-Glas abseihen. Mit Cola auffüllen und servieren.	Shakerare tutti gli ingredienti (tranne la cola) con ghiaccio e filtrare in un bicchiere collins freddo. Riempi con cola e servi	https://www.thecocktaildb.com/images/media/drink/wrh44j1504390609.jpg	t	2017-09-02 23:16:49
12071	Rum Cooler	Ordinary Drink	Pour the rum and soda into a collins glass almost filled with ice cubes. Stir well and garnish with the lemon wedge.	Not yet provided	Not yet provided	Den Rum und das Soda in ein Collins-Glas gießen, das fast mit Eiswürfeln gefüllt ist. Gut umrühren und mit dem Zitronenkeil garnieren.	Versare il rum e la soda in un bicchiere Collins quasi pieno di cubetti di ghiaccio. Mescolate bene e guarnite con lo spicchio di limone	https://www.thecocktaildb.com/images/media/drink/2hgwsb1504888674.jpg	t	2017-09-08 17:37:54
12101	Rusty Nail	Ordinary Drink	Pour the Scotch and Drambuie into an old-fashioned glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.	Not yet provided	Not yet provided	Gießen Sie den Scotch und die Drambuie in ein old-fashioned Glas, das fast mit Eiswürfeln gefüllt ist. Gut umrühren. Mit der Zitronenscheibe garnieren.	Versare lo Scotch e il Drambuie in un bicchiere vecchio stile quasi riempito di cubetti di ghiaccio. Guarnire con la scorza di limone. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/yqsvtw1478252982.jpg	t	2016-11-04 09:49:42
12308	Stone Sour	Ordinary Drink	Shake all ingredients with ice, strain into a chilled whiskey sour glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein gekühltes Whiskey-Sourglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in un bicchiere ghiacciato di whisky sour e servire.	https://www.thecocktaildb.com/images/media/drink/vruvtp1472719895.jpg	t	2016-09-01 09:51:35
12518	Whisky Mac	Ordinary Drink	Pour both of the ingredients into a wine goblet with no ice.	Not yet provided	Not yet provided	Beide Zutaten in einen Weinkelch geben, ohne Eis.	Versare entrambi gli ingredienti in un calice da vino senza ghiaccio.	https://www.thecocktaildb.com/images/media/drink/yvvwys1461867858.jpg	t	2016-04-28 19:24:18
12752	Lemon Shot	Shot	Mix Galliano and Absolut Citron in a shot glass, lay lemon wedge sprinkled with sugar over glass and pour a rum over wedge and glass. light rum with a lighter and let burn for a second. Do shot quickly and suck on lemon. If it is done correctly, this will taste like a shot of sweet lemonade.	Not yet provided	Not yet provided	Galliano und Absolut Citron in einem Schnapsglas mischen, Zitronenkeil mit Zucker bestreut über Glas legen und Rum über Keil und Glas gießen. Light Rum mit einem Feuerzeug für eine Sekunde brennen lassen. Trinken Sie schnell und saugen Sie an der Zitrone. Wenn es richtig gemacht wird, schmeckt es wie ein Schuss süße Limonade.	Unisci la vodka e il succo di limone in un bicchierino. Cospargere sopra 1/2 cucchiaino di zucchero. Mettere 2 cucchiaini di zucchero in un piattino; immergere gli spicchi di limone nello zucchero. Succhia un limone zuccherato dopo aver bevuto lo shot.	https://www.thecocktaildb.com/images/media/drink/mx31hv1487602979.jpg	t	2017-02-20 15:02:59
12910	Egg Nog #4	Punch / Party Drink	In a small mixer bowl beat egg yolks till blended. Gradually add 1/4 cup sugar, beating at high speed till thick and lemon colored. Stir in milk, stir in rum, bourbon, vanilla, and salt. Chill thoroughly. Whip cream. Wash beaters well. In a large mixer bowl beat egg whites till soft peaks form. Gradually add remaining 1/4 cup sugar, beating to stiff peaks. Fold yolk mixture and whipped cream into egg whites. Serve immediately. Sprinkle nutmeg over each serving. Serve in a punch bowl or another big bowl. NOTE: For a nonalcoholic eggnog, prepare Eggnog as above, except omit the bourbon and rum and increase the milk to 3 cups.	Not yet provided	Not yet provided	In einer kleinen Rührschüssel das Eigelb verrühren. Nach und nach 1/4 Tasse Zucker hinzufügen und mit hoher Geschwindigkeit schlagen, bis er dick und zitronengelb ist. Milch unterrühren, Rum, Bourbon, Vanille und Salz unterrühren. Gründlich abkühlen lassen. Sahne schlagen. Schlägel gut waschen. In einer großen Mixerschüssel Eiweiß zu weichen Spitzen schlagen. Nach und nach den restlichen Zucker aus der 1/4 Tasse hinzufügen und zu steifen Spitzen schlagen. Eigelbmischung und Schlagsahne zu Eiweiß vermengen. Sofort servieren. Muskatnuss über jede Portion streuen. In einer Bowle oder einer anderen großen Schüssel servieren. HINWEIS: Für einen alkoholfreien Eierlikör bereiten Sie den Eierlikör wie oben beschrieben zu, Bourbon und Rum weglassen und die Milch auf 3 Tassen erhöhen.	Montare l'albume dell'uovo e lo zucchero insieme, unire ai due tipi di latte, vaniglia e rum. Mescolare bene. Cospargere di noce moscata. Per 6 porzioni.	https://www.thecocktaildb.com/images/media/drink/wpspsy1468875747.jpg	f	2016-07-18 22:02:27
13058	Wine Punch	Punch / Party Drink	Combine all of the ingredients and pour over a block of ice.	Not yet provided	Not yet provided	Alle Zutaten vermengen und über einen Eisblock gießen.	Unisci tutti gli ingredienti e versa sopra un po’ di cubetti di ghiaccio.	https://www.thecocktaildb.com/images/media/drink/txustu1473344310.jpg	t	2016-09-08 15:18:30
13196	Long vodka	Ordinary Drink	Shake a tall glass with ice cubes and Angostura, coating the inside of the glass. Por the vodka onto this, add 1 slice of lime and squeeze juice out of remainder, mix with tonic, stir and voila you have a Long Vodka	Not yet provided	Not yet provided	Schütteln Sie ein hohes Glas mit Eiswürfeln und Angostura und beschichten Sie so die Innenseite des Glases. Den Wodka darüber gießen, 1 Scheibe Limette hinzufügen und den Saft aus dem Rest herausquetschen, mit Tonic mischen, umrühren und voila, Sie haben einen langen Wodka.	Agitare un bicchiere alto con cubetti di ghiaccio e angostura, ricoprendo l'interno del bicchiere.\r\nVersare la vodka su questo, aggiungere 1 fetta di lime e spremere il succo dal resto, mescolare con il tonico, mescolare e voilà hai una Long Vodka	https://www.thecocktaildb.com/images/media/drink/9179i01503565212.jpg	t	2017-08-24 10:00:12
13198	Quick F**K	Shot	In a shot glass add 1/3 Kahlua first. Then 1/3 Miduri, topping it off with a 1/3 bailey's irish cream	Not yet provided	Not yet provided	In einem Schnapsglas zuerst 1/3 Kahlua geben. Dann 1/3 Miduri, ergänzt durch 1/3 Bailey's irish Cream.	In un bicchierino aggiungere prima 1/3 di Kahlua.\r\nQuindi 1/3 di Midori, completando con 1/3 di crema irlandese di bailey	https://www.thecocktaildb.com/images/media/drink/wvtwpp1478963454.jpg	t	2016-11-12 15:10:54
13214	Pisco Sour	Cocktail	Vigorously shake and strain contents in a cocktail shaker with ice cubes, then pour into glass and garnish with bitters.\r\n	Not yet provided	Not yet provided	Den Inhalt in einem Cocktailshaker mit Eiswürfeln kräftig schütteln und abseihen, dann in ein Glas gießen und mit Bitter garnieren.	Shakerare vigorosamente e filtrare il contenuto in uno shaker con cubetti di ghiaccio, quindi versare in un bicchiere e guarnire con bitter.	https://www.thecocktaildb.com/images/media/drink/tsssur1439907622.jpg	t	2015-08-18 15:20:22
13377	Sea breeze	Ordinary Drink	Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.	Not yet provided	Not yet provided	Alle Zutaten in einem mit Eis gefüllten Highball-Glas vermengen. Mit Limettenkeil garnieren.	Metti tutti gli ingredienti in un bicchiere highball pieno di ghiaccio.\r\nGuarnire con uno spicchio di lime.	https://www.thecocktaildb.com/images/media/drink/7rfuks1504371562.jpg	t	2017-09-02 17:59:22
13395	Bob Marley	Shot	Layer in a 2 oz shot glass or pony glass	Not yet provided	Not yet provided	In einem 6 cl. Schnapsglas oder Ponyglas schichten.	Versa in un bicchierino da 60gr o in un bicchiere da shot.	https://www.thecocktaildb.com/images/media/drink/rrqrst1477140664.jpg	t	2016-10-22 13:51:04
13751	Cuba Libra	Ordinary Drink	Fill tall glass with ice cubes. Add rum. Rub cut edge of lime on rim of glass then squeeze juice into glass. Fill with Coca-Cola. Garnish with lime slice. Enjoy!	Not yet provided	Not yet provided	Füllen Sie das hohe Glas mit Eiswürfeln. Füge Rum hinzu. Reiben Sie die Schnittkante der Limette auf den Glasrand und drücken Sie den Saft in das Glas. Mit Coca-Cola füllen. Mit Limettenscheibe garnieren. Viel Spaß!	Riempi un bicchiere alto con cubetti di ghiaccio.\r\nAggiungi il rum.\r\nStrofinare il bordo tagliato di lime sul bordo del bicchiere, quindi spremere il succo in un bicchiere.\r\nRiempi di Coca-Cola.\r\nGuarnire con una fetta di lime.	https://www.thecocktaildb.com/images/media/drink/ck6d0p1504388696.jpg	t	2017-09-02 22:44:56
13775	Jelly Bean	Shot	mix equal parts in pony glass-tastes just like a jelly bean!	Not yet provided	Not yet provided	zu gleichen Teilen in Ponyglas mischen - schmeckt wie eine Jelly Bean!	Mescola parti uguali in un bicchiere, gusta proprio come una gelatina!	https://www.thecocktaildb.com/images/media/drink/bglc6y1504388797.jpg	t	2017-09-02 22:46:37
13807	After Five	Shot	1. Pour Kahlua into shot glass to about 1/2 full. 2. Using a spoon(inverted), slowly pour in the Peppermint Schnapps until glass is about 3/4 full. Done correctly, the Schnapps will flow under the Kahlua for a clear layer. 3. Again using a spoon, but this time right side up, slowly top off the glass with a layer of Bailey's. Be careful to place the spoon right at the top of the Kahlua layer and to raise it as the glass fills up. Done correctly, this will provide a layer of Bailey's floating over the Kahlua. 4. Toss it down all at once for something like a Peppermint Pattie, WITH A BANG!!! NOTE: Best if all ingredients are chilled	Not yet provided	Not yet provided	1. Gießen Sie Kahlua in das Schnapsglas bis etwa 1/2 voll. 2. Mit einem Löffel (invertiert) den Pfefferminzlikör langsam einfüllen, bis das Glas etwa 3/4 voll ist. Richtig gemacht, fließt der Schnaps unter dem Kahlua für eine klare Schicht. 3. Wieder mit einem Löffel, aber diesmal mit der rechten Seite nach oben, das Glas langsam mit einer Schicht Bailey's abdecken. Achten Sie darauf, den Löffel ganz oben auf die Kahluaschicht zu stellen und ihn beim Auffüllen des Glases anzuheben. Richtig gemacht, wird dies eine Schicht von Bailey's, die über dem Kahlua schwimmt, ergeben. 4. Trinken Sie es auf einmal weg, mit einem Knall. HINWEIS: Am besten, wenn alle Zutaten gekühlt sind.	1.\r\nVersare Kahlua nel bicchiere da shot a circa 1/2 pieno.\r\n2.\r\nCon un cucchiaio (capovolto), versare lentamente la Schnapps alla menta piperita fino a riempire il bicchiere per circa 3/4.\r\nFatto correttamente, la Schnapps scorrerà sotto il Kahlua per uno strato chiaro.\r\n3.\r\nUsando ancora un cucchiaio, ma questa volta con il lato giusto verso l'alto, riempi lentamente il bicchiere con uno strato di Bailey's.\r\nFai attenzione a posizionare il cucchiaio proprio sopra lo strato di Kahlua e sollevalo mentre il bicchiere si riempie.\r\nFatto correttamente, questo fornirà uno strato di Bailey che galleggia sul Kahlua.\r\n4.\r\nButtalo giù tutto in una volta                                                                                                                                                                                NOTA: meglio se tutti gli ingredienti sono refrigerati	https://www.thecocktaildb.com/images/media/drink/sk3lr91493068595.jpg	t	2017-04-24 22:16:35
13837	Kir Royale	Ordinary Drink	Pour Creme de cassis in glass, gently pour champagne on top	Not yet provided	Not yet provided	Creme de Cassis in ein Glas geben, vorsichtig Champagner darüber gießen.	Versare la Creme de cassis nel bicchiere, versai sopra delicatamente lo champagne	https://www.thecocktaildb.com/images/media/drink/yt9i7n1504370388.jpg	t	2017-09-02 17:39:48
13847	Jackhammer	Ordinary Drink	Serve over ice- Warning,Deadly!	Not yet provided	Not yet provided	Servieren Sie über Eis. Warnung, tödlich!	Servire con ghiaccio - Attenzione, mortale!	https://www.thecocktaildb.com/images/media/drink/9von5j1504388896.jpg	t	2017-09-02 22:48:16
13899	3 Wise Men	Shot	put them them in a glass... and slam it to tha head.	Not yet provided	Not yet provided	In ein Glas geben... und ab in den Schädel.	mettetele in un bicchiere ... E buona fortuna!	https://www.thecocktaildb.com/images/media/drink/wxqpyw1468877677.jpg	t	2016-07-18 22:34:37
13936	Miami Vice	Cocktail	First: Mix pina colada with 2.5 oz. of rum with ice(set aside). Second: Mix daiquiri with 2.5 oz. of rum with ice. Third: While frozen, add pina colda mix then daiquiri mix in glass (Making sure they do not get mixed together).	Not yet provided	Not yet provided	Zuerst: Pina Colada mit 7,5 cl. Rum und Eis mischen (beiseite legen). Zweitens: Daiquiri mit 7,5 cl. Rum und Eis mischen. Drittens: Im gefrorenen Zustand Pina Colda-Mix hinzufügen, dann Daiquiri in Glas mischen (Achten Sie darauf, dass sie nicht miteinander vermischt werden).	Primo: mescola la pina colada con 75ml di rum con ghiaccio (mettere da parte).\r\nSecondo: mescola daiquiri con 75ml di rum con ghiaccio.\r\nTerzo: mentre è freddo, aggiungi il mix di pina colada e poi i daiquiri nel bicchiere (assicurandoti che non si mescolino insieme).	https://www.thecocktaildb.com/images/media/drink/qvuyqw1441208955.jpg	t	2015-09-02 16:49:15
13940	69 Special	Ordinary Drink	Pour 2 oz. gin. Add 4 oz. 7-up. Add Lemon Juice for flavor. If you are weak, top up glass with more 7-Up.	Not yet provided	Not yet provided	Gießen Sie 6 cl. Gin. Füge 12 cl. 7-up hinzu. Füge Zitronensaft für den Geschmack hinzu. Wenn Sie zu schwach sind, füllen Sie das Glas mit mehr 7-Up auf.	Versare 60ml di Gin.\r\nAggiungi 120ml di  7 Up/Sprite.\r\nAggiungi il succo di limone per insaporire.\r\nSe sei debole, rabbocca il bicchiere con più 7-Up/Sprite.	https://www.thecocktaildb.com/images/media/drink/vqyxqx1472669095.jpg	t	2016-08-31 19:44:55
14181	Cafe Savoy	Coffee / Tea	Fill mug almost to top with coffee.Add milk, triple sec and brandy. Stir.	Not yet provided	Not yet provided	Füllen Sie die Tasse fast bis zum Rand mit Kaffee, fügen Sie Milch, Triple Sec und Brandy hinzu. Rühren.	Riempi la tazza quasi fino in cima con il caffè.\r\nAggiungi latte, triple sec e brandy.\r\nAgitare.	https://www.thecocktaildb.com/images/media/drink/vqwptt1441247711.jpg	t	2015-09-03 03:35:11
14366	Lemon Drop	Cocktail	Shake and strain into a chilled cocktail glass rimmed with sugar.	Not yet provided	Not yet provided	Schütteln und abseihen in ein gekühltes Cocktailglas mit Zuckerrand.	Shakerare e filtrare in un bicchiere da cocktail ghiacciato bordato di zucchero.	https://www.thecocktaildb.com/images/media/drink/mtpxgk1504373297.jpg	t	2017-09-02 18:28:17
14456	Kurant Tea	Coffee / Tea	Pour Absolut Kurant into a comfortably big tea-cup. Add the not too hot(!) apple tea and, if you like, some sugar. Enjoy!	Not yet provided	Not yet provided	Geben Sie Absolut Kurant in eine bequeme, große Teetasse. Füge den nicht zu heißen(!) Apfeltee und, wenn du willst, etwas Zucker hinzu. Viel Spaß!	Versare Absolut Kurant in una tazza da tè comodamente grande.\r\nAggiungete il tè alla mela non troppo caldo (!) E, se vi piace, dello zucchero.\r\nGodere!	https://www.thecocktaildb.com/images/media/drink/xrsrpr1441247464.jpg	t	2015-09-03 03:31:04
14538	Bumble Bee	Shot	This is a layered shot. First pour the Bailey's into the shot glass. Then take an upside down spoon and touch it to the inside wall of the glass. Carefully add the Kahlua. Repeat this process for the Sambuca. If done properly, the alcohol will stay separated and resemble a bumble bee. Enjoy!!!	Not yet provided	Not yet provided	Dies ist ein mehrschichtiges Getränk. Zuerst gießt man die Bailey's in das Schnapsglas. Nehmen Sie dann einen umgedrehten Löffel und berühren Sie ihn an der Innenwand des Glases. Füge das Kahlua vorsichtig hinzu. Wiederholen Sie diesen Vorgang für den Sambuca. Bei richtiger Anwendung bleibt der Alkohol getrennt und ähnelt einer Hummel. Genießt es!!!!!!	Questo è uno scatto a strati.\r\nPer prima cosa, versa il Bailey's nel bicchierino.\r\nQuindi prendi un cucchiaio capovolto e toccalo sulla parete interna del vetro.\r\nAggiungi con attenzione il Kahlua.\r\nRipeti questo processo per la Sambuca.\r\nSe fatto correttamente, l'alcol rimarrà separato e assomiglierà a un calabrone	https://www.thecocktaildb.com/images/media/drink/uwqpvv1461866378.jpg	t	2016-04-28 18:59:38
14608	Cream Soda	Cocktail	Pour 1oz of Spiced Rum into a highball glass with ice. Fill with Ginger Ale.	Not yet provided	Not yet provided	Geben Sie 3 cl. Spiced Rum in ein Highball-Glas mit Eis. Mit Ginger Ale füllen.	Versare 30gr di rum speziato in un bicchiere highball con ghiaccio.\r\nRiempi con Ginger Ale.	https://www.thecocktaildb.com/images/media/drink/yqstxr1479209367.jpg	t	2016-11-15 11:29:27
14730	Bubble Gum	Shot	Layer in order into a shot glass.	Not yet provided	Not yet provided	Nacheinander in ein Schnapsglas schichten.	Versare a strati nell'ordine di ingrediente	https://www.thecocktaildb.com/images/media/drink/spuurv1468878783.jpg	t	2016-07-18 22:53:03
14752	Kiwi Lemon	Ordinary Drink	Mix in highball glass. Stirr. Garnish with slice of kiwi.	Not yet provided	Not yet provided	Im Highball-Glas untermischen. Rühren. Mit einer Scheibe Kiwi garnieren.	Mescolare in un bicchiere highball.\r\nAgitare.\r\nGuarnire con una fetta di kiwi.	https://www.thecocktaildb.com/images/media/drink/tpupvr1478251697.jpg	t	2016-11-04 09:28:17
15006	Turkeyball	Shot	Shake with ice and strain into a shot glass.	Not yet provided	Not yet provided	Mit Eis schütteln und in ein Schnapsglas abseihen.	Shakerare con ghiaccio e filtra in un bicchiere da shot	https://www.thecocktaildb.com/images/media/drink/rxurpr1441554292.jpg	t	2015-09-06 16:44:53
15254	Zenmeister	Ordinary Drink	Mix together and enjoy	Not yet provided	Not yet provided	Zusammen mischen und genießen.	Mescola e divertiti	https://www.thecocktaildb.com/images/media/drink/qyuvsu1479209462.jpg	t	2016-11-15 11:31:02
15427	Grand Blue	Ordinary Drink	Serve in an old fashioned glass.	Not yet provided	Not yet provided	In einem old-fashioned Glas servieren.	Versare tutti gli ingredienti in un bicchiere, mescola bene.	https://www.thecocktaildb.com/images/media/drink/vsrsqu1472761749.jpg	t	2016-09-01 21:29:09
15761	Quick-sand	Ordinary Drink	Simply add the orange juice, quite a quick pour in order to mix the sambucca with the orange juice. The juice MUST have fruit pulp!	Not yet provided	Not yet provided	Einfach den Orangensaft zugeben und ganz schnell gießen, um den Sambucca mit dem Orangensaft zu mischen. Der Saft MUSS Fruchtfleisch enthalten!	Basta aggiungere il succo d'arancia, abbastanza veloce per amalgamare la sambuca con il succo d'arancia.\r\nIl succo deve avere polpa di frutta!	https://www.thecocktaildb.com/images/media/drink/vprxqv1478963533.jpg	t	2016-11-12 15:12:13
16041	Mudslinger	Punch / Party Drink	Add all contents to a large jug or punch bowl. Stir well!	Not yet provided	Not yet provided	Füge den gesamten Inhalt in eine große Kanne oder Bowle. Gut umrühren!	Aggiungi tutto il contenuto a una brocca grande o una ciotola da punch.Mescolare bene!	https://www.thecocktaildb.com/images/media/drink/hepk6h1504885554.jpg	t	2017-09-08 16:45:55
16196	Moranguito	Shot	first you put rhe absinthe, then put tequila, then put the Granadine syrup.	Not yet provided	Not yet provided	Erst den Absinth, dann den Tequila, dann den Grenadinesirup.	Prima metti l'assenzio, poi la tequila, poi lo sciroppo di granatina.	https://www.thecocktaildb.com/images/media/drink/urpsyq1475667335.jpg	t	2016-10-05 12:35:35
16250	Rum Runner	Punch / Party Drink	Mix all ingredients in glass & add ice.	Not yet provided	Not yet provided	Alle Zutaten in einem Glas mischen und Eis hinzufügen.	Versare gli ingredienti sul ghiaccio e mescolare.	https://www.thecocktaildb.com/images/media/drink/vqws6t1504888857.jpg	t	2017-09-08 17:40:57
16942	Zipperhead	Shot	Fill glass with rocks, add straw before putting in liquor. Then add the ingredients in order, trying to keep layered as much as possible (i.e. Chambord on bottom, then Vodka, Then soda on top).	Not yet provided	Not yet provided	Das Glas mit Eiswürfeln füllen, Trinkhalm hinzufügen und in den Schnaps geben. Dann fügen Sie die Zutaten in der Reihenfolge hinzu und versuchen Sie, so viel wie möglich geschichtet zu halten (z.B. Chambord unten, dann Wodka, dann Soda oben).	Riempi il bicchiere con il ghiaccio, aggiungi la cannuccia prima di aggiungere il liquore.	https://www.thecocktaildb.com/images/media/drink/r2qzhu1485620235.jpg	t	2017-01-28 16:17:15
16967	Vodka Fizz	Other/Unknown	Blend all ingredients, save nutmeg. Pour into large white wine glass and sprinkle nutmeg on top.	Not yet provided	Not yet provided	Alle Zutaten mischen. In ein großes Weißweinglas geben und mit Muskatnuss bestreuen.	Frullare tutti gli ingredienti, tranne la noce moscata.\r\nVersare in un grande bicchiere da vino bianco e cospargere di noce moscata.	https://www.thecocktaildb.com/images/media/drink/xwxyux1441254243.jpg	t	2015-09-03 05:24:03
16986	Bible Belt	Other/Unknown	Mix all ingredients, and pour over ice.	Not yet provided	Not yet provided	Alle Zutaten mischen und über Eis gießen.	Mescolare tutti gli ingredienti e versare su un bicchiere con del ghiaccio.	https://www.thecocktaildb.com/images/media/drink/6bec6v1503563675.jpg	t	2017-08-24 09:34:35
17120	Brain Fart	Punch / Party Drink	Mix all ingredients together. Slowly and gently. Works best if ice is added to punch bowl and soda's are very cold.	Not yet provided	Not yet provided	Alle Zutaten miteinander vermengen. Langsam und sanft. Funktioniert am besten, wenn Eis in die Bowle gegeben wird und die Soda sehr kalt ist.	Mescola tutti gli ingredienti insieme.\r\nLentamente e delicatamente.\r\nFunziona meglio se si aggiunge ghiaccio alla ciotola del punch e se le bibite sono molto fredde.	https://www.thecocktaildb.com/images/media/drink/rz5aun1504389701.jpg	t	2017-09-02 23:01:42
17192	Porto flip	Ordinary Drink	Shake ingredients together in a mixer with ice. Strain into glass, garnish and serve.	Not yet provided	Not yet provided	Die Zutaten in einem Mixer mit Eis verrühren. In ein Glas abseihen, garnieren und servieren.	Shakerare gli ingredienti insieme in un mixer con ghiaccio.\r\nFiltrare nel bicchiere, guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/64x5j41504351518.jpg	t	2017-09-02 12:25:18
17194	White Lady	Ordinary Drink	Add all ingredients into cocktail shaker filled with ice. Shake well and strain into large cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten in den mit Eis gefüllten Cocktailshaker geben. Gut schütteln und in ein großes Cocktailglas abseihen.	Aggiungere tutti gli ingredienti in uno shaker pieno di ghiaccio.Shakerare bene e filtrare in una coppetta da cocktail grande.	https://www.thecocktaildb.com/images/media/drink/jofsaz1504352991.jpg	t	2017-09-02 12:49:52
17206	Mint Julep	Ordinary Drink	In a highball glass gently muddle the mint, sugar and water. Fill the glass with cracked ice, add Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig.	Not yet provided	Not yet provided	In einem Highball-Glas die Minze, den Zucker und das Wasser vorsichtig verrühren. Füllen Sie das Glas mit gebrochenem Eis, fügen Sie Bourbon hinzu und rühren Sie gut um, bis das Glas gut gefrostet ist. Mit einem Minzzweig garnieren.	In un bicchiere highball pestare delicatamente la menta, lo zucchero e l'acqua.\r\nRiempite il bicchiere con ghiaccio tritato, aggiungete il Bourbon e mescolate bene fino a quando il bicchiere sarà ben glassato.\r\nGuarnire con un rametto di menta.	https://www.thecocktaildb.com/images/media/drink/squyyq1439907312.jpg	t	2015-08-18 15:15:12
17226	Adam & Eve	Cocktail	Shake together all the ingredients and strain into a cold glass.	Not yet provided	Not yet provided	Alle Zutaten vermengen und in ein kaltes Glas abseihen.	Shakerare insieme tutti gli ingredienti e filtrare in un bicchiere freddo.	https://www.thecocktaildb.com/images/media/drink/vfeumw1504819077.jpg	t	2017-09-07 22:17:58
17230	Gin Rickey	Cocktail	Half-fill a tall glass with ice. Mix the gin and Grenadine together and pour over the ice. Add the lime or lemon juice and top off with soda water. Decorate the glass with lime and/or lemon slices.	Not yet provided	Not yet provided	Füllen Sie ein hohes Glas halb mit Eis. Gin und Grenadine vermischen und über das Eis gießen. Limetten- oder Zitronensaft hinzufügen und mit Sodawasser auffüllen. Das Glas mit Limetten- und/oder Zitronenscheiben dekorieren.	Riempi a metà un bicchiere alto di ghiaccio.\r\nMescolare il gin e la Grenadine e versare sul ghiaccio.\r\nAggiungere il succo di lime o limone e completare con acqua gassata.\r\nDecorare il bicchiere con lime e / o fettine di limone.	https://www.thecocktaildb.com/images/media/drink/s00d6f1504883945.jpg	t	2017-09-08 16:19:05
17256	Martinez 2	Cocktail	Add all ingredients to a mixing glass and fill with ice.\r\n\r\nStir until chilled, and strain into a chilled coupe glass.	Not yet provided	Not yet provided	Alle Zutaten in ein Mischglas geben und mit Eis füllen. Bis zum Abkühlen umrühren und in ein gekühltes Coupéglas abseihen.	Aggiungere tutti gli ingredienti in un mixing glass e riempire di ghiaccio, mescolare fino a quando si saranno raffreddati e filtrare in un bicchiere da coupé freddo.	https://www.thecocktaildb.com/images/media/drink/fs6kiq1513708455.jpg	t	2017-12-19 18:34:15
17829	Penicillin	Cocktail	Shake blended Scotch, lemon juice, honey syrup and ginger syrup with ice. Strain over large ice in chilled rocks glass. Float smoky Scotch on top (be sure to use a smoky Scotch such as an Islay single malt). Garnish with candied ginger.	Not yet provided	Not yet provided	Schütteln Sie gemischten Scotch, Zitronensaft, Honigsirup und Ingwersirup mit Eis. Über großes Eis in gekühltem Rocks Glas abseihen. Geben Sie rauchigen Scotch darauf (verwenden Sie unbedingt einen rauchigen Scotch wie z.B. Islay Single Malt). Mit kandiertem Ingwer garnieren. 	Shakerare Scotch Blended, succo di limone, sciroppo di miele e sciroppo di zenzero con ghiaccio.\r\nFiltrare con del ghiaccio in un bicchiere freddo.\r\nVersa sopra il bicchiere uno scotch fumoso (assicurati di usare uno scotch affumicato come un single malt di Islay).\r\nGuarnire con lo zenzero candito.	https://www.thecocktaildb.com/images/media/drink/hc9b1a1521853096.jpg	t	2018-03-24 00:58:16
17830	Corn n Oil	Cocktail	Cut the half lime in half again. Add the lime, falernum, and bitters to a rocks glass. Muddle. Add the rum. (Aged Barbados rum such as Plantation 5 Year is recommended). Add ice and stir. Float the blackstrap rum on top. Serve with a straw.	Not yet provided	Not yet provided	Die halbe Limette wieder in zwei Hälften schneiden. Füge Limette, Falernum und Bitter in ein Rocks Glas. Mischen. Den Rum hinzufügen. (Gereifter Barbados-Rum wie z.B. Plantation 5 Year wird empfohlen). Eis hinzufügen und umrühren. Blackstrap Rum dazugeben. Mit einem Strohhalm servieren.	Taglia a metà il lime.\r\nAggiungere il lime, il falernum e il bitter in un bicchiere.\r\nAggiungi il rum.\r\n(Si consigliano rum Barbados invecchiato come Plantation 5 Year).\r\nAggiungi il ghiaccio e mescola.\r\nVersa il rum blackstrap sopra.\r\nServire con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/pk6dwi1592767243.jpg	t	2018-06-27 15:15:09
178319	Aquamarine	Cocktail	Shake well in a shaker with ice.\r\nStrain in a martini glass.	Not yet provided	Not yet provided	Not yet provided	Shakerare bene in uno shaker con ghiaccio.\r\nFiltrare in una coppetta Martini.	https://www.thecocktaildb.com/images/media/drink/zvsre31572902738.jpg	t	\N
11113	Bloody Mary	Ordinary Drink	Stirring gently, pour all ingredients into highball glass. Garnish.	Not yet provided	Not yet provided	Unter leichtem Rühren alle Zutaten in ein Highball-Glas geben. Garnieren.	Mescolando delicatamente, versare tutti gli ingredienti nel bicchiere highball.	https://www.thecocktaildb.com/images/media/drink/t6caa21582485702.jpg	t	2015-08-18 15:09:14
11117	Blue Lagoon	Ordinary Drink	Pour vodka and curacao over ice in a highball glass. Fill with lemonade, top with the cherry, and serve.	Not yet provided	Not yet provided	Gießen Sie Wodka und Curacao in einem Highball-Glas über Eis. Mit Limonade füllen, mit der Kirsche verzieren und servieren.	Versare la vodka e il curacao in un bicchiere highball. Aggiungi cubetti di ghiaccio. Riempi con la limonata, guarnisci con la ciliegia e servi.	https://www.thecocktaildb.com/images/media/drink/5wm4zo1582579154.jpg	t	2017-09-02 22:58:25
15515	Tennesee Mud	Coffee / Tea	Mix Coffee, Jack Daniels and Amaretto. Add Cream on top.	Not yet provided	Not yet provided	Mische Kaffee, Jack Daniels und Amaretto. Creme darauf geben.	Mescola il caffè, Jack Daniels e Amaretto. Aggiungi la panna sopra.	https://www.thecocktaildb.com/images/media/drink/txruqv1441245770.jpg	t	2015-09-03 03:02:50
11129	Boston Sour	Ordinary Drink	Shake juice of lemon, powdered sugar, blended whiskey, and egg white with cracked ice and strain into a whiskey sour glass. Add the slice of lemon, top with the cherry, and serve.	Not yet provided	Not yet provided	Den Saft von Zitrone, Puderzucker, gemischtem Whiskey und Eiweiß mit zerkleinertem Eis schütteln und in ein Whisky Sour Glas abseihen. Die Zitronenscheibe dazugeben, mit der Kirsche garnieren und servieren.	Shakerare il succo di limone, lo zucchero a velo, il whisky miscelato e l'albume con ghiaccio tritato e filtrare in un bicchiere da whisky sour.Aggiungere la fetta di limone, guarnire con la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/kxlgbi1504366100.jpg	t	2017-09-02 16:28:20
11164	Brandy Flip	Ordinary Drink	In a shaker half-filled with ice cubes, combine the brandy, egg, sugar, and cream. Shake well. Strain into a sour glass and garnish with the nutmeg.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Brandy, Ei, Zucker und Sahne vermengen. Gut schütteln. In ein Sour Glas abseihen und mit der Muskatnuss garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unire il brandy, l'uovo, lo zucchero e la panna.Filtrare in un bicchiere e guarnire con la noce moscata. Agitare bene	https://www.thecocktaildb.com/images/media/drink/6ty09d1504366461.jpg	t	2017-09-02 16:34:21
11170	Brandy Sour	Ordinary Drink	Shake brandy, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with the lemon slice, top with the cherry, and serve.	Not yet provided	Not yet provided	Brandy, Zitronensaft und Puderzucker mit Eis schütteln und in ein Whiskey Sour Glas abseihen. Mit der Zitronenscheibe dekorieren, mit der Kirsche garnieren und servieren.	Shakerare brandy, succo di limone e zucchero a velo con ghiaccio e filtrare in un bicchiere da whisky sour. Decorare con la fetta di limone, guarnire con la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/b1bxgq1582484872.jpg	t	2017-09-02 16:35:40
11222	Casa Blanca	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/usspxq1441553762.jpg	t	2015-09-06 16:36:02
11324	Dry Rob Roy	Ordinary Drink	In a mixing glass half-filled with ice cubes, combine the Scotch and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Eiswürfeln gefüllt ist, den Scotch mit Wermut kombinieren. Gut umrühren. In ein Cocktailglas abseihen. Mit der Zitronenscheibe garnieren.	In un mixing glass riempito a metà con cubetti di ghiaccio, unire lo scotch e il vermouth.Filtrare in un bicchiere da cocktail. Mescolare bene. Guarnire con la scorza di limone	https://www.thecocktaildb.com/images/media/drink/typuyq1439456976.jpg	t	\N
11382	Frisco Sour	Ordinary Drink	Shake all ingredients (except slices of lemon and lime) with ice and strain into a whiskey sour glass. Decorate with the slices of lemon and lime and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Zitronen- und Limonenscheiben) mit Eis schütteln und in ein Whiskey Sour Glas abseihen. Mit den Zitronen- und Limonenscheiben dekorieren und servieren.	Aggiungi il ghiaccio in uno shaker e versa tutti gli ingredienti.\r\nUsando un cucchiaio da bar, mescola da 40 a 45 giri o fino a quando non si sarà completamente raffreddato.\r\nFiltrare in una coppetta Martini o con ghiaccio.\r\nGuarnire con un tocco d'arancia.	https://www.thecocktaildb.com/images/media/drink/acuvjz1582482022.jpg	t	2017-09-08 16:22:30
11419	Gin Swizzle	Ordinary Drink	In a shaker half-filled with ice cubes, combine the lime juice, sugar, gin, and bitters. Shake well. Almost fill a colling glass with ice cubes. Stir until the glass is frosted. Strain the mixture in the shaker into the glass and add the club soda.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Limettensaft, Zucker, Gin und Bitter vermengen. Gut schütteln. Füllen Sie ein gekühltes Glas mit Eiswürfel. Rühren Sie, bis das Glas mattiert ist. Die Mischung im Shaker in das Glas abseihen und das Club-Soda hinzufügen.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci il succo di lime, lo zucchero, il gin e il bitter, agitare bene. Riempi quasi a l'orlo un bicchiere Collins con dei cubetti di ghiaccio. Mescolare fino a quando il bicchiere è ghiacciato. Filtrare la miscela nello shaker e versala nel bicchiere, infine aggiungere la soda club.	https://www.thecocktaildb.com/images/media/drink/sybce31504884026.jpg	t	2017-09-08 16:20:26
11433	Grass Skirt	Ordinary Drink	In a shaker half-filled with ice cubes, combine the gin, triple sec, pineapple juice, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the pineapple slice.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfel gefüllt ist, den Gin, die Triple Sec, Ananassaft und Grenadine miteinander vermengen. Gut schütteln. In ein old-fashioned Glas geben und mit der Ananasscheibe garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci il gin, il triple sec, il succo d'ananas e la granatina, versare in un bicchiere vecchio stile e guarnire con la fetta di ananas. Agitare bene	https://www.thecocktaildb.com/images/media/drink/qyvprp1473891585.jpg	t	2016-09-14 23:19:46
11658	Loch Lomond	Ordinary Drink	In a mixing glass half-filled with ice cubes, combine the Scotch, Drambuie, and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Eiswürfeln gefüllt ist, Scotch, Drambuie und Wermut kombinieren. Gut umrühren. In ein Cocktailglas abseihen. Mit der Zitronenscheibe garnieren.	In un mixing glass riempito a metà con cubetti di ghiaccio, unire lo scotch, il drambuie e il vermouth. Filtrare in un bicchiere da cocktail. Guarnire con la scorza di limone. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/rpvtpr1468923881.jpg	t	2016-07-19 11:24:41
11662	London Town	Ordinary Drink	In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut umrühren. In ein Cocktailglas abseihen.	In un mixing glass riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti. Filtrare in un bicchiere da cocktail. Mescolare bene. 	https://www.thecocktaildb.com/images/media/drink/rpsrqv1468923507.jpg	t	2016-07-19 11:18:27
14209	Mocha-Berry	Coffee / Tea	pour 6 oz. of coffee in a mug or Irish coffee cup. add coca mix and chambord, mix well and top off with whipped cream.	Not yet provided	Not yet provided	Geben Sie 18 cl. Kaffee in eine Tasse oder eine irische Kaffeetasse. Fügen Sie Kokamischung und Chambord hinzu, mischen Sie gut und geben Sie Schlagsahne dazu.	Versa 170gr di caffè in una tazza o in una tazza di caffè irlandese.\r\nUnire il mix di cacao e lo Chambord, mescolare bene e completare con la panna montata.	https://www.thecocktaildb.com/images/media/drink/vtwyyx1441246448.jpg	t	2015-09-03 03:14:08
12067	Rum Cobbler	Ordinary Drink	In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the rum. Stir well. Garnish with the cherry and the orange and lemon slices.	Not yet provided	Not yet provided	In einem old-fashioned Glas den Zucker in der Soda auflösen. Füge zerstoßenes Eis hinzu, bis das Glas fast voll ist. Den Rum hinzufügen. Gut umrühren. Mit der Kirsche und den Orangen- und Zitronenscheiben garnieren.	In un bicchiere vecchio stile, sciogli lo zucchero nella soda club. Aggiungere il ghiaccio tritato fino a quando il bicchiere è quasi pieno. Aggiungi il rum. Guarnire con la ciliegia e le fettine di arancia e limone. Mescolare bene. 	https://www.thecocktaildb.com/images/media/drink/5vh9ld1504390683.jpg	t	2017-09-02 23:18:03
12158	Scotch Sour	Ordinary Drink	Shake scotch, juice of lime, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with 1/2 slice lemon, top with the cherry, and serve.	Not yet provided	Not yet provided	Scotch, Limettensaft und Puderzucker mit Eis schütteln und in ein Whiskey-Sourglas abseihen. Mit 1/2 Scheibe Zitrone dekorieren, mit der Kirsche belegen und servieren.	Shakerare scotch, succo di lime e zucchero a velo con ghiaccio e filtrare in un bicchiere da whisky sour. Decorare con 1/2 fetta di limone, guarnire con la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/0dnb6k1504890436.jpg	t	2017-09-08 18:07:16
12162	Screwdriver	Ordinary Drink	Mix in a highball glass with ice. Garnish and serve.	Not yet provided	Not yet provided	In einem Highball-Glas mit Eis mischen. Garnieren und servieren.	Mescolare in un bicchiere highball con ghiaccio. Guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/8xnyke1504352207.jpg	t	2017-09-02 12:36:47
12190	Sherry Flip	Ordinary Drink	Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Muskatnuss) mit Eis schütteln und in ein Whiskey-Sourglas abseihen. Muskatnuss darüber streuen und servieren.	Shakerare tutti gli ingredienti (tranne la noce moscata) con ghiaccio e filtrare in un bicchiere da whisky sour. Cospargere di noce moscata e servire.	https://www.thecocktaildb.com/images/media/drink/qrryvq1478820428.jpg	t	2016-11-10 23:27:08
12402	Tom Collins	Ordinary Drink	In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a collins glass alomst filled with ice cubes. Add the club soda. Stir and garnish with the cherry and the orange slice.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Gin, Zitronensaft und Zucker mischen. Gut schütteln. In ein Collins-Glas abseihen, das mit Eiswürfeln gefüllt ist. Füge das Club-Soda hinzu. Umrühren und mit der Kirsche und der Orangenscheibe garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci il gin, il succo di limone e lo zucchero.Mescolate e guarnite con la ciliegia e la fetta d'arancia.Filtrare in un bicchiere collins pieno di cubetti di ghiaccio.Aggiungi la soda club.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/7cll921606854636.jpg	t	2015-08-18 15:21:22
12674	Fruit Shake	Other/Unknown	Blend til smooth.	Not yet provided	Not yet provided	Bis zur geschmeidigen Konsistenz mischen.	Frulla fino a ottenere un composto omogeneo.	https://www.thecocktaildb.com/images/media/drink/q0fg2m1484430704.jpg	f	2017-01-14 21:51:44
12692	Lassi Khara	Other/Unknown	Blend (frappe) in blender until frothy. Add torn curry leaves and serve cold.	Not yet provided	Not yet provided	Im Mixer zu einem schaumigen Ganzen verrühren (Frappe). Zerrissene Curryblätter hinzufügen und kalt servieren.	Frullare (frappe) nel frullatore fino a ottenere un composto spumoso.Aggiungere le foglie di curry strappate e servire freddo.	https://www.thecocktaildb.com/images/media/drink/m1suzm1487603970.jpg	f	2017-02-20 15:19:30
12694	Lassi Raita	Other/Unknown	Blend the yoghurt and ice cubes together, until the yoghurt becomes more liquid. Add sugar to taste. The lemon/lime is optional but it gives it a slightly tart taste. Dash of salt. Raita is also good for the summer. Instead of having a traditional salad you can make raita instead.	Not yet provided	Not yet provided	Joghurt und Eiswürfel zusammen mischen, bis der Joghurt flüssiger wird. Nach Belieben Zucker hinzufügen. Die Zitrone / Limette ist optional, verleiht ihr aber einen leicht herberen Geschmack. Eine Prise Salz. Raita ist auch gut für den Sommer. Anstatt einen traditionellen Salat zu essen, können Sie stattdessen Raita machen.	Frullate insieme lo yogurt e i cubetti di ghiaccio, finché lo yogurt non diventa più liquido. Aggiungere lo zucchero a piacere. Il limone / lime è facoltativo ma gli conferisce un sapore leggermente aspro. Pizzico di sale.Invece di avere un'insalata tradizionale puoi invece preparare la raita. Raita va bene anche per l'estate. 	https://www.thecocktaildb.com/images/media/drink/s4x0qj1487603933.jpg	f	2017-02-20 15:18:53
12702	Lemouroudji	Other/Unknown	Juice the lemons. Peel and grate the ginger. Place the grated ginger and a liberal dash of the cayenne pepper into a piece of cheesecloth, and tie it into a knot. Let soak in the water. After 15 minutes or so, add the sugar, and the lemon juice. Chill, and serve.	Not yet provided	Not yet provided	Die Zitronen entsaften. Den Ingwer schälen und raspeln. Den geriebenen Ingwer und einen kräftigen Spritzer Cayennepfeffer in ein Stück Seihtuch geben und zu einem Knoten binden. Im Wasser einweichen lassen. Nach etwa 15 Minuten den Zucker und den Zitronensaft hinzufügen. Abkühlen lassen und servieren.	Mettere lo zenzero grattugiato spolverato di pepe di Caienna in un pezzo di garza, annodalo e lascia che lo zenzero e il pepe di Caienna infondano l'acqua in modo che l'acqua assuma sapore (circa 15 minuti).\r\nAggiungere lo zucchero e il succo di limone e mescolare bene.\r\nRaffredda e servi freddo. (Puoi lasciare fuori il pepe di Caienna se lo desideri). Metti in frigo, aggiusta lo zucchero se necessario e servi.	https://www.thecocktaildb.com/images/media/drink/eirmo71487603745.jpg	f	2017-02-20 15:15:45
12726	Tomato Tang	Other/Unknown	Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.	Not yet provided	Not yet provided	Alle Zutaten in den Mixer geben - abdecken und bei mittlerer Geschwindigkeit schaumig schlagen, bis sie gut vermischt sind. In ein großes, 2 mittlere oder 3 kleine Gläser füllen und geniessen.	Mettere tutti gli ingredienti nella caraffa del frullatore - coprire e montare a velocità media fino a quando non sono ben amalgamati.Versare in un bicchiere alto, 2 medi o 3 piccoli e bere.	https://www.thecocktaildb.com/images/media/drink/869qr81487603278.jpg	f	2017-02-20 15:07:58
12770	Iced Coffee	Coffee / Tea	Mix together until coffee and sugar is dissolved. Add milk. Shake well. Using a blender or milk shake maker produces a very foamy drink. Serve in coffee mug.	Not yet provided	Not yet provided	Zusammenmischen, bis Kaffee und Zucker aufgelöst sind. Milch zugeben. Gut schütteln. Die Verwendung eines Mixers oder Milchshakemachers ergibt es ein sehr schaumiges Getränk. In einer Kaffeetasse servieren.	Mescolare fino a quando il caffè e lo zucchero si saranno sciolti. Aggiungi il latte. Agitare bene. L'uso di un frullatore o di un frullato produce una bevanda molto schiumosa. Servito in tazza da caffè.	https://www.thecocktaildb.com/images/media/drink/ytprxy1454513855.jpg	f	2016-02-03 15:37:35
12774	Masala Chai	Coffee / Tea	Bring 2 cups of water to boil. Add all the ingredients and boil again for about 15 seconds. Let stand for a minute. Warm milk in a pot. Filter tea into cups. Add milk and sugar. That's IT.	Not yet provided	Not yet provided	2 Tassen Wasser zum Kochen bringen. Alle Zutaten zugeben und nochmals ca. 15 Sekunden kochen lassen. Eine Minute stehen lassen. Milch in einem Topf erwärmen. Tee in Tassen filtern. Milch und Zucker hinzufügen. Servieren.	Porta ad ebollizione 2 tazze d'acqua.\r\nAggiungere tutti gli ingredienti e far bollire di nuovo per circa 15 secondi.\r\nLascia riposare per un minuto.\r\nLatte caldo in una pentola.\r\nFiltra il tè in tazze.\r\nAggiungere il latte e lo zucchero.\r\nQuesto è tutto.	https://www.thecocktaildb.com/images/media/drink/uyrpww1441246384.jpg	f	2015-09-03 03:13:04
12782	Thai Coffee	Coffee / Tea	Place the coffee and spices in the filter cone of your coffee maker. Brew coffee as usual, let it cool. In a tall glass, dissolve 1 or 2 teaspoons of sugar in an ounce of the coffee (it's easier to dissolve than if you put it right over ice). Add 5-6 ice cubes and pour coffee to within about 1 inch of the top of the glass. Rest a spoon on top of the coffee and slowly pour whipping cream into the spoon. This will make the cream float on top of the coffee rather than dispersing into it right away.	Not yet provided	Not yet provided	Geben Sie den Kaffee und die Gewürze in den Filterkegel Ihrer Kaffeemaschine. Kaffee wie gewohnt zubereiten, abkühlen lassen. In einem hohen Glas 1 oder 2 Teelöffel Zucker in 2 Esslöffel Kaffee auflösen (es ist einfacher zu lösen, als wenn man ihn direkt auf Eis legt). Füge 5-6 Eiswürfel hinzu und gieße Kaffee 2-3cm von der Oberseite des Glases auf. Einen Löffel auf den Kaffee legen und langsam Schlagsahne in den Löffel geben. Dadurch wird die Creme auf dem Kaffee schweben, anstatt sich sofort darin zu verteilen.	Metti il caffè e le spezie nel cono del filtro della tua caffettiera.\r\nPrepara il caffè come al solito, lascialo raffreddare.\r\nIn un bicchiere alto, sciogli 1 o 2 cucchiaini di zucchero in 30gr di caffè (è più facile da sciogliere che se lo metti sul ghiaccio).\r\nAggiungere 5-6 cubetti di ghiaccio e versare il caffè a circa 1 pollice dalla parte superiore del bicchiere.\r\nAppoggia un cucchiaio sopra il caffè e versa lentamente la panna montata nel cucchiaio.\r\nIn questo modo la crema galleggerà sul caffè anziché disperdersi subito.	https://www.thecocktaildb.com/images/media/drink/wquwxs1441247025.jpg	f	2015-09-03 03:23:45
12790	Absinthe #2	Homemade Liqueur	Mix together and let sit a few days. Strain through a coffee filter. To serve mix 1 part absinthe to 4 parts water, add ice, enjoy.	Not yet provided	Not yet provided	Zusammen mischen und ein paar Tage ruhen lassen. Durch einen Kaffeefilter abseihen. Zum Servieren 1 Teil Absinth mit 4 Teilen Wasser mischen, Eis hinzufügen, genießen.	Mescolate insieme e lasciate riposare qualche giorno.Per servire mescolare 1 parte di assenzio a 4 parti di acqua, aggiungere il ghiaccio e gustare.Filtrare attraverso un filtro da caffè.	https://www.thecocktaildb.com/images/media/drink/uxxtrt1472667197.jpg	t	2016-08-31 19:13:17
12820	Irish Cream	Homemade Liqueur	Mix scotch and milk. Add half-and-half. Add rest.	Not yet provided	Not yet provided	Halb Scotch und halb Milch mischen. Rest hinzufügen.	Mescola tutti gli ingredienti in un frullatore fino a ottenere un composto omogeneo.\r\nDa tenere in frigorifero. Servire con ghiaccio o miscelato in cocktail, agitando prima di ogni utilizzo	https://www.thecocktaildb.com/images/media/drink/90etyl1504884699.jpg	t	2017-09-08 16:31:39
17186	Clover Club	Ordinary Drink	Dry shake ingredients to emulsify, add ice, shake and served straight up.	Not yet provided	Not yet provided	Zutaten zur Emulsion mischen, Eis hinzufügen, schütteln und direkt servieren.	Aggiungere il gin, l'albume, il succo di limone e lo sciroppo di lamponi in uno shaker con ghiaccio e agitare energicamente fino a quando non si saranno raffreddati bene.\r\n\r\nFiltrare in una coppetta da cocktail ghiacciata.	https://www.thecocktaildb.com/images/media/drink/t0aja61504348715.jpg	t	2017-09-02 11:38:35
12988	Mulled Wine	Punch / Party Drink	Simmer 3 cups water with, sugar, cloves, cinnamon sticks, and lemon peel in a stainless steel pot for 10 minutes. Add wine heat to a "coffee temperature" (DO NOT BOIL) then add the brandy.	Not yet provided	Not yet provided	3 Tassen Wasser mit Zucker, Nelken, Zimtstangen und Zitronenschale in einem Edelstahltopf 10 Minuten köcheln lassen. Wein auf "Kaffeetemperatur" erhitzen (nicht kochen) und füge dann den Brandy hinzu.	Fai bollire 3 tazze di acqua con, zucchero, chiodi di garofano, bastoncini di cannella e scorza di limone in una pentola di acciaio inossidabile per 10 minuti.\r\nPortare il vino a "temperatura del caffè" (NON BOLLITE) quindi aggiungere il brandy.	https://www.thecocktaildb.com/images/media/drink/iuwi6h1504735724.jpg	t	2017-09-06 23:08:44
13056	Wine Cooler	Punch / Party Drink	Mix wine and soft drink. Pour into glass. Add ice.	Not yet provided	Not yet provided	Wein und Softdrink mischen. In das Glas gießen. Füge Eis hinzu.	Mescolare vino e bibita. Aggiungi il ghiaccio. Versare nel bicchiere.	https://www.thecocktaildb.com/images/media/drink/yutxtv1473344210.jpg	f	2016-09-08 15:16:50
11009	Moscow Mule	Punch / Party Drink	Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.	Not yet provided	Not yet provided	Mischen Sie Wodka und Ingwerbier in einem mit Eis gefüllten Highball-Glas. Limettensaft hinzufügen. Vorsichtig umrühren. Garnieren.	Unisci la vodka e la ginger beer in un bicchiere highball pieno di ghiaccio.\r\nAggiungi il succo di lime.\r\nMescola delicatamente.	https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg	t	2017-09-02 17:49:48
13282	Black & Tan	Beer	Fill pint glass half full with Bass. Next pour Guiness over a spoon slowly until glass is full. If done correctly the Guiness will stay on top and the Bass on bottom hence the name Black & Tan.	Not yet provided	Not yet provided	Füllen Sie das Pintglas halb voll mit Bass. Als nächstes Guiness langsam über einen Löffel gießen, bis das Glas voll ist. Wenn richtig gemacht, bleibt der Guiness oben und der Bass unten, daher der Name Black & Tan.	Riempi mezzo bicchiere da mezzo litro con Bass.\r\nQuindi, versare lentamente la Guinness su un cucchiaio fino a riempire il bicchiere.\r\nSe fatto correttamente, la Guinness rimarrà in alto e il Basso in basso da cui il nome Black & Tan.	https://www.thecocktaildb.com/images/media/drink/rwpswp1454511017.jpg	t	2016-02-03 14:50:17
13405	Brainteaser	Shot	layered erin first, then sambuca and then avocart(should sit in middle of other two. To drink: use a straw to suck up avocart then shot the rest and then suck fumes up through straw.	Not yet provided	Not yet provided	Zuerst Erin schichten, dann Sambuca und dann Avocart (sollte zwischen Beiden sitzen). Zum Trinken: Verwenden Sie einen Strohhalm, um Avokart aufzusaugen, den Rest schießen und die Dämpfe durch den Strohhalm saugen.	prima versa la crema di erin ( crema fatta a base di cioccolato e vaniglia )  a strati, poi sambuca e poi avocaat se non avete quest'ultimo potete usare il Vov.	https://www.thecocktaildb.com/images/media/drink/ruywtq1461866066.jpg	t	2016-04-28 18:54:26
14087	Red Snapper	Shot	One shot each, shake n shoot	Not yet provided	Not yet provided	Jeweils ein Shot, schütteln und schießen.	Versa in un bicchiere tutti gli ingredienti. Mescolare.	https://www.thecocktaildb.com/images/media/drink/7p607y1504735343.jpg	t	2017-09-06 23:02:23
14360	Absolut Sex	Shot	Shake Absolut Kurant, Midori, and Cranberry juice in shaker with ice: Strain into rocks glass: Splash of seven on top.Absolut Sex.	Not yet provided	Not yet provided	Absolut Kurant, Midori und Preiselbeersaft im Shaker mit Eis schütteln: In ein Rocks Glas abseihen: Ein Spritzer von 7 oben drauf. Absoluter Sex.	Shakerare Absolut Kurant, Midori e il succo di mirtillo rosso in uno shaker con ghiaccio	https://www.thecocktaildb.com/images/media/drink/xtrvtx1472668436.jpg	t	2016-08-31 19:33:56
14364	Aztec Punch	Punch / Party Drink	Mix all ingredients in a pitcher. Mix thoroughly and pour into whatever is available, the bigger the better! This drink packs a big punch, so don't over do it.	Not yet provided	Not yet provided	Alle Zutaten in einem Krug mischen. Gründlich mischen und in was auch immer geben, je größer, desto besser! Dieses Getränk birgt einen großen Schlag, also Vorsicht.	Mescola tutti gli ingredienti in una brocca.\r\nMescola bene e versa tutto ciò che è disponibile, più grande è, meglio è! Questa bevanda racchiude un grande pugno, quindi non esagerare.	https://www.thecocktaildb.com/images/media/drink/uqwuyp1454514591.jpg	t	2016-02-03 15:49:51
14622	Arctic Fish	Punch / Party Drink	Fill glass with ice and fish, add vodka, grape soda and orange juice. DO NOT STIR!!!!! Serve well chilled.	Not yet provided	Not yet provided	Das Glas mit Eis und Fisch füllen, Wodka, Traubensaft und Orangensaft hinzufügen. NICHT UMRÜHREN. Gut gekühlt servieren.	Riempi il bicchiere con ghiaccio e pesce, aggiungi vodka, soda d'uva e succo d'arancia. Non mescolare. Servire ben freddo.	https://www.thecocktaildb.com/images/media/drink/ttsvwy1472668781.jpg	t	2016-08-31 19:39:41
14642	Grim Reaper	Ordinary Drink	Mix Kahlua and 151 in glass. Quickly add ice and pour grenadine over ice to give ice red tint.	Not yet provided	Not yet provided	Kahlua und 151 in einem Glas mischen. Füge schnell Eis hinzu und gieße Grenadine über das Eis, um eine rötliche Farbe zu erhalten.	Mescola Kahlua e 151 nel bicchiere.\r\nAggiungi rapidamente il ghiaccio e versa la granatina sul ghiaccio per dare una sfumatura rosso ghiaccio.	https://www.thecocktaildb.com/images/media/drink/kztu161504883192.jpg	t	2017-09-08 16:06:32
14956	Jello shots	Shot	Boil 3 cups of water then add jello. Mix jello and water until jello is completely disolved. Add the two cups of vodka and mix together. Pour mixture into plastic shot glasses and chill until firm. Then, eat away...	Not yet provided	Not yet provided	Kochen Sie 3 Tassen Wasser und fügen Sie dann Jello hinzu. Jello und Wasser mischen, bis Jello vollständig aufgelöst ist. Fügen Sie die beiden Tassen Wodka hinzu und mischen Sie sie zusammen. Die Mischung in Kunststoff-Schnapsgläser füllen und kühl stellen. Dann iss es weg.....	Fai bollire 3 tazze d'acqua e aggiungi la gelatina.\r\nMescolare la gelatina e l'acqua fino a quando la gelatina è completamente sciolta.\r\nAggiungere le due tazze di vodka e mescolale.\r\nVersare il composto in bicchierini di plastica e raffreddare fino a quando non si rassoda.	https://www.thecocktaildb.com/images/media/drink/l0smzo1504884904.jpg	t	2017-09-08 16:35:04
15082	Royal Flush	Shot	Pour all the ingredients into tumbler over ice. Strain into glass.	Not yet provided	Not yet provided	Alle Zutaten über Eis in den Becher gießen. In ein Glas abseihen.	Versare tutti gli ingredienti nel tumbler sul ghiaccio. Filtrare nel bicchiere.	https://www.thecocktaildb.com/images/media/drink/7rnm8u1504888527.jpg	t	2017-09-08 17:35:27
15346	155 Belmont	Cocktail	Blend with ice. Serve in a wine glass. Garnish with carrot.	Not yet provided	Not yet provided	Mit Eis vermischen. In einem Weinglas servieren. Mit Karotte garnieren.	Miscela con ghiaccio.\r\nServire in un bicchiere da vino.\r\nGuarnire con una carota.	https://www.thecocktaildb.com/images/media/drink/yqvvqs1475667388.jpg	t	2016-10-05 12:36:28
15511	Baby Eskimo	Milk / Float / Shake	Leave ice-cream out for about 10 minutes. Add ingredients in order, stir with chopstick (butter knife or spoon works too). Consume immediately and often. Nice and light, great for following a heavy drink.	Not yet provided	Not yet provided	Das Speiseeis ca. 10 Minuten ruhen lassen. Die Zutaten in der Reihenfolge hinzufügen, mit dem Essstäbchen umrühren (Buttermesser oder Löffel funktioniert auch).	Lasciare fuori il gelato per circa 10 minuti.\r\nAggiungere gli ingredienti in ordine, mescolare con una bacchetta (anche un coltello da burro o un cucchiaio funziona).\r\nConsumare subito.	https://www.thecocktaildb.com/images/media/drink/wywrtw1472720227.jpg	t	2016-09-01 09:57:07
15639	Texas Sling	Milk / Float / Shake	Blend with Ice until smooth. Serve in a tulip glass, top with whip cream.	Not yet provided	Not yet provided	Mit Eis mischen, bis es glatt ist. In einem Tulpenglas servieren, mit Schlagsahne bedecken.	Frullare con ghiaccio fino a che liscio.\r\nServire in un bicchiere a tulipano, guarnire con panna montata.	https://www.thecocktaildb.com/images/media/drink/ypl13s1504890158.jpg	t	2017-09-08 18:02:39
16108	9 1/2 Weeks	Cocktail	Combine all ingredients in glass mixer. Chill and strain into Cocktail glass. Garnish with sliced strawberry.	Not yet provided	Not yet provided	Alle Zutaten in einem Glasmischer vermengen. Abkühlen lassen und in das Cocktailglas abseihen. Mit Erdbeerscheiben garnieren.	Unisci tutti gli ingredienti in una planetaria.\r\nRaffredda e versa in un bicchiere da cocktail.\r\nGuarnire con la fragola a fette.	https://www.thecocktaildb.com/images/media/drink/xvwusr1472669302.jpg	t	2016-08-31 19:48:22
16990	Sweet Tooth	Milk / Float / Shake	Put 2 shots Godiva Liquour into a glass, add as much or as little milk as you would like.	Not yet provided	Not yet provided	Geben Sie 2 Spritzer Godiva Liquour in ein Glas, geben Sie so viel Milch hinzu, wie Sie möchten.	Metti 2 shot di Godiva Liqueur in un bicchiere, aggiungi tanto o poco latte quanto desideri.	https://www.thecocktaildb.com/images/media/drink/j6rq6h1503563821.jpg	t	2017-08-24 09:37:01
16995	Orange Whip	Other/Unknown	Pour ingredients over ice and stir.	Not yet provided	Not yet provided	Zutaten über Eis gießen und umrühren.	Versare gli ingredienti sul ghiaccio e mescolare.	https://www.thecocktaildb.com/images/media/drink/ttyrxr1454514759.jpg	t	2016-02-03 15:52:39
17122	Royal Bitch	Shot	Into a shot glass layer the Crown Royal on top of the Frangelico.	Not yet provided	Not yet provided	In einem Schnapsglas die Crown Royal auf den Frangelico schichten.	In un bicchiere da shot versa a strati prima il Frangelico e infine il Crown Royal	https://www.thecocktaildb.com/images/media/drink/qupuyr1441210090.jpg	t	2015-09-02 17:08:10
17135	Citrus Coke	Soft Drink / Soda	Pour half of coke in a glass. Then add Bacardi and top it off with the remaining coke. Stir and drink up!	Not yet provided	Not yet provided	Die Hälfte der Cola in ein Glas gießen. Dann Bacardi hinzufügen und mit dem verbleibenden Cola auffüllen. Rühren und trinken!	Versare metà della coca cola in un bicchiere.\r\nQuindi aggiungere il Bacardi e completare con la coca cola rimanente.\r\nMescola e bevi!	https://www.thecocktaildb.com/images/media/drink/uyrvut1479473214.jpg	t	2016-11-18 12:46:54
14466	Dirty Nipple	Shot	This is a layered shot - the Bailey's must be on top	Not yet provided	Not yet provided	Dies ist ein mehrschichtiger Schnaps - der Bailey's muss oben sein.	Questo è uno shot a strati, il Bailey deve essere versato per ultimo.	https://www.thecocktaildb.com/images/media/drink/vtyqrt1461866508.jpg	t	2016-04-28 19:01:49
17220	Butter Baby	Milk / Float / Shake	Blend together in a blender. Serve in a chilled Beer mug with Fresh Blueberries and caramel for topping.	Not yet provided	Not yet provided	In einem Mixer verrühren. In einem gekühlten Bierkrug mit frischen Blaubeeren und Karamell als Beilage servieren.	Mescola insieme in un frullatore.\r\nServire in un boccale di birra freddo con mirtilli freschi e caramello per guarnire.	https://www.thecocktaildb.com/images/media/drink/1xhjk91504783763.jpg	t	2017-09-07 12:29:23
17200	Grasshopper	Ordinary Drink	Pour ingredients into a cocktail shaker with ice. Shake briskly and then strain into a chilled cocktail glass.	Not yet provided	Not yet provided	Zutaten in einen Cocktailshaker mit Eis geben. Zügig schütteln und dann in ein gekühltes Cocktailglas abseihen.	Versare gli ingredienti in uno shaker con ghiaccio.\r\nAgitare energicamente e poi filtrare in una coppetta da cocktail fredda.	https://www.thecocktaildb.com/images/media/drink/aqm9el1504369613.jpg	t	2017-09-02 17:26:53
17207	Pina Colada	Ordinary Drink	Mix with crushed ice in blender until smooth. Pour into chilled glass, garnish and serve.	Not yet provided	Not yet provided	Mit zerstoßenem Eis im Mixer mischen, bis es glatt ist. In ein gekühltes Glas geben, garnieren und servieren.	Mescolare con ghiaccio tritato in un frullatore fino a che liscio.\r\nVersare in un bicchiere freddo, guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/cpf4j51504371346.jpg	t	2017-09-02 17:55:46
17219	Yellow Bird	Cocktail	Shake and strain into a chilled cocktail glass	Not yet provided	Not yet provided	In ein gekühltes Cocktailglas schütteln und abseihen.	Shakerare e filtrare in una coppetta da cocktail ghiacciata	https://www.thecocktaildb.com/images/media/drink/2t9r6w1504374811.jpg	t	2017-09-02 18:53:31
17267	Bahama Mama	Cocktail	Add 2 parts club soda or more or less to taste.\r\n\r\nMix it all together and pour over a bunch of ice. Drink with a straw.	Not yet provided	Not yet provided	Füge 2 Teile Club-Soda oder mehr oder weniger nach Belieben hinzu. Alles zusammen mischen und über reichlich Eis gießen. Trink mit einem Strohhalm.	Aggiungere 2 bicchieri da shot con acqua di selt.\r\nMescola il tutto e versa sopra un po 'di ghiaccio.\r\nBevi con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/tyb4a41515793339.jpg	t	2018-01-12 21:42:19
11005	Dry Martini	Cocktail	Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.	Not yet provided	Not yet provided	Not yet provided	Dritto: Versare tutti gli ingredienti nel mixing glass con cubetti di ghiaccio. Mescolare bene. Filtrare in una coppetta da cocktail Martini ghiacciata. Spremi l'olio della scorza di limone sulla bevanda o guarnisci con l'oliva.	https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg	t	2017-09-02 12:51:35
178315	Munich Mule	Cocktail	Fill glass with ice\r\nPour Gin and Lime Juice\r\nFill glass with Ginger Beer\r\nGarnish with Cucumer and Lime slice	Not yet provided	Not yet provided	Not yet provided	Riempi il bicchiere di ghiaccio\r\nVersare il gin e il succo di lime\r\nRiempi il bicchiere con Ginger Beer\r\nGuarnire con cetriolo e fetta di lime	https://www.thecocktaildb.com/images/media/drink/rj55pl1582476101.jpg	t	\N
178317	Bee's Knees	Cocktail	Shake ingredients with crushed ice\r\nGarnish with orange peel\r\n	Not yet provided	Not yet provided	Not yet provided	Shakerare gli ingredienti con ghiaccio tritato\r\nGuarnire con la scorza d'arancia	https://www.thecocktaildb.com/images/media/drink/tx8ne41582475326.jpg	t	\N
178344	Figgy Thyme	Cocktail	In a lewis bag, crush up some ice like a baller/maniac (@glacioice). Pour your precious ice into a collins glass. In a cocktail shaker, muddle the figs and thyme together. Add honey vodka, lemon juice, and a large ice cube (@glacioice). Shake until well chilled, and strain into glass. Add tonic water and finally 2 dashes of angostura bitters. Garnish with sliced figs and thyme.	Not yet provided	Not yet provided	Not yet provided	Mettete in un frullatore dei cubetti di ghiaccio e avviate. Versa il ghiaccio in un bicchiere Collins. In uno shaker, pestare insieme i fichi e il timo. Aggiungi la vodka al miele, il succo di limone e un grande cubetto di ghiaccio. Agitare fino a quando non si sarà raffreddato bene e filtrare nel bicchiere. Aggiungere l'acqua tonica e infine 2 gocce di angostura bitter. Guarnire con fichi affettati e timo.	https://www.thecocktaildb.com/images/media/drink/pbw4e51606766578.jpg	t	\N
178347	Winter Rita	Beer	Salt rim. Combine all ingredients, shake with ice, and strain over fresh ice.⠀	Not yet provided	Not yet provided	Not yet provided	Bordare il bicchiere con del sale. Unire tutti gli ingredienti, shakerare con ghiaccio e filtrare su ghiaccio fresco. ⠀	https://www.thecocktaildb.com/images/media/drink/fwpd0v1614006733.jpg	t	\N
11029	Amaretto Tea	Ordinary Drink	Pour hot tea into a pousse-cafe glass, using a spoon in glass to prevent cracking. Add amaretto, but do not stir. Top with chilled whipped cream and serve.	Not yet provided	Not yet provided	Gießen Sie heißen Tee in ein Pousse-Café Glas und verwenden Sie einen Löffel im Glas, um Sprünge zu vermeiden. Amaretto hinzufügen, aber nicht rühren. Mit gekühlter Schlagsahne garnieren und servieren.	Versare il tè caldo in un bicchiere pousse-cafe, usando un cucchiaio in vetro per evitare che si spezzi. Coprire con panna montata fredda e servire.Aggiungere l'amaretto, ma non mescolare	https://www.thecocktaildb.com/images/media/drink/b7qzo21493070167.jpg	t	2017-04-24 22:42:47
11050	Apricot Lady	Ordinary Drink	In a shaker half-filled with ice cubes, combine the rum, apricot brandy, triple sec, lemon juice, and egg white. Shake well. Strain into an old-fashioned glass almost filled with ice cubes. Garnish with the orange slice.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Rum, Apricot Brandy, Triple Sec, Zitronensaft und Eiweiß mischen. Gut schütteln. In ein old-fashioned Glas abseihen, das fast mit Eiswürfeln gefüllt ist. Mit der Orangenscheibe garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unire il rum, il brandy di albicocche, il triple sec, il succo di limone e l'albume. Guarnire con la fetta d'arancia. Filtrare in un bicchiere vecchio stile quasi pieno di cubetti di ghiaccio. Agitare bene	https://www.thecocktaildb.com/images/media/drink/7ityp11582579598.jpg	t	2017-09-02 23:03:34
11112	Bloody Maria	Ordinary Drink	Shake all ingredients (except lemon slice) with cracked ice and strain into an old-fashioned glass over ice cubes. Add the slice of lemon and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Zitronenscheibe) mit zerkleinertem Eis schütteln und über Eiswürfel in ein old-fashioned Glas seihen. Die Zitronenscheibe dazugeben und servieren.	Shakerare tutti gli ingredienti (eccetto la fetta di limone) con ghiaccio tritato e filtrare in un bicchiere vecchio stile su cubetti di ghiaccio.Aggiungere la fetta di limone e servire.	https://www.thecocktaildb.com/images/media/drink/yz0j6z1504389461.jpg	t	2017-09-02 22:57:41
14860	Talos Coffee	Coffee / Tea	Add your GM and then add your coffee.	Not yet provided	Not yet provided	Füge deinen GM und dann deinen Kaffee hinzu.	Aggiungi il Grand Marnier e poi aggiungi il tuo caffè.	https://www.thecocktaildb.com/images/media/drink/rswqpy1441246518.jpg	t	2015-09-03 03:15:18
11147	Bourbon Sour	Ordinary Drink	In a shaker half-filled with ice cubes, combine the bourbon, lemon juice, and sugar. Shake well. Strain into a whiskey sour glass, garnish with the orange slice and cherry.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Bourbon, Zitronensaft und Zucker vermengen. Gut schütteln. In ein Whiskey Sour Glas abseihen, mit der Orangenscheibe und der Kirsche garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci il bourbon, il succo di limone e lo zucchero. Filtrare in un bicchiere da whisky sour, guarnire con la fetta d'arancia e la ciliegia. Agitare bene.	https://www.thecocktaildb.com/images/media/drink/dms3io1504366318.jpg	t	2017-09-02 16:31:58
11242	Chicago Fizz	Ordinary Drink	Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer kohlensäurehaltigem Wasser) mit Eis schütteln und über zwei Eiswürfel in ein Highball-Glas seihen. Mit kohlensäurehaltigem Wasser auffüllen, umrühren und servieren.	Shakerare tutti gli ingredienti (eccetto l'acqua gassata) con ghiaccio e filtrare in un bicchiere highball su due cubetti di ghiaccio. Riempi con acqua gassata, mescola e servi	https://www.thecocktaildb.com/images/media/drink/qwvwqr1441207763.jpg	t	2015-09-02 16:29:23
11251	City Slicker	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Cocktailglas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Agitare bene.Filtrare in un bicchiere da cocktail.	https://www.thecocktaildb.com/images/media/drink/dazdlg1504366949.jpg	t	2017-09-02 16:42:29
11528	Irish Spring	Ordinary Drink	Pour all ingredients (except orange slice and cherry) into a collins glass over ice cubes. Garnish with the slice of orange, add the cherry on top, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Orangenscheibe und Kirsche) in ein Collins-Glas über Eiswürfel gießen. Mit der Orangenscheibe garnieren, die Kirsche darüber geben und servieren.	Versare tutti gli ingredienti (tranne la fetta d'arancia e la ciliegia) in un bicchiere Collins con cubetti di ghiaccio. Guarnire con la fetta d'arancia, aggiungere la ciliegina sulla torta e servire.	https://www.thecocktaildb.com/images/media/drink/sot8v41504884783.jpg	t	2017-09-08 16:33:03
11580	John Collins	Ordinary Drink	Pour all ingredients directly into highball glass filled with ice. Stir gently. Garnish. Add a dash of Angostura bitters.	Not yet provided	Not yet provided	Alle Zutaten direkt in ein mit Eis gefülltes Highball-Glas gießen. Vorsichtig umrühren. Garnieren. Füge einen Schuss Angostura-Bitter hinzu.	Versare tutti gli ingredienti direttamente nel bicchiere highball pieno di ghiaccio.Aggiungi un pizzico di Angostura bitter.Mescola delicatamente.	https://www.thecocktaildb.com/images/media/drink/0t4bv71606854479.jpg	t	2017-09-02 12:04:31
11870	Orange Oasis	Ordinary Drink	Shake brandy, gin, and orange juice with ice and strain into a highball glass over ice cubes. Fill with ginger ale, stir, and serve.	Not yet provided	Not yet provided	Brandy, Gin und Orangensaft mit Eis schütteln und in ein Highball-Glas über Eiswürfel abseihen. Mit Ginger Ale füllen, umrühren und servieren.	Shakerare brandy, gin e succo d'arancia con ghiaccio e filtrare in un bicchiere highball con cubetti di ghiaccio. Riempi con ginger ale, mescola e servi.	https://www.thecocktaildb.com/images/media/drink/su1olx1582473812.jpg	t	2015-09-02 05:25:23
12256	Sol Y Sombra	Ordinary Drink	Shake ingredients with ice, strain into a brandy snifter, and serve. (The English translation of the name of this drink is "Sun and Shade", and after sampling this drink, you'll understand why. Thanks, Kirby.)	Not yet provided	Not yet provided	Die Zutaten mit Eis schütteln, in ein Brandyglas abseihen und servieren. (Die englische Übersetzung des Namens dieses Getränks lautet "Sonne und Schatten", und nachdem Sie dieses Getränk probiert haben, werden Sie verstehen, warum. Danke, Kirby.)	Shakerare gli ingredienti con ghiaccio, filtrare in un bicchierino di brandy e servire.	https://www.thecocktaildb.com/images/media/drink/3gz2vw1503425983.jpg	t	2017-08-22 19:19:43
12362	Tequila Fizz	Ordinary Drink	Shake all ingredients (except ginger ale) with ice and strain into a collins glass over ice cubes. Fill with ginger ale, stir, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Ginger Ale) mit Eis schütteln und in ein Collins-Glas über Eiswürfel abseihen. Mit Ginger Ale füllen, umrühren und servieren.	Shakerare tutti gli ingredienti (eccetto ginger ale) con ghiaccio e filtrare in un bicchiere Collins con cubetti di ghiaccio.Riempi con ginger ale, mescola e servi.	https://www.thecocktaildb.com/images/media/drink/2bcase1504889637.jpg	t	2017-09-08 17:53:57
12370	Tequila Sour	Ordinary Drink	Shake tequila, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Add the half-slice of lemon, top with the cherry, and serve.	Not yet provided	Not yet provided	Tequila, Zitronensaft und Puderzucker mit Eis schütteln und in ein Whiskey-Sourglas abseihen. Die halbe Zitronenscheibe dazugeben, mit der Kirsche garnieren und servieren.	Shakerare la tequila, il succo di limone e lo zucchero a velo con ghiaccio e filtrare in un bicchiere da whisky sour.Aggiungere la mezza fetta di limone, guarnire con la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/ek0mlq1504820601.jpg	t	2017-09-07 22:43:21
11004	Whiskey Sour	Ordinary Drink	Shake with ice. Strain into chilled glass, garnish and serve. If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice.	Not yet provided	Not yet provided	Mit Eis schütteln. In ein gekühltes Glas abseihen, garnieren und servieren. Wenn Sie "On the rocks" servieren, die Zutaten in ein old-fashioned, mit Eis gefülltes Glas geben.	Shakerare con ghiaccio.Filtrare in un bicchiere freddo, guarnire e servire.Se servito "On the rocks", filtra gli ingredienti in un bicchiere vecchio stile pieno di ghiaccio.	https://www.thecocktaildb.com/images/media/drink/hbkfsh1589574990.jpg	t	2017-09-02 12:45:25
12564	Apple Karate	Cocktail	Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.	Not yet provided	Not yet provided	Alle Zutaten in das Mixer geben - abdecken und bei mittlerer Geschwindigkeit schaumig schlagen, bis sie gut vermischt sind. In ein großes, 2 mittlere oder 3 kleine Gläser füllen und geniessen.	Mettere tutti gli ingredienti nella caraffa del frullatore - coprire e montare a velocità media fino a quando non sono ben amalgamati.Versare in un bicchiere alto, 2 medi o 3 piccoli e bere.	https://www.thecocktaildb.com/images/media/drink/syusvw1468876634.jpg	f	2016-07-18 22:17:14
15330	Orange Crush	Shot	Add all ingredients to tumbler-Pour as shot	Not yet provided	Not yet provided	Geben Sie alle Zutaten in den Tumbler-Pour als Shot.	Aggiungere tutti gli ingredienti al tumbler-Versare come uno shot	https://www.thecocktaildb.com/images/media/drink/zvoics1504885926.jpg	t	2017-09-08 16:52:06
12670	Fruit Cooler	Other/Unknown	Toss strawberries with sugar, and let sit overnight in refrigerator. Cut lemon, reserve two slices. Juice the rest. Mix together the lemon juice, strawberries, apple juice, and soda water. Add slices of lemon (decor, really). In glasses, put ice cubes, and a slice of apple. Pour drink in, and serve.	Not yet provided	Not yet provided	Erdbeeren mit Zucker vermengen und im Kühlschrank über Nacht ruhen lassen. Zitrone schneiden, zwei Scheiben zurücklegen. Den Rest entsaften. Zitronensaft, Erdbeeren, Apfelsaft und Sodawasser mischen. Zitronenscheiben hinzufügen (nur Dekor). In Gläser, Eiswürfel und eine Apfelscheibe geben. Gießen Sie das Getränk hinein und servieren Sie es.	Condite le fragole con lo zucchero e lasciate riposare per una notte in frigorifero. Taglia il limone e metti da parte due fette. Spremi il resto. Mescola il succo di limone, le fragole, il succo di mela e l'acqua gassata. Aggiungi le fette di limone (giusto per decorazione).Nei bicchieri mettere i cubetti di ghiaccio e una fetta di mela.Versa la bevanda e servi. 	https://www.thecocktaildb.com/images/media/drink/i3tfn31484430499.jpg	f	2017-01-14 21:48:19
12762	Grizzly Bear	Ordinary Drink	Served over ice. Sounds nasty, but tastes great.	Not yet provided	Not yet provided	Serviert über Eis. Klingt übel, schmeckt aber super.	Mescolare tutti gli ingredienti tranne il latte in un bicchiere con ghiaccio.\r\nCompletare con il latte.\r\nServire.	https://www.thecocktaildb.com/images/media/drink/k6v97f1487602550.jpg	t	2017-02-20 14:55:50
12800	Coffee-Vodka	Homemade Liqueur	Boil water and sugar until dissolved. Turn off heat. Slowly add dry instant coffee and continue stirring. Add a chopped vanilla bean to the vodka, then combine the cooled sugar syrup and coffee solution with the vodka. Cover tightly and shake vigorously each day for 3 weeks. Strain and filter. Its also best to let the sugar mixture cool completely so the vodka won't evaporate when its added. If you like a smoother feel to the liqueur you can add about 1 teaspoon of glycerine to the finished product.	Not yet provided	Not yet provided	Wasser und Zucker kochen, bis sie gelöst sind. Schalten Sie die Heizung aus. Geben Sie langsam trockenen Instantkaffee hinzu und rühren Sie weiter. Dem Wodka eine gehackte Vanilleschote hinzufügen, dann den gekühlten Zuckersirup und die Kaffeelösung mit dem Wodka vermengen. Täglich 3 Wochen lang fest abdecken und kräftig schütteln. Abseihen und filtern. Am besten ist es auch, die Zuckermischung vollständig abkühlen zu lassen, damit der Wodka nicht verdunstet, wenn er hinzugefügt wird. Wenn Sie einen weicheren Geschmack für den Likör mögen, können Sie dem Endprodukt etwa 1 Teelöffel Glyzerin hinzufügen.	Far bollire l'acqua e lo zucchero fino a quando non saranno sciolti.\r\nSpegni il fuoco.\r\nAggiungere lentamente il caffè istantaneo secco e continuare a mescolare.\r\nAggiungere un baccello di vaniglia tritato alla vodka, quindi unire lo sciroppo di zucchero raffreddato e la soluzione di caffè con la vodka.\r\nCoprire bene e agitare vigorosamente ogni giorno per 3 settimane.\r\nFiltrare e filtrare.\r\nÈ anche meglio lasciare raffreddare completamente la miscela di zucchero in modo che la vodka non evapori quando viene aggiunta.\r\nSe ti piace una sensazione più liscia al liquore puoi aggiungere circa 1 cucchiaino di glicerina al prodotto finito.	https://www.thecocktaildb.com/images/media/drink/qvrrvu1472667494.jpg	t	2016-08-31 19:18:14
12876	Berry Deadly	Punch / Party Drink	Add all ingredients to large bowl. Stir gently. Serve chilled.	Not yet provided	Not yet provided	Alle Zutaten in eine große Schüssel geben. Vorsichtig umrühren. Kühl servieren.	Aggiungi tutti gli ingredienti in una ciotola grande. Mescola delicatamente. Servire freddo.	https://www.thecocktaildb.com/images/media/drink/zk74k21593351065.jpg	t	2016-04-28 19:17:57
13066	Bruce's Puce	Shot	In a regular-sized shot glass, layer, with a spoon or cherry, the grenadine , the Kahlua , then the Bailey's Irish cream in equal portions. It goes down really smooth ,and you don't even need a chaser. It tastes just like chocolate milk.(Really!)	Not yet provided	Not yet provided	In einem normal großen Schnapsglas, in einer Schicht, mit einem Löffel oder einer Kirsche, die Grenadine, der Kahlua, dann die Bailey's Irish Cream zu gleichen Portionen einfüllen. Es geht wirklich reibungslos ab und man braucht nicht einmal einen Chaser. Es schmeckt wie Schokoladenmilch. (Wirklich!)	In un bicchierino di dimensioni regolari, sovrapporre, con un cucchiaio o una ciliegia, la granatina, il Kahlua, quindi la crema irlandese Bailey's in porzioni uguali.\r\nVa davvero bene.\r\nHa il sapore del latte al cioccolato.\r\n(Veramente!)	https://www.thecocktaildb.com/images/media/drink/svsvqv1473344558.jpg	t	2016-09-08 15:22:38
13206	Caipirissima	Ordinary Drink	Same as Caipirinha but instead of cachaca you add WHITE RUM. It's great!!!!!!!!	Not yet provided	Not yet provided	Wie Caipirinha, aber anstelle von Cachaca fügen Sie WHITE RUM hinzu. Es ist großartig!!!!!!!!	Come la Caipirinha ma al posto della cachaca aggiungi del rum bianco.\r\nÈ ottimo!	https://www.thecocktaildb.com/images/media/drink/yd47111503565515.jpg	t	2017-08-24 10:05:15
13423	Atlantic Sun	Ordinary Drink	Shake all the ingredients, top the drink with soda. Garnish with a slice of orange.	Not yet provided	Not yet provided	Alle Zutaten schütteln, das Getränk mit Soda auffüllen. Mit einer Scheibe Orange garnieren.	Shakerare tutti gli ingredienti, completare la bevanda con la soda.\r\nGuarnire con una fetta d'arancia.	https://www.thecocktaildb.com/images/media/drink/doyxqb1493067556.jpg	t	2017-04-24 21:59:16
13497	Green Goblin	Beer	Cider First, Lager then Curacao	Not yet provided	Not yet provided	Zuerst Apfelwein, dann Lager und Curacao.	Sidro prima, Lager poi Curacao	https://www.thecocktaildb.com/images/media/drink/qxprxr1454511520.jpg	t	2016-02-03 14:58:40
13971	Irish Coffee	Coffee / Tea	Heat the coffee, whiskey and sugar; do not boil. Pour into glass and top with cream; serve hot.	Not yet provided	Not yet provided	Kaffee, Whiskey und Zucker erhitzen; nicht kochen lassen. In ein Glas geben und mit Sahne übergießen; heiß servieren.	Riscaldare il caffè, il whisky e lo zucchero; non bollire. Versare nel bicchiere e ricoprire con la panna; servito caldo.	https://www.thecocktaildb.com/images/media/drink/sywsqw1439906999.jpg	t	2015-08-18 15:09:59
14071	Belgian Blue	Soft Drink / Soda	Just pour all ingredients in the glass and stir...	Not yet provided	Not yet provided	Einfach alle Zutaten in das Glas geben und umrühren.....	Basta versare tutti gli ingredienti nel bicchiere e mescolare.	https://www.thecocktaildb.com/images/media/drink/jylbrq1582580066.jpg	t	2015-09-03 02:56:59
14095	Jamaica Kiss	Milk / Float / Shake	Fill a tumbler with ice cubes. Add a shot of Tia Maria and a shot of Jamaican light rum. Fill the tumbler with milk. Blend until smooth and serve immediately.	Not yet provided	Not yet provided	Füllen Sie einen Becher mit Eiswürfeln. Füge einen Schuss Tia Maria und einen Schuss jamaikanischen leichten Rum hinzu. Füllen Sie den Becher mit Milch. Mischen, bis sie glatt sind und sofort servieren.	Riempi un bicchiere con cubetti di ghiaccio.\r\nAggiungi un bicchierino di Tia Maria e un bicchierino di rum chiaro giamaicano.\r\nRiempi il bicchiere di latte.\r\nFrulla fino a ottenere un composto omogeneo e servi immediatamente.	https://www.thecocktaildb.com/images/media/drink/urpvvv1441249549.jpg	t	2015-09-03 04:05:49
15567	Adam Sunrise	Ordinary Drink	Fill blender up with ice. Fill half with Bartons Vodka. Put 10 tsp of sugar, add 1/2 can lemonade concentrate, fill to top with water. Blend for 60 seconds.	Not yet provided	Not yet provided	Den Mixer mit Eis auffüllen. Füllen Sie die Hälfte mit Bartons Wodka. 10 Teelöffel Zucker hinzufügen, 1/2 Dose Limonadenkonzentrat hinzufügen, mit Wasser füllen. 60 Sekunden lang mischen.	Riempi il frullatore di ghiaccio.\r\nRiempi metà con Bartons Vodka.\r\nMettere 10 cucchiaini di zucchero, aggiungere 1/2 lattina di concentrato di limonata, riempire con acqua.\r\nFrulla per 60 secondi.	https://www.thecocktaildb.com/images/media/drink/vtuyvu1472812112.jpg	t	2016-09-02 11:28:32
15813	Herbal flame	Coffee / Tea	Pour Hot Damn 100 in bottom of a jar or regular glass. Fill the rest of the glass with sweet tea. Stir with spoon, straw, or better yet a cinnamon stick and leave it in.	Not yet provided	Not yet provided	Gießen Sie Hot Damn 100 auf den Boden eines normalen Glases. Füllen Sie den Rest des Glases mit süßem Tee. Mit einem Löffel, Strohhalm oder besser noch einer Zimtstange umrühren und darin belassen.	Versa Hot Damn 100 sul fondo di un barattolo o di un bicchiere normale.\r\nRiempi il resto del bicchiere con tè dolce.\r\nMescola con un cucchiaio, una cannuccia o, meglio ancora, una stecca di cannella e lasciala dentro.	https://www.thecocktaildb.com/images/media/drink/rrstxv1441246184.jpg	t	2015-09-03 03:09:44
15841	Mojito Extra	Cocktail	Put mint with lemon juice in a glas, mash the mint with a spoon, ice, rum & fill up with club soda. Top it with Angostura.	Not yet provided	Not yet provided	Minze mit Zitronensaft in ein Glas geben, Minze mit einem Löffel zerdrücken. Eis und Rum hinzufügen und mit Soda auffüllen. Krönen Sie es mit Angostura.	Metti la menta con il succo di limone in un bicchiere, schiaccia la menta con un cucchiaio, ghiaccio, rum e riempila con la soda.\r\nCompletalo con Angostura.	https://www.thecocktaildb.com/images/media/drink/vwxrsw1478251483.jpg	t	2016-11-04 09:24:43
16047	Campari Beer	Beer	Use a 15 oz glass. Add Campari first. Fill with beer.	Not yet provided	Not yet provided	Verwenden Sie ein 15 oz Glas. Zuerst Campari hinzufügen. Mit Bier auffüllen.	Usa un bicchiere da 450ml.\r\nAggiungi prima Campari.\r\nRiempi di birra.	https://www.thecocktaildb.com/images/media/drink/xsqrup1441249130.jpg	t	2015-09-03 03:58:50
16273	Shark Attack	Cocktail	Mix lemonade and water according to instructions on back of can. If the instructions say to add 4 1/3 cans of water do so. Mix into pitcher. Add 1 1/2 cup of Vodka (Absolut). Mix well. Pour into glass of crushed ice. Excellent!	Not yet provided	Not yet provided	Limonade und Wasser nach Anleitung auf dem Dosenrücken mischen. Wenn die Anweisungen besagen, 4 1/3 Dosen Wasser hinzuzufügen, tun Sie dies. In den Krug mischen. Füge 1 1/2 Tasse Wodka (Absolut) hinzu. Gut mischen. In ein Glas zerstoßenes Eis gießen. Ausgezeichnet!	Mescola la limonata e l'acqua.\r\nAggiungi 1 tazza e mezza di Vodka (Absolut).\r\nMescolare bene.\r\nVersare in un bicchiere di ghiaccio tritato.	https://www.thecocktaildb.com/images/media/drink/uv96zr1504793256.jpg	t	2017-09-07 15:07:37
16289	Apple Grande	Punch / Party Drink	Chill both ingredients!! Mix in a tumbler and enjoy!	Not yet provided	Not yet provided	Kühlen Sie beide Zutaten herunter. In einem Becher mischen und genießen!	Chill both ingredients!! Mix in a tumbler and enjoy!	https://www.thecocktaildb.com/images/media/drink/wqrptx1472668622.jpg	t	2016-08-31 19:37:02
16951	Kioki Coffee	Coffee / Tea	Stir. Add whipped cream to the top.	Not yet provided	Not yet provided	Rühren. Die geschlagene Sahne dazugeben.	Versare tutti gli ingredienti nel bicchiere. Aggiungere la panna montata in cima. Agitare.	https://www.thecocktaildb.com/images/media/drink/uppqty1441247374.jpg	t	2015-09-03 03:29:34
16992	Pink Penocha	Punch / Party Drink	mix all ingredients into bowl keep iced stir frequently	Not yet provided	Not yet provided	Alle Zutaten in die Schüssel geben und gleichmäßig rühren.	mescolare tutti gli ingredienti nella ciotola, tenere la bevanda sempre fredda, mescolare spesso	https://www.thecocktaildb.com/images/media/drink/6vigjx1503564007.jpg	t	2017-08-24 09:40:07
17027	Zima Blaster	Ordinary Drink	Fill glass with ice. Pour in Chambord, then fill with Zima. Mix and enjoy.	Not yet provided	Not yet provided	Füllen Sie das Glas mit Eis. Gießen Sie auf Chambord, dann füllen Sie mit Zima. Mischen und genießen.	Riempi il bicchiere di ghiaccio.\r\nVersare Chambord, quindi farcire con Zima.\r\nMescola e divertiti.	https://www.thecocktaildb.com/images/media/drink/1wifuv1485619797.jpg	t	2017-01-28 16:09:57
17066	Army special	Cocktail	Pour Vodka, Gin and lime cordial into glass, and top up with crushed ice. Wait for ice to melt slightly and sip without a straw.	Not yet provided	Not yet provided	Wodka, Gin und Limetten in ein Glas geben und mit zerstoßenem Eis auffüllen. Warten Sie, bis das Eis leicht geschmolzen ist und genießen Sie es ohne Strohhalm.	Versare la vodka, il gin e lo sciroppo di lime nel bicchiere e completare con ghiaccio tritato.\r\nAspetta che il ghiaccio si sciolga leggermente e sorseggia senza cannuccia.	https://www.thecocktaildb.com/images/media/drink/55muhh1493068062.jpg	t	2017-04-24 22:07:42
17114	Ruby Tuesday	Cocktail	Pour gin and cranberry into a highball filled with ice cubes. Add grenadine and stir.	Not yet provided	Not yet provided	Gießen Sie Gin und Cranberry in einen mit Eiswürfeln gefüllten Highball. Grenadine zugeben und umrühren.	Versa gin e mirtilli rossi in un highball pieno di cubetti di ghiaccio.\r\nAggiungere la granatina e mescolare.	https://www.thecocktaildb.com/images/media/drink/qsyqqq1441553437.jpg	t	2015-09-06 16:30:37
17189	Monkey Gland	Ordinary Drink	Shake well over ice cubes in a shaker, strain into a chilled cocktail glass.	Not yet provided	Not yet provided	Im Shaker über Eiswürfel gießen, in ein gekühltes Cocktailglas abseihen.	Shakerare bene sopra i cubetti di ghiaccio in uno shaker, filtrare in una coppetta da cocktail fredda.	https://www.thecocktaildb.com/images/media/drink/94psp81504350690.jpg	t	2017-09-02 12:11:31
17196	Cosmopolitan	Cocktail	Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass. Garnish with lime wheel.	Not yet provided	Not yet provided	Alle Zutaten in den mit Eis gefüllten Cocktailshaker geben. Gut schütteln und doppelt in ein großes Cocktailglas abseihen. Mit Limettenrad garnieren.	Aggiungi tutti gli ingredienti in uno shaker pieno di ghiaccio.\r\nShakerare bene e filtrare due volte in una grande coppetta da cocktail.\r\nGuarnire con una fetta di lime.	https://www.thecocktaildb.com/images/media/drink/kpsajh1504368362.jpg	t	2017-09-02 17:06:02
17199	Golden dream	Ordinary Drink	Shake with cracked ice. Strain into glass and serve.	Not yet provided	Not yet provided	Mit gebrochenem Eis schütteln. In ein Glas abseihen und servieren.	Shakerare con ghiaccio tritato.\r\nFiltrare nel bicchiere e servire.	https://www.thecocktaildb.com/images/media/drink/qrot6j1504369425.jpg	t	2017-09-02 17:23:45
14356	Blind Russian	Milk / Float / Shake	Fill glass with ice. Add all liquers. Add milk. shake.	Not yet provided	Not yet provided	Füllen Sie das Glas mit Eis. Füge alle Liköre hinzu. Milch zugeben. Schütteln.	Aggiungi tutti i liquori.Riempi il bicchiere di ghiaccio.Aggiungi il latte.scuotere.	https://www.thecocktaildb.com/images/media/drink/wxuqvr1472720408.jpg	t	2016-09-01 10:00:08
17202	Horse's Neck	Ordinary Drink	Pour brandy and ginger ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.	Not yet provided	Not yet provided	Gießen Sie Brandy und Ginger Ale direkt in das Highball-Glas mit Eiswürfeln. Vorsichtig umrühren. Mit Zitronenschale garnieren. Auf Wunsch können Sie auch Spritzer von Angostura Bitter hinzufügen.	Versare brandy e ginger ale direttamente in un bicchiere highball con cubetti di ghiaccio.\r\nMescola delicatamente.\r\nGuarnire con la scorza di limone.\r\nSe lo desideri, aggiungi un pizzico di Angostura Bitter.	https://www.thecocktaildb.com/images/media/drink/006k4e1504370092.jpg	t	2017-09-02 17:34:52
17251	Boulevardier	Cocktail	Stir with ice, strain, garnish and serve.	Not yet provided	Not yet provided	Mit Eis verrühren, abseihen, garnieren und servieren.	Mescolare con ghiaccio, filtrare, guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/km84qi1513705868.jpg	t	2017-12-19 17:51:08
178312	Bloody Punch	Punch / Party Drink	Place the thawed strawberries in a large bowl. Mash them with a fork to ensure no large chunks.\r\n\r\nStep\r\n2\r\n\r\n \r\nIn a punch bowl or pitcher, combine mashed strawberries, lime pulp and soda. Mix well.\r\n\r\nStep\r\n3\r\n\r\n \r\nAdd blueberries and raisins. They will float and look like bugs in the punch.	Not yet provided	Not yet provided	Not yet provided	Metti le fragole in una grande ciotola. Schiacciateli con un cucchiaio per assicurarvi che non ci siano grossi pezzi.\r\nPasso 2\r\nIn una ciotola da punch o in una brocca, unisci il purè di fragole, la polpa di lime e la soda. Mescolare bene.\r\nPassaggio 3\r\nAggiungere i mirtilli e l'uvetta. Galleggeranno e sembreranno insetti nel pugno.	https://www.thecocktaildb.com/images/media/drink/5yhd3n1571687385.jpg	t	\N
178338	Pure Passion	Cocktail	Mix up all ingredients with a cocktail stirrer and serve with crushed ice with mint and edible flour if available.	Not yet provided	Not yet provided	Not yet provided	Mescolare tutti gli ingredienti con un agitatore per cocktail e servire con ghiaccio tritato con menta e farina commestibile se disponibile.	https://www.thecocktaildb.com/images/media/drink/4tymma1604179273.jpg	t	\N
178342	Gin and Soda	Cocktail	Pour the Gin and Soda water into a highball glass almost filled with ice cubes.\r\nStir well.\r\nGarnish with the lime wedge.	Not yet provided	Not yet provided	Not yet provided	Versare il Gin e l'acqua di seltz in un bicchiere highball riempito di cubetti di ghiaccio.\r\nMescolare bene.\r\nGuarnire con lo spicchio di lime.	https://www.thecocktaildb.com/images/media/drink/nzlyc81605905755.jpg	t	\N
11026	Amaretto Mist	Ordinary Drink	Pour amaretto in an old-fashioned glass over crushed ice. Add the wedge of lime and serve. (A wedge of lemon may be substituted for lime, if preferred.)	Not yet provided	Not yet provided	Gießen Sie Amaretto in ein old-fashioned Glas über Crushed Eis. Den Limettenkeil dazugeben und servieren. (Ein Stück Zitrone kann, wenn gewünscht, durch Limette ersetzt werden.)	Aggiungere lo spicchio di lime e servire.(Uno spicchio di limone può essere sostituito con il lime, se si preferisce.)Versare l'amaretto in un bicchiere vecchio stile su ghiaccio tritato.	https://www.thecocktaildb.com/images/media/drink/utpxxq1483388370.jpg	t	2017-01-02 20:19:31
11027	Amaretto Rose	Ordinary Drink	Pour amaretto and lime juice over ice in a collins glass. Fill with club soda and serve.	Not yet provided	Not yet provided	Amaretto und Limettensaft in einem Collins Glas über Eis gießen. Mit Soda auffüllen und servieren.	Versare l'amaretto e il succo di lime sul ghiaccio in un bicchiere Collins.Riempi con la soda club e servi.	https://www.thecocktaildb.com/images/media/drink/3jm41q1493069578.jpg	t	2017-04-24 22:32:59
11053	Arise My Love	Ordinary Drink	Put creme de menthe into a champagne flute. Fill with chilled champagne and serve.	Not yet provided	Not yet provided	Creme de Menthe in eine Champagnerflöte geben. Mit gekühltem Champagner füllen und servieren.	Metti la crema di menta in un flute da champagne.Riempi con champagne ghiacciato e servi.	https://www.thecocktaildb.com/images/media/drink/wyrrwv1441207432.jpg	t	2015-09-02 16:23:52
11102	Black Russian	Ordinary Drink	Pour the ingredients into an old fashioned glass filled with ice cubes. Stir gently.	Not yet provided	Not yet provided	Die Zutaten in ein old fashioned Glas mit Eiswürfeln geben. Vorsichtig umrühren.	Versare gli ingredienti in un bicchiere vecchio stile pieno di cubetti di ghiaccio. Mescola delicatamente.	https://www.thecocktaildb.com/images/media/drink/8oxlqf1606772765.jpg	t	2017-09-02 16:54:49
11001	Old Fashioned	Cocktail	Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.\r\nFill the glass with ice cubes and add whiskey.\r\n\r\nGarnish with orange twist, and a cocktail cherry.	Not yet provided	Not yet provided	Zuckerwürfel in ein old fashioned Glas geben und mit Bitterstoff sättigen, einen Schuss Wasser hinzufügen. Vermischen, bis sie sich auflösen.	Mettere la zolletta di zucchero nel bicchiere vecchio stile e saturare con il bitter, aggiungere un goccio di acqua naturale.\r\nPestare finché non si scioglie.\r\nRiempi il bicchiere con cubetti di ghiaccio e aggiungi il whisky.\r\nGuarnire con una scorza d'arancia e una ciliegina al maraschino.	https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg	t	2016-11-04 09:46:42
11119	Blue Mountain	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into an old-fashioned glass almost filled with ice cubes.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein old-fashioned Glas abseihen, das fast mit Eiswürfeln gefüllt ist.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Filtrare in un bicchiere vecchio stile quasi riempito con cubetti di ghiaccio.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/bih7ln1582485506.jpg	t	2015-09-02 17:04:13
11146	Bourbon Sling	Ordinary Drink	In a shaker half-filled with ice cubes, combine the sugar, water, lemon juice, and bourbon. Shake well. Strain well. Strain into a highball glass. Garnish with the lemon twist.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, Zucker, Wasser, Zitronensaft und Bourbon mischen. Gut schütteln. Gut durchseihen. In ein Highball-Glas abseihen. Mit der Zitronenscheibe garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci lo zucchero, l'acqua, il succo di limone e il bourbon. Filtrare in un bicchiere highball. Guarnire con la scorza di limone. Agitare bene. Filtrare bene.	https://www.thecocktaildb.com/images/media/drink/3s36ql1504366260.jpg	t	2017-09-02 16:31:00
11224	Casino Royale	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Sour Glas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti. Filtrare in un bicchiere. Agitare bene.	https://www.thecocktaildb.com/images/media/drink/3qpv121504366699.jpg	t	2017-09-02 16:38:19
11403	Gin And Tonic	Ordinary Drink	Pour the gin and the tonic water into a highball glass almost filled with ice cubes. Stir well. Garnish with the lime wedge.	Not yet provided	Not yet provided	Gießen Sie den Gin und das Tonic Water in ein Highball-Glas, das fast mit Eiswürfeln gefüllt ist. Gut umrühren. Mit dem Limettenkeil garnieren.	Versare il gin e l'acqua tonica in un bicchiere highball quasi riempito di cubetti di ghiaccio. Guarnire con lo spicchio di lime. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/z0omyp1582480573.jpg	t	2016-08-28 18:37:11
11524	Imperial Fizz	Ordinary Drink	Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer kohlensäurehaltigem Wasser) mit Eis schütteln und über zwei Eiswürfel in ein Highball-Glas abseihen. Mit kohlensäurehaltigem Wasser auffüllen, umrühren und servieren.	Shakerare tutti gli ingredienti (eccetto l'acqua gassata) con ghiaccio e filtrare in un bicchiere highball su due cubetti di ghiaccio. Riempi con acqua gassata, mescola e servi.	https://www.thecocktaildb.com/images/media/drink/zj1usl1504884548.jpg	t	2017-09-08 16:29:08
11558	Japanese Fizz	Ordinary Drink	Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer kohlensäurehaltigem Wasser) mit Eis schütteln und über zwei Eiswürfel in ein Highball-Glas abseihen. Mit kohlensäurehaltigem Wasser auffüllen, umrühren und servieren.	Shakerare tutti gli ingredienti (eccetto l'acqua gassata) con ghiaccio e filtrare in un bicchiere highball su due cubetti di ghiaccio. Riempi con acqua gassata, mescola e servi.	https://www.thecocktaildb.com/images/media/drink/37vzv11504884831.jpg	t	2017-09-08 16:33:51
11670	Lord And Lady	Ordinary Drink	Pour the rum and Tia Maria into an old-fashioned glass almost filled with ice cubes. Stir well.	Not yet provided	Not yet provided	Den Rum und Tia Maria in ein old-fashioned Glas gießen, das fast mit Eiswürfeln gefüllt ist. Gut umrühren.	Versare il rum e Tia Maria in un bicchiere vecchio stile quasi pieno di cubetti di ghiaccio. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/quwrys1468923219.jpg	t	2016-07-19 11:13:39
11798	Monkey Wrench	Ordinary Drink	Pour all of the ingredients into an old-fashioned glass almost filled with ice cubes. Stir well.	Not yet provided	Not yet provided	Alle Zutaten in ein old-fashioned Glas geben, das fast mit Eiswürfeln gefüllt ist. Gut umrühren.	Versare tutti gli ingredienti in un bicchiere vecchio stile quasi riempito di cubetti di ghiaccio.Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/bw2noj1582473243.jpg	t	2017-09-02 12:55:14
11844	New York Sour	Ordinary Drink	Shake blended whiskey, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Float claret on top. Decorate with the half-slice of lemon and the cherry and serve.	Not yet provided	Not yet provided	Gemischten Whiskey, Zitronensaft und Puderzucker mit Eis schütteln und in ein Whiskey-Sourglas abseihen. Schwimmender Bordeaux auf der Oberfläche. Mit der halben Zitronenscheibe und der Kirsche dekorieren und servieren.	Shakerare il whisky miscelato, il succo di limone e lo zucchero a velo con ghiaccio e filtrare in un bicchiere da whisky sour. Versare il vino in cima.Decorare con mezza fetta di limone e la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/61wgch1504882795.jpg	t	2017-09-08 15:59:55
12188	Sherry Eggnog	Ordinary Drink	Shake sherry, powdered sugar, and egg with ice and strain into a collins glass. Fill with milk and stir. Sprinkle nutmeg on top and serve.	Not yet provided	Not yet provided	Sherry, Puderzucker und Ei mit Eis schütteln und in ein Collins-Glas abseihen. Mit Milch füllen und umrühren. Muskatnuss darüber streuen und servieren.	Shakerare lo sherry, lo zucchero a velo e l'uovo con ghiaccio e filtrare in un bicchiere Collins.Riempi di latte e mescola.Cospargere di noce moscata e servire.	https://www.thecocktaildb.com/images/media/drink/xwrpsv1478820541.jpg	t	2016-11-10 23:29:01
12418	Turf Cocktail	Ordinary Drink	Stir all ingredients (except orange peel) with ice and strain into a cocktail glass. Add the twist of orange peel and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Orangenschale) mit Eis verrühren und in ein Cocktailglas abseihen. Orangenspirale hinzufügen und servieren.	Mescolare tutti gli ingredienti (tranne la buccia d'arancia) con ghiaccio e filtrare in una coppetta da cocktail.Aggiungere la scorza d'arancia e servire.	https://www.thecocktaildb.com/images/media/drink/utypqq1441554367.jpg	t	2015-09-06 16:46:07
12528	White Russian	Ordinary Drink	Pour vodka and coffee liqueur over ice cubes in an old-fashioned glass. Fill with light cream and serve.	Not yet provided	Not yet provided	Gießen Sie Wodka und Kaffeelikör über Eiswürfel in einem old-fashioned Glas. Mit Sahne auffüllen und servieren.	Versare la vodka e il liquore al caffè sui cubetti di ghiaccio in un bicchiere vecchio stile.Farcite con crema leggera e servite.	https://www.thecocktaildb.com/images/media/drink/vsrupw1472405732.jpg	t	2016-08-28 18:35:32
12630	Rail Splitter	Cocktail	Mix sugar syrup with lemon juice in a tall glass. Fill up with ginger ale.	Not yet provided	Not yet provided	Zuckersirup mit Zitronensaft in einem hohen Glas mischen. Mit Ginger Ale auffüllen.	Mescolare lo sciroppo di zucchero con il succo di limone in un bicchiere alto.Riempi di ginger ale.	https://www.thecocktaildb.com/images/media/drink/stsuqq1441207660.jpg	f	2015-09-02 16:27:40
12696	Lassi - Sweet	Other/Unknown	Put all ingredients into a blender and blend until nice and frothy. Serve chilled.	Not yet provided	Not yet provided	Alle Zutaten in einen Mixer geben und schaumig rühren. Kühl servieren.	Metti tutti gli ingredienti in un frullatore e frulla fino a ottenere un composto omogeneo e spumoso. Servire freddo.	https://www.thecocktaildb.com/images/media/drink/9jeifz1487603885.jpg	f	2017-02-20 15:18:05
12698	Lassi - Mango	Other/Unknown	Put it all in a blender and pour over crushed ice. You can also use other fruits like strawberries and bananas.	Not yet provided	Not yet provided	Alles in einen Mixer geben und über das zerstoßene Eis gießen. Du kannst auch andere Früchte wie Erdbeeren und Bananen verwenden.	Mettete il tutto in un frullatore e versateci sopra del ghiaccio tritato.Puoi anche usare altri frutti come fragole e banane.	https://www.thecocktaildb.com/images/media/drink/1bw6sd1487603816.jpg	f	2017-02-20 15:16:56
12724	Sweet Bananas	Milk / Float / Shake	Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.	Not yet provided	Not yet provided	Alle Zutaten in den Mixer geben - abdecken und bei mittlerer Geschwindigkeit schaumig schlagen, bis sie gut vermischt sind. In ein großes, 2 mittlere oder 3 kleine Gläser füllen und geniessen.	Mettere tutti gli ingredienti nella caraffa del frullatore - coprire e montare a velocità media fino a quando non sono ben amalgamati.Versare in un bicchiere alto, 2 medi o 3 piccoli e bere.	https://www.thecocktaildb.com/images/media/drink/sxpcj71487603345.jpg	f	2017-02-20 15:09:05
12766	Happy Skipper	Ordinary Drink	Pour Captain Morgan's Spiced Rum over ice, fill glass to top with Ginger Ale. Garnish with lime. Tastes like a cream soda. Named for the Gilligan's Island reference ("The Captain" *in* "Ginger" is a Happy Skipper!)	Not yet provided	Not yet provided	Captain Morgan's Spiced Rum über Eis in ein mit Eis gefüllten Glas giessen und mit Ginger Ale auffüllen. Mit Limette garnieren. Schmeckt wie ein Sahnesoda. Benannt nach der Referenz auf die Gilligan's Island ("The Captain" *in* "Ginger" ist ein glücklicher Skipper!)	Versare il rum speziato di Captain Morgan sul ghiaccio, riempire il bicchiere con Ginger Ale. Guarnire con il lime. Chiamato per il riferimento a Gilligan's Island ("Il capitano" * in * "Ginger" è uno skipper felice!)	https://www.thecocktaildb.com/images/media/drink/42w2g41487602448.jpg	t	2017-02-20 14:54:09
12786	Thai Iced Tea	Coffee / Tea	Combine Thai tea (i.e., the powder), boiling water, and sweetened condensed milk, stir until blended. Pour into 2 tall glasses filled with ice cubes. Garnish with mint leaves. Makes 2 servings.	Not yet provided	Not yet provided	Kombiniere Thai-Tee (Pulver), kochendes Wasser und gesüßte Kondensmilch, rühr sie um, bis sie vermischt sind. In 2 große Gläser mit Eiswürfeln füllen. Mit Minzblättern garnieren. Ergibt 2 Portionen.	Combina il tè tailandese (la polvere), l'acqua bollente e il latte condensato zuccherato, mescolare fino a quando non si saranno amalgamati.\r\nVersare in 2 bicchieri alti pieni di cubetti di ghiaccio.\r\nGuarnire con foglie di menta.\r\nPer 2 porzioni.	https://www.thecocktaildb.com/images/media/drink/trvwpu1441245568.jpg	f	2015-09-03 02:59:28
13024	Sweet Sangria	Punch / Party Drink	Dissolve the sugar in hot water and cool. Peel the citrus fruits and break into wedges. Mix the wine, sugar syrup, fruit, and Fresca in a pitcher and put in the fridge for a few hours. Serve in tall glasses with a straw.	Not yet provided	Not yet provided	Den Zucker in heißem Wasser auflösen und abkühlen lassen. Die Zitrusfrüchte schälen und stückeln. Wein, Zuckersirup, Obst und Fresca in einem Krug mischen und für einige Stunden in den Kühlschrank stellen. In hohen Gläsern mit einem Strohhalm servieren.	Sciogliere lo zucchero in acqua calda e raffreddare.\r\nPelare gli agrumi e spezzarli a spicchi.\r\nMescolare il vino, lo sciroppo di zucchero, la frutta e la Fresca in una caraffa e mettere in frigo per qualche ora.\r\nServire in bicchieri alti con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/uqqvsp1468924228.jpg	t	2016-07-19 11:30:28
13072	Popped cherry	Ordinary Drink	Served over ice in a tall glass with a popped cherry (can add more popped cherries if in the mood)!	Not yet provided	Not yet provided	Serviert über Eis in einem hohen Glas mit einer entsteinten Kirsche (kann mehr entsteinte Kirschen hinzufügen, wenn sie in der Stimmung sind)!	Servito con ghiaccio in un bicchiere alto con una ciliegia snocciolata (puoi aggiungere più ciliegie snocciolata se ne hai voglia)!	https://www.thecocktaildb.com/images/media/drink/sxvrwv1473344825.jpg	t	2016-09-08 15:27:05
13086	Atomic Lokade	Ordinary Drink	In a shaker, place lemonade, vodka, blue Curacao, and triple sec together. Shake with ice and strain into glass. Add sugar to taste	Not yet provided	Not yet provided	In einem Shaker Limonade, Wodka, blauen Curacao und Triple Sec vermengen. Mit Eis schütteln und in ein Glas abseihen. Nach Belieben Zucker hinzufügen	In uno shaker, mettere insieme la limonata, la vodka, il blue Curacao e il triple sec.\r\nShakerare con ghiaccio e filtrare nel bicchiere.\r\nAggiungere lo zucchero a piacere	https://www.thecocktaildb.com/images/media/drink/n3zfrh1493067412.jpg	t	2017-04-24 21:56:52
13190	Kool-Aid Shot	Shot	Pour into a large glass with ice and stir. Add a little cranberry juice to taste.	Not yet provided	Not yet provided	In ein großes Glas mit Eis gießen und umrühren. Nach Belieben etwas Preiselbeersaft hinzufügen.	Versare in un bicchiere grande con ghiaccio e mescolare.\r\nAggiungere un po 'di succo di mirtillo rosso a piacere.	https://www.thecocktaildb.com/images/media/drink/fegm621503564966.jpg	t	2017-08-24 09:56:06
13499	Oreo Mudslide	Ordinary Drink	Blend Vodka, Kahlua, Bailey's, ice-cream and the Oreo well in a blender. Pour into a large frosted glass. Garnish with whipped cream and a cherry.	Not yet provided	Not yet provided	Mischen Sie Wodka, Kahlua, Bailey's, Eis und den Oreo gut in einem Mixer. In ein großes mattiertes Glas geben. Mit Schlagsahne und einer Kirsche garnieren.	Mescola bene Vodka, Kahlua, Baileys, gelato e un oreo in un frullatore. Versare in un grande bicchiere. Guarnire con panna montata e una ciliegia.	https://www.thecocktaildb.com/images/media/drink/tpwwut1468925017.jpg	t	2016-07-19 11:43:37
13683	Apple Slammer	Shot	pour into a shot glass and present to consumer, they are expected to cover the top of the shotglass with thier palm, raise the glass, slam it on the bar and the swallow quickly.	Not yet provided	Not yet provided	in ein Schnapsglas gießen und dem Verbraucher präsentieren, dabei wird erwartet, dass sie die Oberseite des Schnapsglases mit ihrer Handfläche bedecken, das Glas anheben, es auf den Tisch schlagen und schnell schlucken.	Versa in un bicchiere da shot tutti gli ingredienti. Agitare bene	https://www.thecocktaildb.com/images/media/drink/09yd5f1493069852.jpg	t	2017-04-24 22:37:32
13731	Amaretto Sour	Ordinary Drink	Shake and strain. Garnish with a cherry and an orange slice.	Not yet provided	Not yet provided	Schütteln und abseihen. Mit einer Kirsch- und einer Orangenscheibe garnieren.	Agitare e versare.\r\nGuarnire con una ciliegia e una fetta d'arancia.	https://www.thecocktaildb.com/images/media/drink/xnzc541493070211.jpg	t	2017-04-24 22:43:32
13825	Midnight Manx	Ordinary Drink	Fill a mixer with ice and add Baileys, Kahlua, Goldshlager, and cream. Shake for 5 seconds and Strain into a double rocks glass filled with ice. Add chilled coffee Stir and enjoy!	Not yet provided	Not yet provided	Füllen Sie einen Mixer mit Eis und fügen Sie Baileys, Kahlua, Goldshlager und Sahne hinzu. 5 Sekunden schütteln und in ein mit Eis gefülltes Doppelglas abseihen. Fügen Sie gekühlten Kaffee hinzu Rühren und genießen Sie!	Riempi un mixing glass con ghiaccio e aggiungi Baileys, Kahlua, Goldschlager e panna. Shakerare per 5 secondi e filtrare in un bicchiere double rocks pieno di ghiaccio. Aggiungi caffè freddo Mescola e divertiti!	https://www.thecocktaildb.com/images/media/drink/uqqurp1441208231.jpg	t	2015-09-02 16:37:11
14053	Mother's Milk	Shot	Shake over ice, strain. Serves two.	Not yet provided	Not yet provided	Über Eis schütteln, abseihen. Für zwei Personen.	Shakerare sul ghiaccio, filtrare.\r\nPer due persone.	https://www.thecocktaildb.com/images/media/drink/7stuuh1504885399.jpg	t	2017-09-08 16:43:19
14167	Vodka Martini	Ordinary Drink	Shake the vodka and vermouth together with a number of ice cubes, strain into a cocktail glass, add the olive and serve.	Not yet provided	Not yet provided	Wodka und Wermut zusammen mit einer Reihe von Eiswürfeln schütteln, in ein Cocktailglas abseihen, die Olive dazugeben und servieren.	Shakerare la vodka e il vermouth insieme ad alcuni cubetti di ghiaccio, filtrare in una coppetta da cocktail, aggiungere l'oliva e servire.	https://www.thecocktaildb.com/images/media/drink/qyxrqw1439906528.jpg	t	2015-08-18 15:02:08
14688	Freddy Kruger	Shot	make it an ample size shot!!	Not yet provided	Not yet provided	Mach es zu einer großzügigen Dosis!!!!	Uno shot da veri temerari!	https://www.thecocktaildb.com/images/media/drink/tuppuq1461866798.jpg	t	2016-04-28 19:06:38
14842	Midnight Mint	Cocktail	If available, rim cocktail (Martini) glass with sugar syrup then dip into chocolate flakes or powder. Add ingredients into shaker with ice. Shake well then strain into cocktail glass.	Not yet provided	Not yet provided	Wenn verfügbar, Cocktailglas (Martini) mit Zuckersirup, dann in Schokoladenflocken oder Pulver eintauchen. Zutaten in den Shaker mit Eis geben. Gut schütteln und dann in ein Cocktailglas abseihen.	Se disponibile, bordare il bicchiere da cocktail con sciroppo di zucchero e immergerlo in scaglie di cioccolato o polvere.\r\nAggiungi gli ingredienti in uno shaker con ghiaccio.\r\nShakerare bene e filtrare in una coppetta da cocktail.	https://www.thecocktaildb.com/images/media/drink/svuvrq1441208310.jpg	t	2015-09-02 16:38:30
15026	Kiss me Quick	Ordinary Drink	mix in the glass	Not yet provided	Not yet provided	Im Glas mischen.	Versare tutti gli ingredienti in un bicchiere, mescola bene.	https://www.thecocktaildb.com/images/media/drink/m7iaxu1504885119.jpg	t	2017-09-08 16:38:39
15086	Limona Corona	Beer	Open the Corona. Fill the empty space in the neck in the bottle with the rum. The bottle should be filled to the top. Plug the bottle with your thumb or the palm of your hand. Turn the bottle upside-down so the rum and beer mix. Turn the bottle rightside-up, unplug, and drink.	Not yet provided	Not yet provided	Öffne die Corona. Füllen Sie den leeren Platz im Hals in der Flasche mit dem Rum. Die Flasche sollte bis zum Anschlag gefüllt werden. Die Flasche mit dem Daumen oder der Handfläche verschließen. Drehen Sie die Flasche auf den Kopf, damit sich Rum und Bier vermischen. Drehen Sie die Flasche nach oben, ziehen Sie den Daumen heraus und trinken Sie.	Apri la Corona.\r\nRiempi lo spazio vuoto nel collo della bottiglia con il rum.\r\nLa bottiglia dovrebbe essere riempita fino in fondo.\r\nCopri la bottiglia con il pollice o il palmo della mano.\r\nCapovolgi la bottiglia in modo che rum e birra si mescolino.\r\nCapovolgi la bottiglia, drink pronto	https://www.thecocktaildb.com/images/media/drink/wwqrsw1441248662.jpg	t	2015-09-03 03:51:02
15184	San Francisco	Ordinary Drink	Take a tall glass and put in a few ice cubes, fill the vodka over it and fill with juice then the "creme", to end fill in the grenadine but very carefully at the side of the glass so it will lay down in the bottom. garnish with orange and strawberry.	Not yet provided	Not yet provided	Nimm ein hohes Glas und lege ein paar Eiswürfel hinein, fülle den Wodka darüber und fülle ihn mit Saft, dann die "Creme", um die Grenadine einzufüllen, aber sehr vorsichtig an der Seite des Glases, damit sie sich am Boden niederlässt. Garniere mit Orange und Erdbeere.	Prendete un bicchiere alto e mettete qualche cubetto di ghiaccio, riempiteci sopra la vodka e riempite con il succo poi la "crema", per finire riempite la granatina ma con molta attenzione a lato del bicchiere in modo che si adagi sul fondo .\r\nGuarnire con arancia e fragola.	https://www.thecocktaildb.com/images/media/drink/szmj2d1504889961.jpg	t	2017-09-08 17:59:21
15226	Space Odyssey	Ordinary Drink	Fill glass with ice and add shots of Bacardi and Malibu. Add splash of pineapple juice and top with orange juice. Add grenadine for color and garnish with cherries.	Not yet provided	Not yet provided	Füllen Sie das Glas mit Eis und fügen Sie Spritzer von Bacardi und Malibu hinzu. Einen Spritzer Ananassaft dazugeben und mit Orangensaft auffüllen. Grenadine als Farbstoff beigeben und mit Kirschen garnieren.	Riempi il bicchiere con ghiaccio e aggiungi in dei bicchieri un pò di Bacardi e Malibu.\r\nAggiungere una spruzzata di succo d'ananas e guarnire con succo d'arancia.\r\nAggiungere la granatina per colorare e guarnire con le ciliegie.	https://www.thecocktaildb.com/images/media/drink/vxtjbx1504817842.jpg	t	2017-09-07 21:57:23
15403	Vodka Russian	Ordinary Drink	Mix it as a ordinary drink .	Not yet provided	Not yet provided	Mischen Sie es wie ein gewöhnliches Getränk.	Versare tutti gli ingredienti in un bicchiere, mescola bene.	https://www.thecocktaildb.com/images/media/drink/rpttur1454515129.jpg	t	2016-02-03 15:58:49
15743	Fuzzy Asshole	Coffee / Tea	fill coffe mug half full of coffee. Fill the other half full of Peach Schnapps. Stir and drink while hot.	Not yet provided	Not yet provided	Füllen Sie die Kaffeetasse halb voll mit Kaffee. Füllen Sie die andere Hälfte mit Pfirsichschnaps. Umrühren und trinken, solange es heiß ist.	Versa in un bicchiere da cappuccino metà caffè.\r\nRiempi l'altra metà di Schnapps alla pesca.\r\nMescola e bevi finché è caldo.	https://www.thecocktaildb.com/images/media/drink/wrvpuu1472667898.jpg	t	2016-08-31 19:24:58
15849	Apricot punch	Punch / Party Drink	Pour all ingrediants into a large punch bowl. Add ice and 4 oranges that are peeled and divided.	Not yet provided	Not yet provided	Alle Zutaten in eine große Bowle geben. Füge Eis und 4 Orangen hinzu, die geschält und geteilt sind.	Versare tutti gli ingredienti in una grande ciotola da punch.\r\nAggiungere il ghiaccio e 4 arance sbucciate e divise.	https://www.thecocktaildb.com/images/media/drink/tuxxtp1472668667.jpg	t	2016-08-31 19:37:47
16998	Bruised Heart	Shot	Pour all ingredients in a mixing tin over ice, stir, and strain into shot glass	Not yet provided	Not yet provided	Alle Zutaten in einem Mixbecher über Eis gießen, umrühren und in ein Schnapsglas abseihen.	Versare tutti gli ingredienti in un cocktail shaker con del ghiaccio, mescolare e filtrare in un bicchierino da shot	https://www.thecocktaildb.com/images/media/drink/7if5kq1503564209.jpg	t	2017-08-24 09:43:29
17015	Irish Russian	Beer	Add the ingredients in the order listed in the recipe. Care must be taken when adding the Guinness to prevent an excess of foam. Do Not add ice.	Not yet provided	Not yet provided	Fügen Sie die Zutaten gemäß der im Rezept angegebenen Reihenfolge hinzu. Beim Hinzufügen des Guinness ist Vorsicht geboten, um einen Schaumüberschuss zu vermeiden. Füge kein Eis hinzu.	Aggiungere gli ingredienti nell'ordine indicato\r\nBisogna fare attenzione quando si aggiunge la Guinness per evitare un eccesso di schiuma.\r\nNon aggiungere ghiaccio.	https://www.thecocktaildb.com/images/media/drink/swqurw1454512730.jpg	t	2016-02-03 15:18:50
17060	24k nightmare	Shot	Add over ice,shake and pour.	Not yet provided	Not yet provided	Über das Eis geben, schütteln und eingiessen.	Aggiungere gli ingredienti dopo aver versato un po’ di ghiaccio, agitare e versare.	https://www.thecocktaildb.com/images/media/drink/yyrwty1468877498.jpg	t	2016-07-18 22:31:38
17079	Baby Guinness	Shot	Pour Kahlua, almost filling shot glass. Then, carefully pour Baileys, using wall of shot glass. This will give the "Guinness" its "head".	Not yet provided	Not yet provided	Gießen Sie Kahlua und füllen Sie das Schnapsglas. Dann gießen Sie vorsichtig Baileys am Rand des Schnapsglases ein. Dies gibt dem "Guinness" seinen "Sinn".	Versare Kahlua, riempiendo quasi il bicchierino.\r\nQuindi, versare accuratamente Baileys, utilizzando una parete di un bicchiere da shot.\r\nQuesto darà alla "Guinness" la sua "testa".	https://www.thecocktaildb.com/images/media/drink/rvyvxs1473482359.jpg	t	2016-09-10 05:39:19
11022	Allies Cocktail	Ordinary Drink	Stir all ingredients with ice, strain contents into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, Inhalt in ein Cocktailglas abseihen und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare il contenuto in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/qvprvp1483388104.jpg	t	2017-01-02 20:15:04
17181	Dirty Martini	Cocktail	Pour the vodka, dry vermouth and olive brine into a cocktail shaker with a handful of ice and shake well.\r\nRub the rim of a martini glass with the wedge of lemon.\r\nStrain the contents of the cocktail shaker into the glass and add the olive.\r\nA dirty Martini contains a splash of olive brine or olive juice and is typically garnished with an olive.	Not yet provided	Not yet provided	Wodka, trockenen Wermut und Olivensole in einen Cocktailshaker mit einer Handvoll Eis geben und gut schütteln.	Versare la vodka, il vermouth secco e la salamoia in uno shaker con una manciata di ghiaccio e agitare bene.\r\nStrofina il bordo di un bicchiere da martini con la fetta di limone.\r\nFiltrare il contenuto dello shaker nel bicchiere e aggiungere l'oliva.\r\nUn Martini sporco contiene una spruzzata di salamoia o succo di oliva ed è tipicamente guarnito con un'oliva.	https://www.thecocktaildb.com/images/media/drink/vcyvpq1485083300.jpg	t	2017-01-22 11:08:20
17188	Mary Pickford	Cocktail	Shake and strain into a chilled large cocktail glass	Not yet provided	Not yet provided	Schütteln und abseihen in ein gekühltes großes Cocktailglas.	Shakerare e filtrare in una grande coppetta da cocktail fredda	https://www.thecocktaildb.com/images/media/drink/f9erqb1504350557.jpg	t	2017-09-02 12:09:17
17223	Abbey Martini	Cocktail	Put all ingredients into a shaker and mix, then strain contents into a chilled cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten in einen Shaker geben und mischen, dann den Inhalt in ein gekühltes Cocktailglas abseihen.	Mettere tutti gli ingredienti in uno shaker e mescolare, quindi filtrare il contenuto in una coppetta da cocktail fredda.	https://www.thecocktaildb.com/images/media/drink/2mcozt1504817403.jpg	t	2017-09-07 21:50:03
17242	Bombay Cassis	Cocktail	Add the Bombay Sapphire, Crème de Cassis and lime juice to a balloon glass and swirl well to mix.\r\nFill the glass with good quality cubed ice.\r\nTop up with chilled and freshly opened Fever-Tree Ginger Beer.\r\nGently stir to combine, top with a gently squeezed lime wedge and finish with a fresh ginger slice.	Not yet provided	Not yet provided	Den Bombay Saphir, Creme de Cassis und Limettensaft in ein Ballonglas geben und gut verrühren. Füllen Sie das Glas mit Eiswürfel. Mit gekühltem und frisch geöffnetem Fever-Tree Ginger Bier auffüllen. Zum Mischen leicht umrühren, mit einem leicht ausgedrückten Limettenkeil belegen und mit einer frischen Ingwerscheibe abschließen.	Aggiungere lo zaffiro Bombay, la Crème de Cassis e il succo di lime in un bicchiere a palloncino e agitare bene per mescolare.\r\nRiempi il bicchiere con cubetti di ghiaccio di buona qualità.\r\nRabboccare con Fever-Tree Ginger Beer fresca e fresca.\r\nMescolare delicatamente per unire, guarnire con uno spicchio di lime leggermente strizzato e finire con una fetta di zenzero fresco.	https://www.thecocktaildb.com/images/media/drink/h1e0e51510136907.jpg	t	2017-11-08 10:28:28
17239	Hunter's Moon	Cocktail	Put the Bombay Sapphire, Martini Bianco, sugar syrup & blackberries in a cocktail shaker with lots of ice and shake vigorously before pouring into a balloon glass, topping up with lemonade and garnishing with a wedge of orange.	Not yet provided	Not yet provided	Den Bombay Saphir, Martini Bianco, Zuckersirup & Brombeeren in einen Cocktailshaker mit viel Eis geben und kräftig schütteln, bevor man sie in ein Ballonglas gießt, mit Limonade auffüllt und mit einem Stück Orange garniert.	Mettere il Bombay Sapphire, il Martini Bianco, lo sciroppo di zucchero e le more in uno shaker con molto ghiaccio e agitare energicamente prima di versare in un bicchiere a palloncino, rabboccare con limonata e guarnire con uno spicchio di arancia.	https://www.thecocktaildb.com/images/media/drink/t0iugg1509556712.jpg	t	2017-11-01 17:18:32
17245	Rosemary Blue	Cocktail	1) Add the Bombay Sapphire, Blue Curacao, rosemary sprig and gently squeezed lemon wedge to a balloon glass. Swirl well to combine.\r\n2) Fill with cubed ice and top with the Fever-Tree Light Tonic Water.\r\n3) Gently fold with a bar spoon to mix.	Not yet provided	Not yet provided	Fügen Sie den Bombay Saphir, Blauen Curacao, Rosmarinzweig und den sanft ausgedrückten Zitronenkeil in ein Ballonglas ein. Gut mischen. Mit Eiswürfel füllen und mit dem Fever-Tree Light Tonic Water auffüllen. Vorsichtig mit einem Barlöffel zum Mischen verrühren.	1) Aggiungere il Bombay Sapphire, il Blue Curacao, il rametto di rosmarino e uno spicchio di limone leggermente spremuto in un bicchiere a palloncino.\r\nAgita bene per combinare.\r\n2) Riempire con ghiaccio a cubetti e ricoprire con l'acqua tonica Fever-Tree Light.\r\n3) Piegare delicatamente con un cucchiaio da bar per mescolare.	https://www.thecocktaildb.com/images/media/drink/qwc5f91512406543.jpg	t	2017-12-04 16:55:43
17247	The Last Word	Cocktail	Shake with ice and strain into a cocktail glass.	Not yet provided	Not yet provided	Mit Eis schütteln und in ein Cocktailglas abseihen.	Shakerare con ghiaccio e filtrare in una coppetta da cocktail.	https://www.thecocktaildb.com/images/media/drink/91oule1513702624.jpg	t	2017-12-19 16:57:04
178321	Amaretto fizz	Cocktail	Mix Amaretto, orange juice and sparkling wine in a jug. Add a strip orange zest to each glass, if you like.	Not yet provided	Not yet provided	Not yet provided	Mescola in una caraffa amaretto, succo d'arancia e spumante. Aggiungi una striscia di scorza d'arancia in ogni bicchiere, se ti piace.	https://www.thecocktaildb.com/images/media/drink/92h3jz1582474310.jpg	t	\N
178325	Aperol Spritz	Cocktail	Put a couple of cubes of ice into 2 glasses and add a 50 ml measure of Aperol to each. Divide the prosecco between the glasses and then top up with soda, if you like.	Not yet provided	Not yet provided	Not yet provided	Mettere un paio di cubetti di ghiaccio in 2 bicchieri e aggiungere a ciascuno un misurino da 50 ml di Aperol. Dividi il prosecco tra i bicchieri e poi rabbocca con la soda, se ti piace.	https://www.thecocktaildb.com/images/media/drink/iloasq1587661955.jpg	t	\N
178328	Funk and Soul	Cocktail	Mix all ingredients together and strain into a Collins glass. Use Jamaican rum where possible for a more authentic taste.	Not yet provided	Not yet provided	Not yet provided	Mescolare tutti gli ingredienti insieme e filtrare in un bicchiere Collins. Usa rum giamaicano, ove possibile, per un gusto più autentico.	https://www.thecocktaildb.com/images/media/drink/qtv83q1596015790.jpg	t	\N
178331	Bounty Hunter	Cocktail	Add the spirits into a shaker as well as the pineapple juice, strain into a Margarita glass. Top with Prosecco and garnish with Blueberries.	Not yet provided	Not yet provided	Not yet provided	Aggiungere gli alcolici in uno shaker e il succo d'ananas, filtrare in un bicchiere Margarita. Completare con prosecco e guarnire con mirtilli.	https://www.thecocktaildb.com/images/media/drink/t8bgxl1596018175.jpg	t	\N
12138	Scotch Cobbler	Ordinary Drink	Pour scotch, brandy, and curacao over ice in an old-fashioned glass. Add the orange slice, top with the mint sprig, and serve.	Not yet provided	Not yet provided	Gießen Sie Scotch, Brandy und Curacao in einem old-fashioned Glas über Eis. Die Orangenscheibe dazugeben, mit dem Minzzweig garnieren und servieren.	Versa scotch, brandy e curacao sul ghiaccio in un bicchiere vecchio stile. Aggiungere la fetta d'arancia, guarnire con il rametto di menta e servire.	https://www.thecocktaildb.com/images/media/drink/1q7coh1504736227.jpg	t	2017-09-06 23:17:07
178348	Winter Paloma	Cocktail	Everyone’s favourite Paloma gets a delicious Indian makeover. Tequila reposado infused with “Timur Pepper” which has citrusy & grapefruit notes and is grown at the foothills of Himalaya. It also produces a slightly numbing and tingling sensation on your lip when consumed. We have also spiced up the fresh grapefruit juice with the warming spice blend from Himalaya. The combination of all these interesting elements has allowed us to elevate your Paloma sipping experience.	Not yet provided	Not yet provided	Not yet provided	Il Paloma preferito da tutti riceve un delizioso restyling indiano. Tequila reposado infuso con "Timur Pepper" che ha note agrumate e di pompelmo ed è coltivato ai piedi dell'Himalaya. Produce anche una sensazione leggermente intorpidita e formicolio sul labbro quando viene consumato. Abbiamo anche aromatizzato il succo di pompelmo fresco con la calda miscela di spezie dell'Himalaya. La combinazione di tutti questi elementi interessanti ci ha permesso di elevare la tua esperienza di sorseggiare Paloma.	https://www.thecocktaildb.com/images/media/drink/u5f0pz1614007748.jpg	t	\N
17834	Abbey Cocktail	Ordinary Drink	Shake all ingredients (except for the cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer der Kirsche) mit Eis schütteln und in ein Cocktailglas abseihen. Mit der Kirsche verzieren und servieren.	Shakerare tutti gli ingredienti (tranne la ciliegia) con ghiaccio e filtrare in una coppetta da cocktail. Completare con la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/mr30ob1582479875.jpg	t	2016-09-02 11:19:28
11019	Alfie Cocktail	Ordinary Drink	Combine and shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis mischen und schütteln, in ein Cocktailglas abseihen und servieren.	Unire e scuotere tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/ypxsqy1483387829.jpg	t	2017-01-02 20:10:29
11118	Blue Margarita	Ordinary Drink	Rub rim of cocktail glass with lime juice. Dip rim in coarse salt. Shake tequila, blue curacao, and lime juice with ice, strain into the salt-rimmed glass, and serve.	Not yet provided	Not yet provided	Den Rand des Cocktailglases mit Limettensaft einreiben. Den Rand in grobes Salz tauchen. Tequila, blauen Curacao und Limettensaft mit Eis schütteln, in das mit Salz umhüllte Glas abseihen und servieren.	Strofinare il bordo del bicchiere da cocktail con succo di lime. Immergere il bordo nel sale grosso. Shakerare tequila, blue curacao e succo di lime con ghiaccio, filtrare nel bicchiere bordato di sale e servire.	https://www.thecocktaildb.com/images/media/drink/bry4qh1582751040.jpg	t	2015-08-18 14:51:53
11128	Boston Sidecar	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/qzs5d11504365962.jpg	t	2017-09-02 16:26:02
11157	Brandy Cobbler	Ordinary Drink	In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the brandy. Stir well. Garnish with the cherry and the orange and lemon slices.	Not yet provided	Not yet provided	In einem old-fashioned Glas den Zucker in der Soda auflösen. Füge Crushed Ice hinzu, bis das Glas fast voll ist. Füge den Brandy hinzu. Gut umrühren. Mit der Kirsche und den Orangen- und Zitronenscheiben garnieren.	In un bicchiere vecchio stile, sciogli lo zucchero nella soda club. Aggiungi il brandy. Aggiungere il ghiaccio tritato fino a quando il bicchiere è quasi pieno. Guarnire con la ciliegia e le fettine di arancia e limone. Mescolare bene	https://www.thecocktaildb.com/images/media/drink/5xgu591582580586.jpg	t	2015-08-13 12:37:16
11255	Clove Cocktail	Ordinary Drink	Stir all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, in ein Cocktailglas abseihen und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/qxvtst1461867579.jpg	t	2016-04-28 19:19:39
11634	Lady Love Fizz	Ordinary Drink	Shake all ingredients (except carbonated water) with ice and strain into a cocktail glass over two ice cubes. Fill with carbonated water, stir, and serve.	Not yet provided	Not yet provided	Not yet provided	Shakerare tutti gli ingredienti (tranne l'acqua gassata) con ghiaccio e filtrare in un bicchiere da cocktail su due cubetti di ghiaccio. Riempite con acqua gassata, mescolate e servite.	https://www.thecocktaildb.com/images/media/drink/20d63k1504885263.jpg	t	2017-09-08 16:41:03
11959	Poppy Cocktail	Ordinary Drink	Shake ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Die Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/cslw1w1504389915.jpg	t	2017-09-02 23:05:15
11965	Port Wine Flip	Ordinary Drink	Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Muskatnuss) mit Eis schütteln und in ein Whiskey-Sourglas abseihen. Muskatnuss darüber streuen und servieren.	Shakerare tutti gli ingredienti (tranne la noce moscata) con ghiaccio e filtrare in un bicchiere da whisky sour. Cospargere di noce moscata e servire.	https://www.thecocktaildb.com/images/media/drink/vrprxu1441553844.jpg	t	2015-09-06 16:37:24
12057	Royal Gin Fizz	Ordinary Drink	Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer kohlensäurehaltigem Wasser) mit Eis schütteln und über zwei Eiswürfel in ein Highball-Glas sieben. Mit kohlensäurehaltigem Wasser auffüllen, umrühren und servieren.	Shakerare tutti gli ingredienti (eccetto l'acqua gassata) con ghiaccio e filtrare in un bicchiere highball su due cubetti di ghiaccio. Riempi con acqua gassata, mescola e servi	https://www.thecocktaildb.com/images/media/drink/pe1x1c1504735672.jpg	t	2017-09-06 23:07:52
12087	Rum Milk Punch	Ordinary Drink	Shake all ingredients (except nutmeg) with ice and strain into a collins glass. Sprinkle nutmeg on top and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Muskatnuss) mit Eis schütteln und in ein Collins-Glas abseihen. Muskatnuss darüber streuen und servieren.	Shakerare tutti gli ingredienti (tranne la noce moscata) con ghiaccio e filtrare in un bicchiere Collins. Cospargere di noce moscata e servire.	https://www.thecocktaildb.com/images/media/drink/w64lqm1504888810.jpg	t	2017-09-08 17:40:10
12562	Alice Cocktail	Cocktail	Shake well, strain into a large cocktail glass.	Not yet provided	Not yet provided	Gut schütteln, in ein großes Cocktailglas abseihen.	Shakerare bene, filtrare in una coppetta da cocktail capiente.	https://www.thecocktaildb.com/images/media/drink/qyqtpv1468876144.jpg	f	2016-07-18 22:09:04
12728	Yoghurt Cooler	Other/Unknown	Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up. Note: Use lots of ice in this one - great on hot days! To add ice: Remove the center of the cover while the blender is on - drop 3 or 4 ice cubs and blend until they're completely crushed.	Not yet provided	Not yet provided	Alle Zutaten in den Mixer geben - abdecken und bei mittlerer Geschwindigkeit schaumig schlagen, bis sie gut vermischt sind. In ein großes, 2 mittlere oder 3 kleine Gläser füllen und geniessen. Hinweis: Verwenden Sie viel Eis in diesem Gerät - ideal an heißen Tagen! Um Eis hinzuzufügen: Entfernen Sie die Mitte der Abdeckung, während der Mixer eingeschaltet ist - lassen Sie 3 oder 4 Eiswürfel fallen und mischen Sie sie, bis sie vollständig zerkleinert sind.	Mettere tutti gli ingredienti nella caraffa del frullatore - coprire e montare a velocità media fino a quando non sono ben amalgamati.Nota: usa molto ghiaccio in questo - ottimo nelle giornate calde!Versare in un bicchiere alto, 2 medi o 3 piccoli e bere.Per aggiungere il ghiaccio: rimuovere il centro del coperchio mentre il frullatore è acceso - far cadere 3 o 4 cubetti di ghiaccio e frullare fino a quando non saranno completamente schiacciati.	https://www.thecocktaildb.com/images/media/drink/trttrv1441254466.jpg	f	2015-09-03 05:27:46
12780	Spiking coffee	Coffee / Tea	Incidentally, a pinch of cinnamon is indeed a nice addition to coffee but true heaven is a cardamom seed. Of course, you serve it in a coffee mug.	Not yet provided	Not yet provided	Übrigens ist eine Prise Zimt in der Tat eine schöne Ergänzung zum Kaffee, aber der wahre Himmel ist ein Kardamomkern. Natürlich servieren Sie es in einer Kaffeetasse.	Per inciso, un pizzico di cannella è davvero una bella aggiunta al caffè. Servire in una tazza da caffè.	https://www.thecocktaildb.com/images/media/drink/isql6y1487602375.jpg	f	2017-02-20 14:52:55
12798	Coffee Liqueur	Homemade Liqueur	Combine coffee, sugar and water. Simmer 1 hour and let cool. Add vanilla and vodka. Age in sealed jar 2 to 3 weeks.	Not yet provided	Not yet provided	Kaffee, Zucker und Wasser mischen. 1 Stunde köcheln lassen und abkühlen lassen. Füge Vanille und Wodka hinzu. Im verschlossenen Glas 2 bis 3 Wochen reifen lassen.	Unisci caffè, zucchero e acqua. Fate bollire 1 ora e lasciate raffreddare. Aggiungi la vaniglia e la vodka. Invecchiare in un barattolo sigillato da 2 a 3 settimane.	https://www.thecocktaildb.com/images/media/drink/ryvtsu1441253851.jpg	t	2015-09-03 05:17:31
13328	Chocolate Milk	Shot	Put the milk in the bottom, pour the Liquer on top and add the dash of amaretto. Do not mix. SLAM IT!	Not yet provided	Not yet provided	Die Milch auf den Boden geben, den Likör darüber gießen und den Spritzer Amaretto hinzufügen. Nicht mischen. SLAM IT!	Mettere sul fondo il latte, versarvi sopra il liquore e unire la spruzzata di amaretto.\r\nNon mescolare.	https://www.thecocktaildb.com/images/media/drink/j6q35t1504889399.jpg	t	2017-09-08 17:49:59
13861	Nutty Irishman	Milk / Float / Shake	Serve over ice	Not yet provided	Not yet provided	Auf Eis servieren	Servire con ghiaccio	https://www.thecocktaildb.com/images/media/drink/xspupx1441248014.jpg	t	2015-09-03 03:40:14
14482	Darkwood Sling	Soft Drink / Soda	There are many good cherry liqueurs you can use, but I prefere Heering. Add one share of the liqueur. Then you add one share of Soda. For a sour sling use Tonic (most people prefer the drink without Tonic). Afterwards you fill the glass with Orange Juice and ice cubes.	Not yet provided	Not yet provided	Es gibt viele gute Kirschliköre, die Sie verwenden können, aber ich bevorzuge Heering. Eine Portion des Likörs nehmen. Dann fügen Sie eine Portion Soda hinzu. Für eine saure Note verwenden Sie Tonic (die meisten Menschen bevorzugen das Getränk ohne Tonic). Danach füllen Sie das Glas mit Orangensaft und Eiswürfeln.	Ci sono molti buoni liquori alla ciliegia che puoi usare, ma preferisco Heering.\r\nAggiungi una parte del liquore.\r\nQuindi aggiungi una parte di acqua di seltz.\r\nPer un drink più acido ( sour )  usa il tonico (la maggior parte delle persone preferisce la bevanda senza tonico).\r\nSuccessivamente si riempie il bicchiere con succo d'arancia e cubetti di ghiaccio.	https://www.thecocktaildb.com/images/media/drink/sxxsyq1472719303.jpg	t	2016-09-01 09:41:43
14586	Orange Push-up	Ordinary Drink	Combine liquors in a blender. Add a half scoop of ice and blend. Garnish with an orange and cherry flag. So good it will melt in your mouth!!!	Not yet provided	Not yet provided	Mische Liköre in einem Mixer. Eine halbe Kugel Eis hinzufügen und untermischen. Mit einer Orange- und Kirschfahne garnieren. So gut, dass es in deinem Mund schmilzt.	Unisci i liquori in un frullatore.\r\nAggiungere mezzo misurino di ghiaccio e frullare.\r\nGuarnire con una bandiera di arancia e ciliegia.	https://www.thecocktaildb.com/images/media/drink/mgf0y91503565781.jpg	t	2017-08-24 10:09:41
14594	Zizi Coin-coin	Punch / Party Drink	Pour 5cl of Cointreau on ice, add 2cl of fresh lemon (or lime) juice, stir gently, and finally add slices of lemon/lime in glass.	Not yet provided	Not yet provided	5 cl Cointreau auf Eis gießen, 2 cl frischen Zitronen- (oder Limetten-) Saft hinzufügen, leicht umrühren und schließlich Zitronen-/Limettenscheiben in ein Glas geben.	Versare 5 cl di Cointreau su ghiaccio, aggiungere 2 cl di succo di limone (o lime) fresco, mescolare delicatamente e infine aggiungere fettine di limone / lime in un bicchiere.	https://www.thecocktaildb.com/images/media/drink/0fbo2t1485620752.jpg	t	2017-01-28 16:25:52
15194	Amaretto Shake	Ordinary Drink	Combine all ingredients in a blender and blend at high speed until smooth. Serve in chilled glass garnished with bittersweet chocolate shavings.	Not yet provided	Not yet provided	Alle Zutaten in einem Mixer mischen und mit hoher Geschwindigkeit zu einem geschmeidigen Ganzen verarbeiten. Servieren Sie es in gekühltem Glas, garniert mit bittersüßen Schokoladenraspeln.	Unisci tutti gli ingredienti in un frullatore e frulla ad alta velocità fino a che non diventi liscio.\r\nServire in un bicchiere ghiacciato guarnito con scaglie di cioccolato agrodolce.	https://www.thecocktaildb.com/images/media/drink/xk79al1493069655.jpg	t	2017-04-24 22:34:16
15224	Malibu Twister	Cocktail	Add rum & trister then, add cranberry jucie,stir	Not yet provided	Not yet provided	Rum und Trister hinzufügen, Preiselbeersaft zugeben, umrühren.	Aggiungere rum e la bevanda tropicana quindi, aggiungere il succo di mirtillo rosso, mescolare	https://www.thecocktaildb.com/images/media/drink/2dwae41504885321.jpg	t	2017-09-08 16:42:01
15395	1-900-FUK-MEUP	Shot	Shake ingredients in a mixing tin filled with ice cubes. Strain into a rocks glass.	Not yet provided	Not yet provided	Die Zutaten in einem mit Eiswürfeln gefüllten Mischgefäß schütteln. In ein Rocks Glas abseihen.	Shakerare gli ingredienti in una teglia piena di cubetti di ghiaccio.\r\nFiltrare in un bicchiere alto.	https://www.thecocktaildb.com/images/media/drink/uxywyw1468877224.jpg	t	2016-07-18 22:27:04
11013	Alaska Cocktail	Ordinary Drink	Stir all ingredients with ice, strain contents into a cocktail glass. Drop in a twist of lemon and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, Inhalt in ein Cocktailglas abseihen. Einen Spritzer Zitrone dazugeben und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare il contenuto in un bicchiere da cocktail.Aggiungere una noce di limone e servire.	https://www.thecocktaildb.com/images/media/drink/wsyryt1483387720.jpg	t	2017-01-02 20:08:40
15521	Swedish Coffee	Coffee / Tea	Pour the coffee in an ordinary coffee cup. Add the aquavit. Add sugar by taste. Stir and have a nice evening (morning)	Not yet provided	Not yet provided	Gießen Sie den Kaffee in eine normale Kaffeetasse. Füge den Aquavit hinzu. Nach Belieben Zucker zugeben. Rühren Sie um und genießen Sie einen schönen Abend.	Versare il caffè in una normale tazza da cappuccino.\r\nAggiungi l'acquavite.\r\nAggiungere lo zucchero a piacere.\r\nMescola e passa una bella serata/mattina	https://www.thecocktaildb.com/images/media/drink/ywtrvt1441246783.jpg	t	2015-09-03 03:19:43
16405	A Piece of Ass	Other/Unknown	Put ice in glass. Pour in shots. Fill with Sour Mix.	Not yet provided	Not yet provided	Gib Eis in ein Glas. Füllen Sie Shots ein. Mit Sour Mix auffüllen.	Metti il ghiaccio in un bicchiere.\r\nVersare i colpi.\r\nRiempi con Sour Mix.	https://www.thecocktaildb.com/images/media/drink/tqxyxx1472719737.jpg	t	2016-09-01 09:48:57
17006	Kool First Aid	Shot	Add Kool Aid to a double shot glass, and top with rum. Slam and shoot.	Not yet provided	Not yet provided	Geben Sie Kool Aid in ein Doppelschnapsglas und füllen Sie es mit Rum. Knall und Schuss.	Aggiungi Kool-Aid, successivamente aggiungi il rum.	https://www.thecocktaildb.com/images/media/drink/hfp6sv1503564824.jpg	t	2017-08-24 09:53:44
17108	Coke and Drops	Soft Drink / Soda	Take a glass, pour the Coke in the glass, then you take 7 drops of lemon juice. Granish with a lemon slice on the rim of the glass.	Not yet provided	Not yet provided	Nimm ein Glas, gieße die Cola in das Glas, dann nimmst du 7 Tropfen Zitronensaft. Mit einer Zitronenscheibe am Rand des Glases garnieren.	Prendi un bicchiere, versa la Coca-Cola nel bicchiere, quindi prendi 7 gocce di succo di limone.\r\nGuarnire con una fetta di limone sul bordo del bicchiere	https://www.thecocktaildb.com/images/media/drink/yrtxxp1472719367.jpg	f	2016-09-01 09:42:47
17213	French Martini	Cocktail	Pour all ingredients into shaker with ice cubes. Shake well and strain into a chilled cocktail glass. Squeeze oil from lemon peel onto the drink.	Not yet provided	Not yet provided	Alle Zutaten in den Shaker mit Eiswürfeln geben. Gut schütteln und in ein gekühltes Cocktailglas abseihen. Das Öl aus der Zitronenschale auf das Getränk drücken.	Versare tutti gli ingredienti direttamente in un bicchiere vecchio stile pieno di cubetti di ghiaccio.\r\nMescola delicatamente.	https://www.thecocktaildb.com/images/media/drink/clth721504373134.jpg	t	2017-09-02 18:25:34
17824	The Laverstoke	Cocktail	1) Squeeze two lime wedges into a balloon glass then add the cordial, Bombay Sapphire and MARTINI Rosso Vermouth, swirl to mix.\r\n\r\n2) Fully fill the glass with cubed ice and stir to chill.\r\n\r\n3) Top with Fever-Tree Ginger Ale and gently stir again to combine.\r\n\r\n4) Garnish with a snapped ginger slice and an awoken mint sprig.	Not yet provided	Not yet provided	Zwei Limettenkeile in ein Ballonglas drücken und dann die Herznote, Bombay Sapphire und MARTINI Rosso Wermut hinzufügen, verrühren. Füllen Sie das Glas vollständig mit Eiswürfeln und rühren Sie es um, um es abzukühlen. Mit dem Fever-Tree Ginger Ale auffüllen und zum Mischen wieder leicht umrühren. Mit einer geöffneten Ingwerscheibe und einem Minzzweig garnieren.	1) Spremere gli spicchi di lime in un bicchiere a palloncino, quindi aggiungere la fetta di radice di zenzero, Liquore ai fiori di sambuco St-Germain, MARTINI Bianco e Zaffiro Bombay\r\n2) Riempire completamente il bicchiere con cubetti di ghiaccio e mescolare per raffreddare.\r\n3) Completare con Fever-Tree Ginger Ale e mescolare di nuovo delicatamente per amalgamare.\r\n4) Guarnire con una fetta di zenzero spezzata e un rametto di menta risvegliato.	https://www.thecocktaildb.com/images/media/drink/6xfj5t1517748412.jpg	t	2018-02-04 12:46:52
17248	French Negroni	Cocktail	Add ice to a shaker and pour in all ingredients.\nUsing a bar spoon, stir 40 to 45 revolutions or until thoroughly chilled.\nStrain into a martini glass or over ice into a rocks glass. Garnish with orange twist.	Not yet provided	Not yet provided	Füge Eis in einen Shaker und gieße alle Zutaten ein. Rühren Sie mit einem Barlöffel 40 bis 45 Umdrehungen oder bis zur vollständigen Abkühlung. In ein Martini-Glas oder über Eis in ein Rocks Glas abseihen. Mit Orangenspirale garnieren.	Versare tutti gli ingredienti in uno shaker con cubetti di ghiaccio.\r\nShakerare bene e filtrare in una coppetta da cocktail fredda.\r\nSpremi l'olio dalla scorza di limone sulla bevanda.	https://www.thecocktaildb.com/images/media/drink/x8lhp41513703167.jpg	t	2017-12-19 17:06:07
17250	Corpse Reviver	Cocktail	Shake, strain, straight up, cocktail glass rinsed with absinthe\r\n	Not yet provided	Not yet provided	Schütteln, abseihen, aufrichten, Cocktailglas mit Absinth gespült.	Agitare, filtrare, sciacquare il bicchiere da cocktail con assenzio e versare il mix fatto in precedenza.	https://www.thecocktaildb.com/images/media/drink/gifgao1513704334.jpg	t	2017-12-19 17:25:34
17268	Blue Hurricane	Cocktail	If each part is 1/2 oz then use about 2.5 cups of ice.\r\n\r\nBlend it all together. \r\nDrink it with a big straw if you have one.\r\n\r\n	Not yet provided	Not yet provided	Wenn jedes Teil 1,5 cl. ist, dann verwenden Sie etwa 2,5 Tassen Eis. Alles zusammenmischen. Trink es mit einem großen Strohhalm, wenn du einen hast.	Se ogni parte è 15ml, usa circa 2,5 tazze di ghiaccio e mescola tutto insieme.	https://www.thecocktaildb.com/images/media/drink/nwx02s1515795822.jpg	t	2018-01-12 22:23:42
17266	Oatmeal Cookie	Cocktail	Just mix it all together.\r\nIt's meant to be a shot, but it works just fine as a proper adult-sized drink over lots of ice.\r\n\r\nTastes like an oatmeal cookie.	Not yet provided	Not yet provided	Einfach alles zusammenmischen. Es soll ein Shot sein, aber es funktioniert genauso gut wie ein richtiges Getränk in Erwachsenengröße über viel Eis. Schmeckt wie ein Haferflockenplätzchen.	Mescola tutto insieme.\r\nÈ pensato per essere uno shot, ma funziona perfettamente come una bevanda per adulti con un sacco di ghiaccio.	https://www.thecocktaildb.com/images/media/drink/bsvmlg1515792693.jpg	t	2018-01-12 21:31:33
178353	Apple Highball	Cocktail	Add ice in a highball glass. Rub a wedge of fresh lime around rim and place it in the glass. Add a shot of Apple schnapps, a shot of Courvoisier and top up with ginger ale.	Not yet provided	Not yet provided	Not yet provided	Not yet provided	https://www.thecocktaildb.com/images/media/drink/66mt9b1619695719.jpg	t	\N
17838	Adonis Cocktail	Ordinary Drink	Stir all ingredients with ice, strain contents into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, Inhalt in ein Cocktailglas abseihen und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare il contenuto in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/xrvruq1472812030.jpg	t	2016-09-02 11:27:11
11012	Alabama Slammer	Ordinary Drink	Pour all ingredients (except for lemon juice) over ice in a highball glass. Stir, add a dash of lemon juice, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Zitronensaft) in einem Highball-Glas über Eis gießen. Umrühren, einen Schuss Zitronensaft hinzufügen und servieren.	Versare tutti gli ingredienti (tranne il succo di limone) sul ghiaccio in un bicchiere highball.Mescolate, aggiungete un goccio di succo di limone e servite.	https://www.thecocktaildb.com/images/media/drink/jntghf1606771886.jpg	t	2017-01-02 20:07:27
11054	Arthur Tompkins	Ordinary Drink	In a shaker half-filled with ice cubes, combine the gin, Grand Marnier, and lemon juice. Shake well. Strain into a sour glass and garnish with the lemon twist.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, den Gin, Grand Marnier und Zitronensaft mischen. Gut schütteln. In ein Sour Glas abseihen und mit der gedrehten Zitrone garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unisci il gin, il Grand Marnier e il succo di limone.Filtrare in un bicchiere e guarnire con la scorza di limone.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/7onfhz1493067921.jpg	t	2017-04-24 22:05:21
11064	Banana Daiquiri	Ordinary Drink	Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten in den Shaker mit Eiswürfeln geben. Gut schütteln. In einem gekühlten Cocktailglas abseihen.	Versare tutti gli ingredienti nello shaker con cubetti di ghiaccio. Agitare bene. Filtrare in una coppetta da cocktail ghiacciata.	https://www.thecocktaildb.com/images/media/drink/k1xatq1504389300.jpg	t	2017-09-02 22:55:01
17177	Dark Caipirinha	Cocktail	Muddle the sugar into the lime wedges in an old-fashioned glass.\r\nFill the glass with ice cubes.\r\nPour the cachaca into the glass.\r\nStir well.	Not yet provided	Not yet provided	Den Zucker in einem old-fashioned Glas in die Limettenspalten mischen.	Pestare lo zucchero con gli spicchi di lime in un bicchiere vecchio stile, riempire il bicchiere con cubetti di ghiaccio, versare la cachaca nel bicchiere e mescolare bene.	https://www.thecocktaildb.com/images/media/drink/uwstrx1472406058.jpg	t	2016-08-28 18:40:58
11368	Flying Dutchman	Ordinary Drink	In an old-fashioned glass almost filled with ice cubes, combine the gin and triple sec. Stir well.	Not yet provided	Not yet provided	In einem old-fashioned Glas, das fast mit Eiswürfeln gefüllt ist, den Gin und Triple Sec vermengen. Gut umrühren.	In un bicchiere vecchio stile quasi riempito di cubetti di ghiaccio, unire il gin e il triple sec. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/mwko4q1582482903.jpg	t	2017-09-04 11:12:38
178333	Raspberry Julep	Cocktail	Softly muddle the mint leaves and raspberry syrup in the bottom of the cup. Add crushed ice and Bourbon to the cup and then stir. Top with more ice, garnish with a mint sprig.	Not yet provided	Not yet provided	Not yet provided	Pestare delicatamente le foglie di menta e lo sciroppo di lamponi sul fondo della tazza. Aggiungere il ghiaccio tritato e il Bourbon nella tazza e poi mescolare. Completare con altro ghiaccio, guarnire con un rametto di menta.	https://www.thecocktaildb.com/images/media/drink/hyztmx1598719265.jpg	t	\N
11387	Frozen Daiquiri	Ordinary Drink	Combine all ingredients (except for the cherry) in an electric blender and blend at a low speed for five seconds, then blend at a high speed until firm. Pour contents into a champagne flute, top with the cherry, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer der Kirsche) in einem Elektromixer für fünf Sekunden bei niedriger Geschwindigkeit, dann bei hoher Geschwindigkeit bis zum festen Stand mischen. Den Inhalt in ein Champagner Glas geben, mit der Kirsche verzieren und servieren.	Shakerare tutti gli ingredienti (tranne le fette di limone e lime) con ghiaccio e filtrare in un bicchiere da whisky sour.Decorare con le fettine di limone e lime e servire.	https://www.thecocktaildb.com/images/media/drink/7oyrj91504884412.jpg	t	2017-09-08 16:26:53
11470	Havana Cocktail	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfel gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Cocktailglas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Agitare bene.Filtrare in un bicchiere da cocktail.	https://www.thecocktaildb.com/images/media/drink/59splc1504882899.jpg	t	2017-09-08 16:01:40
11002	Long Island Tea	Ordinary Drink	Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Cola) mischen und in einem Highball-Glas über Eis gießen. Füge einen Spritzer Cola hinzu, um Farbe zu erhalten. Mit einer Scheibe Zitrone dekorieren und servieren.	Unisci tutti gli ingredienti (tranne la cola) e versa il ghiaccio in un bicchiere highball. Aggiungi la spruzzata di cola per il colore. Decorare con una fetta di limone e servire.	https://www.thecocktaildb.com/images/media/drink/nkwr4c1606770558.jpg	t	2015-08-18 14:54:32
11766	Midnight Cowboy	Ordinary Drink	In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut schütteln. In ein Cocktailglas abseihen.	In uno shaker riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti.Agitare bene.Filtrare in un bicchiere da cocktail.	https://www.thecocktaildb.com/images/media/drink/vsxxwy1441208133.jpg	t	2015-09-02 16:35:33
11989	Queen Charlotte	Ordinary Drink	Pour red wine and grenadine into a collins glass over ice cubes. Fill with lemon-lime soda, stir, and serve.	Not yet provided	Not yet provided	Rotwein und Grenadine in ein Collins-Glas über Eiswürfel gießen. Mit Zitronen-Limetten-Soda auffüllen, umrühren und servieren.	Versare il vino rosso e la granatina in un bicchiere Collins sopra i cubetti di ghiaccio.Riempi con la soda al limone e lime, mescola e servi.	https://www.thecocktaildb.com/images/media/drink/vqruyt1478963249.jpg	t	2016-11-12 15:07:29
11991	Queen Elizabeth	Ordinary Drink	Stir all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, in ein Cocktailglas abseihen und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/vpqspv1478963339.jpg	t	2016-11-12 15:08:59
12091	Rum Screwdriver	Ordinary Drink	Pour rum into a highball glass over ice cubes. Add orange juice, stir, and serve.	Not yet provided	Not yet provided	Gießen Sie Rum in ein Highball-Glas über Eiswürfel. Orangensaft hinzufügen, umrühren und servieren.	Versare il rum in un bicchiere highball sopra i cubetti di ghiaccio. Aggiungere il succo d'arancia, mescolare e servire.	https://www.thecocktaildb.com/images/media/drink/4c85zq1511782093.jpg	t	2017-11-27 11:28:14
12214	Singapore Sling	Ordinary Drink	Pour all ingredients into cocktail shaker filled with ice cubes. Shake well. Strain into highball glass. Garnish with pineapple and cocktail cherry.	Not yet provided	Not yet provided	Alle Zutaten in einen mit Eiswürfeln gefüllten Cocktailshaker geben. Gut schütteln. In ein Highball-Glas abseihen. Mit Ananas und Cocktailkirsche garnieren.	Versare tutti gli ingredienti nello shaker riempito con cubetti di ghiaccio.Filtrare in un bicchiere highball.Guarnire con ananas e amarena.Agitare bene.	https://www.thecocktaildb.com/images/media/drink/7dozeg1582578095.jpg	t	2015-08-18 14:58:08
12420	Tuxedo Cocktail	Ordinary Drink	Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren und in ein Cocktailglas abseihen. Mit einer Kirsche und einem Schuss Zitrone garnieren.	Mescolare tutti gli ingredienti con ghiaccio e filtrare in una coppetta da cocktail. Guarnire con una ciliegia e una scorza di limone grattugiata.	https://www.thecocktaildb.com/images/media/drink/4u0nbl1504352551.jpg	t	2017-09-02 12:42:31
12442	Vermouth Cassis	Ordinary Drink	Stir vermouth and creme de cassis in a highball glass with ice cubes. Fill with carbonated water, stir again, and serve.	Not yet provided	Not yet provided	Wermut und Creme de Cassis in einem Highball-Glas mit Eiswürfeln verrühren. Mit kohlensäurehaltigem Wasser auffüllen, nochmals umrühren und servieren.	Mescolare il vermouth e la creme de cassis in un bicchiere highball con cubetti di ghiaccio.Riempi con acqua gassata, mescola di nuovo e servi.	https://www.thecocktaildb.com/images/media/drink/tswpxx1441554674.jpg	t	2015-09-06 16:51:14
12452	Victory Collins	Ordinary Drink	Shake all ingredients (except orange slice) with ice and strain into a collins glass over ice cubes. Add the slice of orange and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Orangenscheibe) mit Eis schütteln und in ein Collins-Glas über Eiswürfel abseihen. Die Orangenscheibe dazugeben und servieren.	Shakerare tutti gli ingredienti (tranne la fetta d'arancia) con ghiaccio e filtrare in un bicchiere Collins con cubetti di ghiaccio.Aggiungere la fetta d'arancia e servire.	https://www.thecocktaildb.com/images/media/drink/lx0lvs1492976619.jpg	t	2017-04-23 20:43:39
12460	Vodka And Tonic	Ordinary Drink	Pour vodka into a highball glass over ice cubes. Fill with tonic water, stir, and serve.	Not yet provided	Not yet provided	Gießen Sie Wodka in ein Highball-Glas über Eiswürfel. Mit Tonic Water auffüllen, umrühren und servieren.	Versare la vodka in un bicchiere highball sopra i cubetti di ghiaccio. Riempi con acqua tonica, mescola e servi.	https://www.thecocktaildb.com/images/media/drink/lmj2yt1504820500.jpg	t	2017-09-07 22:41:40
12672	Fruit Flip-Flop	Other/Unknown	Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.	Not yet provided	Not yet provided	Alle Zutaten in den Mixer geben - abdecken und bei mittlerer Geschwindigkeit schaumig schlagen, bis sie gut vermischt sind. In ein großes, 2 mittlere oder 3 kleine Gläser füllen und geniessen.	Mettere tutti gli ingredienti nella caraffa del frullatore - coprire e montare a velocità media fino a quando non sono ben amalgamati.Versare in un bicchiere alto, 2 medi o 3 piccoli e bere.	https://www.thecocktaildb.com/images/media/drink/nfdx6p1484430633.jpg	f	2017-01-14 21:50:33
12688	Just a Moonmint	Milk / Float / Shake	Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.	Not yet provided	Not yet provided	Alle Zutaten in den Mixer geben - abdecken und bei mittlerer Geschwindigkeit schaumig schlagen, bis sie gut vermischt sind. In ein großes, 2 mittlere oder 3 kleine Gläser füllen und geniessen.	Mettere tutti gli ingredienti nella caraffa del frullatore - coprire e montare a velocità media fino a quando non sono ben amalgamati.Versare in un bicchiere alto, 2 medi o 3 piccoli e bere.	https://www.thecocktaildb.com/images/media/drink/znald61487604035.jpg	f	2017-02-20 15:20:36
12734	Chocolate Drink	Cocoa	Melt the bar in a small amount of boiling water. Add milk. Cook over low heat, whipping gently (with a whisk, i would assume) until heated well. Don't let it boil! Serve in coffee mug.	Not yet provided	Not yet provided	Schmelzen Sie den Riegel in einer kleinen Menge kochendem Wasser. Milch zugeben. Bei schwacher Hitze kochen und dabei sanft (mit einem Schneebesen) aufschlagen, bis es gut erhitzt ist. Nicht aufkochen! In einer Kaffeetasse servieren.	Sciogliere la barretta in una piccola quantità di acqua bollente. Aggiungi il latte. Cuocere a fuoco basso, montando delicatamente con una frusta fino a quando non sarà ben riscaldato.Non farlo bollire! Servire in tazza da caffè.	https://www.thecocktaildb.com/images/media/drink/q7w4xu1487603180.jpg	f	2017-02-20 15:06:20
12808	Creme de Menthe	Homemade Liqueur	Bring sugar and water to a boil and simmer for 10 minutes. Cool. Add the remaining ingredients and stir. Cover and let ripen for 1 month.	Not yet provided	Not yet provided	Zucker und Wasser zum Kochen bringen und 10 Minuten köcheln lassen. Abkühlen. Die restlichen Zutaten zugeben und umrühren. Zugedeckt 1 Monat reifen lassen.	Portare a ebollizione lo zucchero e l'acqua e cuocere a fuoco lento per 10 minuti.\r\nRaffreddare..\r\nAggiungere gli altri ingredienti e mescolare.\r\nCoprite e lasciate maturare per 1 mese.	https://www.thecocktaildb.com/images/media/drink/yxswtp1441253918.jpg	t	2015-09-03 05:18:38
12870	Artillery Punch	Punch / Party Drink	Combine all the ingredients in a large punch bowl with a block of ice. If found too dry, sugar syrup may be added. Decorate with twists of lemon peel.	Not yet provided	Not yet provided	Alle Zutaten in einer großen Bowle mit einem Eisblock vermengen. Wenn es zu trocken ist, kann Zuckersirup hinzugefügt werden. Mit Zitronenschalen garnieren.	Unisci tutti gli ingredienti in una grande ciotola da punch con tanto ghiaccio.\r\nSe risulta troppo secco, puoi aggiungere un po’ di sciroppo di zucchero.\r\nDecora con dei limoni.	https://www.thecocktaildb.com/images/media/drink/9a4vqb1493067692.jpg	t	2017-04-24 22:01:32
12890	Cranberry Punch	Punch / Party Drink	Combine first four ingredients. Stir until sugar is dissolved, chill. Then add ginger ale just before serving. Add ice ring to keep punch cold.	Not yet provided	Not yet provided	Die ersten vier Zutaten mischen. Rühren, bis der Zucker aufgelöst ist, abkühlen lassen. Dann kurz vor dem Servieren Ginger Ale hinzufügen. Füge einen Eisring hinzu, um den Punsch kalt zu halten.	Combina i primi quattro ingredienti. Mescolare fino a quando lo zucchero si è sciolto, raffreddare. Aaggiungere il ginger ale appena prima di servire. Aggiungi un po’ di ghiaccio per mantenere freddo il punch.	https://www.thecocktaildb.com/images/media/drink/mzgaqu1504389248.jpg	f	2017-09-02 22:54:08
17044	Homemade Kahlua	Homemade Liqueur	Dissolve sugar in 2 cups of boiling water and add corn syrup. Dissolve the instant coffee in the remaining water. Pour syrup and coffee in a gallon jug. Let it cool. Add vodka and vanilla when cold. For the best result, let the mixture "mature" for 4-5 weeks.	Not yet provided	Not yet provided	Zucker in 2 Tassen kochendem Wasser auflösen und Maissirup hinzufügen. Lösen Sie den Instantkaffee in dem verbleibenden Wasser auf. Geben Sie Sirup und Kaffee in eine Kanne. Abkühlen lassen. Fügen Sie Wodka und Vanille hinzu, wenn sie kalt sind. Für das beste Ergebnis lassen Sie die Mischung 4-5 Wochen "reifen".	Sciogliere lo zucchero in 2 tazze di acqua bollente e aggiungere lo sciroppo di mais.\r\nSciogliere il caffè solubile nell'acqua rimasta.\r\nVersare lo sciroppo e il caffè in una brocca da un gallone.\r\nLascialo raffreddare.\r\nAggiungere la vodka e la vaniglia quando sono fredde.\r\nPer il miglior risultato lasciare "maturare" la miscela per 4-5 settimane.	https://www.thecocktaildb.com/images/media/drink/uwtsst1441254025.jpg	t	2015-09-03 05:20:25
12954	Holloween Punch	Punch / Party Drink	Take a bunch of grape juice and a bunch of fizzy stuff (club soda, ginger ale, lemonlime, whatever). Mix them in a punch bowl. Take orange sherbet and lime sherbet. Scoop out scoops and float them in the punch, let them melt a little so that a nasty film spreads all over the top of the punch but there are still "bubbles" in it in the form of sherbet scoops. Looks horrible, tastes just fine.	Not yet provided	Not yet provided	Nimm viel Traubensaft und kohlensäurehaltige Flüssigkeiten (Club-Soda, Ginger Ale, Zitronenlimonade, was auch immer). In einer Bowle mischen. Nehmen Sie Orangenbrause und Limettenbrause. Bläschen im Punsch schweben lassen, sie ein wenig zergehen lassen, so dass sich ein böser Film über die Oberseite des Punschs verteilt, aber es gibt immer noch "Blasen" in Form von Brause-Schälchen darin. Sieht schrecklich aus, schmeckt gut.	Prendi un mazzetto di succo d'uva e un po 'di roba frizzante (club soda, ginger ale, sprite, qualunque cosa).\r\nMescolali in una ciotola da punch.\r\nPrendi il sorbetto all'arancia e il sorbetto al lime.\r\nEstrarre le palette e farle galleggiare nel punch, lasciarle sciogliere un po 'in modo che una pellicola sgradevole si diffonda su tutta la parte superiore del punch ma ci siano ancora delle "bolle" sotto forma di palline di sorbetto.\r\nSembra orribile, ha un buon sapore.	https://www.thecocktaildb.com/images/media/drink/lfeoe41504888925.jpg	f	2017-09-08 17:42:05
13070	Fahrenheit 5000	Shot	Cover bottom of shot glass with Tabasco Sauce and then fill with half Firewater and half Absolut Peppar.	Not yet provided	Not yet provided	Den Boden des Schnapsglases mit Tabasco-Sauce bedecken und dann mit halb Feuerwasser und halb Absolut Peppar füllen.	Coprire il fondo del bicchierino con salsa Tabasco e quindi riempire con metà Firewater e metà Absolut Peppar.	https://www.thecocktaildb.com/images/media/drink/tysssx1473344692.jpg	t	2016-09-08 15:24:52
13389	Snake Bite (UK)	Beer	Pour ingredients into a pint glass. Drink. Fall over.	Not yet provided	Not yet provided	Zutaten in ein Glas geben. Trink. Fall um.	Versare gli ingredienti in un bicchiere da pinta.	https://www.thecocktaildb.com/images/media/drink/xuwpyu1441248734.jpg	t	2015-09-03 03:52:14
13621	Tequila Sunrise	Cocktail	Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.	Not yet provided	Not yet provided	Den Tequila und den Orangensaft in ein Glas über Eis gießen. Füge die Grenadine hinzu, die auf den Boden sinken wird. Rühren Sie sanft um, um den Sonnenaufgangseffekt zu erzeugen. Garnieren und servieren.	Versare la tequila e il succo d'arancia in un bicchiere con ghiaccio.\r\nAggiungere la granatina, che affonderà sul fondo.\r\nMescola delicatamente per creare l'effetto alba.\r\nGuarnire e servire.	https://www.thecocktaildb.com/images/media/drink/quqyqp1480879103.jpg	t	2016-12-04 19:18:23
14065	Zippy's Revenge	Cocktail	Mix Kool-Aid to taste then add Rum and ammaretto. shake well to disolve the sugar in the Kool-Aid... serve cold	Not yet provided	Not yet provided	Kool-Aid nach Belieben mischen, dann Rum und Ammaretto hinzufügen. Gut schütteln, um den Zucker in der Kool-Aid aufzulösen.... kalt servieren.	Mescolare Kool-Aid a piacere quindi aggiungere Rum e Amaretto.\r\nAgitare bene per sciogliere lo zucchero nel Kool-Aid.\r\nServire freddo	https://www.thecocktaildb.com/images/media/drink/1sqm7n1485620312.jpg	t	2017-01-28 16:18:33
14272	Addison Special	Cocktail	Combine ingredients in the order listed into a shaker. Fill half full with ice and shake well. Strain into glass with ice and garnish with a cherry and orange wedge.	Not yet provided	Not yet provided	Mische die Zutaten in der angegebenen Reihenfolge in einem Shaker. Halb voll mit Eis füllen und gut schütteln. In ein Glas mit Eis abseihen und mit einem Kirsch- und Orangenkeil garnieren.	Unisci gli ingredienti nell'ordine elencato in uno shaker.\r\nRiempi per metà con ghiaccio e agita bene.\r\nFiltrare in un bicchiere con ghiaccio e guarnire con una fetta di ciliegia e arancia.	https://www.thecocktaildb.com/images/media/drink/4vo5651493068493.jpg	t	2017-04-24 22:14:53
14782	Hot Creamy Bush	Coffee / Tea	Combine all ingredients in glass	Not yet provided	Not yet provided	Alle Zutaten in einem Glas vermengen.	Unisci tutti gli ingredienti in un bicchiere	https://www.thecocktaildb.com/images/media/drink/spvrtp1472668037.jpg	t	2016-08-31 19:27:17
15801	Zimadori Zinger	Punch / Party Drink	Pour Zima in a collins glass over ice and then pour the shot of Midori. Don't stir. Garnish with a cherry.	Not yet provided	Not yet provided	Gießen Sie Zima in einem Collins-Glas über Eis und geben Sie dann den Schuss Midori hinzu. Nicht rühren. Mit einer Kirsche garnieren.	Versare Zima in un bicchiere Collins sopra ghiaccio e poi versare lo shot di Midori.	https://www.thecocktaildb.com/images/media/drink/bw8gzx1485619920.jpg	t	2017-01-28 16:12:00
15825	Jamaican Coffee	Coffee / Tea	Stir the rum, coffee and water together. Top with the whipped cream. Sprinkle with a pinch of well ground coffee and drink with a straw.	Not yet provided	Not yet provided	Rum, Kaffee und Wasser miteinander verrühren. Mit der geschlagenen Sahne bedecken. Mit einer Prise gut gemahlenem Kaffee bestreuen und mit einem Strohhalm trinken.	Mescola rum, caffè e acqua insieme.\r\nCompletare con la panna montata.\r\nCospargere con un pizzico di caffè ben macinato e bere con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/xqptps1441247257.jpg	t	2015-09-03 03:27:37
16176	Bellini Martini	Ordinary Drink	Add ice cubes to shaker.\r\nAdd vodka.\r\nAdd peach schnapps.\r\nAdd peach nectar.\r\nShake.\r\nStrain into glass.\r\nAdd lemon twist peel.	Not yet provided	Not yet provided	Füge Eiswürfel in den Shaker ein. Füge Wodka hinzu. Pfirsichschnaps dazugeben. Pfirsichnektar einfüllen. Schütteln. In ein Glas abseihen. Mit Zitronenspirale garnieren.	Aggiungi i cubetti di ghiaccio nello shaker.\r\nAggiungi la vodka.\r\nAggiungi la grappa alla pesca.\r\nAggiungi il nettare di pesca.\r\nAgita.\r\nFiltrare nel bicchiere.\r\nAggiungi la scorza di limone.	https://www.thecocktaildb.com/images/media/drink/3h9wv51504389379.jpg	t	2017-09-02 22:56:19
16403	Black and Brown	Beer	CAREFULLY to avoid explosive head formation: Pour Beer glass half full of favorite rootbeer and top off with Guinness.	Not yet provided	Not yet provided	Sorgfältig vorgehen, um eine explosive Kopfverformung zu vermeiden: Gießen Sie ein Bierglas halb voll mit beliebten Rootbeeren und verfeinern Sie es mit Guinness.	CON ATTENZIONE per evitare la formazione di schiuma esplosiva: versare mezzo bicchiere di birra di radice e completare con Guinness.	https://www.thecocktaildb.com/images/media/drink/wwuvxv1472668899.jpg	t	2016-08-31 19:41:39
11084	Bermuda Highball	Ordinary Drink	Pour brandy, gin, and dry vermouth into a highball glass over ice cubes. Fill with carbonated water and stir. Add the twist of lemon and serve. (Ginger ale may be substituted for carbonated water, if preferred.)	Not yet provided	Not yet provided	Gießen Sie Brandy, Gin und trockenen Wermut in ein Highball-Glas über Eiswürfel. Mit kohlensäurehaltigem Wasser auffüllen und umrühren. Die Zitrone hinzufügen und servieren. (Wasser kann durch Ginger Ale ersetzt werden, wenn gewünscht.)	Versare brandy, gin e vermouth secco in un bicchiere highball su cubetti di ghiaccio.Riempi con acqua gassata e mescola.Aggiungere la scorza di limone e servire.(Ginger ale può essere sostituito con acqua di seltz, se si preferisce.)	https://www.thecocktaildb.com/images/media/drink/qrvtww1441206528.jpg	t	2015-09-02 16:08:48
17074	Arizona Twister	Cocktail	Just mix in the shots of rum, vodka, and tequila. Add splashes of the three juices, heavy on the pineapple. Top off with grenadine. Crushed ice should already be in glass. Top off the glass with a pineapple wedge.	Not yet provided	Not yet provided	Mischen Sie einfach die Zutaten für Rum, Wodka und Tequila unter. Füge großzügig Spritzer der Säfte zu der Ananas hinzu. Mit Grenadine abschließen. Crushed Ice sollte sich bereits im Glas befinden. Das Glas mit einem Ananaskeil abdecken.	Basta mescolare degli shot di rum, vodka e tequila.\r\nAggiungere un pò dei tre succhi, versare un po’ di più il succo a l'ananas.\r\nCompletare con la granatina.\r\nIl ghiaccio tritato dovrebbe già essere nel bicchiere.\r\nCompleta il bicchiere con una fetta di ananas.	https://www.thecocktaildb.com/images/media/drink/ido1j01493068134.jpg	t	2017-04-24 22:08:55
17168	Amaretto Sunset	Ordinary Drink	Shake ingredients in bartender's mixer quickly, just 5 shakes. Strain out ice, serve in glass immediately with a slice of orange.	Not yet provided	Not yet provided	Rühren Sie die Zutaten schnell in den Mixer des Barkeepers, nur 5 Mal schütteln. Eis abgießen, sofort im Glas mit einer Scheibe Orange servieren.	Shakerare velocemente gli ingredienti nel mixer.\r\nFiltrare il ghiaccio, servire subito in bicchiere con una fetta d'arancia.	https://www.thecocktaildb.com/images/media/drink/apictz1493069760.jpg	t	2017-04-24 22:36:00
17182	Duchamp's Punch	Cocktail	Shake all ingredients.\r\nDouble strain in a chilled double old fashioned glass with abig ice cube.\r\nGarnish with a couple of lavender sprigs	Not yet provided	Not yet provided	Alle Zutaten mischen.	Shakerare tutti gli ingredienti.\r\nDoppia filtrazione in un doppio bicchiere vecchio stile freddo con un grande cubo di ghiaccio.\r\nGuarnire con un paio di rametti di lavanda	https://www.thecocktaildb.com/images/media/drink/g51naw1485084685.jpg	t	2017-01-22 11:31:25
17191	Planter's Punch	Punch / Party Drink	Pour all ingredients, except the bitters, into shaker filled with ice. Shake well. Pour into large glass, filled with ice. Add Angostura bitters, "on top". Garnish with cocktail cherry and pineapple.	Not yet provided	Not yet provided	Alle Zutaten, außer den Bitterstoffen, in einen mit Eis gefüllten Shaker geben. Gut schütteln. In ein großes, mit Eis gefülltes Glas gießen. Füge Angostura-Bitter hinzu, "on top". Mit Cocktailkirsche und Ananas garnieren.	Versare tutti gli ingredienti, in uno shaker pieno di ghiaccio.\r\nAgitare bene.\r\nVersare in un bicchiere capiente, pieno di ghiaccio.\r\nGuarnire con ananas.	https://www.thecocktaildb.com/images/media/drink/fdk8a31606854815.jpg	t	2017-09-02 12:23:04
17211	Dark and Stormy	Ordinary Drink	In a highball glass filled with ice add 6cl dark rum and top with ginger beer. Garnish with lime wedge.	Not yet provided	Not yet provided	In einem mit Eis gefüllten Highball-Glas 6 cl dunklen Rum hinzufügen und mit Ingwerbier auffüllen. Mit Limettenkeil garnieren.	In un bicchiere highball pieno di ghiaccio aggiungere 6 cl di rum scuro e guarnire con ginger beer.\r\nGuarnire con uno spicchio di lime.	https://www.thecocktaildb.com/images/media/drink/t1tn0s1504374905.jpg	t	2017-09-02 18:55:05
178306	Slippery Nipple	Shot	Pour the Sambuca into a shot glass, then pour the Irish Cream on top so that the two liquids do not mix.	Not yet provided	Not yet provided	Not yet provided	Versare la Sambuca in un bicchierino, quindi versarvi sopra l'Irish Cream in modo che i due liquidi non si mescolino.	https://www.thecocktaildb.com/images/media/drink/l9tgru1551439725.jpg	t	2019-03-01 11:28:45
178307	Tequila Slammer	Shot	Mix carefully to avoid releasing the dissolved CO2.	Not yet provided	Not yet provided	Not yet provided	Mescolare accuratamente per evitare di rilasciare la CO2 disciolta.	https://www.thecocktaildb.com/images/media/drink/43uhr51551451311.jpg	t	\N
178313	Halloween Punch	Punch / Party Drink	Tip the cherry juice, orange peel, chilli, cinnamon sticks, cloves and ginger into a large saucepan. Simmer for 5 mins, then turn off the heat. Leave to cool, then chill for at least 4 hrs, or up to 2 days – the longer you leave it the more intense the flavours. If serving to young children, take the chilli out after a few hours.\r\n\r\nWhen you’re ready to serve, pour the juice into a jug. Serve in glass bottles or glasses and pop a straw in each. If you're adding vodka, do so at this stage. Dangle a fangs sweet from each glass.	Not yet provided	Not yet provided	Not yet provided	Versare il succo di ciliegia, la buccia d'arancia, il peperoncino, i bastoncini di cannella, i chiodi di garofano e lo zenzero in una grande casseruola. Cuocere a fuoco lento per 5 minuti, quindi spegnere il fuoco. Raffreddare per almeno 4 ore o fino a 2 giorni: più a lungo lo lasci, più intensi sono i sapori. Se servi ai bambini piccoli, togli il peperoncino dopo alcune ore.\r\n\r\nQuando sei pronto per servire, versa il succo in una caraffa. Servire in bottiglie o bicchieri di vetro e inserire una cannuccia in ciascuno. Se stai aggiungendo la vodka, fallo in questa fase. Fai ciondolare una zanna dolce da ogni bicchiere.	https://www.thecocktaildb.com/images/media/drink/7hcgyj1571687671.jpg	t	\N
178314	Gin Basil Smash	Cocktail	Muddle Basil leaves (~ 10) with Suggar Syrup in a shaker. Add Gin an Lemon Juice.\r\nFilter and serve in a tumbler with ice	Not yet provided	Not yet provided	Not yet provided	Pestare le foglie di basilico (~ 10) con lo sciroppo di zucchero in uno shaker. Aggiungi gin e succo di limone. Filtrare e servire in un tumbler con ghiaccio	https://www.thecocktaildb.com/images/media/drink/jqh2141572807327.jpg	t	\N
178320	Banana Cream Pi	Cocktail	Serve over ice.	Not yet provided	Not yet provided	Not yet provided	Servire con ghiaccio	https://www.thecocktaildb.com/images/media/drink/m5p67n1582474609.jpg	t	\N
178330	The Philosopher	Cocktail	Add all the spirits in a shaker (best to use Hendricks gin) as well as the orange bitters and lemon juice. Strain into a Margarita glass, top with Prosecco.	Not yet provided	Not yet provided	Not yet provided	Aggiungere tutti gli alcolici in uno shaker (meglio usare il gin Hendricks), gli arancioni e il succo di limone. Filtrare in un bicchiere Margarita, guarnire con Prosecco.	https://www.thecocktaildb.com/images/media/drink/sp8hkp1596017787.jpg	t	\N
11016	Brandy Alexander	Ordinary Drink	Shake all ingredients (except nutmeg) with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Muskatnuss) mit Eis schütteln und in ein Cocktailglas abseihen. Muskatnuss darüber streuen und servieren.	Shakerare tutti gli ingredienti (tranne la noce moscata) con ghiaccio e filtrare il contenuto in una coppetta da cocktail. Cospargere di noce moscata e servire.	https://www.thecocktaildb.com/images/media/drink/mlyk1i1606772340.jpg	t	2017-01-02 20:09:06
11028	Amaretto Stinger	Ordinary Drink	Shake ingredients well with cracked ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Die Zutaten gut mit zerkleinertem Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare bene gli ingredienti con ghiaccio tritato, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/vvop4w1493069934.jpg	t	2017-04-24 22:38:54
11338	English Highball	Ordinary Drink	Pour brandy, gin, and sweet vermouth into a highball glass over ice cubes. Fill with carbonated water. Add the twist of lemon peel, stir, and serve. (Ginger ale may be substituted for carbonated water, if preferred.)	Not yet provided	Not yet provided	Gießen Sie Brandy, Gin und süßen Wermut in ein Highball-Glas über Eiswürfel. Mit kohlensäurehaltigem Wasser auffüllen. Die Zitronenschale hinzufügen, umrühren und servieren. (Ginger Ale kann durch kohlensäurehaltiges Wasser ersetzt werden, wenn gewünscht.)	Versare brandy, gin e vermouth dolce in un bicchiere highball su cubetti di ghiaccio.Riempi con acqua gassata.Aggiungere la scorza di limone, mescolare e servire.(Ginger ale può essere sostituito con acqua gassata, se si preferisce.)	https://www.thecocktaildb.com/images/media/drink/dhvr7d1504519752.jpg	t	2017-09-04 11:09:12
11369	Flying Scotchman	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/q53l911582482518.jpg	t	2017-09-04 11:14:00
11396	Gentleman's Club	Ordinary Drink	In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.	Not yet provided	Not yet provided	Not yet provided	In un bicchiere vecchio stile quasi pieno di cubetti di ghiaccio, unisci tutti gli ingredienti. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/k2r7wv1582481454.jpg	t	2017-09-08 16:08:56
11602	Kentucky B And B	Ordinary Drink	Pour the bourbon and Benedictine into a brandy snifter.	Not yet provided	Not yet provided	Den Bourbon und den Benediktiner in ein Brandyglas geben.	Versare il bourbon e il benedettino in un bicchierino di brandy.	https://www.thecocktaildb.com/images/media/drink/sqxsxp1478820236.jpg	t	2016-11-10 23:23:56
11604	Kentucky Colonel	Ordinary Drink	In a shaker half-filled with ice cubes combine the courbon and Benedictine. Shake and strain into a cocktail glass. Garnish with the lemon twist.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, den Bourbon und den Benediktiner vermengen. Schütteln und in ein Cocktailglas abseihen. Mit der Zitronenscheibe garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio unire il courbon e il benedettino.Shakerare e filtrare in una coppetta da cocktail. Guarnire con la scorza di limone.	https://www.thecocktaildb.com/images/media/drink/utqwpu1478820348.jpg	t	2016-11-10 23:25:48
11666	Lone Tree Cooler	Ordinary Drink	Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice, add gin and vermouth, and stir. Fill with carbonated water and stir again. Add the twist of lemon peel and the orange spiral so that the end dangles over rim of glass.	Not yet provided	Not yet provided	Puderzucker und 2 oz. kohlensäurehaltiges Wasser in einem Collins-Glas verrühren. Das Glas mit Eis füllen, Gin und Wermut hinzufügen und umrühren. Mit kohlensäurehaltigem Wasser auffüllen und erneut umrühren. Fügen Sie die Zitronen- und die Orangenspirale hinzu, so dass das Ende über den Glasrand baumelt.	Mescolare lo zucchero a velo 56g e mescola con con acqua gassata. Riempi il bicchiere di ghiaccio, aggiungi gin e vermouth e mescola. Riempi con acqua gassata e mescola di nuovo. Aggiungere la scorza di limone e la spirale d'arancia in modo che l'estremità penda sul bordo del vetro.	https://www.thecocktaildb.com/images/media/drink/wsyqry1479298485.jpg	t	2016-11-16 12:14:45
12198	Sidecar Cocktail	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/ewjxui1504820428.jpg	t	2017-09-07 22:40:28
12754	Sex on the Beach	Ordinary Drink	Build all ingredients in a highball glass filled with ice. Garnish with orange slice.	Not yet provided	Not yet provided	Alle Zutaten in einem mit Eis gefüllten Highball-Glas geben. Mit einer Orangenscheibe garnieren.	Metti tutti gli ingredienti in un bicchiere highball pieno di ghiaccio. Guarnire con fetta d'arancia.	https://www.thecocktaildb.com/images/media/drink/lijtw51551455287.jpg	t	2016-07-21 10:12:45
12784	Thai Iced Coffee	Coffee / Tea	Prepare a pot of coffee at a good European strength. In the ground coffee, add 2 or 3 freshly ground cardamom pods. Sweeten while hot, then cool quickly. Serve in highball glass over ice, with cream. To get the layered effect, place a spoon atop the coffee and pour the milk carefully into the spoon so that it floats on the top of the coffee.	Not yet provided	Not yet provided	Bereite eine Kanne Kaffee mit guter europäischer Stärke zu. In den gemahlenen Kaffee 2 oder 3 frisch gemahlene Kardamomschoten geben. Im heißen Zustand süßen, dann schnell abkühlen lassen. In einem Highball-Glas über Eis mit Sahne servieren. Um den Schichteffekt zu erzielen, legen Sie einen Löffel auf den Kaffee und gießen Sie die Milch vorsichtig in den Löffel, so dass sie auf dem Kaffee schwimmt.	Nel caffè macinato aggiungere 2 o 3 cialde di cardamomo appena macinate.\r\nDolcificare quando è caldo, quindi raffreddare rapidamente.\r\nServire in bicchiere highball con ghiaccio, con panna.\r\nPer ottenere l'effetto a strati, posiziona un cucchiaio sopra il caffè e versa il latte con attenzione nel cucchiaio in modo che galleggi sulla parte superiore del caffè.	https://www.thecocktaildb.com/images/media/drink/rqpypv1441245650.jpg	f	2015-09-03 03:00:50
12792	Amaretto Liqueur	Homemade Liqueur	Combine sugar and 3/4 cup water in a small saucepan. Bring to a boil, stirring constantly. Reduce heat and simmer until all sugar is dissolved. Remove from heat and cool. In an aging container, combine apricot halves, almond extract, grain alcohol with 1/2 cup water, and brandy. Stir in cooled sugar syrup mixture. Cap and let age for 2 days. Remove apricot halves. (Save apricot halves, can be used for cooking). Add food coloring and glycerine. Stir, recap and continue aging for 1 to 2 months. Re-bottle as desired. Liqueur is ready to serve but will continue to improve with additional aging.	Not yet provided	Not yet provided	Zucker und 3/4 Tassen Wasser in einem kleinen Topf vermengen, unter ständigem Rühren zum Kochen bringen. Hitze reduzieren und köcheln lassen, bis der gesamte Zucker gelöst ist. Vom Herd nehmen und abkühlen lassen. In einem Alterungsbehälter Aprikosenhälften, Mandel-Extrakt, Getreidealkohol mit 1/2 Tasse Wasser und Brandy vermengen. Gekühlte Zuckersirupmischung unterrühren. Verschließen und 2 Tage ruhen lassen. Aprikosenhälften entfernen. (Außer Aprikosenhälften, kann zum Kochen verwendet werden). Füge Lebensmittelfarbe und Glyzerin hinzu. Rühren, einarbeiten und 1 bis 2 Monate lang lagern. Nach Belieben wieder auffüllen. Der Likör ist servierfertig, wird sich aber mit zunehmender Reifung weiter verbessern.	Unisci lo zucchero e 3/4 di tazza d'acqua in una piccola casseruola.\r\nPorta a ebollizione mescolando continuamente.\r\nRidurre la fiamma e cuocere a fuoco lento finché tutto lo zucchero non si sarà sciolto.\r\nTogli dal fuoco e lascia raffreddare.\r\nIn un contenitore di invecchiamento, unisci le metà di albicocche, l'estratto di mandorle, l'alcol di cereali con 1/2 tazza di acqua e il brandy.\r\nMescolare la miscela di sciroppo di zucchero raffreddata.\r\nTappare e lasciare invecchiare per 2 giorni.\r\nRimuovere le metà dell'albicocca.Aggiungi colorante alimentare e glicerina.\r\nMescola, ricapitola e continua a invecchiare per 1 o 2 mesi.\r\nRe-imbottigliare come desiderato.\r\nIl liquore è pronto per essere servito ma continuerà a migliorare con l'ulteriore invecchiamento.	https://www.thecocktaildb.com/images/media/drink/swqxuv1472719649.jpg	t	2016-09-01 09:47:29
11472	Hawaiian Cocktail	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/ujoh9x1504882987.jpg	t	2017-09-08 16:03:07
12794	Angelica Liqueur	Homemade Liqueur	Combine all herbs, nuts and spices with vodka in a 1 quart or larger aging container. Cap tightly and shake daily for 2 weeks. Strain through a fine muslin cloth or coffee filter, discarding solids. Clean out aging container. Place liquid back in container. Place sugar and water in saucepan and stir to combine over medium heat. When sugar is completely dissolved, set aside and let cool. When cool combine with food coloring and add to liqueur liquid. Cap and allow to age and mellow in a cool, dark place for one month.	Not yet provided	Not yet provided	Vermengen Sie alle Kräuter, Nüsse und Gewürze mit Wodka in einem 1 Liter, oder größerem Alterungsbehälter. Verschließen Sie das Produkt fest und schütteln Sie es täglich für 2 Wochen. Durch ein feines Musselintuch oder einen Kaffeefilter abseihen und dabei Feststoffe entfernen. Alterungsbehälter reinigen. Geben Sie die Flüssigkeit wieder in den Behälter zurück. Zucker und Wasser in einen Topf geben und bei mittlerer Hitze unter Rühren vermengen. Wenn der Zucker vollständig aufgelöst ist, beiseite stellen und abkühlen lassen. Nach dem Abkühlen mit der Lebensmittelfarbe mischen und in die Likörflüssigkeit geben. Verschließen und einen Monat lang an einem kühlen, dunklen Ort lagern und reifen lassen.	Unisci tutte le erbe, le noci e le spezie con la vodka in un contenitore di invecchiamento da 1 quarto o più grande.\r\nTappare bene e agitare ogni giorno per 2 settimane.\r\nFiltrare attraverso un panno di mussola fine o un filtro da caffè, scartando i solidi.\r\nPulisci il contenitore di invecchiamento.\r\nRiporre il liquido nel contenitore.\r\nMettere lo zucchero e l'acqua nella casseruola e mescolare per unire a fuoco medio.\r\nQuando lo zucchero sarà completamente sciolto, mettete da parte e lasciate raffreddare.\r\nQuando è freddo unire al colorante alimentare e aggiungere al liquido liquoroso.\r\nTappare e lasciare invecchiare e ammorbidire in un luogo fresco e buio per un mese.	https://www.thecocktaildb.com/images/media/drink/yuurps1472667672.jpg	t	2016-08-31 19:21:12
13194	Damned if you do	Shot	Pour into shot glass. Put in mouth. Repeat as deemed necessary.	Not yet provided	Not yet provided	In das Schnapsglas gießen. In den Mund nehmen. Bei Bedarf wiederholen.	Versare nel bicchiere da shot.\r\nVersa in bocca.	https://www.thecocktaildb.com/images/media/drink/ql7bmx1503565106.jpg	t	2017-08-24 09:58:26
13625	Screaming Orgasm	Ordinary Drink	Pour first vodka, then Bailey's, then Kahlua into a cocktail glass over crushed ice. Stir. Caution: use only high quality vodka. Cheap vodka can cause the Bailey's to curdle. Test your brand of vodka by mixing 1 Tsp each of vodka and Bailey's first.	Not yet provided	Not yet provided	Gießen Sie zuerst Wodka, dann Bailey's, dann Kahlua in ein Cocktailglas über zerstoßenes Eis. Rühren. Achtung: Verwenden Sie nur hochwertigen Wodka. Billiger Wodka kann dazu führen, dass der Bailey's gerinnt. Testen Sie Ihre Wodka-Marke, indem Sie jeweils 1 Teelöffel Wodka und einen Teelöffel Bailey's mischen.	Versare la prima vodka, poi la Bailey's, poi Kahlua in un bicchiere da cocktail su ghiaccio tritato.\r\nAgitare.\r\nAttenzione: usa solo vodka di alta qualità.\r\nLa vodka economica può far inasprire il Bailey's.\r\nMetti alla prova la tua marca di vodka mescolando 1 cucchiaino ciascuno di vodka e il primo di Bailey.	https://www.thecocktaildb.com/images/media/drink/x894cs1504388670.jpg	t	2017-09-02 22:44:30
14446	Kool-Aid Slammer	Shot	Fill half the shot glass with the kool-aid first. Then put a paper towel over the top of the glass and slowly pour in the vodka. If you do it right, you should be able to see that the two liquids are separated, with the vodka on top. Now slam it! The last thing you'll taste is the kool-aid.	Not yet provided	Not yet provided	Füllen Sie zuerst die Hälfte des Schnapsglases mit dem Kool-Aid. Dann legen Sie ein Papiertuch über das Glas und gießen Sie den Wodka langsam ein. Wenn du es richtig machst, solltest du sehen können, dass die beiden Flüssigkeiten getrennt sind, mit dem Wodka oben drauf. Jetzt knall es rein! Das Letzte, was du schmecken wirst, ist das Kool-Aid.	Riempi prima metà del bicchierino con il kool-aid.\r\nQuindi mettere un tovagliolo di carta sulla parte superiore del bicchiere e versare lentamente la vodka.\r\nSe lo fai bene, dovresti essere in grado di vedere che i due liquidi sono separati, con la vodka sopra.\r\nOra sbattilo! L'ultima cosa che assaggerai è il kool-aid.	https://www.thecocktaildb.com/images/media/drink/kugu2m1504735473.jpg	t	2017-09-06 23:04:33
14564	A Splash of Nash	Shot	Drop shot glass with banana & melon liquers into a 9 oz hi- ball glass containing soda water and cranberry juice. Drink in one shot.	Not yet provided	Not yet provided	Lassen Sie das Schnapsglas mit Bananen- und Melonenliköre in ein 27 cl. Hi-Ball Glas mit Sodawasser und Preiselbeersaft fallen. Trinken Sie in einem Zug.	Goccia un bicchierino con liquori alla banana e melone in un bicchiere hi-ball da 250gr contenente acqua gassata e succo di mirtillo rosso.\r\nBevi in un colpo solo.	https://www.thecocktaildb.com/images/media/drink/rsvtrr1472668201.jpg	t	2016-08-31 19:30:01
14578	Amaretto Sunrise	Ordinary Drink	Mix together the amaretto and orange juice. Pour into glass and then add the grenadine untill you see the sunrise.	Not yet provided	Not yet provided	Amaretto und Orangensaft verrühren. In ein Glas gießen und dann die Grenadine hinzufügen, bis Sie den Sonnenaufgang sehen.	Mescolare l'amaretto e il succo d'arancia.\r\nVersate in un bicchiere e poi aggiungete la granatina fino a vedere l'alba.	https://www.thecocktaildb.com/images/media/drink/akcpsh1493070267.jpg	t	2017-04-24 22:44:27
14584	Arizona Stingers	Cocktail	Place ice cubes in the hurricane glass . Add the 2 HEAPING shots of Absolute Vodka (Note: You can add as many shots of Absolute as you want!) Fill the rest of glass with the Arizona Icetea with lemon. Stir to mix using a spoon. Drink up and enjoy!!!!!!!	Not yet provided	Not yet provided	Legen Sie Eiswürfel in das Hurrikanglas. Füge die 2 HEAPING-Shots von Absolute Vodka hinzu (Hinweis: Du kannst so viele Shots von Absolute hinzufügen, wie du willst!) Füge den Rest des Glases mit dem Arizona Icetea mit Zitrone. Mit einem Löffel verrühren.	Metti i cubetti di ghiaccio nel bicchiere Hurricane.\r\nAggiungi i 2 shot  di HEAPING di Absolut Vodka (Nota: puoi aggiungere tutti i shot di Absolute che vuoi!) Riempi il resto del bicchiere con l'Arizona Ice tea al limone.\r\nMescola per amalgamare usando un cucchiaio.	https://www.thecocktaildb.com/images/media/drink/y7w0721493068255.jpg	t	2017-04-24 22:10:55
14602	Tequila Surprise	Shot	Fill shot glass with Tequila. Add drops of Tobasco sauce.	Not yet provided	Not yet provided	Füllen Sie das Schnapsglas mit Tequila. Füge Tropfen Tobasco-Sauce hinzu.	Riempi un bicchierino da shot con la tequila.\r\nAggiungere le gocce di salsa Tabasco.	https://www.thecocktaildb.com/images/media/drink/8189p51504735581.jpg	t	2017-09-06 23:06:21
15423	110 in the shade	Beer	Drop shooter in glass. Fill with beer	Not yet provided	Not yet provided	Shooter tröpfchenweise in ein Glas geben. Mit Bier füllen.	Riempi un bicchierino di tequila.\r\nRiempi un boccale di birra con la birra chiara.\r\nMetti il bicchierino nella birra e bevi velocemente.	https://www.thecocktaildb.com/images/media/drink/xxyywq1454511117.jpg	t	2016-02-03 14:51:57
15615	Chocolate Monkey	Milk / Float / Shake	blend liqeuors with ice-cream, milk and syrup. pour into parfait glass, top with whipped cream and garnish with banana and cherry.	Not yet provided	Not yet provided	Liköre mit Eis, Milch und Sirup mischen. In Parfaitglas gießen, mit Schlagsahne belegen und mit Banane und Kirsche garnieren.	Frullare i liquori con gelato, latte e sciroppo.\r\nVersare in un bicchiere da semifreddo, coprire con panna montata e guarnire con banana e ciliegia.	https://www.thecocktaildb.com/images/media/drink/tyvpxt1468875212.jpg	f	2016-07-18 21:53:32
17183	Bacardi Cocktail	Ordinary Drink	Shake together with ice. Strain into glass and serve.	Not yet provided	Not yet provided	Mit Eis zusammen schütteln. In ein Glas abseihen und servieren.	Shakerare insieme al ghiaccio.\r\nFiltrare nel bicchiere e servire.	https://www.thecocktaildb.com/images/media/drink/n433t21504348259.jpg	t	2017-09-02 11:30:59
16295	Bleeding Surgeon	Soft Drink / Soda	Pour Shot of Rum over slice of orange. Fill the remaining space in glass half way full of surge or similar drink. Finish off glass with cranberry juice. Be carefull, warm surge may foam over the glass.	Not yet provided	Not yet provided	Gießen Sie einen Schuss Rum über eine Scheibe Orange. Füllen Sie den verbleibenden Raum in Glas. Das Glas mit Preiselbeersaft auffüllen. Seien Sie vorsichtig, denn ein warmer Stoß kann über das Glas schäumen.	Versare un bicchierino di rum su una fetta d'arancia.\r\nRiempi lo spazio rimanente in un bicchiere pieno a metà di Surge o bevanda simile.\r\nFinisci il bicchiere con il succo di mirtillo rosso. Immergi la fetta d'arancia.	https://www.thecocktaildb.com/images/media/drink/usuvvr1472719118.jpg	t	2016-09-01 09:38:38
17118	Arctic Mouthwash	Punch / Party Drink	Blend all ingredients in a blender on high until ice is finely crushed. It should be of a slushy consistency. Pour immediately and serve.	Not yet provided	Not yet provided	Alle Zutaten in einem Mixer mischen, bis das Eis fein zerkleinert ist. Es sollte eine matschige Konsistenz haben. Sofort ausgießen und servieren.	Frulla tutti gli ingredienti in un frullatore a potenza alta fino a quando il ghiaccio non è tritato finemente.\r\nDovrebbe essere di una consistenza fangosa.\r\nVersate subito e servite.	https://www.thecocktaildb.com/images/media/drink/wqstwv1478963735.jpg	t	2016-11-12 15:15:35
17167	Raspberry Cooler	Other/Unknown	Pour the raspberry vodka and soda into a highball glass almost filled with ice cubes. Stir well.	Not yet provided	Not yet provided	Geben Sie den Himbeer-Wodka und das Soda in ein Highball-Glas, das fast mit Eiswürfeln gefüllt ist. Gut umrühren.	Versare la vodka ai lamponi e la soda in un bicchiere highball quasi pieno di cubetti di ghiaccio.\r\nMescolare bene.	https://www.thecocktaildb.com/images/media/drink/suqyyx1441254346.jpg	t	2015-09-03 05:25:46
17212	Espresso Martini	Cocktail	Pour ingredients into shaker filled with ice, shake vigorously, and strain into chilled martini glass	Not yet provided	Not yet provided	Zutaten in einen mit Eis gefüllten Shaker geben, kräftig schütteln und in ein gekühltes Martini-Glas abseihen.	Versare gli ingredienti in uno shaker pieno di ghiaccio, shakerare energicamente e filtrare in un bicchiere da martini freddo	https://www.thecocktaildb.com/images/media/drink/n0sx531504372951.jpg	t	2017-09-02 18:22:31
17826	The Jimmy Conway	Cocktail	Fill glass with ice\r\nPour in The Irishman and Disaronno\r\nFill to the top with Cranberry Juice\r\nGarnish with a slice of lemon…Enjoy!	Not yet provided	Not yet provided	Glas mit Eis füllen. Gießen Sie den Iren und Disaronno ein. Bis zum Anschlag mit Preiselbeersaft füllen.Mit einer Scheibe Zitrone garnieren. Viel Spaß! 	Riempire il bicchiere con ghiaccio Versare The Irishman e Disaronno Riempire fino in cima con succo di mirtillo rosso Guarnire con una fetta di limone… Buon divertimento!	https://www.thecocktaildb.com/images/media/drink/wbcvyo1535794478.jpg	t	2018-09-01 10:34:38
178308	Spritz Veneziano	Cocktail	Build into glass over ice, garnish and serve.	Not yet provided	Not yet provided	Not yet provided	Incorporare in un bicchiere con ghiaccio, guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/51ezka1551456113.jpg	t	\N
178309	Espresso Rumtini	Cocktail	Mix together in a cocktail glass. Garnish with some choclate powder and coffee beans	Not yet provided	Not yet provided	Not yet provided	Mescolare insieme in un bicchiere da cocktail. Guarnire con un po 'di cioccolato in polvere e chicchi di caffè	https://www.thecocktaildb.com/images/media/drink/acvf171561574403.jpg	t	\N
178327	Pineapple Paloma	Cocktail	Rub the rim of each glass with lime slice and dip into salt.\r\nAdd ice, tequila, grapefruit juice, lime juice and top with pineapple soda.\r\nGive it a quick stir.\r\nGarnish with fresh pineapple or lime.	Not yet provided	Not yet provided	Not yet provided	Strofina il bordo di ogni bicchiere con uno spicchio di lime e salalo.\r\nAggiungi ghiaccio, tequila, succo di pompelmo, succo di lime e aggiungi la soda all'ananas.\r\nDagli una rapida mescolata.\r\nGuarnire con ananas fresco o lime.	https://www.thecocktaildb.com/images/media/drink/pg8iw31593351601.jpg	t	\N
178336	Blueberry Mojito	Cocktail	Muddle the blueberries with the other ingredients and serve in a highball glass. Garnish with mint and a half slice of lime.	Not yet provided	Not yet provided	Not yet provided	Pestare i mirtilli con gli altri ingredienti e servire in un bicchiere highball. Guarnire con la menta e mezza fetta di lime.	https://www.thecocktaildb.com/images/media/drink/07iep51598719977.jpg	t	\N
178337	Autumn Garibaldi	Cocktail	Pour all ingredients into a glass over ice and stir with a bar spoon. Garnish with some orange slices.	Not yet provided	Not yet provided	Not yet provided	Versare tutti gli ingredienti in un bicchiere con ghiaccio e mescolare con un cucchiaio da bar. Guarnire con qualche fetta d'arancia.	https://www.thecocktaildb.com/images/media/drink/ne7re71604179012.jpg	t	\N
178355	Mountain Bramble	Cocktail	Muddle the blackberries in a tumbler glass. Mix the Gin, lemon juice and sugar syrup in a shaker and strain over chopped ice. Top with Soda water and garnish with more blackberries and some mint	Not yet provided	Not yet provided	Not yet provided	Not yet provided	https://www.thecocktaildb.com/images/media/drink/stwiva1619704025.jpg	t	\N
178356	Butterfly Effect	Cocktail	Grab your boston tin, fill it with cubes ice and then simply chuck in all your ingredients apart from your lemonade.\r\nNow it’s time to shake what your mama gave you until all your ingredients are blended to perfection.\r\nAdd some cubes of ice to your hurricane glass, give them a swill to cool the whole thing down and then strain your raspberry vodka cocktail of wonder into the glass.\r\nTop with lemonade and chuck a sprig of mint on top for garnish.\r\nYou can either get drinking at this point or go and try and grab a few butterflies to finish, the choice really is yours.	Not yet provided	Not yet provided	Not yet provided	Not yet provided	https://www.thecocktaildb.com/images/media/drink/ht3hnk1619704289.jpg	t	\N
11326	Dubonnet Cocktail	Ordinary Drink	Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Zitronenschale) mit Eis verrühren und in ein Cocktailglas abseihen. Die Zitronenschale hinzufügen und servieren.	Mescolare tutti gli ingredienti (tranne la buccia di limone) con ghiaccio e filtrare in una coppetta da cocktail. Aggiungere la scorza di limone e servire.	https://www.thecocktaildb.com/images/media/drink/pfz3hz1582483111.jpg	t	2015-08-13 10:12:27
11462	Harvey Wallbanger	Ordinary Drink	Stir the vodka and orange juice with ice in the glass, then float the Galliano on top. Garnish and serve.	Not yet provided	Not yet provided	Wodka und Orangensaft mit Eis im Glas verrühren, dann den Galliano darauf verteilen. Garnieren und servieren.	Mescolare la vodka e il succo d'arancia con ghiaccio nel bicchiere, successivamente versa nel drink il Galliano. Guarnire e servire.	https://www.thecocktaildb.com/images/media/drink/7os4gs1606854357.jpg	t	2017-09-02 17:28:45
17216	Tommy's Margarita	Ordinary Drink	Shake and strain into a chilled cocktail glass.	Not yet provided	Not yet provided	Schütteln und in ein gekühltes Cocktailglas abseihen.	Shakerare e filtrare in una coppetta da cocktail ghiacciata.	https://www.thecocktaildb.com/images/media/drink/loezxn1504373874.jpg	t	2017-09-02 18:37:54
11566	Jewel Of The Nile	Ordinary Drink	In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.	Not yet provided	Not yet provided	In einem Mischglas, das halb mit Eiswürfeln gefüllt ist, alle Zutaten vermengen. Gut umrühren. In ein Cocktailglas abseihen.	In un mixing glass riempito a metà con cubetti di ghiaccio, unire tutti gli ingredienti. Filtrare in un bicchiere da cocktail. Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/hx4nrb1504884947.jpg	t	2017-09-08 16:35:48
11720	Martinez Cocktail	Cocktail	Stir all ingredients (except cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Kirsche) mit Eis verrühren und in ein Cocktailglas abseihen. Mit der Kirsche garnieren und servieren.	Mescolare tutti gli ingredienti (tranne la ciliegia) con ghiaccio e filtrare in una coppetta da cocktail.Completare con la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/wwxwvr1439906452.jpg	t	2015-08-18 15:00:52
11983	Quaker's Cocktail	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/yrqppx1478962314.jpg	t	2016-11-12 14:51:54
12089	Rum Old-fashioned	Ordinary Drink	Stir powdered sugar, water, and bitters in an old-fashioned glass. When sugar has dissolved add ice cubes and light rum. Add the twist of lime peel, float 151 proof rum on top, and serve.	Not yet provided	Not yet provided	Puderzucker, Wasser und Bitter in einem old-fashioned Glas verrühren. Wenn sich der Zucker aufgelöst hat, Eiswürfel und leichten Rum hinzufügen. Die Limettenspirale hinzufügen, 151er Rum darauf verteilen und servieren.	Mescolare lo zucchero, l'acqua e il bitter in un bicchiere vecchio stile. Quando lo zucchero si sarà sciolto aggiungere i cubetti di ghiaccio e il rum chiaro. Aggiungere la scorza di lime, far galleggiare sopra 151 rum e servire.	https://www.thecocktaildb.com/images/media/drink/otn2011504820649.jpg	t	2017-09-07 22:44:09
12186	Shanghai Cocktail	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/ttyrxr1478820678.jpg	t	2016-11-10 23:31:18
12224	Sloe Gin Cocktail	Ordinary Drink	Stir all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, in ein Cocktailglas abseihen und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/d7mo481504889531.jpg	t	2017-09-08 17:52:12
12434	Valencia Cocktail	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/9myuc11492975640.jpg	t	2017-04-23 20:27:20
12654	Banana Milk Shake	Milk / Float / Shake	Blend very well, preferably in a household mixer. Serve in a wine glass, garnish with whipped cream and a piece of banana.	Not yet provided	Not yet provided	Sehr gut mischen, vorzugsweise in einem Haushaltsmixer. Im Weinglas servieren, mit Schlagsahne und einem Stück Banane garnieren.	Frullate molto bene. Servire in un bicchiere da vino, guarnire con panna montata e un pezzetto di banana.	https://www.thecocktaildb.com/images/media/drink/rtwwsx1472720307.jpg	f	2016-09-01 09:58:27
12706	Imperial Cocktail	Cocktail	Shake with ice and strain into cocktail glass.	Not yet provided	Not yet provided	Mit Eis schütteln und in ein Cocktailglas abseihen.	Shakerare con ghiaccio e filtrare nella coppetta da cocktail.	https://www.thecocktaildb.com/images/media/drink/bcsj2e1487603625.jpg	t	2017-02-20 15:13:45
12750	Spanish chocolate	Cocoa	Stir the milk with the chocolate and the cinnamon over low heat until the chocolate dissolves. Add the eggs and beat the mixture until it becomes thick, taking care not to boil. Serve in coffee mug.	Not yet provided	Not yet provided	Die Milch mit der Schokolade und dem Zimt bei schwacher Hitze verrühren, bis sich die Schokolade auflöst. Die Eier dazugeben und die Masse schaumig schlagen, bis sie dick wird, dabei darauf achten, dass sie nicht kocht. In einer Kaffeetasse servieren.	Mescolare il latte con il cioccolato e la cannella a fuoco lento fino a quando il cioccolato si scioglie.\r\nAggiungere le uova e sbattere il composto fino a quando non si sarà addensato, facendo attenzione a non farlo bollire.\r\nServire in una tazza da caffè.	https://www.thecocktaildb.com/images/media/drink/pra8vt1487603054.jpg	f	2017-02-20 15:04:14
12802	Cranberry Cordial	Homemade Liqueur	Place the chopped cranberries in a 2 liter jar that has a tight-fitting lid. Add the sugar and rum. Adjust the lid securely and place the jar in a cool, dark place. Invert the jar and shake it every day for six weeks. Strain the cordial into bottles and seal with corks.	Not yet provided	Not yet provided	Die gehackten Preiselbeeren in ein 2-Liter-Glas mit enganliegendem Deckel geben. Zucker und Rum dazugeben. Schließen Sie den Deckel und stellen Sie das Glas an einen kühlen, dunklen Ort. Wenden Sie das Glas um und schütteln Sie es sechs Wochen lang jeden Tag. Die Flüssigkeit in Flaschen abseihen und mit Korken verschließen.	Metti i mirtilli rossi tritati in un barattolo da 2 litri con un coperchio ben aderente.\r\nAggiungere lo zucchero e il rum.\r\nRegola bene il coperchio e posiziona il barattolo in un luogo fresco e buio.\r\nCapovolgi il barattolo e agitalo ogni giorno per sei settimane.\r\nFiltrare lo sciroppo nelle bottiglie e chiudere con i tappi di sughero.	https://www.thecocktaildb.com/images/media/drink/qtspsx1472667392.jpg	t	2016-08-31 19:16:32
12862	Aloha Fruit punch	Punch / Party Drink	Add 1/4 cup water to ginger root. Boil 3 minutes. Strain. Add the liquid to the guava, lemon and pineapple juices. Make a syrup of sugar and remaining water. Cool. Combine with juices and pineapple. Chill throroughly.	Not yet provided	Not yet provided	Füge 1/4 Tasse Wasser zu einer Ingwerwurzel hinzu. 3 Minuten kochen lassen bis sie sich dehnt. Die Flüssigkeit zu den Guave-, Zitronen- und Ananassäften geben. Einen Sirup aus Zucker und restlichem Wasser herstellen. Abkühlen. Mit Säften und Ananas kombinieren. Vorsichtig abkühlen lassen.	Metti in una pentolina la radice di zenzero e aggiungi 1/4 di acqua. Bollire per 3 minuti. Versa il  succo di guava, limone e ananas con le rispettive dosi dentro alla pentolina. Fai uno sciroppo di zucchero e acqua rimanente. Raffredda. Combina lo sciroppo con la pentolina. Mescola.	https://www.thecocktaildb.com/images/media/drink/wsyvrt1468876267.jpg	f	2016-07-18 22:11:07
17002	Gideon's Green Dinosaur	Ordinary Drink	Add all ingredients in collins glass with ice and stir.	Not yet provided	Not yet provided	Alle Zutaten in das Collins-Glas mit Eis geben und umrühren.	Aggiungere tutti gli ingredienti nel bicchiere Collins con ghiaccio e mescolare.	https://www.thecocktaildb.com/images/media/drink/p5r0tr1503564636.jpg	t	2017-08-24 09:50:36
12864	Apple Cider Punch	Punch / Party Drink	If you use the whole all spice and cloves, tie them in cheesecloth. Heat the mixture. Stir occasionally. If you want an alcoholic drink, rum would be nice.	Not yet provided	Not yet provided	Wenn du das ganze Gewürz und die Nelken verwendest, bindest du sie in ein Seihtuch. Die Mischung erhitzen. Gelegentlich umrühren. Wenn du ein alkoholisches Getränk willst, wäre Rum schön.	Versa tutto in un pentolino tranne spezie e chiodi di garofano, legali in una garza e tienili in ammollo.\r\nRiscalda la miscela. Mescola di tanto in tanto. Se vuoi una bevanda alcolica puoi aggiungere un po’ di Rum.	https://www.thecocktaildb.com/images/media/drink/xrqxuv1454513218.jpg	f	2016-02-03 15:26:58
12916	Egg Nog - Healthy	Punch / Party Drink	Whip egg substitute and sugar together, combine with the two kinds of milk, vanilla, and rum. Mix well. Chill over night. Sprinkle with nutmeg. Makes 6 servings.	Not yet provided	Not yet provided	Ei-Ersatz und Zucker verrühren, mit den beiden Sorten Milch, Vanille und Rum vermengen. Gut mischen. Über Nacht kühl stellen. Mit Muskatnuss bestreuen. Ergibt 6 Portionen.	In una grande casseruola, sbatti insieme le uova, lo zucchero e il sale, se lo desideri.\r\nMescolare 2 tazze di latte.\r\nCuocere a fuoco basso, mescolando continuamente fino a quando il composto è abbastanza denso da ricoprire un cucchiaio di metallo e raggiunge i 71 gradi\r\nSpegnere il fuoco.\r\nIncorporare le restanti 2 tazze di latte e la vaniglia.\r\nCoprire e conservare in frigorifero fino a completo raffreddamento, diverse ore o durante la notte.\r\nPoco prima di servire, versare nella ciotola o nella brocca.\r\nDecorare o aggiungere mescolanze, se lo si desidera.\r\nScegli uno o più riccioli di cioccolato, bastoncini di cannella, estratti di aromi, brandy o liquore aromatizzato, succo di frutta o nettare, noce moscata macinata, ciliegie al maraschino, fette d'arancia, bastoncini di menta piperita o bastoncini di zucchero, brandy semplice, rum o whisky, sorbetto o ghiaccio -crema, panna montata, montata.\r\nServite subito.	https://www.thecocktaildb.com/images/media/drink/qxuppv1468875308.jpg	f	2016-07-18 21:55:08
13026	Sangria The  Best	Punch / Party Drink	Mix wine, sugar and fruit, and let sit in the fridge for 18-24 hours. The mixture will have a somewhat syrupy consistency. Before serving stir in brandy and cut the mixture with soda water until it have a thinner, more wine like consistency. Serve from a pitcher in wine glasses.	Not yet provided	Not yet provided	Wein, Zucker und Obst mischen und 18-24 Stunden im Kühlschrank stehen lassen. Die Mischung hat eine etwas sirupartige Konsistenz. Vor dem Servieren Brandy unterrühren und die Mischung mit Sodawasser mischen, bis sie eine dünne, weinähnliche Konsistenz hat. Aus einem Krug in Weingläsern servieren.	Mescola vino, zucchero e frutta e lascia riposare in frigorifero per 18-24 ore.\r\nIl composto avrà una consistenza un pò sciropposa.\r\nPrima di servire incorporare il brandy con un pò di acqua di seltz fino a ottenere una consistenza più sottile e più vinosa.\r\nServire da una brocca in calici da vino.	https://www.thecocktaildb.com/images/media/drink/vysywu1468924264.jpg	t	2016-07-19 11:31:04
13192	National Aquarium	Ordinary Drink	Pour all ingredients into a shaker of ice. Shake well. Serve on the rocks.	Not yet provided	Not yet provided	Alle Zutaten in einen Shaker mit Eis geben. Gut schütteln. Auf Eis servieren.	Versa tutti gli ingredienti in uno shaker di ghiaccio.\r\nAgitare bene.\r\nServire con ghiaccio.	https://www.thecocktaildb.com/images/media/drink/dlw0om1503565021.jpg	t	2017-08-24 09:57:01
13204	New York Lemonade	Cocktail	Serve in a chilled cocktail glass. Lemon and sugar the rim. Stir and Strain.	Not yet provided	Not yet provided	In einem gekühlten Cocktailglas servieren. Zitrone und Zucker auf den Rand geben. Rühren und abseihen.	Servire in una coppetta da cocktail ghiacciata.\r\nLimone e zucchero sul bordo.\r\nMescola e filtra.	https://www.thecocktaildb.com/images/media/drink/b3n0ge1503565473.jpg	t	2017-08-24 10:04:33
14372	Absolut limousine	Other/Unknown	Fill Absolut into a glass. Add Lime juice. Add Ice and lime wedges.	Not yet provided	Not yet provided	Absolut in ein Glas füllen. Limettensaft zugeben. Füge Eis- und Limettenkeile hinzu.	Riempi Absolut in un bicchiere.\r\nAggiungi il succo di lime.\r\nAggiungi ghiaccio e spicchi di lime.	https://www.thecocktaildb.com/images/media/drink/ssqpyw1472719844.jpg	t	2016-09-01 09:50:44
14374	Absolut Evergreen	Other/Unknown	Mix, pour over ice and top up with Bitter Lemon.	Not yet provided	Not yet provided	Mischen, über Eis gießen und mit Bitterzitrone auffüllen.	Mescolare, versare sopra ghiaccio e completare con Bitter Lemon.	https://www.thecocktaildb.com/images/media/drink/wrxrxp1472812609.jpg	t	2016-09-02 11:36:49
17175	Girl From Ipanema	Ordinary Drink	Add the cachaca, lemon juice and syrup to your boston glass. Add ice and shake until ice cold. Pour into a chilled flute and top-up with Champagne	Not yet provided	Not yet provided	Füge den Cachaca, Zitronensaft und Sirup in ein Bostonglas ein. Eis dazugeben und schütteln, bis das Glas eiskalt ist. In eine gekühlte Glasflöte füllen und mit Champagner auffüllen.	Aggiungi la cachaca, il succo di limone e lo sciroppo in un mixing glass.\r\nAggiungere il ghiaccio e agitare fino a quando non si sarà raffreddato.\r\nVersare in un bicchiere da vino freddo e rabboccare con champagne	https://www.thecocktaildb.com/images/media/drink/xypspq1469090633.jpg	t	2016-07-21 09:43:53
15178	Texas Rattlesnake	Shot	Mix all ingredients and Shake well. Sweet at first, with a BITE at the end...	Not yet provided	Not yet provided	Alle Zutaten mischen und gut schütteln. Zuerst süß, mit einem Biss am Ende.....	Mescolare tutti gli ingredienti e agitare bene.\r\nDolce all'inizio, con un morso alla fine.	https://www.thecocktaildb.com/images/media/drink/rtohqp1504889750.jpg	t	2017-09-08 17:55:50
15597	Absolut Stress #2	Ordinary Drink	Mix well. Garnish with Orange and Cherry. Enjoy	Not yet provided	Not yet provided	Gut mischen. Mit Orange und Kirsche garnieren. Genießen.	Mescolare bene.\r\nGuarnire con arancia e ciliegia.	https://www.thecocktaildb.com/images/media/drink/xuyqrw1472811825.jpg	t	2016-09-02 11:23:45
17020	Auburn Headbanger	Shot	Mix in spread glass over ice. Strain and pour in shot glass. Sit down before shotting. ENJOY!!	Not yet provided	Not yet provided	Streuglas mit Eis einrühren. Abseihen und in ein Schnapsglas gießen. Setz dich hin, bevor du schießt. GENIEßEN SIE ES!!!!	Mescolare in un bicchiere con del ghiaccio.\r\nFiltrare e versare in un bicchierino.	https://www.thecocktaildb.com/images/media/drink/vw7iv91493067320.jpg	t	2017-04-24 21:55:20
17198	French Connection	Ordinary Drink	Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.	Not yet provided	Not yet provided	Alle Zutaten direkt in ein old fashioned Glas mit Eiswürfeln geben. Vorsichtig umrühren.	Unisci gin, zucchero e succo di limone in uno shaker pieno di ghiaccio.\r\nShakerare energicamente e filtrare in una coppa da champagne ghiacciata.\r\nRabboccare il bicchiere con lo champagne.\r\nMescola delicatamente.	https://www.thecocktaildb.com/images/media/drink/zaqa381504368758.jpg	t	2017-09-02 17:12:39
17201	Hemingway Special	Ordinary Drink	Pour all ingredients into a shaker with ice. Shake.	Not yet provided	Not yet provided	Alle Zutaten in einen Shaker mit Eis geben. Schütteln.	Versare tutti gli ingredienti in uno shaker con ghiaccio.\r\nAgita.	https://www.thecocktaildb.com/images/media/drink/jfcvps1504369888.jpg	t	2017-09-02 17:31:28
178340	Garibaldi Negroni	Cocktail	Mix together in a shaker and garnish with a simple orange slice. Fill your vitamin C and cocktail fix at the same time!	Not yet provided	Not yet provided	Not yet provided	Mescolare in uno shaker e guarnire con una semplice fetta d'arancia. Riempi la tua dose di vitamina C e cocktail allo stesso tempo!	https://www.thecocktaildb.com/images/media/drink/kb4bjg1604179771.jpg	t	\N
17831	A Furlong Too Late	Ordinary Drink	Pour the rum and ginger beer into a highball glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.	Not yet provided	Not yet provided	Den Rum und das Ingwerbier in ein Highball-Glas gießen, das fast mit Eiswürfeln gefüllt ist. Gut umrühren. Mit der Zitronenscheibe garnieren.	Guarnire con la scorza di limone.Versare il rum e la ginger beer in un bicchiere highball quasi riempito di cubetti di ghiaccio.Mescolare bene.	https://www.thecocktaildb.com/images/media/drink/ssxvww1472669166.jpg	t	2016-08-31 19:46:06
11025	Amaretto And Cream	Ordinary Drink	Shake well with cracked ice, strain contents into a cocktail glass, and serve.	Not yet provided	Not yet provided	Mit zerkleinertem Eis gut schütteln, Inhalt in ein Cocktailglas abseihen und servieren.	Shakerare bene con ghiaccio tritato, filtrare il contenuto in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/dj8n0r1504375018.jpg	t	2017-09-02 18:56:58
11227	Champagne Cocktail	Ordinary Drink	Add dash of Angostura bitter onto sugar cube and drop it into champagne flute. Add cognac followed by gently pouring chilled champagne. Garnish with orange slice and maraschino cherry.	Not yet provided	Not yet provided	Einen Schuss Angostura-Bitter auf den Zuckerwürfel geben und in das Champagner Glas geben. Füge Cognac hinzu, gefolgt von sanftem Gießen des gekühlten Champagner. Mit Orangenscheibe und Maraschinokirsche garnieren.	Aggiungere un goccio di Angostura bitter sulla zolletta di zucchero e lasciarlo cadere nella flûte di champagne. Aggiungere il cognac e poi versare delicatamente lo champagne freddo.Guarnire con fetta d'arancia e ciliegia al maraschino.	https://www.thecocktaildb.com/images/media/drink/t5pv461606773026.jpg	t	2017-09-02 16:40:11
11542	Jack Rose Cocktail	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/uuqqrv1439907068.jpg	t	2015-08-18 15:11:08
11664	Lone Tree Cocktail	Ordinary Drink	Stir ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Zutaten mit Eis verrühren, in ein Cocktailglas abseihen und servieren.	Mescolare gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/tsxpty1468923417.jpg	t	2016-07-19 11:16:57
11961	Port And Starboard	Ordinary Drink	Pour carefully into a pousse-cafe glass, so that creme de menthe floats on grenadine. Serve without mixing.	Not yet provided	Not yet provided	Vorsichtig in ein Pousse-Café-Glas gießen, damit die Creme de Menthe auf Grenadine schwimmt. Ohne zu mischen servieren.	Versare con cura in un bicchiere pousse-cafè, in modo che la crema di menta galleggi sulla granatina. Servire senza mescolare.	https://www.thecocktaildb.com/images/media/drink/wxvupx1441553911.jpg	t	2015-09-06 16:38:31
11963	Port Wine Cocktail	Ordinary Drink	Stir ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Zutaten mit Eis verrühren, in ein Cocktailglas abseihen und servieren.	Mescolare gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/qruprq1441553976.jpg	t	2015-09-06 16:39:36
12722	Strawberry Shivers	Other/Unknown	Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.	Not yet provided	Not yet provided	Alle Zutaten in den Mixer geben - abdecken und bei mittlerer Geschwindigkeit schaumig schlagen, bis sie gut vermischt sind. In ein großes, 2 mittlere oder 3 kleine Gläser füllen und geniessen.	Mettere tutti gli ingredienti nella caraffa del frullatore - coprire e montare a velocità media fino a quando non sono ben amalgamati.Versare in un bicchiere alto, 2 medi o 3 piccoli e bere.	https://www.thecocktaildb.com/images/media/drink/9h1vvt1487603404.jpg	f	2017-02-20 15:10:04
12732	Chocolate Beverage	Cocoa	Boil milk in the top of a deep double boiler five minutes. Remove from fire and add chocolate, mixed with the cinnamon, a little at a time, beating with molinillo or egg beater after each addition. When the chocolate is thoroughly blended, heat to the boiling point. Place over bottom of double boiler and add eggs, whipping constantly, until they are thoroughly blended and the mixture is frothing. Serve in coffee mug. Serves eight.	Not yet provided	Not yet provided	Kochen Sie Milch in dem oberen Bereich eines Doppelkochers für fünf Minuten. Von der Kochstelle nehmen und Schokolade, gemischt mit dem Zimt, nach und nach hinzufügen. Mit einem Molinillo oder Schneebesen nach jedem Hinzufügen, schlagen. Wenn die Schokolade gründlich vermischt ist, bis zum Kochen erhitzen. Auf den Boden des Doppelkochers legen und die Eier unter ständigem Schlagen hinzufügen, bis sie vollständig vermischt sind und die Mischung schäumt. In einer Kaffeetasse servieren. Für acht Personen.	Fai bollire il latte a bagnomaria per cinque minuti.\r\nTogliete dal fuoco e aggiungete poco alla volta il cioccolato, mescolato alla cannella.\r\nSbattere con un molinillo o una frusta dopo ogni aggiunta.\r\nQuando il cioccolato è completamente amalgamato, scalda a ebollizione.\r\nMettere sul fondo del bagnomaria e aggiungere le uova, sbattendo continuamente, fino a quando non saranno completamente amalgamate e il composto non sarà schiumoso.\r\nServire in una tazza da caffè.\r\nPer otto persone.	https://www.thecocktaildb.com/images/media/drink/jbqrhv1487603186.jpg	f	2017-02-20 15:06:26
178326	White Wine Sangria	Punch / Party Drink	Chop the Lemon, Lime and other fruits into large chunks. Fill the Pitcher with the white wine and mix in the Apple Brandy. Top to taste with soda water.	Not yet provided	Not yet provided	Not yet provided	Trita il limone, il lime e altri frutti a pezzi grandi. Riempite la brocca con il vino bianco e aggiungete il Brandy di mele. Versare a piacere l'acqua di seltz.	https://www.thecocktaildb.com/images/media/drink/hnuod91587851576.jpg	t	\N
178339	The Strange Weaver	Cocktail	Mix ingredients slowly in a glass with ice, garnish with orange slice	Not yet provided	Not yet provided	Not yet provided	Mescolare gli ingredienti lentamente in un bicchiere con ghiaccio, guarnire con una fetta d'arancia	https://www.thecocktaildb.com/images/media/drink/opxjzh1604179528.jpg	t	\N
16134	Absolutly Screwed Up	Cocktail	Shake it up it tasts better that way, but you can stir it if you want. 6 of those and you will be wasted for the rest of the night.	Not yet provided	Not yet provided	Schütteln Sie, schmeckt es besser, aber Sie können es auch rühren, wenn Sie wollen. 6 davon und du wirst für den Rest der Nacht erledigt sein.	Agitalo perché ha un sapore migliore, ma puoi mescolarlo se vuoi.\r\n6 di quelli e sarai ubriaco per il resto della notte.	https://www.thecocktaildb.com/images/media/drink/yvxrwv1472669728.jpg	t	2016-08-31 19:55:28
12736	Drinking Chocolate	Cocoa	Heat the cream and milk with the cinnamon and vanilla bean very slowly for 15-20 minutes. (If you don't have any beans add 1-2 tsp of vanilla after heating). Remove the bean and cinnamon. Add the chocolate. Mix until fully melted. Serve topped with some very dense fresh whipped cream. Serves 1-2 depending upon how much of a glutton you are. For a richer chocolate, use 4 oz of milk, 4 oz of cream, 4 oz of chocolate. Serve in coffee mug.	Not yet provided	Not yet provided	Sahne und Milch mit Zimt und Vanilleschote sehr langsam für 15-20 Minuten erhitzen. (Wenn Sie keine Schoten haben, geben Sie nach dem Erhitzen 1-2 Teelöffel Vanillearoma dazu). Bohnen und Zimt entfernen. Fügen Sie die Schokolade hinzu. Mischen, bis sie vollständig geschmolzen sind. Mit sehr dicker, frischer Schlagsahne servieren. Für 1-2 Personen. Für eine reichhaltigere Schokolade verwenden Sie 4 oz Milch, 4 oz Sahne, 4 oz Schokolade. In einer Kaffeetasse servieren.	Riscaldare la panna e il latte con la cannella e il baccello di vaniglia molto lentamente per 15-20 minuti.\r\n(Se non hai i baccelli, aggiungi 1-2 cucchiaini di aroma di vaniglia dopo il riscaldamento).\r\nRimuovere i fagioli e la cannella.\r\nAggiungi il cioccolato.\r\nMescolare fino a completo scioglimento.\r\nServire con panna montata fresca e molto densa.\r\nPer 1-2 persone.\r\nPer un cioccolato più ricco, usa 120 ml di latte, 120 ml di panna e 100 ml di cioccolato.\r\nServire in una tazza da caffè.	https://www.thecocktaildb.com/images/media/drink/u6jrdf1487603173.jpg	f	2017-02-20 15:06:13
12772	Iced Coffee Fillip	Coffee / Tea	Mix together in a coffee mug and chill before serving.	Not yet provided	Not yet provided	In einer Kaffeetasse vermischen und vor dem Servieren kalt stellen.	Mescolare insieme in una tazza da caffè e raffreddare prima di servire.	https://www.thecocktaildb.com/images/media/drink/sxtxrp1454514223.jpg	t	2016-02-03 15:43:43
13032	Spiced Peach Punch	Punch / Party Drink	Combine peach nectar, orange juice and brown sugar in a large saucepan. Tie cinnamon and cloves in a small cheesecloth bag. Drop into saucepan. Heat slowly, stirring constantly, until sugar dissolves. Simmer 10 minutes. Stir in lime juice. Serve in hot mugs.	Not yet provided	Not yet provided	Pfirsichnektar, Orangensaft und braunen Zucker in einem großen Topf vermengen, Zimt und Nelken in einem kleinen Seihtuchbeutel binden. In den Topf eintauchen, langsam unter ständigem Rühren erhitzen, bis sich der Zucker auflöst. 10 Minuten köcheln lassen. Limettensaft unterrühren. In heißen Tassen servieren.	Unisci il nettare di pesca, il succo d'arancia e lo zucchero di canna in una grande casseruola.\r\nLega cannella e chiodi di garofano in un piccolo sacchetto di garza.\r\nMettili nella casseruola.\r\nRiscaldare lentamente, mescolando continuamente, fino a quando lo zucchero si dissolve.\r\nFai bollire 10 minuti.\r\nAggiungi il succo di lime.\r\nServire in tazze calde.	https://www.thecocktaildb.com/images/media/drink/qxvypq1468924331.jpg	f	2016-07-19 11:32:11
13068	Brave Bull Shooter	Shot	Pour Tabasco into bottom of shot glass and fill with tequila.	Not yet provided	Not yet provided	Tabasco auf den Boden des Schnapsglases geben und mit Tequila füllen.	Versare il Tabasco sul fondo di un bicchierino e riempire con la tequila.	https://www.thecocktaildb.com/images/media/drink/yrtypx1473344625.jpg	t	2016-09-08 15:23:45
13202	Flaming Dr. Pepper	Shot	Add Amaretto, Bacardi, and vodka. Mix in the Dr. Pepper and beer	Not yet provided	Not yet provided	Amaretto, Bacardi und Wodka vermengen. Dr. Pepper und Bier unterrühren.	Aggiungi Amaretto, Bacardi e vodka.Mescolare il Dr. Pepper e la birra	https://www.thecocktaildb.com/images/media/drink/d30z931503565384.jpg	t	2017-08-24 10:03:04
14107	Absolut Summertime	Cocktail	Add all ingredients except lemon to shaker filled with ice. Cover and shake vigorously. Strain contents into ice filled collins glass. Garnish with lemon.	Not yet provided	Not yet provided	Alle Zutaten außer Zitrone in den mit Eis gefüllten Shaker geben. Abdecken und kräftig schütteln. Inhalt in eisgefülltes Collins-Glas abseihen. Mit Zitrone garnieren.	Aggiungere tutti gli ingredienti tranne il limone in uno shaker pieno di ghiaccio.\r\nCoprite e agitate energicamente.\r\nFiltrare il contenuto in un bicchiere collins pieno di ghiaccio.\r\nGuarnire con il limone.	https://www.thecocktaildb.com/images/media/drink/trpxxs1472669662.jpg	t	2016-08-31 19:54:22
15200	A Day at the Beach	Ordinary Drink	Shake Rum, Amaretto, and Orange Juice in a shaker filled with ice. Strain over ice into a highball glass. Add Grenadine and garnish with a Pineapple Wedge and a Strawberry.	Not yet provided	Not yet provided	Rum, Amaretto und Orangensaft in einem mit Eis gefüllten Shaker schütteln. Über Eis in ein Highball-Glas abseihen. Grenadine hinzufügen und mit einem Ananaskeil und einer Erdbeere garnieren.	Shakerare rum, amaretto e succo d'arancia in uno shaker pieno di ghiaccio.\r\nFiltrare sul ghiaccio in un bicchiere highball.\r\nAggiungere la granatina e guarnire con uno spicchio di ananas e una fragola.	https://www.thecocktaildb.com/images/media/drink/trptts1454514474.jpg	t	2016-02-03 15:47:54
17184	Between The Sheets	Ordinary Drink	Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten in den Shaker mit Eiswürfeln geben, schütteln, in ein gekühltes Cocktailglas abseihen.	Versare tutti gli ingredienti in uno shaker con cubetti di ghiaccio, shakerare e filtrare in una coppetta da cocktail ghiacciata.	https://www.thecocktaildb.com/images/media/drink/of1rj41504348346.jpg	t	2017-09-02 11:32:26
15951	Black Forest Shake	Milk / Float / Shake	In a blender put ice cubes, chocolate syrup, cherry brandy, vodka, and milk. Blend very well.	Not yet provided	Not yet provided	In einen Mixer Eiswürfel, Schokoladensirup, Kirschwasser, Wodka und Milch geben. Sehr gut mischen.	In un frullatore mettere i cubetti di ghiaccio, lo sciroppo di cioccolato, il brandy di ciliegie, la vodka e il latte.\r\nMiscela molto bene.	https://www.thecocktaildb.com/images/media/drink/xxtxsu1472720505.jpg	t	2016-09-01 10:01:45
16158	Whitecap Margarita	Other/Unknown	Place all ingredients in a blender and blend until smooth. This makes one drink.	Not yet provided	Not yet provided	Alle Zutaten in einen Mixer geben und mischen.	Metti tutti gli ingredienti in un frullatore e frulla fino a che non diventa liscio.	https://www.thecocktaildb.com/images/media/drink/srpxxp1441209622.jpg	t	2015-09-02 17:00:22
16354	Arizona Antifreeze	Shot	Pour all ingredients into shot glass and slam !!!!	Not yet provided	Not yet provided	Alle Zutaten in ein Schnapsglas geben und verrühren.	Versate tutti gli ingredienti nel bicchierino e mescolate!	https://www.thecocktaildb.com/images/media/drink/dbtylp1493067262.jpg	t	2017-04-24 21:54:22
16987	Irish Curdling Cow	Cocktail	Pour Irish Cream, Vodka, and Bourbon in a glass. Add some ice and mix in the orange juice.	Not yet provided	Not yet provided	Geben Sie Irish Cream, Wodka und Bourbon in ein Glas. Etwas Eis dazugeben und den Orangensaft unterrühren.	Versare Irish Cream, Vodka e Bourbon in un bicchiere.\r\nAggiungere un po’ di ghiaccio e mescolare il succo d'arancia.	https://www.thecocktaildb.com/images/media/drink/yrhutv1503563730.jpg	t	2017-08-24 09:35:30
17229	Adios Amigos Cocktail	Cocktail	Shake together all the ingredients and strain into a cold glass.	Not yet provided	Not yet provided	Alle Zutaten vermengen und in ein kaltes Glas abseihen.	Shakerare insieme tutti gli ingredienti e filtrare in un bicchiere freddo.	https://www.thecocktaildb.com/images/media/drink/8nk2mp1504819893.jpg	t	2017-09-07 22:31:33
11205	California Lemonade	Ordinary Drink	Shake all ingredients (except carbonated water) with ice and strain into a collins glass over shaved ice. Fill with carbonated water and stir. Decorate with slices of orange and lemon. Add the cherry and serve with a straw.	Not yet provided	Not yet provided	Alle Zutaten (außer kohlensäurehaltigem Wasser) mit Eis schütteln und in ein Collins-Glas über geschabtem Eis sieben. Mit kohlensäurehaltigem Wasser auffüllen und umrühren. Mit Orangen- und Zitronenscheiben dekorieren. Die Kirsche dazugeben und mit einem Strohhalm servieren.	Shakerare tutti gli ingredienti (eccetto l'acqua gassata) con ghiaccio e filtrare in un bicchiere Collins su ghiaccio tritato.Decorare con fettine di arancia e limone.Riempi con acqua gassata e mescola.Aggiungere la ciliegia e servire con una cannuccia.	https://www.thecocktaildb.com/images/media/drink/q5z4841582484168.jpg	t	2016-08-28 18:47:04
12316	Strawberry Daiquiri	Ordinary Drink	Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.	Not yet provided	Not yet provided	Alle Zutaten in den Shaker mit Eiswürfeln geben. Gut schütteln. In einem gekühlten Cocktailglas abseihen.	Versare tutti gli ingredienti nello shaker con cubetti di ghiaccio.Filtrare in una coppetta da cocktail ghiacciata. Agitare bene.	https://www.thecocktaildb.com/images/media/drink/deu59m1504736135.jpg	t	2017-09-06 23:15:36
12474	Waikiki Beachcomber	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/ysuqus1441208583.jpg	t	2015-09-02 16:43:03
12744	Microwave Hot Cocoa	Cocoa	Combine sugar, cocoa, salt and hot water in 1-quart micro-proof measuring cup (or coffee mug). Microwave at HIGH (100%) for 1 to 1 1/2 minutes or until boiling. Add milk, sitr and microwave an additonal 1 1/2 to 2 minutes or until hot. Stir in vanilla, blend well.	Not yet provided	Not yet provided	Mischen Sie Zucker, Kakao, Salz und heißes Wasser in einer Kaffeetasse. In der Mikrowelle bei höchster Stufe zum Kochen bringen. Milch, Sitr zugeben und nochmals erwärmen. Vanille unterrühren, gut vermischen.	Unisci lo zucchero, il cacao, il sale e l'acqua calda in un misurino da 1 litro (o tazza da caffè).\r\nMetti il preparato dentro un forno a microonde al massimo della temperatura per 1 minuto o 1 minuto e mezzo o fino all'ebollizione.\r\nAggiungere il latte, mescolare e cuocere nel microonde per 1 minuto o finché non è caldo.\r\nMescolare la vaniglia, mescolare bene.	https://www.thecocktaildb.com/images/media/drink/8y4x5f1487603151.jpg	f	2017-02-20 15:05:51
12746	Nuked Hot Chocolate	Cocoa	Mix with a bit of milk (1 oz or so) in coffee mug. Nuke mug for about 30-50 seconds. Stir until the heated cocoa dissolves. Fill mug with milk. Nuke for 1-2 minutes, depending on wattage and preferences as to burnt mouth parts.	Not yet provided	Not yet provided	Mit etwas Milch (etwa 3 cl.) in der Kaffeetasse mischen. Für ca. 30-50 Sekunden erhitzen. Rühren, bis sich der erhitzte Kakao auflöst. Füllen Sie die Tasse mit Milch ein. Nochmals erhitzen.	Mescola tutti gli ingredienti con un po’ di latte (circa 3 cl. ). Riscaldare per circa 30-50 secondi.\r\nMescolare fino a quando il cacao riscaldato si scioglie.\r\nRiempi la tazza di latte.\r\nRiscalda di nuovo.	https://www.thecocktaildb.com/images/media/drink/xcu6nb1487603142.jpg	f	2017-02-20 15:05:43
12760	Surf City Lifesaver	Ordinary Drink	Lots of ice and soda top up in tall glass with cherry and a grin.	Not yet provided	Not yet provided	Viel Eis und Soda in einem hohen Glas mit Cherry und Gin auffüllen.	Riempi un bicchiere alto con molto ghiaccio e versaci tutti gli ingredienti. Mescola.	https://www.thecocktaildb.com/images/media/drink/2rzfer1487602699.jpg	t	2017-02-20 14:58:19
13036	Strawberry Lemonade	Punch / Party Drink	Throw everything into a blender and mix until fairly smooth. Serve over ice.	Not yet provided	Not yet provided	Alles in einen Mixer geben und mischen, bis es ziemlich geschmeidig ist. Auf Eis servieren.	Getta tutto in un frullatore e mescola fino a che non sia abbastanza liscio.\r\nServire con ghiaccio.	https://www.thecocktaildb.com/images/media/drink/spvvxp1468924425.jpg	f	2016-07-19 11:33:45
13042	Sunny Holiday Punch	Punch / Party Drink	Combine all ingredients in a punch bowl.	Not yet provided	Not yet provided	Alle Zutaten in einer Bowle vermengen.	Unisci tutti gli ingredienti in una ciotola da punch.	https://www.thecocktaildb.com/images/media/drink/rywtwy1468924758.jpg	f	2016-07-19 11:39:18
13675	Flander's Flake-Out	Ordinary Drink	Bang 'em both in.	Not yet provided	Not yet provided	Bang sie beide.	Versa in un bicchiere tutti gli ingredienti. Agitare bene	https://www.thecocktaildb.com/images/media/drink/sqvqrx1461866705.jpg	t	2016-04-28 19:05:05
14306	Amaretto Stone Sour	Other/Unknown	Shake and Serve over ice	Not yet provided	Not yet provided	Schütteln und über Eis servieren	Shakerare e servire con ghiaccio	https://www.thecocktaildb.com/images/media/drink/xwryyx1472719921.jpg	t	2016-09-01 09:52:01
15092	Pysch Vitamin Light	Ordinary Drink	Shake with ice.	Not yet provided	Not yet provided	Mit Eis schütteln.	Shakerare con ghiaccio.	https://www.thecocktaildb.com/images/media/drink/xsqsxw1441553580.jpg	f	2015-09-06 16:33:00
15789	Snakebite and Black	Beer	Put blackcurrant squash in first up to about 1cm in glass. Then add the larger and cider one after another.	Not yet provided	Not yet provided	Zuerst den schwarzen Johannisbeer-Kürbis bis zu ca. 1 cm in ein Glas geben. Dann das Lagerbier und den Apfelwein nacheinander hinzufügen.	Mettere prima la bevanda di ribes nero fino a circa 1 cm nel bicchiere. Quindi aggiungere la birrà lager e il cedro uno dopo l'altro.	https://www.thecocktaildb.com/images/media/drink/rssvwv1441248863.jpg	t	2015-09-03 03:54:23
16271	The Evil Blue Thing	Cocktail	Pour ingredients into glass, and drop in a blue whale! The blue whale isn't really necessary, but it makes the drink more "fun".	Not yet provided	Not yet provided	Gießen Sie die Zutaten in ein Glas und lassen Sie sie in einen Blauwal fallen! Der Blauwal ist nicht wirklich notwendig, aber er macht den Drink mehr "Spaß".	Versa gli ingredienti nel bicchiere e versa un po’ di Blue Curacao! Il Blue Curacao non è proprio necessario, ma rende la bevanda più "divertente".	https://www.thecocktaildb.com/images/media/drink/ojnpz71504793059.jpg	t	2017-09-07 15:04:19
16275	Jack's Vanilla Coke	Other/Unknown	After pouring in your ingredients, and adding 3-5 ice cubes, according to taste. Stir the drink with a stirrer to get the Vanilla off the bottom.	Not yet provided	Not yet provided	Nach dem Einfüllen der Zutaten und dem Hinzufügen von 3-5 Eiswürfeln je nach Geschmack, rühren Sie das Getränk mit einem Rührer um, um die Vanille vom Boden zu lösen.	Dopo aver versato gli ingredienti e aver aggiunto 3-5 cubetti di ghiaccio, a piacere.\r\nMescola la bevanda con un agitatore per eliminare la vaniglia dal fondo.	https://www.thecocktaildb.com/images/media/drink/kjnt7z1504793319.jpg	t	2017-09-07 15:08:39
16485	Flaming Lamborghini	Cocktail	Pour the Sambuca and Kahlua into the Cocktail Glass and give the drinker a straw. Pour the Baileys and Blue Curacao into two sepsrate shot glasses either side of the cocktail glass. Set light the concotion in the cocktail glass and start to drink through the straw (this drink should be drunk in one) , as the bottom of the glass is reached put out the fire by pouring the Baileys and Blue Curacao into the cocktail glass and keep drinking till it's all gone!!	Not yet provided	Not yet provided	Gießen Sie den Sambuca und Kahlua in das Cocktailglas und geben Sie dem Trinker einen Strohhalm. Gießen Sie die Baileys und den blauen Curacao in zwei getrennte Schnapsgläser auf beiden Seiten des Cocktailglases. Zünden Sie die Mischung im Cocktailglas an und beginnen Sie, durch den Strohhalm zu trinken (dieses Getränk sollte in einem getrunken werden), da der Boden des Glases erreicht wird, löschen Sie das Feuer, indem Sie die Baileys und Blue Curacao in das Cocktailglas gießen und weiter trinken, bis alles weg ist!	Versare la Sambuca e la Kahlua nel bicchiere da cocktail e dare una cannuccia al bevitore.\r\nVersare il Baileys e il Blue Curacao in due bicchierini separati su entrambi i lati del bicchiere da cocktail.\r\nAccendi la miscela nel bicchiere da cocktail e inizia a bere attraverso la cannuccia (questa bevanda dovrebbe essere bevuta in una volta sola), mentre il fondo del bicchiere viene raggiunto spegni il fuoco versando il Baileys e il Blue Curacao nel bicchiere da cocktail 	https://www.thecocktaildb.com/images/media/drink/yywpss1461866587.jpg	t	2016-04-28 19:03:07
16943	A Gilligan's Island	Cocktail	Shaken, not stirred!	Not yet provided	Not yet provided	Geschüttelt, nicht gerührt!	Agita non mescolare!	https://www.thecocktaildb.com/images/media/drink/wysqut1461867176.jpg	t	2016-04-28 19:12:56
17094	Alice in Wonderland	Ordinary Drink	Just mix the three ingredients one to one to one	Not yet provided	Not yet provided	Mische einfach die drei Zutaten.	Basta mescolare i tre ingredienti uno a uno a uno	https://www.thecocktaildb.com/images/media/drink/g12lj41493069391.jpg	t	2017-04-24 22:29:51
17224	Absolutely Fabulous	Cocktail	Mix the Vodka and Cranberry juice together in a shaker and strain into a glass. Top up with Champagne.	Not yet provided	Not yet provided	Den Wodka- und Preiselbeersaft in einem Shaker vermischen und in ein Glas abseihen. Mit Champagner auffüllen.	Mescolare la vodka e il succo di mirtillo rosso in uno shaker e filtrare in un bicchiere. Rabboccare con lo champagne.	https://www.thecocktaildb.com/images/media/drink/abcpwr1504817734.jpg	t	2017-09-07 21:55:34
178335	Lazy Coconut Paloma	Cocktail	Mix the coconut liqueur (preferably tequila) with the grapefruit juice and top with soda water. Garnish with a large grapefruit slice against the inside of the glass.	Not yet provided	Not yet provided	Not yet provided	Mescolare il liquore al cocco (preferibilmente tequila) con il succo di pompelmo e guarnire con acqua di seltz. Versare una grossa fetta di pompelmo dentro il bicchiere.	https://www.thecocktaildb.com/images/media/drink/rytuex1598719770.jpg	t	\N
11121	Bobby Burns Cocktail	Ordinary Drink	Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Zitronenschale) mit Eis verrühren und in ein Cocktailglas abseihen. Die Zitronenschale hinzufügen und servieren.	Aggiungere la scorza di limone e servire.Mescolare tutti gli ingredienti (tranne la buccia di limone) con ghiaccio e filtrare in una coppetta da cocktail.	https://www.thecocktaildb.com/images/media/drink/km6se51484411608.jpg	t	2017-01-14 16:33:28
11390	Frozen Mint Daiquiri	Ordinary Drink	Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into an old-fashioned glass and serve.	Not yet provided	Not yet provided	Alle Zutaten mit 1 Tasse Crushed Ice in einem Elektromixer bei niedriger Geschwindigkeit für kurze Zeit mischen. In ein old-fashioned Glas geben und servieren.	Unire tutti gli ingredienti (tranne la ciliegia) in un frullatore elettrico e frullare a bassa velocità per cinque secondi, quindi frullare ad alta velocità fino a quando non si rassoda.Versare il contenuto in una flûte da champagne, guarnire con la ciliegia e servire.	https://www.thecocktaildb.com/images/media/drink/jrhn1q1504884469.jpg	t	2017-09-08 16:27:49
12322	Strawberry Margarita	Ordinary Drink	Rub rim of cocktail glass with lemon juice and dip rim in salt. Shake schnapps, tequila, triple sec, lemon juice, and strawberries with ice, strain into the salt-rimmed glass, and serve.	Not yet provided	Not yet provided	Cocktailglasrand mit Zitronensaft und Tauchrand in Salz wenden. Schnaps, Tequila, Triple-Sec, Zitronensaft und Erdbeeren mit Eis schütteln, in das salzige Glas sieben und servieren.	Strofinare il bordo del bicchiere da cocktail con succo di limone e immergerlo nel sale. Shakerare grappa, tequila, triple sec, succo di limone e fragole con ghiaccio, filtrare nel bicchiere bordato di sale e servire.	https://www.thecocktaildb.com/images/media/drink/tqyrpw1439905311.jpg	t	2015-08-18 14:41:51
12710	Apple Berry Smoothie	Other/Unknown	Throw everything into a blender and liquify.	Not yet provided	Not yet provided	Alles in einen Mixer geben und aufschlagen.	Getta tutto in un frullatore e liquida.	https://www.thecocktaildb.com/images/media/drink/xwqvur1468876473.jpg	f	2016-07-18 22:14:33
12714	Kiwi Papaya Smoothie	Other/Unknown	Throw everything into a blender and liquify.	Not yet provided	Not yet provided	Alles in einen Mixer geben und aufschlagen.	Getta tutto in un frullatore e liquida.	https://www.thecocktaildb.com/images/media/drink/jogv4w1487603571.jpg	f	2017-02-20 15:12:51
13535	Pink Panty Pulldowns	Ordinary Drink	Shake well	Not yet provided	Not yet provided	Gut schütteln	Versa in un bicchiere tutti gli ingredienti. Agitare bene	https://www.thecocktaildb.com/images/media/drink/squsuy1468926657.jpg	t	2016-07-19 12:10:57
14133	Cosmopolitan Martini	Cocktail	Pour all ingredients in mixing glass half filled with ice, shake and strain into chilled Martini glass.	Not yet provided	Not yet provided	Alle Zutaten in ein halb mit Eis gefülltes Mischglas geben, schütteln und in ein gekühltes Martini-Glas abseihen.	Versare tutti gli ingredienti in un mixing glass, riempito a metà con ghiaccio, shakerare e filtrare in una coppetta Martini ghiacciata.	https://www.thecocktaildb.com/images/media/drink/upxxpq1439907580.jpg	t	2015-08-18 15:19:40
14282	California Root Beer	Soft Drink / Soda	Put Kahlua and Galliano in highball glass fill with soda	Not yet provided	Not yet provided	Kahlua und Galliano in ein Highball-Glas geben und mit Soda füllen.	Mettere Kahlua e Galliano nel bicchiere highball riempito di soda	https://www.thecocktaildb.com/images/media/drink/rsxuyr1472719526.jpg	t	2016-09-01 09:45:26
14510	Bailey's Dream Shake	Soft Drink / Soda	Blend ingredients for 30 seconds. Definitely refreshing for a hot summer's day !	Not yet provided	Not yet provided	Zutaten für 30 Sekunden mischen. Definitiv erfrischend für einen heißen Sommertag!	Decisamente rinfrescante per una calda giornata estiva! Frulla gli ingredienti per 30 secondi.	https://www.thecocktaildb.com/images/media/drink/qxrvqw1472718959.jpg	t	2016-09-01 09:35:59
17005	A True Amaretto Sour	Cocktail	Rub the rim of an old fashioned glass with lemon, and dip repeatedly into granulated sugar until it has a good "frosted" rim. Shake a jigger of Amaretto with the juice of 1/2 a lemon. Strain into glass and add ice. Garnish with a Marachino Cherry.	Not yet provided	Not yet provided	Reiben Sie den Rand eines old fashioned Glases mit Zitrone ein und tauchen Sie es wiederholt in Kristallzucker, bis es einen guten "gefrosteten" Rand hat. Einen Jigger Amaretto mit dem Saft von 1/2 Zitrone schütteln. In ein Glas abseihen und Eis hinzufügen. Mit einer Marachinokirsche garnieren.	Strofinare il bordo di un bicchiere vecchio stile con il limone e immergerlo ripetutamente nello zucchero semolato fino a ottenere un buon bordo "glassato".\r\nShakerare un jigger di Amaretto con il succo di 1/2 limone.\r\nFiltrare nel bicchiere e aggiungere il ghiaccio.\r\nGuarnire con una ciliegia al maraschino.	https://www.thecocktaildb.com/images/media/drink/rptuxy1472669372.jpg	t	2016-08-31 19:49:32
17204	Long Island Iced Tea	Ordinary Drink	Mix all contents in a highball glass and sitr gently. Add dash of Coca-Cola for the coloring and garnish with lemon or lime twist.	Not yet provided	Not yet provided	Den gesamten Inhalt in einem Highball-Glas mischen und vorsichtig umrühren. Für die Farbgebung einen Schuss Coca-Cola hinzufügen und mit Zitronen- oder Limettenspirale garnieren.	Mescolare tutto il contenuto in un bicchiere highball e mescolare delicatamente.\r\nAggiungere un pizzico di Coca-Cola per la colorazione e guarnire con una scorza di limone o lime.	https://www.thecocktaildb.com/images/media/drink/wx7hsg1504370510.jpg	t	2017-09-02 17:41:50
17214	Russian Spring Punch	Ordinary Drink	Pour the ingredients into an highball glass, top with Sparkling wine.	Not yet provided	Not yet provided	Die Zutaten in ein Highball-Glas geben und mit Sekt auffüllen.	Versare gli ingredienti in un bicchiere highball, guarnire con dello spumante.	https://www.thecocktaildb.com/images/media/drink/ctt20s1504373488.jpg	t	2017-09-02 18:31:28
178329	Captain Kidd's Punch	Cocktail	Mix all ingredients together in a shaker and strain into a collins glass. Use Caribbean dark Rum for a sweeter taste.	Not yet provided	Not yet provided	Not yet provided	Mescolare tutti gli ingredienti insieme in uno shaker e filtrare in un bicchiere Collins. Usa rum scuro caraibico per un gusto più dolce.	https://www.thecocktaildb.com/images/media/drink/d83spj1596017390.jpg	t	\N
11010	After Dinner Cocktail	Ordinary Drink	Shake all ingredients (except lime wedge) with ice and strain into a cocktail glass. Add the wedge of lime and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Limettenkeil) mit Eis schütteln und in ein Cocktailglas abseihen. Den Limettenkeil dazugeben und servieren.	Shakerare tutti gli ingredienti (eccetto uno spicchio di lime) con ghiaccio e filtrare in una coppetta da cocktail.Aggiungere lo spicchio di lime e servire.	https://www.thecocktaildb.com/images/media/drink/vtytxq1483387578.jpg	t	2017-01-02 20:06:18
11011	After Supper Cocktail	Ordinary Drink	Shake all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis schütteln, in ein Cocktailglas abseihen und servieren.	Shakerare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/quyxwu1483387610.jpg	t	2017-01-02 20:06:50
11145	Classic Old-Fashioned	Ordinary Drink	In an old-fashioned glass, muddle the bitters and water into the sugar cube, using the back of a teaspoon. Almost fill the glass with ice cubes and add the bourbon. Garnish with the orange slice and the cherry. Serve with a swizzle stick.	Not yet provided	Not yet provided	In einem old-fashioned Glas die Bitter und das Wasser mit der Rückseite eines Teelöffels in den Zuckerwürfel mischen. Füllen Sie das Glas fast mit Eiswürfeln und fügen Sie den Bourbon hinzu. Mit der Orangenscheibe und der Kirsche garnieren. Mit einem Quirlstab servieren.	In un bicchiere vecchio stile, mescola il bitter e l'acqua nella zolletta di zucchero. Riempite quasi il bicchiere di cubetti di ghiaccio e aggiungete il bourbon. Servire con un bastoncino di zucchero. Guarnire con la fetta d'arancia e la ciliegia.	https://www.thecocktaildb.com/images/media/drink/w8cxqv1582485254.jpg	t	2017-09-02 16:29:33
11339	English Rose Cocktail	Ordinary Drink	Rub rim of cocktail glass with lemon juice and dip rim of glass in powdered sugar. Shake all ingredients (except cherry) with ice and strain into sugar-rimmed glass. Top with the cherry and serve.	Not yet provided	Not yet provided	Reiben Sie den Rand des Cocktailglases mit Zitronensaft ein und tauchen den Rand des Glases in Puderzucker. Alle Zutaten (außer Kirsche) mit Eis schütteln und in das zuckerummantelte Glas abseihen. Mit der Kirsche garnieren und servieren.	Strofinare il bordo del bicchiere da cocktail con succo di limone e immergere il bordo del bicchiere nello zucchero a velo.Completare con la ciliegia e servire.Shakerare tutti gli ingredienti (tranne la ciliegia) con ghiaccio e filtrare in un bicchiere bordato di zucchero.	https://www.thecocktaildb.com/images/media/drink/yxwrpp1441208697.jpg	t	2015-09-02 16:44:57
11985	Quarter Deck Cocktail	Ordinary Drink	Stir all ingredients with ice, strain into a cocktail glass, and serve.	Not yet provided	Not yet provided	Alle Zutaten mit Eis verrühren, in ein Cocktailglas abseihen und servieren.	Mescolare tutti gli ingredienti con ghiaccio, filtrare in una coppetta da cocktail e servire.	https://www.thecocktaildb.com/images/media/drink/qrwvps1478963017.jpg	t	2016-11-12 15:03:37
12716	Mango Orange Smoothie	Other/Unknown	Throw everything into a blender and liquify.	Not yet provided	Not yet provided	Alles in einen Mixer geben und aufschlagen.	Getta tutto in un frullatore e liquida.	https://www.thecocktaildb.com/images/media/drink/vdp2do1487603520.jpg	f	2017-02-20 15:12:01
16202	Amaretto Sweet & Sour	Punch / Party Drink	Fill the blender with 3/4 ice. Add sweet & sour mix to the top of the ice. Add about 1" of pineapple juice, 1/2" of melon liqeur, and 1/2 to 1/4" of amaretto. Then blend the mix until it is of margaritta consistency or thinner.	Not yet provided	Not yet provided	Füllen Sie den Mixer mit 3/4 Eis. Geben Sie die süß-saure Mischung auf die Oberseite des Eises. Füge etwa 1" Ananassaft, 1/2" Melonenlikör und 1/2 bis 1/4" Amaretto hinzu. Dann die Mischung mischen, bis sie eine Margaritta-Konsistenz oder Verdünnung aufweist.	Riempi il frullatore con 3/4 di ghiaccio.\r\nAggiungi il mix sweet & sour sulla parte superiore del ghiaccio.\r\nAggiungere circa 15ml di succo di ananas, 8ml di liquore al melone, e tra gli 8ml e 4ml di amaretto.\r\nQuindi frullare il composto fino a ottenere una consistenza margarita o più sottile.	https://www.thecocktaildb.com/images/media/drink/vswwus1472668546.jpg	t	2016-08-31 19:35:46
17065	Caribbean Boilermaker	Beer	Pour the Corona into an 18oz beer glass pour the rum into the beer.	Not yet provided	Not yet provided	Gießen Sie die Corona in ein Bierglas und gießen Sie den Rum in das Bier.	Versare la Corona in un bicchiere da birra da 530ml e versare il rum nella birra.	https://www.thecocktaildb.com/images/media/drink/svsxsv1454511666.jpg	t	2016-02-03 15:01:06
17233	Salted Toffee Martini	Cocktail	Add ice, toffee gin, chocolate liqueur and Amaretto to a cocktail shaker and shake vigorously. \r\nPour the chocolate syrup into a saucer and dip the top of a martini glass into the sauce. Grate some of the Willie\\'s sea salt chocolate into another saucer and dip the coated glass, so the flakes stick to the sauce, creating a chocolate rim!\r\nPour the contents of the shaker into your chocolatey glass and sprinkle with more grated chocolate - enjoy!  	Not yet provided	Not yet provided	Eis, Toffee Gin, Schokoladenlikör und Amaretto in einen Cocktailshaker geben und kräftig schütteln.	Aggiungere ghiaccio, gin, liquore al cioccolato e amaretto in uno shaker e agitare energicamente.\r\nVersare lo sciroppo di cioccolato in un piattino e immergere la parte superiore di un bicchiere da martini nella salsa.\r\nGrattugiare un po 'di cioccolato al sale marino in un altro piattino e immergere il vetro rivestito, in modo che i fiocchi si attacchino alla salsa, creando un bordo di cioccolato! Versare il contenuto dello shaker nel bicchiere cioccolatoso e cospargere con altro cioccolato grattugiato - buon divertimento!	https://www.thecocktaildb.com/images/media/drink/3s6mlr1509551211.jpg	t	2017-11-01 15:46:51
178323	Passion Fruit Martini	Cocktail	Pour all ingredients into a glass and stir. Garnish with half a passion fruit piece.	Not yet provided	Not yet provided	Not yet provided	Versare tutti gli ingredienti in un bicchiere e mescolare. Guarnire con mezzo pezzo di frutto della passione.	https://www.thecocktaildb.com/images/media/drink/6trfve1582473527.jpg	t	\N
12720	Kill the cold Smoothie	Other/Unknown	Juice ginger and lemon and add it to hot water. You may add cardomom.	Not yet provided	Not yet provided	Ingwer und Zitrone entsaften und in heißes Wasser geben. Du kannst Cardomom hinzufügen.	Spremere lo zenzero e il limone e aggiungerlo all'acqua calda.Puoi aggiungere il cardamomo.	https://www.thecocktaildb.com/images/media/drink/7j1z2e1487603414.jpg	f	2017-02-20 15:10:15
14588	151 Florida Bushwacker	Milk / Float / Shake	Combine all ingredients. Blend until smooth. Garnish with chocolate shavings if desired.	Not yet provided	Not yet provided	Alle Zutaten vermengen. Mischen, bis alles glatt ist. Auf Wunsch mit Schokoladenraspeln garnieren.	Combina tutti gli ingredienti.\r\nFrulla fino a che è liscio.\r\nGuarnire con scaglie di cioccolato se lo si desidera.	https://www.thecocktaildb.com/images/media/drink/rvwrvv1468877323.jpg	t	2016-07-18 22:28:43
15675	A midsummernight dream	Ordinary Drink	Mix the strawberrys in a blender Pour it together with the vodka,kirch and strawberry liquer over ice in a shaker. Shake well and pour in a highballglass. Fill up with the Russchian water	Not yet provided	Not yet provided	Die Erdbeeren in einem Mixer mischen. Gießen Sie sie zusammen mit Wodka, Kirch und Erdbeerlikör über Eis in einen Shaker. Gut schütteln und ein Highball Glas einfüllen. Füllen Sie das russische Wasser auf.	Mescolare le fragole in un frullatore Versare insieme la vodka, il kirsch e il liquore alla fragola freddo in uno shaker.\r\nAgitare bene e versare in un bicchiere highball.\r\nAggiungi la Schweppes Russchian.	https://www.thecocktaildb.com/images/media/drink/ysqvqp1461867292.jpg	t	2016-04-28 19:14:52
16958	Apple Pie with A Crust	Other/Unknown	Just mix the two liquids and sprinkle in the cinnamon. Serve either cold or heated.	Not yet provided	Not yet provided	Einfach die beiden Flüssigkeiten mischen und den Zimt einstreuen. Servieren Sie entweder kalt oder warm.	Basta mescolare i due liquidi e cospargere di cannella. Servire freddo o caldo.	https://www.thecocktaildb.com/images/media/drink/qspqxt1472720078.jpg	t	2016-09-01 09:54:38
178334	Death in the Afternoon	Cocktail	Easy as you like, pour the absinthe into a chilled glass, top with champagne. Must be drunk mid afternoon for the optimum effect.	Not yet provided	Not yet provided	Not yet provided	Versa l'assenzio in un bicchiere ghiacciato e aggiungi dello champagne. 	https://www.thecocktaildb.com/images/media/drink/y7s3rh1598719574.jpg	t	\N
178346	Elderflower Caipirinha	Cocktail	Take the glass and muddle the lime in it. Fill the glass with crushed ice and add the Cachaca. Stir well and top with some more crushed ice. Garnish with lime and enjoy!	Not yet provided	Not yet provided	Not yet provided	In un bicchiere pestare il lime. Riempi il bicchiere con ghiaccio tritato e aggiungi la cachaca. Mescola bene e aggiungi altro ghiaccio tritato. Guarnire con il lime.	https://www.thecocktaildb.com/images/media/drink/dif7a31614006331.jpg	t	\N
17832	A Night In Old Mandalay	Ordinary Drink	In a shaker half-filled with ice cubes, combine the light rum, añejo rum, orange juice, and lemon juice. Shake well. Strain into a highball glass almost filled with ice cubes. Top with the ginger ale. Garnish with the lemon twist.	Not yet provided	Not yet provided	In einem Shaker, der halb mit Eiswürfeln gefüllt ist, den Light Rum, Aejo Rum, Orangensaft und Zitronensaft vermengen. Gut schütteln. In ein Highball-Glas abseihen, das fast mit Eiswürfeln gefüllt ist. Mit dem Ginger Ale bestreuen. Mit der Zitronenscheibe garnieren.	In uno shaker riempito a metà con cubetti di ghiaccio, unire il rum light, il rum aejo, il succo d'arancia e il succo di limone. Agitare bene. Filtrare in un bicchiere highball quasi pieno di cubetti di ghiaccio. Completare con la ginger ale. Guarnire con la scorza di limone.	https://www.thecocktaildb.com/images/media/drink/vyrvxt1461919380.jpg	t	2016-04-29 09:43:00
11243	Chocolate Black Russian	Ordinary Drink	Combine all ingredients in an electric blender and blend at a low speed for a short length of time. Pour into a chilled champagne flute and serve.	Not yet provided	Not yet provided	Alle Zutaten in einem Elektromixer bei niedriger Geschwindigkeit für kurze Zeit vermischen. In ein gekühltes Champagner Glas geben und servieren.	Versare in una flûte da champagne ghiacciata e servire.Unisci tutti gli ingredienti in un frullatore elettrico e frulla a bassa velocità per un breve periodo di tempo.	https://www.thecocktaildb.com/images/media/drink/yyvywx1472720879.jpg	t	2016-09-01 10:07:59
11476	Highland Fling Cocktail	Ordinary Drink	Stir all ingredients (except olive) with ice and strain into a cocktail glass. Add the olive and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer Oliven) mit Eis verrühren und in ein Cocktailglas abseihen. Die Olive dazugeben und servieren.	Mescolare tutti gli ingredienti (eccetto l'oliva) con ghiaccio e filtrare in una coppetta da cocktail.Aggiungere l'oliva e servire.	https://www.thecocktaildb.com/images/media/drink/0bkwca1492975553.jpg	t	2017-04-23 20:25:53
12656	Banana Strawberry Shake	Milk / Float / Shake	Blend all together in a blender until smooth.	Not yet provided	Not yet provided	Alles zusammen in einem Mixer mischen, bis es geschmeidig ist.	Frullate tutto insieme in un frullatore fino a che non risulti liscio.	https://www.thecocktaildb.com/images/media/drink/vqquwx1472720634.jpg	f	2016-09-01 10:03:54
16082	Almond Chocolate Coffee	Ordinary Drink	Pour in order into coffee cup. Top with whipped creme and chocolate shcvings.	Not yet provided	Not yet provided	In Reihenfolge in die Kaffeetasse gießen. Mit Schlagsahne und Schokoraspeln garnieren.	Versare in ordine in una tazzina da caffè.\r\nCompletare con panna montata e scaglie di cioccolato.	https://www.thecocktaildb.com/images/media/drink/jls02c1493069441.jpg	t	2017-04-24 22:30:41
178341	Orange Rosemary Collins	Cocktail	Add the spirits to the bottom of the glass and top equally with the mixer drinks. Garnish with orange slices inside the glass as well as some rosemary on top.	Not yet provided	Not yet provided	Not yet provided	Aggiungere gli alcolici sul fondo del bicchiere e sopra ugualmente con le bevande del mixer. Guarnire con fettine d'arancia nel bicchiere e sopra un po 'di rosmarino.	https://www.thecocktaildb.com/images/media/drink/mokcas1604179977.jpg	t	\N
12730	Castillian Hot Chocolate	Cocoa	Shift the cocoa and sugar together into a medium-sized saucepan. Dissolve the cornstarch in the water, and stir into the cocoa and sugar until it is a smooth paste. Begin heating the mixture, stirring it with a whisk, and gradually pour in the milk. Continue stirring with the whisk as you bring the liquid to a simmer. Allow the chocolate to simmer for about 10 minutes, stirring often, until it is thick, glossy and completely smooth. Serve steaming hot in coffee mug. Serves six.	Not yet provided	Not yet provided	Kakao und Zucker zusammen in einen mittelgroßen Topf geben. Die Maisstärke im Wasser auflösen und in Kakao und Zucker einrühren, bis eine glatte Masse entsteht. Beginnen Sie mit dem Erwärmen der Mischung, rühren Sie sie mit einem Schneebesen um und gießen Sie die Milch langsam ein. Mit dem Schneebesen weiterrühren, während Sie die Flüssigkeit zum Erhitzen bringen. Die Schokolade ca. 10 Minuten unter ständigem Rühren köcheln lassen, bis sie dick, glänzend und völlig glatt ist. In der Kaffeetasse dampfend heiß servieren. Für sechs Personen.	Trasferisci il cacao e lo zucchero in una casseruola di medie dimensioni.Sciogli l'amido di mais nell'acqua e amalgalo con il cacao e lo zucchero fino a ottenere una pasta liscia. Iniziate a scaldare il composto, mescolando con una frusta, e versate gradualmente il latte. Continua a mescolare con la frusta mentre porti il liquido a ebollizione. Lasciare sobbollire il cioccolato per circa 10 minuti, mescolando spesso, fino a quando non sarà denso, lucido e completamente liscio. Adesso la vostra cioccolata calda è pronta. Per sei persone.	https://www.thecocktaildb.com/images/media/drink/3nbu4a1487603196.jpg	f	2017-02-20 15:06:36
12738	Hot Chocolate to Die for	Cocoa	Melt the chocolate, butter and vanilla in a double boiler. When just smooth stir in the cream.	Not yet provided	Not yet provided	Schokolade, Butter und Vanille in einem Doppelkocher schmelzen. Wenn es glatt ist, die Sahne unterrühren.	Sciogliere il cioccolato, il burro e la vaniglia a bagnomaria.Quando risulterà liscio aggiungere la panna.	https://www.thecocktaildb.com/images/media/drink/0lrmjp1487603166.jpg	f	2017-02-20 15:06:06
12796	Caribbean Orange Liqueur	Homemade Liqueur	Pare very thinly the bright-colored rind from the oranges (no white). Blot the peel on paper towels to remove any excess oil. Put peel in a 4 cup screw-top jar. Add 2 cups vodka. Close jar. Store in a cool, dark place for 2 days or until the vodka has absorbed the flavor. Remove peel and add remaining vodka. Close jar and add remaining cup of vodka. Close the jar and store in a cool dark place at least 1 month to age.	Not yet provided	Not yet provided	Die hellfarbene Rinde der Orangen (kein Weiß) sehr dünn auftragen. Entfernen Sie die Schale auf Papiertüchern, um überschüssiges Öl zu entfernen. Schale in ein 4-Tassen-Schraubglas geben. Füge 2 Tassen Wodka hinzu. Glas schließen. An einem kühlen, dunklen Ort für 2 Tage oder bis der Wodka den Geschmack aufgenommen hat, lagern. Die Schale entfernen und den restlichen Wodka hinzufügen. Schließen Sie das Glas und lagern Sie es mindestens 1 Monat zur Reifung an einem kühlen, dunklen Ort.	1. Taglia molto sottilmente la scorza di colore brillante delle arance (non bianche). Asciugare la buccia su carta assorbente per eliminare l'olio in eccesso. Metti la buccia in un barattolo a vite da 4 tazze. Aggiungi 2 tazze di vodka. Chiudi il barattolo.\r\n\r\nConservare in un luogo fresco e buio per 2 giorni o finché la vodka non ha assorbito il sapore.\r\n\r\n2. Rimuovere la buccia e aggiungere la vodka rimanente. Chiudere il barattolo e aggiungere la rimanente tazza di vodka. Chiudere il barattolo e conservare in un luogo fresco e buio per almeno 1 mese per invecchiare.	https://www.thecocktaildb.com/images/media/drink/qwxuwy1472667570.jpg	t	2016-08-31 19:19:30
12914	Egg-Nog - Classic Cooked	Punch / Party Drink	In large saucepan, beat together eggs, sugar and salt, if desired. Stir in 2 cups of the milk. Cook over low heat, stirring constantly, until mixture is thick enough to coat a metal spoon and reaches 160 degrees F. Remove from heat. Stir in remaining 2 cups milk and vanilla. Cover and regfigerate until thoroughly chilled, several hours or overnight. Just before serving, pour into bowl or pitcher. Garnish or add stir-ins, if desired. Choose 1 or several of: Chocolate curls, cinnamon sticks, extracts of flavorings, flavored brandy or liqueur, fruit juice or nectar, ground nutmeg, maraschino cherries, orange slices, peppermint sticks or candy canes, plain brandy, run or whiskey, sherbet or ice-cream, whipping cream, whipped. Serve immediately.	Not yet provided	Not yet provided	In einem großen Topf Eier, Zucker und Salz verquirlen. 2 Tassen der Milch unterrühren. Bei schwacher Hitze unter ständigem Rühren kochen, bis die Mischung dick genug ist, um einen Metalllöffel zu überziehen und 70 Grad Celsius erreicht. Vom Herd nehmen. Die restlichen 2 Tassen Milch und Vanille unterrühren. Zugedeckt und gekühlt bis zur vollständigen Abkühlung, mehrere Stunden oder über Nacht. Kurz vor dem Servieren in eine Schüssel oder einen Krug geben. Garnieren oder ergänzen Sie Mischung, wenn gewünscht. Wählen Sie 1 oder mehrere: Mit Schoko-Curls, Zimtstangen, Aromaextrakte, aromatisierter Brandy oder Likör, Fruchtsaft oder Nektar, gemahlene Muskatnuss, Maraschinokirschen, Orangenscheiben, Pfefferminzstangen oder Zuckerstangen, schlichter Brandy, Rum oder Whiskey, Sorbet oder Eis, Schlagsahne, aufschlagen. Sofort servieren.	In una grande casseruola, sbatti insieme le uova, lo zucchero e il sale, se lo desideri.\r\nMescolare 2 tazze di latte.\r\nCuocere a fuoco basso, mescolando continuamente fino a quando il composto è abbastanza denso da ricoprire un cucchiaio di metallo e raggiunge i 71 gradi.\r\nTogliere dal fuoco.\r\nIncorporare le restanti 2 tazze di latte e la vaniglia.\r\nCoprire e conservare in frigorifero fino a completo raffreddamento, diverse ore o durante la notte.\r\nPoco prima di servire, versare nella ciotola o nella brocca.\r\nDecorare o aggiungere mescolanze, se lo si desidera.\r\nScegli uno o più riccioli di cioccolato, bastoncini di cannella, estratti di aromi, brandy o liquore aromatizzato, succo di frutta o nettare, noce moscata macinata, ciliegie al maraschino, fette d'arancia, bastoncini di menta piperita o bastoncini di zucchero, brandy semplice, rum o whisky, sorbetto o ghiaccio -crema, panna montata, montata.\r\nServite subito.	https://www.thecocktaildb.com/images/media/drink/quxsvt1468875505.jpg	f	2016-07-18 21:58:25
14157	Ziemes Martini Apfelsaft	Ordinary Drink	Serve without ice. At least the juice shold have room temperature.	Not yet provided	Not yet provided	Ohne Eis servieren. Zumindest sollte der Saft Raumtemperatur haben.	Servire senza ghiaccio.\r\nAlmeno il succo dovrebbe avere la temperatura ambiente.	https://www.thecocktaildb.com/images/media/drink/xnzr2p1485619687.jpg	t	2017-01-28 16:08:07
17174	Cherry Electric Lemonade	Cocktail	Now stir vigorously and then pour over a large cup of ice. Now drink it with a straw and stir occasionally.	Not yet provided	Not yet provided	Nun kräftig umrühren und dann über einen großen Becher Eis gießen. Nun mit einem Strohhalm trinken und gelegentlich umrühren.	Ora mescola energicamente e poi versa sopra una grande tazza di ghiaccio.\r\nOra bevilo con una cannuccia e mescola di tanto in tanto.	https://www.thecocktaildb.com/images/media/drink/tquyyt1451299548.jpg	t	2015-12-28 10:45:48
17221	Boozy Snickers Milkshake	Milk / Float / Shake	Place the snickers bars in a plastic bag and roll over them with a rolling pin until crushed. Add crushed snickers pieces, ice cream, milk, caramel sauce, chocolate sauce, and chocolate liquor to a blender. Blend until shake is thick and frothy. Pour into glasses and top with chocolate liquor and whip cream.	Not yet provided	Not yet provided	Legen Sie die Snickers in einen Plastikbeutel und rollen Sie sie mit einem Nudelholz darüber, bis sie zerquetscht sind. Füge zerdrückte Snickers, Eis, Milch, Karamellsauce, Schokoladensauce und Schokoladenlikör in einen Mixer. Mischen, bis der Shake dick und schaumig ist. In Gläser füllen und mit Schokoladenlikör und Schlagsahne auffüllen.	Metti le barrette per snickers in un sacchetto di plastica e arrotolale con un mattarello fino a schiacciarle.\r\nAggiungere pezzi di snickers schiacciati, gelato, latte, salsa al caramello, salsa al cioccolato e liquore al cioccolato in un frullatore.\r\nFrullare fino a ottenere un frullato denso e spumoso.\r\nVersare nei bicchieri e guarnire con liquore al cioccolato e panna montata.	https://www.thecocktaildb.com/images/media/drink/861tzm1504784164.jpg	t	2017-09-07 12:36:04
11391	Frozen Pineapple Daiquiri	Ordinary Drink	Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into a cocktail glass and serve.	Not yet provided	Not yet provided	Alle Zutaten mit 1 Tasse Crushed Ice in einem Elektromixer bei niedriger Geschwindigkeit für kurze Zeit mischen. In ein Champagner Glas geben und servieren.	Unisci tutti gli ingredienti con 1 tazza di ghiaccio tritato in un frullatore elettrico. Frullare a bassa velocità per un breve periodo di tempo.Versare in un bicchiere vecchio stile e servire.	https://www.thecocktaildb.com/images/media/drink/k3aecd1582481679.jpg	t	2017-09-06 23:14:57
12854	Scottish Highland Liqueur	Homemade Liqueur	Combine all ingreds in aging container. Cover tightly and shake gently several times during the first 24 hrs. After 24 hrs, remove the lemon zest. Cover again and let stand in a cool, dark place for 2 weeks, shaking gently every other day. Strain through a wire sieve to remove the angelica root and fennel. Return to aging container, cover and let stand undisturbed in a cool dark place for 6 months. Siphon or pour clear liqueur into a sterile bottle. The cloudy dregs may be saved for cooking.	Not yet provided	Not yet provided	Alle Zutaten in einem Alterungsbehälter zusammenfügen. In den ersten 24 Stunden fest abdecken und mehrmals leicht schütteln. Nach 24 Stunden die Zitronenschale entfernen. Nochmals zugedeckt an einem kühlen, dunklen Ort für 2 Wochen stehen lassen und jeden zweiten Tag sanft schütteln. Durch ein Drahtsieb sieben, um die Angelikawurzel und den Fenchel zu entfernen. In den Alterungsbehälter zurückgegeben, abdecken und 6 Monate ungestört an einem kühlen, dunklen Ort stehen lassen. Siphonierten oder klaren Likör in eine sterile Flasche gießen. Die Trübstoffe können zum Kochen aufbewahrt werden.	Combina tutti gli ingredienti nel contenitore di invecchiamento.\r\nCoprire bene e agitare delicatamente più volte durante le prime 24 ore.\r\nDopo 24 ore, rimuovere la scorza di limone.\r\nCoprite di nuovo e lasciate riposare in un luogo fresco e buio per 2 settimane, agitando delicatamente a giorni alterni.\r\nFiltrare al setaccio per eliminare la radice di angelica e il finocchio.\r\nRiporre nel contenitore di stagionatura, coprire e lasciare riposare indisturbato in un luogo fresco e buio per 6 mesi.	https://www.thecocktaildb.com/images/media/drink/upqvvp1441253441.jpg	t	2015-09-03 05:10:41
11786	Mississippi Planters Punch	Ordinary Drink	Shake all ingredients (except carbonated water) with ice and strain into a collins glass over ice cubes. Fill with carbonated water, stir, and serve.	Not yet provided	Not yet provided	Alle Zutaten (außer kohlensäurehaltigem Wasser) mit Eis schütteln und in ein Collins-Glas über Eiswürfel abseihen. Mit kohlensäurehaltigem Wasser auffüllen, umrühren und servieren.	Shakerare tutti gli ingredienti (tranne l'acqua gassata) con ghiaccio e filtrare in un bicchiere Collins con cubetti di ghiaccio.Riempi con acqua gassata, mescola e servi.	https://www.thecocktaildb.com/images/media/drink/urpyqs1439907531.jpg	t	2015-08-18 15:18:51
12708	Banana Cantaloupe Smoothie	Other/Unknown	Juice cantaloupe, pour juice into blender, add banana, and liquify.	Not yet provided	Not yet provided	Melone entsaften, Saft in den Mixer geben, Banane hinzufügen und aufschlagen.	Spremere il melone, versare il succo nel frullatore, aggiungere la banana e fluidificare.	https://www.thecocktaildb.com/images/media/drink/uqxqsy1468876703.jpg	f	2016-07-18 22:18:23
14560	A.D.M. (After Dinner Mint)	Cocktail	shake vigorously	Not yet provided	Not yet provided	kräftig schütteln	Versare tutti gli ingredienti in un bicchiere, agita bene.	https://www.thecocktaildb.com/images/media/drink/ruxuvp1472669600.jpg	t	2016-08-31 19:53:20
15024	Absolutely Cranberry Smash	Ordinary Drink	Stir ingredients together. Serve over ice.	Not yet provided	Not yet provided	Zutaten verrühren. Auf Eis servieren.	Mescola gli ingredienti insieme.\r\nServire con ghiaccio.	https://www.thecocktaildb.com/images/media/drink/vqwstv1472811884.jpg	t	2016-09-02 11:24:44
15300	3-Mile Long Island Iced Tea	Ordinary Drink	Fill 14oz glass with ice and alcohol. Fill 2/3 glass with cola and remainder with sweet & sour. Top with dash of bitters and lemon wedge.	Not yet provided	Not yet provided	Füllen Sie ein 12 cl. Glas mit Eis und Alkohol. Füllen Sie 2/3 des Glases mit Cola und den Rest mit Süß-Sauer. Mit einem Schuss Bitter und Zitronenkeil garnieren.	Riempi un bicchiere da almeno 400ml con ghiaccio e alcol. Riempire i restanti 2/3 di bicchiere di cola e il resto di bevanda sweet & sour. Completare con un pizzico di bitter e uno spicchio di limone.	https://www.thecocktaildb.com/images/media/drink/rrtssw1472668972.jpg	t	2016-08-31 19:42:52
178332	Smashed Watermelon Margarita	Cocktail	In a mason jar muddle the watermelon and 5 mint leaves together into a puree and strain. Next add the grapefruit juice, juice of half a lime and the tequila as well as some ice. Put a lid on the jar and shake. Pour into a glass and add more ice. Garnish with fresh mint and a small slice of watermelon.	Not yet provided	Not yet provided	Not yet provided	In un barattolo di vetro pestare l'anguria e 5 foglie di menta insieme, filtrare il contenuto in un bicchiere. Quindi aggiungere il succo di pompelmo, il succo di mezzo lime, la tequila e un po 'di ghiaccio. Metti un coperchio sul barattolo e agita. Versare in un bicchiere e aggiungere altro ghiaccio. Guarnire con menta fresca e una fettina di anguria.	https://www.thecocktaildb.com/images/media/drink/dztcv51598717861.jpg	t	\N
12690	Lassi - A South Indian Drink	Other/Unknown	Blend in a blender for 3 seconds. Lassi is one of the easiest things to make, and there are many ways of making it. Basically, it is buttermilk (yoghurt whisked with water), and you can choose almost any consistency that you like, from the thinnest to the thickest. Serve cold.	Not yet provided	Not yet provided	In einem Mixer 3 Sekunden lang mischen. Lassi ist eines der am einfachsten herzustellenden Produkte, und es gibt viele Möglichkeiten, es herzustellen. Im Grunde ist es Buttermilch (Joghurt mit Wasser verrührt), und Sie können fast jede beliebige Konsistenz wählen, von der dünnsten bis zur dicksten. Kalt servieren.	Frullare in un frullatore per 3 secondi. Lassi è una delle cose più facili da realizzare e ci sono molti modi per produrlo. Fondamentalmente, è latticello (yogurt sbattuto con acqua) e puoi scegliere quasi qualsiasi consistenza che preferisci, dalla più sottile alla più densa. Servire freddo.	https://www.thecocktaildb.com/images/media/drink/iq6scx1487603980.jpg	f	2017-02-20 15:19:40
12718	Pineapple Gingerale Smoothie	Other/Unknown	Throw everything into a blender and liquify.	Not yet provided	Not yet provided	Alles in einen Mixer geben und aufschlagen.	Getta tutto in un frullatore e liquida.	https://www.thecocktaildb.com/images/media/drink/eg9i1d1487603469.jpg	f	2017-02-20 15:11:09
12748	Orange Scented Hot Chocolate	Cocoa	Combine all ingredients in heavy medium saucepan. Stir over low heat until chocolate melts. Increase heat and bring just to a boil, stirring often. Remove from heat and whisk untily frothy. Return to heat and bring to boil again. Remove from heat, whisk until frothy. Repeat heating and whisking once again. Discard orange peel. (Can be prepared 2 hours ahead. Let stand at room temperature. Before serving, bring just to boil, remove from heat and whisk until frothy.) Pour hot chocolate into coffee mugs. Makes 2 servings.	Not yet provided	Not yet provided	Alle Zutaten in einem Topf vermengen und bei schwacher Hitze umrühren, bis die Schokolade schmilzt. Die Hitze erhöhen und unter ständigem Rühren zum Kochen bringen. Vom Herd nehmen und ununterbrochen schaumig schlagen. Wieder aufwärmen und wieder zum Kochen bringen. Vom Herd nehmen, verquirlen und schaumig rühren. Wiederholen Sie das Erwärmen und Verquirlen noch einmal. Orangenschale entsorgen (Kann 2 Stunden im Voraus zubereitet werden. Bei Raumtemperatur stehen lassen. Vor dem Servieren einfach zum Kochen bringen, vom Herd nehmen und schaumig schlagen.) Gießen Sie die heiße Schokolade in Kaffeetassen. Macht 2 Portionen.	Unisci tutti gli ingredienti tranne l'arancia in una casseruola media.\r\nMescolare a fuoco basso fino a quando il cioccolato si scioglie.\r\nAumenta la fiamma e porta a ebollizione, mescolando spesso.\r\nSpegni il fuoco e frulla fino a renderle leggermente spumose.\r\nAccendi il fuoco e riporta a bollore.\r\nSpegni il fuoco, sbattere fino a quando non diventa spumoso.\r\nScartare la buccia d'arancia.\r\n(Può essere preparato 2 ore prima. Lasciar riposare a temperatura ambiente. Prima di servire, portate appena ad ebollizione, spegnete il fuoco e frullate fino a quando non sarà spumoso) Versare la cioccolata calda nelle tazze da caffè. Per 2 porzioni.	https://www.thecocktaildb.com/images/media/drink/hdzwrh1487603131.jpg	f	2017-02-20 15:05:31
13200	Owen's Grandmother's Revenge	Ordinary Drink	Add ingredients and mix in blender.	Not yet provided	Not yet provided	Zutaten im Mixer vermengen.	Aggiungere gli ingredienti e mescola nel frullatore.	https://www.thecocktaildb.com/images/media/drink/0wt4uo1503565321.jpg	t	2017-08-24 10:02:02
16447	Brandon and Will's Coke Float	Soft Drink / Soda	Scoop two large scoops of vanilla ice-cream into frosted beer mug. Next, add 2 ounces Maker's Mark. Then, pour in coke. Gently stir and enjoy.	Not yet provided	Not yet provided	Zwei große Kugeln Vanilleeis in den gefrosteten Bierkrug geben. Als nächstes füge 2 Unzen Maker's Mark hinzu. Dann gießen Sie Cola ein. Vorsichtig umrühren und genießen.	Versare due grandi palline di gelato alla vaniglia in un boccale di birra glassato.\r\nAggiungi 60ml di whiskey bourbon e successivamente versa la Coca-Cola.\r\nMescola delicatamente e divertiti.	https://www.thecocktaildb.com/images/media/drink/xspxyr1472719185.jpg	t	2016-09-01 09:39:45
12712	Grape lemon pineapple Smoothie	Other/Unknown	Throw everything into a blender and liquify.	Not yet provided	Not yet provided	Alles in einen Mixer geben und aufschlagen.	Getta tutto in un frullatore e liquida.	https://www.thecocktaildb.com/images/media/drink/54z5h71487603583.jpg	f	2017-02-20 15:13:03
16100	Amaretto Stone Sour Alternative	Other/Unknown	Shake sour mix, tequila and amaretto with ice. Strain into highball glass. Add a splash of OJ. Garnish with orange slice and a cherry.	Not yet provided	Not yet provided	Sauergemisch, Tequila und Amaretto mit Eis schütteln. In ein Highball-Glas abseihen. Füge einen Spritzer OJ hinzu. Mit einer Orangenscheibe und einer Kirsche garnieren.	Shakerare mix acido, tequila e amaretto con ghiaccio.\r\nFiltrare in un bicchiere highball.\r\nAggiungi un tocco di GU.\r\nGuarnire con una fettina d'arancia e una ciliegia.	https://www.thecocktaildb.com/images/media/drink/wutxqr1472720012.jpg	t	2016-09-01 09:53:32
12658	Banana Strawberry Shake Daiquiri	Milk / Float / Shake	Blend all together in a blender until smooth.	Not yet provided	Not yet provided	Alles zusammen in einem Mixer mischen, bis es geschmeidig ist.	Frullate tutto insieme in un frullatore fino a che non risulti liscio.	https://www.thecocktaildb.com/images/media/drink/uvypss1472720581.jpg	f	2016-09-01 10:03:01
16984	Radioactive Long Island Iced Tea	Ordinary Drink	Pour all ingredients over ice in a very tall glass. Sip cautiously.	Not yet provided	Not yet provided	Alle Zutaten in einem sehr hohen Glas über Eis gießen. Vorsichtig nippen.	Versare tutti gli ingredienti sul ghiaccio in un bicchiere molto alto.\r\nSorseggia con cautela.	https://www.thecocktaildb.com/images/media/drink/rdvqmh1503563512.jpg	t	2017-08-24 09:31:52
14029	57 Chevy with a White License Plate	Cocktail	1. Fill a rocks glass with ice 2.add white creme de cacao and vodka 3.stir	Not yet provided	Not yet provided	1. Füllen Sie ein Rocks Glas mit Eis 2. Geben Sie weiße Creme de Kakao und Wodka hinzu. 3. Umrühren.	1. Riempi un bicchiere di tipo highball con ghiaccio\r\n2. Aggiungere la crema di cacao bianca e la vodka\r\n3. mescolare	https://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg	t	2016-07-18 22:49:04
17246	Empellón Cocina's Fat-Washed Mezcal	Cocktail	To ensure that your pork fat is just as delicious as theirs, here’s their adobo marinade and what to do with it (you’ll also need a rack of ribs):\r\n\r\n4 ancho chiles, 8 guajillo chiles and 4 chipotle chiles, plus 4 cloves roasted garlic, half a cup of cider vinegar, a quarter teaspoon of Mexican oregano, 1 teaspoon of ground black pepper, a whole clove, a quarter teaspoon of ground cinnamon and a half teaspoon of ground cumin.\r\n\r\nToast the dried chiles and soak in water for at least an hour until they are rehydrated. Drain and discard the soaking liquid. Combine the soaked chiles with the remaining ingredients and purée until smooth.\r\n\r\nCold smoke a rack of baby back pork ribs by taking a large hotel pan with woodchips on one side and charcoal on the other. Place another, smaller, pan with pork ribs, above the charcoal/woodchip pan. Ignite the charcoal, being careful to not ignite the woodchips. Cover both pans with foil and allow to smoke for 10-15 minutes, until desired level of smoke is achieved, then coat with adobo marinade and wrap in tin foil prior to placing ribs in a 300 degree oven for 7 hours. When the ribs have cooled, strain off the fat and use for the infusion.\r\n\r\nIf you’re having a hard time coming up to the same kind of volume of fat, make up the balance with pork lard from a butcher. To get the same depth of flavor without the ribs, heat up the fat in a pot with a few spoons of the marinade.\r\n\r\nOnce you’ve got your tub of seasoned pork fat in cooled liquid form, pour equal amounts of Ilegal Joven mezcal and fat into a sealable container. Seal the container and give it a really good shake, then put it in the freezer overnight. When the whole thing is separated and congealed, pour it through a fine mesh chinoise. If you don’t have a chinoise, try a fine mesh strainer, or if you don’t have one of those, try spooning off most of the fat. There will be some beads of orange fat left in the strained mezcal: run that through a few layers of cheesecloth (or coffee filters in a pinch) to get rid of the last of it.\r\n\r\nThe mezcal is now ready for drinking, straight-up or in a cocktail. \r\n\r\nHabanero tincture\r\n\r\nSlice habaneros and add 2 ounces Ilegal Joven mezcal.\r\nAllow to sit overnight or until desired level of heat is achieved.\r\nCocktail\r\n\r\nCombine mezcal and chocolate liqueur in a mixing glass with ice and stir for 45 seconds.\r\nStrain into chilled coupe.\r\nCarefully "sink" the coffee liqueur down the inside of the coupe over a spoon.\r\nGarnish with 5 drops habanero tincture.	Not yet provided	Not yet provided	Damit Ihr Schweinefett genauso lecker ist wie ihres, gibt es hier die Adobo-Marinade und was man damit machen kann (Sie benötigen auch ein Rippchen)	"Per assicurarti che il tuo grasso di maiale sia delizioso come il loro, ecco la loro marinata di adobo e cosa farne (ti servirà anche un carré di costolette):\r\n\r\n4 peperoncini ancho, 8 peperoncini guajillo e 4 peperoncini chipotle, più 4 spicchi d'aglio arrostiti, mezza tazza di aceto di sidro, un quarto di cucchiaino di origano messicano, 1 cucchiaino di pepe nero macinato, uno spicchio intero, un quarto di cucchiaino di cannella in polvere e mezzo cucchiaino di cumino macinato.\r\n\r\nTostare i peperoncini secchi e metterli a bagno in acqua per almeno un'ora finché non si saranno reidratati. Scolare e gettare il liquido di ammollo. Unire i peperoncini ammollati con gli ingredienti rimanenti e ridurre in purea fino a che liscio.\r\n\r\nAffumica a freddo una griglia di costolette di maiale prendendo una grande padella  con trucioli di legno da un lato e carbone dall'altro. Posizionare un'altra padella, più piccola, con le costine di maiale, sopra la teglia per carbone / trucioli. Accendi il carbone facendo attenzione a non incendiare i trucioli. Coprire entrambe le padelle con un foglio e lasciare affumicare per 10-15 minuti, fino a raggiungere il livello di fumo desiderato, quindi rivestire con la marinata di adobo e avvolgere nella carta stagnola prima di mettere le costole in un forno a 300 gradi per 7 ore. Quando le costine si saranno raffreddate, filtrate il grasso e usatelo per l'infuso.\r\n\r\nSe hai difficoltà a raggiungere lo stesso tipo di volume di grasso, compensa con lo strutto di maiale di un macellaio. Per ottenere la stessa profondità di sapore senza le costolette, scaldare il grasso in una pentola con qualche cucchiaio di marinata.\r\n\r\nUna volta che hai la tua vasca di grasso di maiale condito in forma liquida raffreddata, versa quantità uguali di mezcal e grasso in un contenitore sigillabile. Sigilla il contenitore e scuoterlo bene, quindi mettilo nel congelatore per una notte. Quando il tutto si sarà separato e solidificato, versatelo in uno chinois a maglia fine. Se non hai un chinois, prova un colino a maglia fine, o se non ne hai uno, prova a eliminare la maggior parte del grasso con un cucchiaio. Ci saranno delle gocce di grasso arancione nel mezcal filtrato: passalo attraverso alcuni strati di garza (o filtri di caffè) per sbarazzartene dell'ultimo.\r\n\r\nIl mezcal è ora pronto per essere bevuto, puro o in un cocktail.\r\n\r\nTintura di Habanero\r\n\r\nAffetta gli habaneros e aggiungi 2 once di Ilegal Joven mezcal.\r\nLasciar riposare per una notte o finché non si raggiunge il livello di calore desiderato.\r\nCocktail\r\n\r\nUnisci il mezcal e il liquore al cioccolato in un mixing glass con ghiaccio e mescola per 45 secondi.\r\nFiltrare in un bicchiere freddo.\r\nAffondare con cura il liquore al caffè all'interno del bicchiere sopra un cucchiaio.\r\nDecorare con 5 gocce di tintura di habanero.	https://www.thecocktaildb.com/images/media/drink/osgvxt1513595509.jpg	t	2017-12-18 11:11:49
\.


--
-- Data for Name: tools; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.tools (id, name, substitues) FROM stdin;
\.


--
-- Data for Name: user_ingredients; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.user_ingredients (user_id, ingredient_id) FROM stdin;
\.


--
-- Data for Name: user_tools; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.user_tools (user_id, tool_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: cwverica
--

COPY public.users (id, email, username, image_url, password) FROM stdin;
\.


--
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cwverica
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 396, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cwverica
--

SELECT pg_catalog.setval('public.recipes_id_seq', 1, false);


--
-- Name: tools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cwverica
--

SELECT pg_catalog.setval('public.tools_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cwverica
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: favorites favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (user_id, recipe_id);


--
-- Name: ingredients ingredients_name_key; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_name_key UNIQUE (name);


--
-- Name: ingredients ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- Name: recipe_ingredients recipe_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.recipe_ingredients
    ADD CONSTRAINT recipe_ingredients_pkey PRIMARY KEY (recipe_id, ingredient_id);


--
-- Name: recipes recipes_name_key; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_name_key UNIQUE (name);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: tools tools_name_key; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_name_key UNIQUE (name);


--
-- Name: tools tools_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_pkey PRIMARY KEY (id);


--
-- Name: user_ingredients user_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.user_ingredients
    ADD CONSTRAINT user_ingredients_pkey PRIMARY KEY (user_id, ingredient_id);


--
-- Name: user_tools user_tools_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.user_tools
    ADD CONSTRAINT user_tools_pkey PRIMARY KEY (user_id, tool_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: favorites favorites_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- Name: favorites favorites_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: recipe_ingredients recipe_ingredients_ingredient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.recipe_ingredients
    ADD CONSTRAINT recipe_ingredients_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredients(id);


--
-- Name: recipe_ingredients recipe_ingredients_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.recipe_ingredients
    ADD CONSTRAINT recipe_ingredients_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- Name: user_ingredients user_ingredients_ingredient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.user_ingredients
    ADD CONSTRAINT user_ingredients_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredients(id);


--
-- Name: user_ingredients user_ingredients_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.user_ingredients
    ADD CONSTRAINT user_ingredients_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_tools user_tools_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.user_tools
    ADD CONSTRAINT user_tools_tool_id_fkey FOREIGN KEY (tool_id) REFERENCES public.tools(id);


--
-- Name: user_tools user_tools_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cwverica
--

ALTER TABLE ONLY public.user_tools
    ADD CONSTRAINT user_tools_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

