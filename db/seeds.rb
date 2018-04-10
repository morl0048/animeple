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

bleachE1 = Episode.create(
   {
     name: "1"
   }
 )
 bleachE2 = Episode.create(
    {
      name: "2"
    }
  )

bleachE1L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/zp0UbdOU_D4/"
  }
)
bleachE1L2 = Link.create(
  {
    typeLink: "videoXX",
    url: "https://video.xx.fbcdn.net/v/t42.1790-2/10000000_1579876912108155_7092609091675095040_n.mp4?_nc_cat=0&efg=eyJybHIiOjMwMCwicmxhIjo0MDg3LCJ2ZW5jb2RlX3RhZyI6InN2ZV9zZCJ9&rl=300&vabr=158&oh=a43badbb4d4ccc16a74a9ba03f719b28&oe=5ACCD308"
  }
)

bleachE2L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/vhVoPzVlXuw/"
  }
)

bleachE1.links << bleachE1L1
bleachE1.links << bleachE1L2
bleachE2.links << bleachE2L1

bleach.episodes << bleachE1
bleach.episodes << bleachE2

bleach.save()

######TOKYO GHOUL###############################################
tg = Anime.create(
  {
    name: "tokyo ghoul",
    description: "Strange murders are happening in Tokyo. Due to liquid evidence at the scene, the police conclude the attacks are the results of 'eater' type ghouls. College buddies Kaneki and Hide come up with the idea that ghouls are imitating humans so that's why they haven't ever seen one. Little did they know that their theory may very well become reality.",
    img: "/img/T/TokyoGhoul.jpg"
  }
)

tgE1 = Episode.create(
   {
     name: "1"
   }
 )

tgE1L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/KFGKvkr8hQ4/"
  }
)

tgE1.links << tgE1L1

tg.episodes << tgE1

tg.save()

######AKAME GA KILL####################################################
akameGaKill = Anime.create(
  {
    name: "akame ga kill",
    description: "Akame ga Kill! (Japanese: アカメが斬る! Hepburn: Akame ga Kiru!, literally meaning \"Akame Slashes!\") is a Japanese shōnen manga series written by Takahiro and illustrated by Tetsuya Tashiro. It started serialization in Square Enix's Gangan Joker in March 2010. The story focuses on Tatsumi who is a young villager that travels to the Capital to raise money for his home only to discover a strong corruption in the area. The assassin group known as Night Raid recruits the young man to help them in their fight against the Empire to end its corruption. The series is known for its graphic content.\nThe series was licensed by Yen Press in June 2014. A prequel manga focused on Akame's backstory, Akame ga Kill! Zero, began serialization in Square Enix's Monthly Big Gangan in October 2013. A spin-off sequel, Hinowa ga Yuku!, began serialization in 2017. An anime television series adaptation of the main series premiered in Japan in July 2014. This is the second work in the Japanese game developer MinatoSoft's Takahiro IV Project.",
    img: "/img/A/akame_ga_kill.jpg"
  }
)

akameGaKillE1 = Episode.create(
   {
     name: "1"
   }
 )
akameGaKillE2 = Episode.create(
    {
      name: "2"
    }
  )

akameGaKillE1L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/oQe9Aj7d2sw/"
  }
)

akameGaKillE2L1 = Link.create(
  {
    typeLink: "openload",
    url: "https://openload.co/embed/wav4T2FoqTE/"
  }
)

akameGaKillE1.links << akameGaKillE1L1
akameGaKillE2.links << akameGaKillE2L1

akameGaKill.episodes << akameGaKillE1
akameGaKill.episodes << akameGaKillE2

akameGaKill.save()
