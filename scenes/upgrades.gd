extends Node

var list = [{
	"name": "Sangue AB",
	"blood_price": "15",
	"people_price": "",
	"description": "\"STipos AB conseguem receber de todos mas doar apenas para si mesmo.\"\nAumenta 0.1 Sangues Por Segundo.",
	"img": "res://assets/sprites/AB.png",
	},
	{
	"name": "Sangue B",
	"blood_price": "150",
	"people_price": "",
	"description": "\"Tipos B conseguem receber de O e B e podem doar para AB e para si próprios.\"",
	"img": "res://assets/sprites/B.png",
	},
	{
	"name": "Sangue A",
	"blood_price": "500",
	"people_price": "",
	"description": "\"Tipos A conseguem receber de O e A e podem doar para AB e para si próprios.\"",
	"img": "res://assets/sprites/A.png",
	}, 
	{
	"name": "Sangue O",
	"blood_price": "1500",
	"people_price": "",
	"description": "\"Tipos O conseguem doar para todos os tipos sanguíneos mas receber apenas de si próprio.\"",
	"img": "res://assets/sprites/O.png",
	},
	{
	"name": "Sangue Dourado",
	"blood_price": "10000",
	"people_price": "",
	"description": "\"O tipo mais raro de sangue no mundo, por possuir fator RH nulo são doadores universais.\nExistem cerca de 50 pessoas que possuem tal sangue no mundo atualmente.\"",
	"img": "res://assets/sprites/dourado.png",
	}]

var BPS = 1.0
