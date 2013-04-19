#!/bin/env ruby
# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

spanish = Language.create! name: 'Spanish', name_original: 'Español'
trip_theme = Theme.create! name: 'A Trip', name_original: 'El Viaje', description: 'Going on Vacation!', image: 'http://people.ischool.berkeley.edu/~ariel/sfs/img/trip.jpg', language_id: spanish.id
hotel_subtheme = Subtheme.create! name: 'Hotel', description: 'Where you sleep when on a trip', video_url: 'https://vimeo.com/61150433', theme_id: trip_theme.id
Word.create([
	{ text_english: 'Bathroom' , text_original: 'El Baño', audio: 'http://fivesomnimedia.com/projects/sfs/audio/bathroom_spanish.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/bathroom.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Bed', text_original: 'La Cama', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/bed.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Gift Shop', text_original: 'La Tienda de Regalos', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/gift_shop.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Guest', text_original: 'El Huésped', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/guest.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Key', text_original: 'La Llave', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/key.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Pool', text_original: 'La Piscina', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/pool.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Room', text_original: 'La Habitación', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/room.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'To go Shoppig', text_original: 'Ir de Compras', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_go_shopping.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'To Relax', text_original: 'Relajar', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_relax.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'To Sleep', text_original: 'Dormir', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_sleep.mp3', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Towel', text_original: 'La Toalla', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/towel.mp3', subtheme_id: hotel_subtheme.id }
])

Document.create([
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/hotel_flashcards.pdf', description: 'Hotel Flashcards', subtheme_id: hotel_subtheme.id },
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/hotel_worksheets.pdf', description: 'Hotel Worksheets', subtheme_id: hotel_subtheme.id},
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/trip.pdf', description: 'Trip PDF', theme_id: trip_theme.id}
])