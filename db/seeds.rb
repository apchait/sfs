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

trip_theme = Theme.create! name: 'The Trip', name_original: 'El Viaje', description: 'Going on Vacation!', image: 'http://people.ischool.berkeley.edu/~ariel/sfs/img/trip.jpg', language_id: spanish.id
hotel_subtheme = Subtheme.create! name: 'The Hotel', description: 'Where you sleep when on a trip', image: 'http://people.ischool.berkeley.edu/~ariel/sfs/img/trip.jpg', video_url: 'https://vimeo.com/61150433', theme_id: trip_theme.id
beach_subtheme = Subtheme.create! name: 'The Beach', description: 'Where you go to swim and play', image: 'http://people.ischool.berkeley.edu/~ariel/sfs/img/trip.jpg', video_url: 'https://vimeo.com/61150433', theme_id: trip_theme.id

house_theme = Theme.create! name: 'The House', name_original: 'La Casa', description: 'Your home!', image: 'http://people.ischool.berkeley.edu/~ariel/sfs/img/trip.jpg', language_id: spanish.id
livingroom_subtheme = Subtheme.create! name: 'The Living Room', description: 'Where you hang out with people', video_url: 'https://vimeo.com/61150433', theme_id: house_theme.id
bedroom_subtheme = Subtheme.create! name: 'The Bedroom', description: 'Where you go to sleep', video_url: 'https://vimeo.com/61150433', theme_id: house_theme.id

# Hotel Words
Word.create([
	{ text_english: 'Bathroom' , text_original: 'El Baño', audio: 'http://fivesomnimedia.com/projects/sfs/audio/bathroom_spanish.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/bathroom.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Bed', text_original: 'La Cama', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/bed.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/bed.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Gift Shop', text_original: 'La Tienda de Regalos', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/gift_shop.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/gift_shop.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Guest', text_original: 'El Huésped', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/guest.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/guest.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Key', text_original: 'La Llave', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/key.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/key.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Pool', text_original: 'La Piscina', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/pool.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/pool.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Room', text_original: 'La Habitación', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/room.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/room.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'To go shopping', text_original: 'Ir de Compras', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_go_shopping.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/to_go_shopping.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'To relax', text_original: 'Relajar', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_relax.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/to_relax.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'To sleep', text_original: 'Dormir', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_sleep.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/to_sleep.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id },
	{ text_english: 'Towel', text_original: 'La Toalla', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/towel.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/towel.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: hotel_subtheme.id }
])

# Beach Words
Word.create([
	{ text_english: 'Sand' , text_original: 'El Baño', audio: 'http://fivesomnimedia.com/projects/sfs/audio/bathroom_spanish.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/sand.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Water', text_original: 'La Cama', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/bed.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/water.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Sandals', text_original: 'La Tienda de Regalos', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/gift_shop.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/sandals.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Sunscreen', text_original: 'El Huésped', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/guest.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/sunscreen.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Palm Tree', text_original: 'La Llave', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/key.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/palm_tree.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Waves', text_original: 'La Piscina', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/pool.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/waves.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Seashells', text_original: 'La Habitación', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/room.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/seashells.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Sailboat', text_original: 'Ir de Compras', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_go_shopping.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/sailboat.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Lifeguard', text_original: 'Relajar', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_relax.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/lifeguard.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Fish', text_original: 'Dormir', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_sleep.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/fish.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Swim', text_original: 'La Toalla', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/towel.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/swim.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id },
	{ text_english: 'Play', text_original: 'La Toalla', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/towel.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/play.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: beach_subtheme.id }
])

# Livingroom Words
Word.create([
	{ text_english: 'Fireplace' , text_original: 'El Baño', audio: 'http://fivesomnimedia.com/projects/sfs/audio/bathroom_spanish.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/fireplace.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Staircase', text_original: 'La Cama', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/bed.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/staircase.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Telephone', text_original: 'La Tienda de Regalos', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/gift_shop.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/telephone.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Couch', text_original: 'El Huésped', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/guest.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/couch.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Lamp', text_original: 'La Llave', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/key.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/lamp.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Window', text_original: 'La Piscina', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/pool.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/window.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Rug', text_original: 'La Habitación', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/room.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/rug.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Television Set', text_original: 'Ir de Compras', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_go_shopping.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/television_set.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id },
	{ text_english: 'Remote', text_original: 'Relajar', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_relax.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/remote.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: livingroom_subtheme.id }
])

# Bedroom Words
Word.create([
	{ text_english: 'Closet' , text_original: 'El Baño', audio: 'http://fivesomnimedia.com/projects/sfs/audio/bathroom_spanish.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/closet.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Clock', text_original: 'La Cama', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/bed.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/clock.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Pillow', text_original: 'La Tienda de Regalos', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/gift_shop.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/pillow.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Bed', text_original: 'El Huésped', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/guest.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/bed.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Hanger', text_original: 'La Llave', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/key.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/hanger.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Blanket', text_original: 'La Piscina', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/pool.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/blanket.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Dresser', text_original: 'La Habitación', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/room.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/dresser.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Door', text_original: 'Ir de Compras', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_go_shopping.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/door.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id },
	{ text_english: 'Radio', text_original: 'Relajar', audio: 'http://people.ischool.berkeley.edu/~ariel/sfs/audio/to_relax.mp3', image: 'http://fivesomnimedia.com/projects/sfs/images/radio.jpg', pdf: 'http://fivesomnimedia.com/projects/sfs/flashcards/bathroom_flashcards.pdf', subtheme_id: bedroom_subtheme.id }
])

Document.create([
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/hotel_flashcards.pdf', description: 'Hotel Flashcards', subtheme_id: hotel_subtheme.id },
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/hotel_worksheets.pdf', description: 'Hotel Worksheets', subtheme_id: hotel_subtheme.id},
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/trip.pdf', description: 'Trip PDF', theme_id: trip_theme.id},
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/hotel_flashcards.pdf', description: 'Beach Flashcards', subtheme_id: beach_subtheme.id },
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/hotel_worksheets.pdf', description: 'Beach Worksheets', subtheme_id: beach_subtheme.id},
	{ url:'http://people.ischool.berkeley.edu/~ariel/sfs/pdf/trip.pdf', description: 'Trip PDF', theme_id: trip_theme.id}

])