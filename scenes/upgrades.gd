extends Node

var upgrade = [{
	"name": "Sangue AB",
	"BPC": "1.2",
	"BPS": "0.0",
	"Step": "1.5",
	"blood_price": "15",
	"people_price": "",
	"description": "\"Tipos AB conseguem receber de todos mas doar apenas para si mesmo.\"\nAumenta 0.1 Sangues Por Segundo.",
	"img": "res://assets/sprites/AB.png",
	},
	{
	"name": "Sangue B",
	"BPC": "1.8",
	"BPS": "0.0",
	"Step": "2",
	"blood_price": "150",
	"people_price": "",
	"description": "\"Tipos B conseguem receber de O e B e podem doar para AB e para si próprios.\"",
	"img": "res://assets/sprites/B.png",
	},
	{
	"name": "Sangue A",
	"BPC": "2.6",
	"BPS": "0.0",
	"Step": "2.8",
	"blood_price": "500",
	"people_price": "",
	"description": "\"Tipos A conseguem receber de O e A e podem doar para AB e para si próprios.\"",
	"img": "res://assets/sprites/A.png",
	}, 
	{
	"name": "Sangue O",
	"BPC": "3.5",
	"BPS": "0.0",
	"Step": "4.5",
	"blood_price": "1500",
	"people_price": "",
	"description": "\"Tipos O conseguem doar para todos os tipos sanguíneos mas receber apenas de si próprio.\"",
	"img": "res://assets/sprites/O.png",
	},
	{
	"name": "Sangue Dourado",
	"BPC": "5.0",
	"BPS": "0.0",
	"Step": "8.8",
	"blood_price": "10000",
	"people_price": "",
	"description": "\"O tipo mais raro de sangue no mundo, por possuir fator RH nulo são doadores universais.\nExistem cerca de 50 pessoas que possuem tal sangue no mundo atualmente.\"",
	"img": "res://assets/sprites/dourado.png",
	}]
var community = [{
	"name": "Boca a Boca",
	"BPC": "0.0",
	"BPS": "0.5",
	"Step": "2",
	"blood_price": "",
	"people_price": "1",
	"description": "\"Contar para os vizinhos e amigos, que contam para mais amigos que contam para mais amigos... que doação de sangue ajuda várias pessoas.\"\nAumenta 0.1 Sangues Por Segundo.",
	"img": "res://assets/sprites/dialogo.png",
	},
	{
	"name": "Campanha",
	"BPC": "0.0",
	"BPS": "10.0",
	"Step": "2",
	"blood_price": "",
	"people_price": "100",
	"description": "\"Realizar campanhas pró doação de sangue. Panfletos, carros de som e posts em redes sociais.\"\nAumenta 10.0 Sangues Por Segundo.",
	"img": "res://assets/sprites/megafone.png",
	}]
var research = [{
	"name": "Cura do HIV",
	"BPC": "0.0",
	"BPS": "0.5",
	"Step": "2",
	"blood_price": "",
	"people_price": "39000000",
	"description": "\"Um grupo de pessoas salvas por você desenvolveu a cura do HIV. Foi salvo 39 milhões de pessoas no mundo inteiro que tem HIV, parabéns.\"\nAumenta 0.1 Sangues Por Segundo.",
	"img": "res://assets/sprites/recompensa.png",
	},
	{
	"name": "Cura da Malária",
	"BPC": "0.0",
	"BPS": "0.5",
	"Step": "2",
	"blood_price": "",
	"people_price": "1",
	"description": "\"O mesmo grupo de pessoas salvas por você desenvolveu a vacina contra a Malária. OMS distribui a vacina gratuitamente ao redor do mundo.\"\nAumenta ## Sangues Por Segundo.",
	"img": "",
	},
	{
	"name": "Cura da Hepatite",
	"BPC": "0.0",
	"BPS": "0.5",
	"Step": "2",
	"blood_price": "",
	"people_price": "290000000",
	"description": "\"Outro grupo de pessoas salvas por você desenvolveu a cura da Hepatite. Parabéns, você evitou que 1,4 milhões de pessoas ao redor do globo se infectasse com hepatite e salvou mais de 200 milhões.\"\nAumenta ## Sangues Por Segundo.",
	"img": "",
	},
	{
	"name": "Cura do Câncer",
	"BPC": "0.0",
	"BPS": "0.5",
	"Step": "2",
	"blood_price": "",
	"people_price": "20000000",
	"description": "\"No dia 4 de fevereiro Dia Mundial de Luta Contra o Câncer, você e o grupo de ciêntista salvos por você anunciaram a cura do cancêr, 20 milhões de pessoas foram salvas\"\nAumenta ## Sangues Por Segundo.",
	"img": "",
	},
	{
	"name": "Salvar o Mundo",
	"BPC": "0.0",
	"BPS": "10.0",
	"Step": "2",
	"blood_price": "",
	"people_price": "8000000000",
	"description": "\"Você conseguiu salvar todos os 8 bilhões de seres humanos do planeta, PARABENS!!!.\"\nTE TORNA O DEUS DO NOVO MUNDO.",
	"img": "res://assets/sprites/mundo.png",
	}]

var BPS = 0.0
var BPC = 1.0
