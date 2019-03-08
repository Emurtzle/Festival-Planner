#Bands
Band.create(name: "Red Hot Chili Peppers", description: "Funk Rock Powerhouse", img_link: "https://www.festivalsherpa.com/wp-content/uploads/2017/07/red-hot-chili-peppers_7.jpg")
Band.create(name: "Skrillex", description: "Leading Dubstep Producer and DJ", img_link: "http://runthetrap.com/wp-content/uploads/2014/09/skrillex.jpg")
Band.create(name: "Liquid Stranger", description: "Weird and Wonderful", img_link: "http://cdn.relentlessbeats.com/wp-content/uploads/2016/10/liquid-stranger-monarch-160924-030-1200x800.jpg")
Band.create(name: "Modest Mouse", description: "Excellently Ecclectic", img_link: "https://www.tickpick.com/DesktopModules/SearchResults/img/performers/modest-mouse.jpg")
Band.create(name: "Glass Animals", description: "Catchy, Trippy Music", img_link: "http://img2-ak.lst.fm/i/u/arO/14becc2961f24828c849d7b6e535bb26")
Band.create(name: "Beats Antique", description: "Shadowbox Tour", img_link: "https://www.theuntz.com/img/upload/beatsantique.jpg")
Band.create(name: "Tipper", description: "Electronic legend presents an audio/visual masterpiece", img_link: "https://upload.wikimedia.org/wikipedia/commons/5/52/Tipper_2010.jpg")
Band.create(name: "Phantogram", description: "Emotional Madness", img_link: "https://www.melsays.com/wp-content/uploads/2014/06/Phantogram_F_7537.jpg")
Band.create(name: "Big Grams", description: "Phantogram Collaboration with Big Boi", img_link: "http://floodmagazine.com/wp-content/uploads/2015/10/BigGrams_2015_Portrait-header_RozetteRago.jpg")
Band.create(name: "Radiohead", description: "Live out your teenage agnst", img_link: "https://consequenceofsound.files.wordpress.com/2016/02/radiohead.jpg")
Band.create(name: "Mumford and Sons", description: "Not those songs! The new ones!!", img_link: "http://www.shrinktank.com/wp-content/uploads/2015/05/Mumford-Sons-4.jpg")
Band.create(name: "Catfish and the Bottlemen", description: "Solid Rock Band", img_link: "http://www.onrecordmag.com/wp-content/uploads/2016/02/lolla-catfish-and-the-bottlemen-1280x8001.jpg")
Band.create(name: "Foo Fighters", description: "Best Rock Band", img_link: "http://i.huffpost.com/gen/2257194/thumbs/o-FOO-FIGHTERS-facebook.jpg")
Band.create(name: "Pearl Jam", description: "All procedes go to the homeless of Seattle", img_link: "https://downloads-pearljam-com.s3.amazonaws.com/img/giftcard-image/1469549207912b88a840fceaf4c2702a34bfc5b83b.jpg")
Band.create(name: "G-Jones", description: "Space Bass Master / Beat Maker Maestro", img_link: "https://www.edmsauce.com/wp-content/uploads/2017/01/4-g-jones.jpg")

#Organizers
Organizer.create(name: "usc", password: "pass")
Organizer.create(name: "aeg", password: "pass")
Organizer.create(name: "nrg", password: "pass")

#Users
User.create(name: "emily", password: "pass")
  Schedule.create(festival_id: 3, user_id: 1)
  Schedule.create(festival_id: 2, user_id: 1)
User.create(name: "sahir", password: "pass")
  Schedule.create(festival_id: 3, user_id: 2)
  Schedule.create(festival_id: 1, user_id: 2)
User.create(name: "Tom", password: "pass")
  Schedule.create(festival_id: 1, user_id: 3)
  Schedule.create(festival_id: 2, user_id: 3)

#Festivals
Festival.create(name: "Bumbershoot", city: "Seattle", duration: "3", description: "Seattle's Premiere Music Festival", organizer_id: 1)
  Stage.create(name: "Key Arena", description: "Main Stage number one inside of Key Arena", festival_id: 1)
  Stage.create(name: "Marshall Stadium", description: "Main Stage number two inside of Marshall Stadium", festival_id: 1)
  Stage.create(name: "Alt Stage 1", description: "Stage for smaller acts near the water foutain", festival_id: 1)


Festival.create(name: "Paradiso", city: "The Gorge", duration: "2", description: "Largest EDM festival in Washington", organizer_id: 1)
  Stage.create(name: "Main Stage", description: "The main stage in front of the Gorge", festival_id: "2")
  Stage.create(name: "Wreckage", description: "The bass stage, inspired by a plane wreckage in a jungle", festival_id: "2")
  Stage.create(name: "Digital Oasis", description: "The trance stage", festival_id: "2")
  Stage.create(name: "Chaos Stage", description: "The end of the world happens here", festival_id: "2")

Festival.create(name: "Burning Man", city: "The Desert", duration: "14", description: "Large-scale happening for weirdos and tech billionaires", organizer_id: 3)
  Stage.create(name: "Main Stage", description: "This is where the man is burned", festival_id: 3)
  Stage.create(name: "Cactus Stage", description: "The ground is covered in cacti; it's actually a feature", festival_id: 3)
  Stage.create(name: "Burning Stage", description: "The ground is lava", festival_id: 3)


#Stages
# Stage.create(name: "", description: "", festival_id: "")

#Appointments
# Appointment.create(stage_id: , band_id: , start: , end: )

#Schedules
# Schedule.create(festival_id: , user_id: )

#scheduleappointments
# ScheduleAppointment.create(appointment_id: , user_id: )
