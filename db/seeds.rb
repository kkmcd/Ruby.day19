# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = ["Horror","Thriller","Action","Drama","Comedy","Romance", "SF", "Adventure"]

images = %w(http://mblogthumb4.phinf.naver.net/MjAxNzA3MDJfMjE3/MDAxNDk4OTM4MDU2ODQy.-BRqtJZh7hQB3ZuGyRMtJWh98Fd-5HoNSEjPb_VJZGkg.JcfJCRQaey7Y1IrUCcHVBnJPP5sy6XMjnJZmaRsdjgsg.JPEG.kimmisung08/%EC%A5%AC%EB%A7%8C%EC%A7%80_2017%2C%EC%A5%AC%EB%A7%8C%EC%A7%80_%EC%9B%B0%EC%BB%B4%ED%88%AC%EB%8D%94%EC%A0%95%EA%B8%80%2C%EC%A5%AC%EB%A7%8C%EC%A7%80_%EC%86%8D%ED%8E%B8%2C%EC%A5%AC%EB%A7%8C%EC%A7%802%2C%EC%A5%AC%EB%A7%8C%EC%A7%80_%EC%9B%B0%EC%BB%B4.jpg?type=w2
https://post-phinf.pstatic.net/MjAxNzA3MjdfMzYg/MDAxNTAxMTQwODY5MzM1.tqJIiKs33hVRA33VWmsN54DSDdHOcKYITe6s0XAKOrsg.jG2GuSByozghZQo58ZB13sHKjS1nH3oKMGstxs1qfh0g.JPEG/image_4599575481501140844496.jpg?type=w1200
http://news.einfomax.co.kr/news/photo/201803/3439236_50293_381.jpg
http://t1.daumcdn.net/liveboard/pnn/214381a02e1b4af9b058e94c71151c92.JPG
https://t1.daumcdn.net/cfile/tistory/175783224A6A838B8F
http://menu.mt.co.kr/ize/thumb/2018/04/06/2018043009037243596_1.jpg
http://img.etnews.com/news_ebuzz/afieldfile/2012/01/04/c_bk010101_87518_2.jpg)

30.times do
    @movie = Movie.create(title: Faker::Movie.quote, genre: genres.sample, director: Faker::FunnyName.name,
    actor: Faker::FunnyName.two_word_name, 
    remote_image_path_url: images.sample,
    description: Faker::Lorem.paragraph, user_id: 1)
    p @movie.errors
end

