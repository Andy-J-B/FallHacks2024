extends Node

# 100 words in each language
const englishNames = {
	1: "Aaron Smith",
	2: "Abigail Johnson",
	3: "Adam Williams",
	4: "Aiden Brown",
	5: "Alice Jones",
	6: "Amelia Garcia",
	7: "Andrew Miller",
	8: "Anna Davis",
	9: "Anthony Rodriguez",
	10: "Ariana Martinez",
	11: "Asher Hernandez",
	12: "Aurora Lopez",
	13: "Austin Wilson",
	14: "Ava Anderson",
	15: "Benjamin Thomas",
	16: "Blake Taylor",
	17: "Brayden Moore",
	18: "Brianna Jackson",
	19: "Brody Martin",
	20: "Brooklyn Lee",
	21: "Caleb Perez",
	22: "Camila Thompson",
	23: "Carter White",
	24: "Charlotte Harris",
	25: "Chase Clark",
	26: "Chloe Lewis",
	27: "Christian Robinson",
	28: "Clara Walker",
	29: "Colton Young",
	30: "Connor Allen",
	31: "Daniel King",
	32: "David Wright",
	33: "Dylan Scott",
	34: "Ella Green",
	35: "Ethan Adams",
	36: "Evelyn Baker",
	37: "Everett Gonzalez",
	38: "Gabriel Nelson",
	39: "Grace Carter",
	40: "Grayson Hill",
	41: "Hannah Ramirez",
	42: "Harper Turner",
	43: "Henry Phillips",
	44: "Hudson Campbell",
	45: "Hunter Mitchell",
	46: "Isaac Parker",
	47: "Isabella Evans",
	48: "Jack Edwards",
	49: "Jackson Collins",
	50: "Jacob Stewart",
	51: "James Sanchez",
	52: "Jayden Morris",
	53: "Jeremiah Rogers",
	54: "Jonathan Reed",
	55: "Joseph Cook",
	56: "Joshua Morgan",
	57: "Julia Bell",
	58: "Julian Murphy",
	59: "Kai Bailey",
	60: "Kayla Cooper",
	61: "Kylie Richardson",
	62: "Landon Cox",
	63: "Layla Howard",
	64: "Levi Ward",
	65: "Liam Simmons",
	66: "Logan Foster",
	67: "Lucy Powell",
	68: "Madison Russell",
	69: "Mason Peterson",
	70: "Matthew Jenkins",
	71: "Maya Perry",
	72: "Michael Butler",
	73: "Miles Barnes",
	74: "Mila Foster",
	75: "Nathan Fisher",
	76: "Nicholas Bryant",
	77: "Noah Ellis",
	78: "Nolan James",
	79: "Olivia Brooks",
	80: "Owen Hughes",
	81: "Paisley Price",
	82: "Parker Reed",
	83: "Penelope Henderson",
	84: "Riley Griffin",
	85: "Robert Shaw",
	86: "Ruby Matthews",
	87: "Ryan Wood",
	88: "Samuel Coleman",
	89: "Savannah Jenkins",
	90: "Scarlett Perry",
	91: "Sebastian Long",
	92: "Sophia West",
	93: "Stella Ward",
	94: "Theodore Ramirez",
	95: "Thomas Stone",
	96: "Victoria Baker",
	97: "Violet Gray",
	98: "William Moore",
	99: "Wyatt Rivera",
	100: "Zoe Torres"
}

const frenchNames = {
	1: "Pierre Dubois",
	2: "Marie Martin",
	3: "Jean Dupont",
	4: "Sophie Lefèvre",
	5: "Luc Moreau",
	6: "Claire Fournier",
	7: "Paul Bernard",
	8: "Chloé Petit",
	9: "Louis Girard",
	10: "Camille Roux",
	11: "Jacques Laurent",
	12: "Élise Thomas",
	13: "Antoine Robert",
	14: "Isabelle Richard",
	15: "Hugo Simon",
	16: "Laetitia Lambert",
	17: "Adrien David",
	18: "Emilie Michel",
	19: "Théo Garcia",
	20: "Alice Bertrand",
	21: "Nicolas Leroy",
	22: "Manon Rouillard",
	23: "Alexandre Perrin",
	24: "Julie Faure",
	25: "Léo Bonnet",
	26: "Amélie Caron",
	27: "Mathieu Garnier",
	28: "Clara Marchand",
	29: "Victor Blanchard",
	30: "Emma Colin",
	31: "Gabriel Joly",
	32: "Lucie Masson",
	33: "Thomas Chevalier",
	34: "Aurélie André",
	35: "Charles Lefebvre",
	36: "Pauline Roussel",
	37: "Maxime Robin",
	38: "Amandine Dupuis",
	39: "Julien Morel",
	40: "Anaïs Charpentier",
	41: "Damien Renaud",
	42: "Céline Leroy",
	43: "Benoît Gauthier",
	44: "Noémie Marty",
	45: "Vincent Deschamps",
	46: "Elodie Poirier",
	47: "Florian Payet",
	48: "Sandrine Adam",
	49: "Quentin Chauvet",
	50: "Caroline Giraud",
	51: "Raphaël Meunier",
	52: "Valérie Fontaine",
	53: "Guillaume Perrot",
	54: "Estelle Leclerc",
	55: "Romain Vidal",
	56: "Marion François",
	57: "Bastien Morin",
	58: "Mélanie Gautier",
	59: "Kévin Pelletier",
	60: "Sabrina Olivier",
	61: "Cédric Perez",
	62: "Charlène Lebrun",
	63: "Benjamin Martineau",
	64: "Jessica Dupuy",
	65: "Loïc Lefranc",
	66: "Aurélia Guérin",
	67: "Jérémy Noël",
	68: "Coralie Boyer",
	69: "Simon Barrault",
	70: "Stéphanie Maillard",
	71: "Étienne Moulin",
	72: "Élodie Chauvin",
	73: "Mathias Pruvost",
	74: "Morgane Henry",
	75: "Tristan Rolland",
	76: "Justine Jacquet",
	77: "Gaëtan Millet",
	78: "Marina Lefort",
	79: "Clément Bourgeois",
	80: "Samantha Leblanc",
	81: "Thibault Lucas",
	82: "Auriane Besson",
	83: "Marc Renault",
	84: "Julie Pasquier",
	85: "Arnaud Letellier",
	86: "Sylvie Gosselin",
	87: "Alexis Langlois",
	88: "Léa Delorme",
	89: "Julien Bardin",
	90: "Mathilde Allard",
	91: "François Texier",
	92: "Catherine Salmon",
	93: "Ludovic Reynaud",
	94: "Nathalie Millet",
	95: "Guillaume Colin",
	96: "Charlotte Huguet",
	97: "Pascal Lefèvre",
	98: "Aurélie Dupont",
	99: "Mathieu Poisson",
	100: "Virginie Devaux"
}

const minionNames = {
	1: "Kevin Bubbel",
	2: "Stuart Bubbert",
	3: "Bob Bubling",
	4: "Dave Bubbin",
	5: "Phil Bububble",
	6: "Jerry Bublingo",
	7: "Tim Bubbo",
	8: "Carl Bubbly",
	9: "Mark Bublar",
	10: "Donny Bubblant",
	11: "Jorge Bublingo",
	12: "Gerry Bubbeldo",
	13: "Bobby Bubblint",
	14: "Margo Bubtal",
	15: "Edith Bubund",
	16: "Agnes Bubbeau",
	17: "Scarlet Bubveng",
	18: "Lucy Bubval",
	19: "Felonius Bubgrin",
	20: "Gru Bubington",
	21: "Kevin Bubster",
	22: "Stuart Bubnick",
	23: "Bob Bubbido",
	24: "Dave Bubloom",
	25: "Phil Bubplop",
	26: "Jerry Bubjoy",
	27: "Timmy Bubgood",
	28: "Carl Bubblox",
	29: "Marky Bubstone",
	30: "Donny Bubkins",
	31: "Jorge Bubnificent",
	32: "Gerry Bubmar",
	33: "Bobby Bubzooka",
	34: "Margo Bubbacorn",
	35: "Edith Bubling",
	36: "Agnes Bubchick",
	37: "Scarlet Bubfun",
	38: "Lucy Bubtastic",
	39: "Felonius Bubfoof",
	40: "Gru Bubbly",
	41: "Bello Bubster",
	42: "Minion Bobble",
	43: "Stuart Bubblyface",
	44: "Gorgeous Bubina",
	45: "Bubbly Bubmint",
	46: "Chubby Bubspot",
	47: "Bouncing Bubpuff",
	48: "Giggle Bubbo",
	49: "Wobble Bubkin",
	50: "Silly Bubber",
	51: "Munchy Bubbler",
	52: "Squeaky Bubnose",
	53: "Snappy Bubear",
	54: "Jumpy Bubpot",
	55: "Bubbly Bubblerino",
	56: "Fluffy Bubpluff",
	57: "Zippy Bubmuffin",
	58: "Choco Bubchum",
	59: "Bubblegum Bubskit",
	60: "Gummy Bubgle",
	61: "Chipper Bubro",
	62: "Blissful Bublet",
	63: "Dizzy Bublo",
	64: "Bubbly Bubmaster",
	65: "Bubble Blub",
	66: "Fizz Bubfuzz",
	67: "Bubzoo Bubbly",
	68: "Joyful Bubko",
	69: "Sneezy Bubskit",
	70: "Twinkly Bublar",
	71: "Bubbly McBubble",
	72: "Sassy Bubberino",
	73: "Jelly Bubjiggle",
	74: "Bubba Bubdub",
	75: "Fuzzy Bubbsy",
	76: "Squishy Bubblink",
	77: "Cuddly Bubsy",
	78: "Bubbelicious Bub",
	79: "Wiggly Bubwig",
	80: "Pudding Bubplop",
	81: "Nibbles Bubberry",
	82: "Tango Bubwobble",
	83: "Bubbles Bubwump",
	84: "Churro Bubmunch",
	85: "Bubbelicious Bubby",
	86: "Waddle Bubgaloo",
	87: "Snickers Bubtumble",
	88: "Whirly Bubfizz",
	89: "Bubsy Bubblet",
	90: "Fizzy Bubwob",
	91: "Doodle Bubwop",
	92: "Jamboree Bubber",
	93: "Froppy Bubtwist",
	94: "Bubbly Dingdong",
	95: "Sparkly Bubblast",
	96: "Bubbers Bubblo",
	97: "Chewy Bubberry",
	98: "Blabber Bubblitz",
	99: "Tickly Bubbuzz",
	100: "Bingo Bubfuzzle"
}

const germanNames = {
	1: "Max Müller",
	2: "Anna Schmidt",
	3: "Paul Schneider",
	4: "Laura Fischer",
	5: "Lukas Weber",
	6: "Lea Meyer",
	7: "Felix Hoffmann",
	8: "Marie Wagner",
	9: "Jonas Becker",
	10: "Sophia Schulz",
	11: "Tim Koch",
	12: "Emma Richter",
	13: "Jan Klein",
	14: "Hannah Wolf",
	15: "Ben Zimmermann",
	16: "Lisa Braun",
	17: "Philipp Hartmann",
	18: "Mia König",
	19: "David Schmitt",
	20: "Nina Schwarz",
	21: "Leon Weiss",
	22: "Julia Lange",
	23: "Alexander Schmid",
	24: "Marie-Luise Neumann",
	25: "Markus Schulze",
	26: "Leonie Simon",
	27: "Jakob Frank",
	28: "Clara Jäger",
	29: "Noah Krämer",
	30: "Ella Richter",
	31: "Simon Bender",
	32: "Sophie Müller",
	33: "David Lehmann",
	34: "Amelie Horn",
	35: "Tobias Fuchs",
	36: "Lina Huber",
	37: "Moritz Köhler",
	38: "Sarah Schneider",
	39: "Emil Winkler",
	40: "Carla Voigt",
	41: "Oskar Schmidt",
	42: "Greta Schulte",
	43: "Leonard Kaufmann",
	44: "Isabella Hartmann",
	45: "Maximilian Becker",
	46: "Johanna Wagner",
	47: "Anton Krause",
	48: "Elena Roth",
	49: "Benedikt Vogel",
	50: "Viktoria Kuhn",
	51: "Julius Peters",
	52: "Charlotte Schneider",
	53: "Sebastian Müller",
	54: "Luisa Fischer",
	55: "Philipp Weber",
	56: "Hanna Meyer",
	57: "Leon Frisch",
	58: "Mara Lutz",
	59: "Liam Graf",
	60: "Lara Simon",
	61: "Samuel Maier",
	62: "Lena Hoffmann",
	63: "Julian Schreiber",
	64: "Sofia Wagner",
	65: "Daniel Köhler",
	66: "Franziska Schwarz",
	67: "Nico Klein",
	68: "Clara Böttcher",
	69: "Matthias Schuster",
	70: "Jasmin Becker",
	71: "Philipp Kuhlmann",
	72: "Ella König",
	73: "Timo Paul",
	74: "Paula Engel",
	75: "Anton Lehmann",
	76: "Sophie Fuchs",
	77: "David Winkler",
	78: "Marlene Krüger",
	79: "Timothy Wagner",
	80: "Sina Schneider",
	81: "Jonas Schmitt",
	82: "Nadine Jansen",
	83: "Rafael Müller",
	84: "Tanja Schmidt",
	85: "Ruben Hartmann",
	86: "Mira Braun",
	87: "Julian Thiel",
	88: "Celine Kaufmann",
	89: "Jakob Lang",
	90: "Vera Richter",
	91: "Jakob Weigel",
	92: "Alina Lehmann",
	93: "Luca Krause",
	94: "Nina Schulte",
	95: "Felix Hofmann",
	96: "Maya Ziegler",
	97: "Florian Müller",
	98: "Greta Peters",
	99: "Levi Huber",
	100: "Marina Fischer",
}

const norwegianNames = {
	1: "Ole Hansen",
	2: "Anna Johansen",
	3: "Lars Nilsen",
	4: "Ingrid Eriksen",
	5: "Kjell Pettersen",
	6: "Sofie Larsen",
	7: "Magnus Sørensen",
	8: "Maja Andersen",
	9: "Petter Kristiansen",
	10: "Emma Pedersen",
	11: "Jonas Jensen",
	12: "Oda Olesen",
	13: "Emil Madsen",
	14: "Nora Aasen",
	15: "Mathias Bakke",
	16: "Kari Johansen",
	17: "Sander Holm",
	18: "Frida Haugen",
	19: "Anders Thorsen",
	20: "Elin Sæther",
	21: "Johan Knutsen",
	22: "Miriam Strøm",
	23: "Victor Berg",
	24: "Tina Lunde",
	25: "Nikolai Haugland",
	26: "Signe Jacobsen",
	27: "Erik Skogland",
	28: "Martine Ødegård",
	29: "Simon Haug",
	30: "Hannah Lilleholt",
	31: "Alfred Simonsen",
	32: "Maja Eriksen",
	33: "Åsmund Solberg",
	34: "Celina Jakobsen",
	35: "Rune Nilsen",
	36: "Lene Børresen",
	37: "Ola Sætre",
	38: "Evelyn Thoresen",
	39: "Morten Aas",
	40: "Nina Hagen",
	41: "Ivar Gjølberg",
	42: "Liv Mortensen",
	43: "Felix Haug",
	44: "Karen Moen",
	45: "Lars-Erik Sandvik",
	46: "Ylva Wold",
	47: "Håkon Myhre",
	48: "Astrid Nygaard",
	49: "Torvald Stensen",
	50: "Ragnhild Fjeld",
	51: "Jens Finstad",
	52: "Rita Aamodt",
	53: "Sindre Melbye",
	54: "Maja Øverland",
	55: "Sven Engen",
	56: "Elisabeth Viken",
	57: "Aleksander Røstad",
	58: "Benedikte Vassli",
	59: "Bjørn Grimsland",
	60: "Marie Trondsen",
	61: "Tobias Søreide",
	62: "Randi Vestergaard",
	63: "Eirik Dahlen",
	64: "Hilde Erlandsen",
	65: "Sondre Wergeland",
	66: "Inga Krogstad",
	67: "Martin Bjerke",
	68: "Hedda Guldbrandsen",
	69: "Ole-Johan Berglund",
	70: "Silje Håland",
	71: "Trygve Svendsen",
	72: "Oline Skagen",
	73: "Simen Holten",
	74: "Maren Høysæter",
	75: "Edvard Lind",
	76: "Sigrid Karlsen",
	77: "Kasper Elvheim",
	78: "Malin Heggelund",
	79: "Leif Bjørndal",
	80: "Tonje Myklebust",
	81: "Frodi Helle",
	82: "Freya Eide",
	83: "Lennart Velle",
	84: "Ruth Syversen",
	85: "Kurt Røberg",
	86: "Pia Ervik",
	87: "Arne Bratlie",
	88: "Selma Norheim",
	89: "Stian Stranden",
	90: "Linda Lien",
	91: "Viggo Ørbeck",
	92: "Kaja Tangen",
	93: "Marius Galdhøp",
	94: "Sofie Ask",
	95: "Tore Håkonsen",
	96: "Vera Yttri",
	97: "Ferdinand Sæther",
	98: "Emilie Sørli",
	99: "Peder Røisland",
	100: "Miriam Seim",
}

const swedishNames = {
	1: "Erik Johansson",
	2: "Anna Andersson",
	3: "Lars Karlsson",
	4: "Maria Nilsson",
	5: "Oskar Eriksson",
	6: "Sara Svensson",
	7: "Johan Larsson",
	8: "Emma Pettersson",
	9: "Niklas Olsson",
	10: "Lisa Hansson",
	11: "Per Gustafsson",
	12: "Sofia Jonsson",
	13: "Anders Persson",
	14: "Elin Nilsson",
	15: "Tomas Lindgren",
	16: "Karin Bergström",
	17: "Stefan Holm",
	18: "Cecilia Åkesson",
	19: "Daniel Lundqvist",
	20: "Malin Lindström",
	21: "Mikael Björk",
	22: "Josefin Berg",
	23: "Fredrik Sjöberg",
	24: "Hanna Ström",
	25: "David Jansson",
	26: "Julia Eriksson",
	27: "Jonas Mårtensson",
	28: "Rebecca Frisk",
	29: "Magnus Lundgren",
	30: "Natalie Jakobsson",
	31: "Simon Wernersson",
	32: "Linnea Olofsson",
	33: "Richard Axelsson",
	34: "Sofia Lund",
	35: "Martin Hedlund",
	36: "Carolina Svensson",
	37: "Oscar Blom",
	38: "Louise Lundin",
	39: "Alexander Holmberg",
	40: "Ida Jakobsson",
	41: "Victor Magnusson",
	42: "Frida Berglund",
	43: "Emil Carlsson",
	44: "Tilda Nordström",
	45: "Henrik Söderlund",
	46: "Alice Holmgren",
	47: "Patrik Norberg",
	48: "Elvira Fahlgren",
	49: "Kalle Sundberg",
	50: "Alva Olofsson",
	51: "Philip Persson",
	52: "Nadia Lindberg",
	53: "Joakim Björklund",
	54: "Moa Nyberg",
	55: "Robin Lindquist",
	56: "Sara Axelsson",
	57: "Anton Lundström",
	58: "Sanna Jonasson",
	59: "Leo Strömberg",
	60: "Katrin Norrström",
	61: "Gustav Lind",
	62: "Klara Alm",
	63: "Adrian Håkansson",
	64: "Matilda Andersson",
	65: "Felix Jonsson",
	66: "Sophie Karlsson",
	67: "Albin Gustafsson",
	68: "Selma Jacobsson",
	69: "Max Löfgren",
	70: "Filippa Berntsson",
	71: "Viktor Ahlberg",
	72: "Nina Forsberg",
	73: "Benjamin Holmström",
	74: "Liv Ekström",
	75: "Leonard Lindqvist",
	76: "Siri Nilsson",
	77: "Måns Bergström",
	78: "Tove Sundin",
	79: "Isak Stigsson",
	80: "My Larsson",
	81: "Elias Hult",
	82: "Astrid Sandström",
	83: "Hugo Söderberg",
	84: "Julia Sörensen",
	85: "Luka Winther",
	86: "Miriam Wallin",
	87: "Ruben Nyström",
	88: "Ingrid Olausson",
	89: "Julius Malm",
	90: "Selina Åström",
	91: "Liam Lindberg",
	92: "Vera Håkansson",
	93: "Alfred Jacobsson",
	94: "Stella Sundqvist",
	95: "Noah Svanberg",
	96: "Tilda Malmberg",
	97: "Samuel Rask",
	98: "Emmy Holmgren",
	99: "Jakob Nystedt",
	100: "Sofia Linder",
}

const finnishNames = {
	1: "Mikael Virtanen",
	2: "Sofia Korhonen",
	3: "Juhani Niemi",
	4: "Emma Laine",
	5: "Antti Koskinen",
	6: "Aino Mikkonen",
	7: "Oskari Salmi",
	8: "Ella Heikkinen",
	9: "Elias Rautio",
	10: "Sara Hämäläinen",
	11: "Juha Järvinen",
	12: "Linda Lehtonen",
	13: "Lassi Kallio",
	14: "Sanna Tuominen",
	15: "Onni Saari",
	16: "Ella Laaksonen",
	17: "Matias Lehtimäki",
	18: "Veera Laitinen",
	19: "Niklas Rinne",
	20: "Inka Rantanen",
	21: "Tapio Peltonen",
	22: "Riina Ojanperä",
	23: "Anttoni Valtonen",
	24: "Hanna Miettinen",
	25: "Akseli Pärssinen",
	26: "Julia Salonen",
	27: "Eero Kallio",
	28: "Iina Sallinen",
	29: "Leo Kivistö",
	30: "Laura Juntunen",
	31: "Lukas Salo",
	32: "Anna-Maria Suomalainen",
	33: "Rasmus Korpela",
	34: "Kaisa Virtanen",
	35: "Simo Mäkelä",
	36: "Saara Paloniemi",
	37: "Jaakko Lehtonen",
	38: "Mira Aalto",
	39: "Timo Rinne",
	40: "Sini Järvinen",
	41: "Petri Laitinen",
	42: "Noora Jussila",
	43: "Roni Järvenpää",
	44: "Emilia Ahonen",
	45: "Oliver Mustonen",
	46: "Hilda Pärssinen",
	47: "Severi Salonen",
	48: "Elina Huttunen",
	49: "Kalle Kuusisto",
	50: "Julia Vaara",
	51: "Topi Vainio",
	52: "Alina Hämäläinen",
	53: "Aarne Riihimäki",
	54: "Marja Lehtinen",
	55: "Sampsa Mäki",
	56: "Tanja Eklund",
	57: "Aaro Lempinen",
	58: "Anni Kivistö",
	59: "Jesse Hyvönen",
	60: "Salla Voutilainen",
	61: "Eliina Järvinen",
	62: "Henri Tuhkanen",
	63: "Milla Laitinen",
	64: "Kai Oksanen",
	65: "Iida Salminen",
	66: "Väinö Alho",
	67: "Olivia Kallio",
	68: "Toni Aalto",
	69: "Pihla Virtanen",
	70: "Kimi Peltola",
	71: "Maija Niinimäki",
	72: "Pekka Ruotsalainen",
	73: "Kerttu Pöllänen",
	74: "Elli Pulkkinen",
	75: "Niko Vainio",
	76: "Eeva Alanko",
	77: "Kalle Kiuru",
	78: "Silja Karjalainen",
	79: "Aku Tanskanen",
	80: "Anu Koivisto",
	81: "Laure Vainio",
	82: "Veera Holopainen",
	83: "Eino Sariola",
	84: "Kaisa Ikonen",
	85: "Leo Pahkasalo",
	86: "Helmi Hirvonen",
	87: "Milo Alanko",
	88: "Anniina Toivonen",
	89: "Reino Rautio",
	90: "Tanja Hakkarainen",
	91: "Jasper Virkkala",
	92: "Saara Korpela",
	93: "Janne Järvikoski",
	94: "Tilda Rinta",
	95: "Sebastian Karppinen",
	96: "Saga Lahti",
	97: "Riku Savola",
	98: "Inka Soini",
	99: "Atte Rämä",
	100: "Joni Pajunen",
}

const icelandicNames = {
	1: "Jón Jónsson",
	2: "Guðrún Guðmundsdóttir",
	3: "Magnús Magnússon",
	4: "Sigríður Sigrúnardóttir",
	5: "Páll Pálsson",
	6: "Þóra Þórisdóttir",
	7: "Einar Einarsen",
	8: "Anna Annaardóttir",
	9: "Hjalti Hjalteson",
	10: "Margrét Margrétardóttir",
	11: "Kjartan Kjartansson",
	12: "Dóra Dórudóttir",
	13: "Stefán Stefánsson",
	14: "Sólveig Sólmundsdóttir",
	15: "Bjarni Bjarnason",
	16: "Edda Eddasdóttir",
	17: "Sigurður Sigurðsson",
	18: "Ragnheiður Ragnarsdóttir",
	19: "Ólafur Ólafsson",
	20: "Bryndís Bryndísardóttir",
	21: "Arnar Arnason",
	22: "Hilda Hildardóttir",
	23: "Snorri Snorrason",
	24: "Elín Elíndóttir",
	25: "Tómas Tómasarson",
	26: "Sigríður Sigríðurardóttir",
	27: "Róbert Róbertsson",
	28: "Björk Björnsdóttir",
	29: "Hrafn Hrafnsson",
	30: "Freydís Freydísardóttir",
	31: "Gunnar Gunnarsson",
	32: "Sif Sifardóttir",
	33: "Haukur Haukursson",
	34: "Íris Írissdóttir",
	35: "Sigvaldur Sigvaldsson",
	36: "Lilja Liljadóttir",
	37: "Kári Kárason",
	38: "Birna Birnardóttir",
	39: "Sölvi Sölvason",
	40: "Rún Rúnarsdóttir",
	41: "Vignir Vignarson",
	42: "Berglind Berglindardóttir",
	43: "Óskar Óskarsen",
	44: "María Maríudóttir",
	45: "Baldur Baldursson",
	46: "Eyrún Eyrúnardóttir",
	47: "Andri Andresson",
	48: "Steinunn Steinundardóttir",
	49: "Arna Arnarsdóttir",
	50: "Kristján Kristjánsson",
	51: "Ragna Ragnarsdóttir",
	52: "Vala Valadóttir",
	53: "Tinna Tinnasdóttir",
	54: "Lárus Lárusson",
	55: "Gunnhildur Gunnhildardóttir",
	56: "Sigmar Sigmarsson",
	57: "Elvar Elvarsson",
	58: "Hekla Hekludóttir",
	59: "Dagur Dagsson",
	60: "Freyja Freyjardóttir",
	61: "Valur Valursson",
	62: "Emil Emilsson",
	63: "Þorsteinn Þorsteinsson",
	64: "Heidi Heidarsdóttir",
	65: "Sigurður Siggason",
	66: "Silja Siljudóttir",
	67: "Ragnar Ragnarsson",
	68: "Hilda Hildarsdóttir",
	69: "Viktor Viktorsson",
	70: "Tómas Tómasardóttir",
	71: "Líf Lífdóttir",
	72: "Alfred Alfredsson",
	73: "Nanna Nannarsdóttir",
	74: "Jónas Jónasson",
	75: "Una Unudóttir",
	76: "Pétur Pétursson",
	77: "Sól Sólardóttir",
	78: "Völsungur Völsungsson",
	79: "Eir Eirarsdóttir",
	80: "Skúli Skúlason",
	81: "Fannar Fannarsson",
	82: "Elísa Elísasdóttir",
	83: "Andrés Andrésen",
	84: "Bryndís Bryndísardóttir",
	85: "Þórhallur Þórhallsson",
	86: "Loka Lokadóttir",
	87: "Rósa Rósasdóttir",
	88: "Halldór Halldórsson",
	89: "Halla Halladóttir",
	90: "Guðlaugur Guðlaugsson",
	91: "Karítas Karítasdóttir",
	92: "Bergþóra Bergþórsdóttir",
	93: "Núria Núriudóttir",
	94: "Snæbjörn Snæbjörnsson",
	95: "Vigdis Vigdisardóttir",
	96: "Sævar Sævarsson",
	97: "Bergur Bergsson",
	98: "Sigrún Sigrúnardóttir",
	99: "Þórir Þórirsson",
	100: "Ragnhildur Ragnarsdóttir",
}

const languages = [englishNames, frenchNames, minionNames, germanNames, norwegianNames, swedishNames, finnishNames, icelandicNames]

var rng = RandomNumberGenerator.new()
const minLanguage = 0
const maxLanguage = 7
const minName = 1
const maxName = 100

# Names included in Tracing/Drawing
#var koreanNames = {
	#1: "김지호",
	#2: "이미서",
	#3: "박서준",
	#4: "최주원",
	#5: "정지윤",
	#6: "강하준",
	#7: "유수민",
	#8: "한예준",
	#9: "조승민",
	#10: "김소희",
	#11: "이현우",
	#12: "박은지",
	#13: "최진우",
	#14: "정혜진",
	#15: "강도현",
	#16: "유민지",
	#17: "한재민",
	#18: "조진영",
	#19: "김소율",
	#20: "이태준",
	#21: "박다은",
	#22: "최지안",
	#23: "정현서",
	#24: "강수현",
	#25: "유해인",
	#26: "한준서",
	#27: "조시우",
	#28: "김유진",
	#29: "이우진",
	#30: "박아름",
	#31: "최인하",
	#32: "정은서",
	#33: "강건우",
	#34: "유지훈",
	#35: "한승환",
	#36: "조다혜",
	#37: "김보람",
	#38: "이동현",
	#39: "박승아",
	#40: "최재현",
	#41: "정미나",
	#42: "강상훈",
	#43: "유나연",
	#44: "한현진",
	#45: "조가은",
	#46: "김지혜",
	#47: "이찬우",
	#48: "박서연",
	#49: "최해원",
	#50: "정윤서",
	#51: "강병호",
	#52: "유지수",
	#53: "한우석",
	#54: "조민호",
	#55: "김진서",
	#56: "이효진",
	#57: "박수빈",
	#58: "최선우",
	#59: "정은빈",
	#60: "강대현",
	#61: "유효선",
	#62: "한시원",
	#63: "조윤희",
	#64: "김연진",
	#65: "이재석",
	#66: "박유리",
	#67: "최호준",
	#68: "정나리",
	#69: "강종훈",
	#70: "유수빈",
	#71: "한도윤",
	#72: "조화영",
	#73: "김성민",
	#74: "이혜주",
	#75: "박준호",
	#76: "최연우",
	#77: "정미연",
	#78: "강동석",
	#79: "유효성",
	#80: "한민규",
	#81: "조지원",
	#82: "김성호",
	#83: "이보영",
	#84: "박지은",
	#85: "최진혁",
	#86: "정소라",
	#87: "강경훈",
	#88: "유혜린",
	#89: "한채연",
	#90: "조성윤",
	#91: "김태영",
	#92: "이도현",
	#93: "박하린",
	#94: "최민준",
	#95: "정하은",
	#96: "강은서",
	#97: "유지안",
	#98: "한영주",
	#99: "조은성",
	#100: "김서현"
#}
#
#var japaneseNames = {
	#1: "佐藤健",
	#2: "鈴木愛",
	#3: "高橋翔",
	#4: "田中花",
	#5: "伊藤大輔",
	#6: "渡辺美咲",
	#7: "山本陽介",
	#8: "中村優",
	#9: "小林誠",
	#10: "加藤彩",
	#11: "吉田拓海",
	#12: "山田結衣",
	#13: "佐々木直樹",
	#14: "山口茜",
	#15: "松本健太",
	#16: "井上真理",
	#17: "木村直美",
	#18: "林和也",
	#19: "清水彩花",
	#20: "斎藤直人",
	#21: "森田萌",
	#22: "川村亮",
	#23: "石川麻衣",
	#24: "阿部孝",
	#25: "橋本未来",
	#26: "山崎健",
	#27: "池田さくら",
	#28: "坂本祐樹",
	#29: "宮崎彩香",
	#30: "竹内仁",
	#31: "青木奈々",
	#32: "藤田亮",
	#33: "永井美奈子",
	#34: "原田匠",
	#35: "福田花子",
	#36: "岡本正樹",
	#37: "三浦和美",
	#38: "中川優斗",
	#39: "西村沙織",
	#40: "田村雄一",
	#41: "本田陽子",
	#42: "大野和樹",
	#43: "岡田美咲",
	#44: "長谷川俊介",
	#45: "木下遥",
	#46: "石田裕也",
	#47: "村上綾",
	#48: "小野亮太",
	#49: "松井智子",
	#50: "高木勇気",
	#51: "矢野美由紀",
	#52: "藤井大地",
	#53: "杉山杏奈",
	#54: "黒田拓海",
	#55: "上田裕美",
	#56: "武田健",
	#57: "長尾美優",
	#58: "平野海斗",
	#59: "中島真央",
	#60: "内田智也",
	#61: "村田陽菜",
	#62: "森川凌",
	#63: "塚本奈央",
	#64: "秋山優斗",
	#65: "原優香",
	#66: "中野健介",
	#67: "安藤由紀",
	#68: "大久保大輔",
	#69: "佐久間舞",
	#70: "松村智也",
	#71: "石原凛",
	#72: "小泉拓也",
	#73: "山下香織",
	#74: "水野翔太",
	#75: "島田友美",
	#76: "野村裕太",
	#77: "河野彩香",
	#78: "高田優太",
	#79: "松田未来",
	#80: "広瀬竜也",
	#81: "今井由美",
	#82: "白井誠",
	#83: "植田麻衣",
	#84: "酒井大輔",
	#85: "平田千尋",
	#86: "吉川直樹",
	#87: "木本美優",
	#88: "中西祐介",
	#89: "西田麻衣",
	#90: "増田浩平",
	#91: "浜田結衣",
	#92: "宮本和真",
	#93: "石黒香織",
	#94: "三上翔",
	#95: "星野理沙",
	#96: "桜井大輔",
	#97: "太田茜",
	#98: "川崎祐樹",
	#99: "森本沙織",
	#100: "北村悠斗"
#}
#
#var cantoneseNames = {
	#1: "陳小明",
	#2: "李嘉欣",
	#3: "黃偉倫",
	#4: "張天愛",
	#5: "劉德華",
	#6: "趙雅芝",
	#7: "蘇志燮",
	#8: "何超琼",
	#9: "梁朝偉",
	#10: "陳冠希",
	#11: "鄭秀文",
	#12: "周潤發",
	#13: "許冠傑",
	#14: "蔡依林",
	#15: "吳君如",
	#16: "朱茵",
	#17: "馮德倫",
	#18: "張學友",
	#19: "鄧麗欣",
	#20: "盧冠廷",
	#21: "吳彥祖",
	#22: "黎明",
	#23: "梅艷芳",
	#24: "余文樂",
	#25: "蔡卓妍",
	#26: "林心如",
	#27: "梁靜茹",
	#28: "張柏芝",
	#29: "許志安",
	#30: "陳慧琳",
	#31: "馮嘉欣",
	#32: "鍾欣潼",
	#33: "鄺美雲",
	#34: "翁靜晶",
	#35: "蔡明亮",
	#36: "黃秋生",
	#37: "陳意涵",
	#38: "羅嘉良",
	#39: "蘇緹",
	#40: "陳曉東",
	#41: "蘇瑩",
	#42: "黃子華",
	#43: "劉若英",
	#44: "莫文蔚",
	#45: "陳奕迅",
	#46: "吳孟達",
	#47: "張國榮",
	#48: "郭富城",
	#49: "蘇咏婷",
	#50: "劉慧娴",
	#51: "黃鳳凰",
	#52: "余靜萍",
	#53: "吳美欣",
	#54: "黎姿",
	#55: "劉嘉玲",
	#56: "蘇有朋",
	#57: "林志玲",
	#58: "何韻詩",
	#59: "陳妍希",
	#60: "梁靜茹",
	#61: "張韶涵",
	#62: "朱志軒",
	#63: "吳若希",
	#64: "陳宇凡",
	#65: "符華珍",
	#66: "邱淑貞",
	#67: "宋慧喬",
	#68: "何穗",
	#69: "鍾漢良",
	#70: "陳瀅",
	#71: "吳丹妮",
	#72: "梁家輝",
	#73: "馮小剛",
	#74: "何超蓮",
	#75: "陳子聰",
	#76: "廖碧兒",
	#77: "何晨曦",
	#78: "張靚穎",
	#79: "鄭家榻",
	#80: "甄子丹",
	#81: "李心潔",
	#82: "陳冠霖",
	#83: "蔡小虎",
	#84: "吳思凡",
	#85: "羅志祥",
	#86: "張志霖",
	#87: "陳麗珠",
	#88: "謝安琪",
	#89: "鄭希怡",
	#90: "陳欣妍",
	#91: "鍾楚紅",
	#92: "吳耀漢",
	#93: "黃建平",
	#94: "陳美詩",
	#95: "蔡曉彤",
	#96: "張晉",
	#97: "李幸倪",
	#98: "郭書瑤",
	#99: "陳惠敏",
	#100: "蘇雅媚",
#}

# Called when the node enters the scene tree for the first time.
func _ready():
<<<<<<< Updated upstream
	var randomLanguage = rng.randi_range(minLanguage, maxLanguage)
	var randomName = rng.randi_range(minName,maxName)
	var setName = getNames(randomLanguage, randomName)
	print("setNameWADjajkbdjkawdjkawd")
=======
	print("setNameWADjajkbdjkawdjkawd")
	var randomLanguage = rng.randi_range(minLanguage, maxLanguage)
	var randomName = rng.randi_range(minName,maxName)
	var setName = getNames(randomLanguage, randomName)
	
>>>>>>> Stashed changes
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# 
func getNames(randomLanguage, randomName):
	return languages[randomLanguage][randomName]
	
