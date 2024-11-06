class Data {
  int id;
  List<String> image;
  String category;
  String name;
  String size;
  String desc;
  num rating;
  String price;

  Data({
    required this.id,
    required this.image,
    required this.category,
    required this.name,
    required this.size,
    required this.desc,
    required this.rating,
    required this.price,
  });
}

var dataList = [
  Data(
      id: 1,
      image: [
        "https://img.freepik.com/free-psd/male-skateboarder-with-mock-up-t-shirt_23-2149137384.jpg?w=740&t=st=1656864759~exp=1656865359~hmac=da73ca4518695ee1da542eb8ae4006839b61f63aec4b02ec8c90fac992d54eef",
        "https://img.freepik.com/free-psd/young-man-with-mock-up-skateboard_23-2149137398.jpg?w=740",
        "https://img.freepik.com/free-psd/young-male-skateboarder-with-mock-up-t-shirt_23-2149137413.jpg?w=740"
      ],
      category: "Mockup Man",
      name: "Kaos Pria Bahan Cotton Combed 30S Soft Tees - Hitam",
      size:
      "width x length x bust M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm XL: 55cm x 75cm x 110 cm XXL: 58cm x 78cm x 116 cm",
      desc:
      "Premium Quality Material : Cotton Desain simple and casual Round neckline Bahan lembut dan tidak panas Nyaman untuk digunakan sehari-hari",
      rating: 4.5,
      price: "Rp.130.000"),
  Data(
      id: 2,
      image: [
        "https://img.freepik.com/free-psd/man-wearing-t-shirt-mockup_23-2148595356.jpg?w=740",
        "https://img.freepik.com/free-psd/man-wearing-t-shirt-mockup_23-2148595357.jpg?w=740",
        "https://img.freepik.com/free-psd/man-holding-poster-mockup_23-2148595362.jpg?w=900"
      ],
      category: "Mockup Man",
      name:
          "Mockup Kaos Distro Pria /Tshirt Pria /100% Cotton Combed 30s - Putih",
      size:
          "width x length x bust M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm XL: 55cm x 75cm x 110 cm XXL: 58cm x 78cm x 116 cm",
      desc:
          "Realpict, Sesuai Display Lembut & Nyaman Sablon Tajam Menggunakan Polyflex & Tahan Lama Cek Detail Ukuran Di Deskripsi",
      rating: 4.2,
      price: "Rp.130.000"),
  Data(
      id: 3,
      image: [
        "https://img.freepik.com/free-psd/person-with-excited-expression-pointing-tshirt-mockup_23-2149106999.jpg?w=740",
        "https://img.freepik.com/free-psd/person-with-excited-expression-pointing-tshirt-mockup_23-2149106998.jpg?w=900",
        "https://img.freepik.com/free-psd/person-with-excited-expression-wearing-tshirt-mockup_23-2149106997.jpg?w=1060"
      ],
      category: "Mockup Man And Woman",
      name:
          "PSD Mockup Cotton Combed 30s Premium Baju Pria Wanita Murah - Putih",
      size:
          "width x length x bust L: 52cm x 72cm x 104 cm XL: 55cm x 75cm x 110 cm XXL: 58cm x 78cm x 116 cm",
      desc:
          "Tampil Stylish, nyaman, adem, dan cocok dipakai oleh WANITA maupun PRIA (unisex) kapanpun dimanapun!  Kami Menggunakan bahan Berkualitas yaitu Cotton Combed ketebalan 30s berjenis REAKTIF yang mampu menyerap keringat, Anda bisa bebas bergerak dan tetap merasa sejuk selama memakainya, bahkan saat cuaca panas sekalipun.",
      rating: 4.0,
      price: "Rp.100.000"),
  Data(
      id: 4,
      image: [
        "https://img.freepik.com/free-psd/young-man-wearing-mock-up-t-shirt_23-2149034277.jpg?w=1060",
        "https://img.freepik.com/free-psd/young-man-wearing-mock-up-t-shirt-outside_23-2149034287.jpg?w=1060",
        "https://img.freepik.com/free-psd/young-man-wearing-mock-up-t-shirt-outside_23-2149034289.jpg?w=1060"
      ],
      category: "Mockup Man",
      name: "Mockup 8114 F Tshirt Soft Brown Kaos Pria",
      size:
          "width x length x bust M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm XL: 55cm x 75cm x 110 cm ",
      desc:
          "ABOUT THE PRODUCT Kaos berlengan pendek menggunakan bahan single jersey. Didesain dengan cutting slim fit dan round neck dan satu chest pocket.  ABOUT THE LOOK Basic casual, mix & match dengan bermuda, chinos dan shorts  SELLING POINT • Basic style round neck, pilihan utama untuk mix & match • Berbahan katun jersey yang nyaman dan pilihan warna yang menarik",
      rating: 4.0,
      price: "Rp.130.000"),
  Data(
      id: 5,
      image: [
        "https://img.freepik.com/free-psd/young-woman-wearing-t-shirt-mockup_23-2149405963.jpg?w=1060&t=st=1656865036~exp=1656865636~hmac=9ac3008c96900e593f6c3cac522bc4e6e153f708f1076bd33cb7e50c9014cbf0",
        "https://img.freepik.com/free-psd/young-woman-wearing-t-shirt-mockup_23-2149405951.jpg?w=1060",
        "https://img.freepik.com/free-psd/young-woman-wearing-t-shirt-mockup_23-2149405973.jpg?w=1060",
        "https://img.freepik.com/free-psd/young-woman-wearing-t-shirt-mockup_23-2149405961.jpg?w=1060&t=st=1656865030~exp=1656865630~hmac=d42d62f4ad4a3e4321ec38542acdf4e5bcb2907b9c6b2f8a4aad89f1c42c515c"
      ],
      category: "Mockup Woman",
      name: "Mockup T-Shirt Wanita Suza In Orange",
      size:
      "width x length x bust XS: 43cm x 63cm x 86cm S: 46cm x 66cm x 92 cm M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm",
      desc:
      "Deskripsi Kaos Polos Cotton Combed 20s  Kaos Cotton Combed 20s merupakan Kaos yang terbuat dari Kain Combed 20s mempunyai gramasi 190-200gsm, serat kapas murni alami dengan karakteristik halus, nyaman, dan menyerap keringat dengan baik. Kaos ini sangat direkomendasikan untuk event yang berkegiatan di gunung atau daerah yang memiliki udara dingin.",
      rating: 4.5,
      price: "Rp.120.000"),
  Data(
      id: 6,
      image: [
        "https://img.freepik.com/free-psd/young-woman-wearing-t-shirt-mockup_23-2149405964.jpg?w=1060",
        "https://img.freepik.com/free-psd/young-woman-wearing-t-shirt-mockup_23-2149405952.jpg?w=1060",
        "https://img.freepik.com/free-psd/young-woman-wearing-t-shirt-mockup_23-2149405956.jpg?w=1380&t=st=1656865193~exp=1656865793~hmac=af978eea118ac13ad64a5bfbd190ea9e3c9e1a70eeab41676e5aee5dbf18dd67"
      ],
      category: "Mockup Woman",
      name: "Mockup 1025 T-Shirt Casual Wanita Lengan Pendek Premium",
      size:
          "width x length x bust XS: 43cm x 63cm X 86cm S: 46cm x 66cm x 92 cm M: 49cm x 69cm x 98 cm",
      desc: "Mockup 1025 T-Shirt Wanita merupakan short sleeves t-shirt berbahan Katun " +
          "compact yang didesain trendy dengan round neckline dan image print pada bagian depan sehingga nyaman saat digunakan.",
      rating: 4.5,
      price: "Rp.120.000"),
  Data(
      id: 7,
      image: [
        "https://img.freepik.com/free-psd/young-man-wearing-mock-up-t-shirt-forest_23-2149034292.jpg?w=1060&t=st=1656871141~exp=1656871741~hmac=e79978ae03d21a19f0912e4ce01e9036b8009081115b6fa8ce889569fa6e654a",
        "https://img.freepik.com/free-psd/young-man-wearing-mock-up-t-shirt-nature_23-2149034299.jpg?w=740&t=st=1656865324~exp=1656865924~hmac=d57a0a2af653589dbfaf4e3cc1001f229382cedbe775d66fda3f06bf2ccbece7",
        "https://img.freepik.com/free-psd/young-man-wearing-mock-up-t-shirt-nature_23-2149034302.jpg?w=740&t=st=1656865321~exp=1656865921~hmac=cb1f919c66bceaae697ec10ad22e6f7ce41e0e068faba4a73c9d813804c17e01"
      ],
      category: "Mockup Man",
      name: "Mockup Tshirt Kaos Pria Secrated Hitam",
      size:
          "width x length x bust M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm XL: 55cm x 75cm x 110 cm XXL: 58cm x 78cm x 116 cm",
      desc:
          "PRODUCT DETAILS : - Soft-touch jersey - Crew neck - Short sleeves - Oilbased Ink Print - Fixed cuffs - Regular fit - Machine wash - 100% Cotton Combed 30’s",
      rating: 4.8,
      price: "Rp.120.000"),
  Data(
      id: 8,
      image: [
        "https://img.freepik.com/free-psd/young-adult-wearing-forest-apparel-tshirt_23-2149292859.jpg?t=st=1656850351~exp=1656850951~hmac=bfe8af322ba0d3efcdb0f2c4086e89dd53aea5717913d1cb68fc444ec4e9918d&w=740",
        "https://img.freepik.com/free-psd/young-adult-wearing-forest-apparel-tshirt_23-2149292862.jpg?w=1060&t=st=1656865453~exp=1656866053~hmac=811e60c0f06ac2432530ef066cf2158383cdf165e3dbb003397342393a77b54d"
      ],
      category: "Mockup Man",
      name: "Mockup Premium Katun Combed Lengan Pendek - Putih",
      size:
          "width x length x bust L: 52cm x 72cm x 104 cm XL: 55cm x 75cm x 110 cm XXL: 58cm x 78cm x 116 cm",
      desc:
          "Bahan Kain 100% Premium Cotton-Combed 30s Ultrasoft. Bahan sejuk dan nyaman dipakai, gak gampang kusut, gak gampang berbulu dan mudah dicuci Benang Jahitan 100% Cotton Gramasi kain 140-160 gr/m2; Tidak setebal 24s dan tidak setipis 40s. Gramasi terlaris saat ini. Jahitan leher: Double Stick; lebih kuat, gak gampang kendor.",
      rating: 4.9,
      price: "Rp.100.000"),
  Data(
      id: 9,
      image: [
        "https://img.freepik.com/free-psd/young-adult-wearing-forest-apparel-tshirt_23-2149292871.jpg?w=740&t=st=1656865513~exp=1656866113~hmac=4d950edfc004194316f7e65b7b2f70716522f79d15faf18e8cbeb18f40aef404",
        "https://img.freepik.com/free-psd/young-adult-wearing-forest-apparel-tshirt_23-2149292868.jpg?w=740&t=st=1656865516~exp=1656866116~hmac=6bf6560317d4b8b5c0594d61a784488f35dc4f32d2306863e84bd9f294c35e17",
        "https://img.freepik.com/free-psd/young-adult-wearing-forest-apparel-tshirt_23-2149292866.jpg?w=1060&t=st=1656865504~exp=1656866104~hmac=dc2450607729a2adb2561eac2b76a2380364374679656b676bf29807e9eb1980"
      ],
      category: "Mockup Woman",
      name: "Sweater basic distro wanita bahan berkualitas 7803 - Putih",
      size:
          "width x length x bust XS: 43cm x 63cm X 86cm S: 46cm x 66cm x 92 cm M: 49cm x 69cm x 98 cmL: 52cm x 72cm x 104 cm ",
      desc:
          "Sweater basic distro wanita bahan berkualitas 7803 PERHATIAN PENTING  Warna tidak luntur dan tahan lama. Bahan terbuat dari Katun sehingga lebih mudah menyerap keringat. Halus, Nyaman dan Adem dipakai sehari-hari",
      rating: 4.6,
      price: "Rp.130.000"),
  Data(
      id: 10,
      image: [
        "https://img.freepik.com/free-psd/individual-genuine-person-wearing-tshirt-mockup_23-2149077486.jpg?t=st=1656865513~exp=1656866113~hmac=ae0296ca28f2e0a3243fc7519a68824a5fabef37675e314b16d5502ae72f3e0e&w=740",
        "https://img.freepik.com/free-psd/young-man-wearing-mock-up-t-shirt-forest_23-2149034296.jpg?w=740&t=st=1656865739~exp=1656866339~hmac=31baabb001240fab1d1dbeeb7f8a104be2cf007eed9c09e68f317a3007f258d7"
      ],
      category: "Mockup Man",
      name: "Mockup Resistance T-Shirt Pria - Black ",
      size:
          "width x length x bust S: 46cm x 66cm x 92 cm M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm XL: 55cm x 75cm x 110 cm",
      desc:
          "Merupakan short sleeves t-shirt berbahan Cotton Combed 30s yang didesain simple trendy dengan round neckline dan image print pada bagian depan, sehingga sangat nyaman pada saat digunakan. Cocok digunakan di iklim tropis.",
      rating: 4.9,
      price: "Rp.130.000"),
  Data(
      id: 11,
      image: [
        "https://img.freepik.com/free-psd/black-t-shirt-mockup_125540-430.jpg?w=1060&t=st=1656865862~exp=1656866462~hmac=f401674915d37743111f6073ea37fd167d499b872e6d32e9be3608be55e601a8",
        "https://img.freepik.com/free-psd/folded-black-t-shirt-mockup_125540-505.jpg?w=1060&t=st=1656865630~exp=1656866230~hmac=42a91d7824f52b5bcbd7f46c388c98d4a97737d0750d20de2128b8d05e77c8bb"
      ],
      category: "Mockup Man",
      name: "Mockup T-Shirt Ripped Matchday ",
      size:
          "width x length x bust S: 46cm x 66cm x 92 cm M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm ",
      desc:
          "Kaos lengan pended, dengan material Cotton Combed 30s Spesifikasi: - Material Cotton Combed 30S SUPER SOFT - Sablon Plastisol (Oil based)",
      rating: 4.5,
      price: "Rp.100.000"),
  Data(
      id: 12,
      image: [
        "https://img.freepik.com/free-psd/sports-shirt-mockup-with-brand-logo_23-2148126767.jpg?w=900&t=st=1656866081~exp=1656866681~hmac=f68914cb196c7315b4e3b36d4b937c3434ce6a767bb1d5fbf60fc88985ffd02f",
        "https://img.freepik.com/free-psd/sports-shirt-mockup-with-brand-logo_23-2148126771.jpg?w=900&t=st=1656866087~exp=1656866687~hmac=b2818c78cbe7de60ab2dc9ed6c5d4ac8abf06a9562a47dd41249071f0235db09"
      ],
      category: "Mockup Man",
      name: "JERSEY FUTSAL / JERSEY BOLA MUNICH X1 JSY WHITE ROYAL BLUE",
      size:
          "width x length x bust S: 46cm x 66cm x 92 cm M: 49cm x 69cm x 98 cm L: 52cm x 72cm x 104 cm ",
      desc:
          "Terbuat dari kain yang dengan cepat menyerap kelembapan, dapat membuat Anda nyaman saat bermain futsal atau bola. Material: 100% Polyester Quick Dry",
      rating: 4.0,
      price: "Rp.150.000"),
];
