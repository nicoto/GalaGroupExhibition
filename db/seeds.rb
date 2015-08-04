# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Nick = User.create(username: 'nicoto', password_hash: 'abc123xyz', firstname: 'Nick', lastname: 'Nick', email: 'nick@nick.com', home_phone: '111-111-1111', cell_phone: '111-111-1111', address1: '123', address2: nil, apt: '1', city_town: 'San Francisco', state_province: 'CA', postal_code: '94102', country: 'USA')

Keith = User.create(username: 'keith', password_hash: 'abc123xyz', firstname: 'Keith', lastname: 'Keith', email: 'keith@keith.com', home_phone: '222-222-2222', cell_phone: '222-222-2222', address1: '123', address2: nil, apt: '2', city_town: 'San Francisco', state_province: 'CA', postal_code: '94102', country: 'USA')

Fanta = User.create(username: 'fanta', password_hash: 'abc123xyz', firstname: 'Fanta', lastname: 'Fanta', email: 'fanta@fanta.com', home_phone: '333-333-3333', cell_phone: '333-333-3333', address1: '123', address2: nil, apt: '3', city_town: 'San Francisco', state_province: 'CA', postal_code: '94102', country: 'USA')

Participant.create(user_id: 1, ticket_number: 'AAAAA', rsvp: true, guests: 3, table_reservation: true)
Participant.create(user_id: 2, ticket_number: 'BBBBB', rsvp: false, guests: 2, table_reservation: false)
Participant.create(user_id: 3, ticket_number: 'CCCCC', rsvp: false, guests: 2, table_reservation: false)

Exhibition.create(id: 1, exhibit_name: 'Rubyists', exhibit_subtitle: 'tool-maker\'s mind', private_previews: true, preview_date: '2015-08-04', opening_reception: '2015-08-12', website_url: 'www.rubyists.com', flyer_graphic_url: '/fliers/rubyists_graphic.jpg', art_dropoff_start: '2015-08-07', art_pickup_deadline: '2015-08-30', pickup_location: 'DBC')

Artwork.create(id: 1, artist_id: 1, title: 'Golden Gate Bridge Under Fog 1', work_statement: 'Goodbye computer!', materials: 'Acrylic', technique: 'Impasto', year_of_make: '2015', thumbnail_url: 'lib/assets/images/1ggbuf_thumb.jpg', image1_url: 'lib/assets/images/1ggbuf1.jpg', image2_url: 'lib/assets/images/1ggbuf2.jpg', image3_url: 'lib/assets/images/1ggbuf3.jpg', detail_url: 'lib/assets/images/1ggbuf_detail.jpg', height: 7.5, width: 7.5, depth: nil, framed: true, sold: false, reserve_price: 1000.00)
Artwork.create(id: 2, artist_id: 1, title: 'Golden Gate Bridge Under Fog 2', work_statement: 'Goodbye computer!', materials: 'Acrylic', technique: 'Impasto', year_of_make: '2015', thumbnail_url: 'lib/assets/images/2ggbuf_thumb.jpg', image1_url: 'lib/assets/images/2ggbuf1.jpg', image2_url: 'lib/assets/images/2ggbuf2.jpg', image3_url: 'lib/assets/images/2ggbuf3.jpg', detail_url: 'lib/assets/images/2ggbuf_detail.jpg', height: 7.5, width: 7.5, depth: nil, framed: true, sold: false, reserve_price: 2000.00)
Artwork.create(id: 3, artist_id: 1, title: 'Golden Gate Bridge Under Fog 3', work_statement: 'Goodbye computer!', materials: 'Acrylic', technique: 'Impasto', year_of_make: '2015', thumbnail_url: 'lib/assets/images/ggbuf3_thumb.jpg', image1_url: 'lib/assets/images/3ggbuf1.jpg', image2_url: 'lib/assets/images/3ggbuf2.jpg', image3_url: 'lib/assets/images/3ggbuf3.jpg', detail_url: 'lib/assets/images/3ggbuf_detail.jpg', height: 7.5, width: 7.5, depth: nil, framed: true, sold: false, reserve_price: 3000.00)
Artwork.create(id: 4, artist_id: 1, title: 'Golden Gate Bridge Under Fog 4', work_statement: 'Goodbye computer!', materials: 'Acrylic', technique: 'Impasto', year_of_make: '2015', thumbnail_url: 'lib/assets/images/ggbuf_thumb.jpg', image1_url: 'lib/assets/images/4ggbuf1.jpg', image2_url: 'lib/assets/images/4ggbuf2.jpg', image3_url: 'lib/assets/images/4ggbuf3.jpg', detail_url: 'lib/assets/images/4ggbuf_detail.jpg', height: 7.5, width: 7.5, depth: nil, framed: true, sold: false, reserve_price: 4000.00)
Artwork.create(id: 5, artist_id: 1, title: 'Golden Gate Bridge Under Fog 5', work_statement: 'Goodbye computer!', materials: 'Acrylic', technique: 'Impasto', year_of_make: '2015', thumbnail_url: 'lib/assets/images/ggbuf5_thumb.jpg', image1_url: 'lib/assets/images/5ggbuf1.jpg', image2_url: 'lib/assets/images/5ggbuf2.jpg', image3_url: 'lib/assets/images/5ggbuf3.jpg', detail_url: 'lib/assets/images/5ggbuf_detail.jpg', height: 7.5, width: 7.5, depth: nil, framed: true, sold: false, reserve_price: 5000.00)

Auction.create(id: 1, exhibition_id: 1, artwork_id: 1, starting_price: 4.00, sale_price: 12.00, starting_time: '2015-08-01 9:00', ending_time: '2015-08-30 23:59')
Auction.create(id: 2, exhibition_id: 1, artwork_id: 2, starting_price: 4.00, sale_price: 12.00, starting_time: '2015-08-01 9:00', ending_time: '2015-08-30 23:59')
Auction.create(id: 3, exhibition_id: 1, artwork_id: 3, starting_price: 4.00, sale_price: 12.00, starting_time: '2015-08-01 9:00', ending_time: '2015-08-30 23:59')
Auction.create(id: 4, exhibition_id: 1, artwork_id: 4, starting_price: 4.00, sale_price: 12.00, starting_time: '2015-08-01 9:00', ending_time: '2015-08-30 23:59')
Auction.create(id: 5, exhibition_id: 1, artwork_id: 5, starting_price: 4.00, sale_price: 12.00, starting_time: '2015-08-01 9:00', ending_time: '2015-08-30 23:59')

Bid.create(participant_id: 1, auction_id: 1, currency: 'USD', offer: 5.00)
Bid.create(participant_id: 1, auction_id: 1, currency: 'USD', offer: 11.00)
Bid.create(participant_id: 2, auction_id: 1, currency: 'USD', offer: 7.00)
Bid.create(participant_id: 2, auction_id: 1, currency: 'USD', offer: 9.00)
Bid.create(participant_id: 3, auction_id: 1, currency: 'USD', offer: 4.00)
Bid.create(participant_id: 3, auction_id: 1, currency: 'USD', offer: 6.00)
Bid.create(participant_id: 3, auction_id: 1, currency: 'USD', offer: 8.00)
Bid.create(participant_id: 3, auction_id: 1, currency: 'USD', offer: 10.00)
Bid.create(participant_id: 3, auction_id: 1, currency: 'USD', offer: 12.00)

Bid.create(participant_id: 1, auction_id: 2, currency: 'USD', offer: 5.00)
Bid.create(participant_id: 1, auction_id: 2, currency: 'USD', offer: 11.00)
Bid.create(participant_id: 2, auction_id: 2, currency: 'USD', offer: 7.00)
Bid.create(participant_id: 2, auction_id: 2, currency: 'USD', offer: 9.00)
Bid.create(participant_id: 3, auction_id: 2, currency: 'USD', offer: 4.00)
Bid.create(participant_id: 3, auction_id: 2, currency: 'USD', offer: 6.00)
Bid.create(participant_id: 3, auction_id: 2, currency: 'USD', offer: 8.00)
Bid.create(participant_id: 3, auction_id: 2, currency: 'USD', offer: 10.00)
Bid.create(participant_id: 3, auction_id: 2, currency: 'USD', offer: 12.00)

Bid.create(participant_id: 1, auction_id: 3, currency: 'USD', offer: 5.00)
Bid.create(participant_id: 1, auction_id: 3, currency: 'USD', offer: 11.00)
Bid.create(participant_id: 2, auction_id: 3, currency: 'USD', offer: 7.00)
Bid.create(participant_id: 2, auction_id: 3, currency: 'USD', offer: 9.00)
Bid.create(participant_id: 3, auction_id: 3, currency: 'USD', offer: 4.00)
Bid.create(participant_id: 3, auction_id: 3, currency: 'USD', offer: 6.00)
Bid.create(participant_id: 3, auction_id: 3, currency: 'USD', offer: 8.00)
Bid.create(participant_id: 3, auction_id: 3, currency: 'USD', offer: 10.00)
Bid.create(participant_id: 3, auction_id: 3, currency: 'USD', offer: 12.00)

Bid.create(participant_id: 1, auction_id: 4, currency: 'USD', offer: 5.00)
Bid.create(participant_id: 1, auction_id: 4, currency: 'USD', offer: 11.00)
Bid.create(participant_id: 2, auction_id: 4, currency: 'USD', offer: 7.00)
Bid.create(participant_id: 2, auction_id: 4, currency: 'USD', offer: 9.00)
Bid.create(participant_id: 3, auction_id: 4, currency: 'USD', offer: 4.00)
Bid.create(participant_id: 3, auction_id: 4, currency: 'USD', offer: 6.00)
Bid.create(participant_id: 3, auction_id: 4, currency: 'USD', offer: 8.00)
Bid.create(participant_id: 3, auction_id: 4, currency: 'USD', offer: 10.00)
Bid.create(participant_id: 3, auction_id: 4, currency: 'USD', offer: 12.00)

Bid.create(participant_id: 1, auction_id: 5, currency: 'USD', offer: 5.00)
Bid.create(participant_id: 1, auction_id: 5, currency: 'USD', offer: 11.00)
Bid.create(participant_id: 2, auction_id: 5, currency: 'USD', offer: 7.00)
Bid.create(participant_id: 2, auction_id: 5, currency: 'USD', offer: 9.00)
Bid.create(participant_id: 3, auction_id: 5, currency: 'USD', offer: 4.00)
Bid.create(participant_id: 3, auction_id: 5, currency: 'USD', offer: 6.00)
Bid.create(participant_id: 3, auction_id: 5, currency: 'USD', offer: 8.00)
Bid.create(participant_id: 3, auction_id: 5, currency: 'USD', offer: 10.00)
Bid.create(participant_id: 3, auction_id: 5, currency: 'USD', offer: 12.00)
