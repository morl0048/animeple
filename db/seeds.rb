# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

######BLEACH####################################################
bleach = Anime.create(
  {
    name: "bleach",
    description: "Bleach (Japanese: ブリーチ Hepburn: Burīchi) is a Japanese anime television series based on Tite Kubo's manga of the same name. The series ran for a total of 366 episodes. Bleach was produced by Studio Pierrot and directed by Noriyuki Abe. Bleach's Japanese and English voice actors include some of the most credited and well known voice actors, including Masakazu Morita and Johnny Yong Bosch. The music was composed by Shirō Sagisu, who also composed the music for Neon Genesis Evangelion. A total of fifteen opening themes and thirty ending themes were used throughout the series, featuring a diverse group of Japanese artists.\n Bleach follows the adventures of Ichigo Kurosaki after he obtains the powers of a Soul Reaper (死神 Shinigami, literally, \"Death God\") — a death personification similar to the Grim Reaper — from another Soul Reaper, Rukia Kuchiki. His newfound powers force him to take on the duties of defending humans from evil spirits and guiding departed souls to the afterlife. The anime adaptation includes original storylines not found in the manga with repeated appearances and stories containing these original characters. Studio Pierrot produced the series from 2004 to 2012, consisting of 366 episodes. Viz Media obtained foreign television and home video distribution rights to the Bleach anime on March 15, 2004. Cartoon Network's Adult Swim block began airing Bleach in the United States on September 9, 2006. The series' international release extends through dozens of countries in several languages, such as Spanish, French, German, Brazilian Portuguese and Tagalog.",
    img: "/img/B/bleach.jpg"
  }
)

bleachS1 = Season.create(
  {
    name: "1"
  }
)

bleachS1E1 = Episode.create(
   {
     name: "1"
   }
 )
 bleachS1E2 = Episode.create(
    {
      name: "2"
    }
  )

bleachS1E1L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/zp0UbdOU_D4/"
  }
)
bleachS1E1L2 = Link.create(
  {
    typeLink: "videoXX",
    url: "https://video.xx.fbcdn.net/v/t42.1790-2/10000000_1579876912108155_7092609091675095040_n.mp4?_nc_cat=0&efg=eyJybHIiOjMwMCwicmxhIjo0MDg3LCJ2ZW5jb2RlX3RhZyI6InN2ZV9zZCJ9&rl=300&vabr=158&oh=a43badbb4d4ccc16a74a9ba03f719b28&oe=5ACCD308"
  }
)

bleachS1E2L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/vhVoPzVlXuw/"
  }
)

bleachS1E1.links << bleachS1E1L1
bleachS1E1.links << bleachS1E1L2
bleachS1E2.links << bleachS1E2L1

bleachS1.episodes << bleachS1E1
bleachS1.episodes << bleachS1E2

bleach.seasons << bleachS1

bleach.save()

######TOKYO GHOUL###############################################
tg = Anime.create(
  {
    name: "tokyo ghoul",
    description: "Strange murders are happening in Tokyo. Due to liquid evidence at the scene, the police conclude the attacks are the results of 'eater' type ghouls. College buddies Kaneki and Hide come up with the idea that ghouls are imitating humans so that's why they haven't ever seen one. Little did they know that their theory may very well become reality.",
    img: "/img/T/Tokyo Ghoul.jpg"
  }
)

tgS1 = Season.create(
  {
    name: "1"
  }
)

tgS1E1 = Episode.create(
   {
     name: "1"
   }
 )

tgS1E1L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/KFGKvkr8hQ4/"
  }
)

tgS1E1.links << tgS1E1L1

tgS1.episodes << tgS1E1

tg.seasons << tgS1

tg.save()
