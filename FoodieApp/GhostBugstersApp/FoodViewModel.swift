//
//  FoodViewModel.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 20/10/23.
//

import Foundation

struct FoodViewModel {
            
    var foods: [Food] = [
        Food( id:1, name: "Neapolitan Coffee", type: "Drink",
              image: "napolitainCoffee", isFav: false,
              preferenceTypes: ["coffee","drink"],
              desc: "Coffee is a widely loved drink made from roasted coffee beans. It's known for its rich flavor and the energy boost it provides when you drink it.",
              placeName: "Gran Caffè Gambrinus",
              latitude: 40.83702903848648, longitude: 14.248496518144602,
              couriosity: "The tradition of \"caffè sospeso,\" or \"suspended coffee,\" originated in Naples. The presence of coffee in Neapolitan culture dates back to the early 19th century, thanks to the first itinerant coffee vendors who roamed the city, calling out to the crowd to sell coffee or milk. They played a significant role in popularizing this beverage in the city.The custom of paying for an extra coffee has much older origins. History tells us that it began to gain traction during a critical time in Italian society, during World War II. Anyone who could afford it would pay for their coffee and then add another one to be \"suspended,\" intended for those who couldn't afford it. According to Neapolitan lore, this act of solidarity originated from disputes among friends at the bar when it came time to settle the bill. In the uncertainty of who should actually pay for the espressos, they would end up paying for one that had not been consumed, leaving it as a gift for a stranger.",
             isDrink: true, isBreakfast: true, isMeal: false, isSweet: false, isSalt: false, isWow: true),
        
        Food( id:2, name: "Pasta Frittata", type: "Pasta",
              image: "frittata", isFav: false,
              preferenceTypes: ["fries","meal"],
              desc: "The little queen of Neapolitan street food is the \"frittatina 'e maccarun\" (pasta frittatina), proudly displayed in the shop window, seems to say, \"Can't you see how delicious I am? What are you waiting for?\"",
              placeName: "Rosticceria La Padella",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The history of this recipe dates back to a time when people couldn't afford lavish feasts and settled for simple meals. The \"frittata di maccheroni\" or spaghetti, from which the frittatina originates, was born in impoverished Naples, where recycling leftovers was a common practice to save money. Leftover pasta, prepared by families for lunch and remaining from the previous day, was mixed with eggs and cheese, then fried in a pan. The trick to achieving a perfect pasta frittata is to make it with the leftovers from the day before, after the main ingredient has rested overnight.\n\nOver the years, the recipe has often been adapted with the addition of tomato or other ingredients based on personal preference. The \"white\" version is undoubtedly the classic one, but today, \"red\" variants with tomato or filled with cold cuts and provolone cheese are also highly appreciated. The end result after cooking should be a compact frittata, perfect even for takeout. As for the thickness of the pasta frittata, there are various schools of thought: some believe it should be thick and soft, while others prefer it thinner and crispier.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:3, name: "Limoncello", type: "Drink",
              image: "limoncello", isFav: false,
              preferenceTypes: ["drink"],
              desc: "Limoncello, a zesty Italian liqueur, captures the essence of sun-kissed lemons from the Amalfi Coast.",
              placeName: "Limonè",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The origin of Limoncello is closely tied to the Campania region, particularly the Amalfi Coast and the island of Capri. This liqueur is made by infusing the peels of local lemons, preferably Sorrento or Amalfi lemons, in pure alcohol along with a sugar syrup. After a period of resting, the liqueur is filtered and bottled, creating the characteristic Limoncello with its fresh and fragrant taste.\n\nLimoncello is not only a popular liqueur but also an integral part of the region's tradition and hospitality. It's often offered to visitors as a sign of welcome and generosity. Additionally, it's a tradition to enjoy a small serving of Limoncello at the end of a meal as a digestive to aid digestion. The artisanal production of Limoncello is still widespread, with many families passing down recipes and production methods from generation to generation, keeping the tradition of this delightful beverage alive.",
            isDrink: true, isBreakfast: false, isMeal: false, isSweet: false, isSalt: false, isWow: true),
    
        Food( id:4, name: "Ice Cream", type: "Dessert",
              image: "icecream", isFav: false,
              preferenceTypes: ["dessert"],
              desc: "Artisanal ice cream is a handcrafted frozen dessert made in small batches using high-quality, often locally-sourced ingredients.",
              placeName: "Mennella Il Gelato",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The \"Neapolitan\" ice cream is an American product that bears the name of Naples but has very different origins from Neapolitan cuisine. This confectionery tradition unconsciously survives in this ice cream, which is beloved in America and associated with its land of origin. The name \"Neapolitan\" has become synonymous with high-quality ice cream in the United States and is often mentioned in movies, TV series, and novels set in America. \n\nThe origins of Napolitan Ice Cream date back to about 200 years ago during the first major southern migration to the Americas, prompted by the economic crisis that hit Naples after the unification of Italy. Napoletan migrants were seeking a better life and adapted as best they could in the new land. Many traditions were exported to America, including Spumone, a traditional Neapolitan dessert.\n\nThe original Spumone was a semi-frozen ice cream with three layers: hazelnut, stracciatella, and chocolate, with bits of chocolate and crushed almonds, cylindrical in shape. In America, this dessert transformed into an ice cream with three different flavors: vanilla, strawberry, and chocolate, the most popular flavors in the 19th century. It was called \"Neapolitan\" in reference to the nationality of the Italian gelato vendors who sold it for a few cents in the streets of New York. Neapolitan gelato vendors were also known as \"Hokey Pokey\" due to their exclamation \"Ecco un poco!\" when serving ice cream to customers.\n\nThis dessert achieved great success in America, becoming an integral part of popular culture. Even today, Neapolitan ice cream is loved by Americans and represents a small trace of Neapolitan culture in the heart of the United States, which in the 20th century became a focal point of Western culture.",
             isDrink: false, isBreakfast: false, isMeal: false, isSweet: true, isSalt: false, isWow: true),
    
        Food( id:5, name: "Pastiera", type: "Dessert",
              image: "pastiera", isFav: false,
              preferenceTypes: ["coffee","dessert"],
              desc: "The Neapolitan babà, also known as babbà or rum baba, is a typical dessert from Naples. It is a leavened sweet with a mushroom or fluted ring shape, made with flour, brewer's yeast, eggs, sugar, and butter. After rising, it is first baked in the oven and then soaked in rum, as tradition dictates that the babà be enjoyed with rum.",
              placeName: "Scaturichio",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Several myths surround the origin of the Pastiera dessert. One legend attributes it to the mermaid Partenope, who was given seven symbolic gifts by the people of Naples, which are key ingredients of the dessert. \n\nAnother story tells of fishermen's wives leaving offerings on the beach for the sea to ensure their husbands' safe return, only to find cakes made from their offerings the next day. \n\nA less mythical tale involves Queen Maria Teresa of Austria, who, after tasting the dessert, smiled in public for the first time, surprising everyone.",
             isDrink: false, isBreakfast: true, isMeal: false, isSweet: true, isSalt: false, isWow: true),
        
        Food( id:6, name: "Babà", type: "Dessert",
              image: "baba", isFav: false,
              preferenceTypes: ["coffee","dessert"],
              desc: "Limoncello, a zesty Italian liqueur, captures the essence of sun-kissed lemons from the Amalfi Coast.",
              placeName: "Limonè",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "We say 'Si nu’ babà' to someone when we want to convey our deep feelings and renewed esteem and affection, especially to someone we know but perhaps haven't fully appreciated yet. The babà dessert is all about balance and simplicity. Its true secret lies in its consistency, and its brown surface is merely a protective layer for its delicate character. \n\nThe babà represents wisdom, freedom, and genuine self-worth. \n\nIts slight sweetness comes from the rum, symbolizing its continuous pursuit of knowledge. However, beware of inauthentic versions: those that are too dry, overly soaked in rum, or filled with cream and whipped cream. The true essence of babà is corrupted when topped with cream or cherries. \n\nWhile each variant may have a hint of the original babà, only the genuine one, untouched by excessive adornments, truly embodies the dessert's authentic spirit.",
             isDrink: false, isBreakfast: true, isMeal: false, isSweet: true, isSalt: true, isWow: true),
        
        Food( id:7, name: "Casatiello", type: "Bread",
              image: "casatiello", isFav: false,
              preferenceTypes: ["coffee","fries"],
              desc: "The Neapolitan Casatiello is a traditional Easter bread from Naples. It's a soft, doughnut-shaped bread made with ingredients like lard and pepper. It features a filling of cured meats and cheeses and is decorated with whole eggs on the surface, secured by a cross of dough.",
              placeName: "Pasticceria Ranaldi",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The Casatiello is a dish symbolizing the crown of thorns of the Crucifix, traditionally made to celebrate Christ's resurrection. \n\nIt's a ring-shaped bread filled with cured meats, cheeses, and notably, 'nzogna, or pork fat, reminiscent of ancient rituals honoring the pig as a symbol of prosperity. \n\nThe bread features hard-boiled eggs placed in a cross shape, representing the primordial seed from which the world was born, tying into the symbolism of Easter eggs.",
             isDrink: false, isBreakfast: true, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:8, name: "Mozzarella", type: "Cheese",
              image: "mozarella", isFav: false,
              preferenceTypes: ["fries","meal"],
              desc: "Campania buffalo mozzarella DOP is a globally renowned fresh cheese made from whole buffalo milk. It's part of the stretched-curd cheese family and is notably soft in texture. Unlike some cheeses, it isn't aged.",
              placeName: "Muu Mozzarella",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Historical traces of Mozzarella date back to the Middle Ages when buffalo milk from the Neapolitan plains was transported to nearby towns and often soured due to slow transportation. This souring led to the discovery of a curd that could be spun perfectly. \n\nBy the 1500s, there were references to a product named \"mozza\", tied in reed balls. Pietro Andrea Mattioli in 1563 described it as made from buffalo milk. \n\nThe term \"mozzarella\" likely originated from \"mozza,\" referencing the act of cutting off to separate the curd.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:9, name: "Friarielli", type: "Plant",
              image: "friarielli", isFav: false,
              preferenceTypes: ["fries","meal"],
              desc: "As a side dish to tasty meat dishes or pan-fried with garlic and chili peppers, friarielli represent one of the fundamental dishes on every Neapolitan table. Used even beyond the borders of Campania, friarielli are one of the simplest and at the same time most sought-after ingredients in Neapolitan culinary tradition.",
              placeName: "Osteria Reale",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Their history dates back a long time, to the days of the Angevins, who introduced this dish for the first time, later passed down from generation to generation, deeply rooted in the customs and the most popular soul of the city. \n\nThe origin of their name is uncertain. The prevailing explanation suggests that their name derives from the Spanish \"frio grelos,\" which is commonly used to identify winter broccoli. While another line of thought suggests that the name comes from the practice of \"frying them\" in a pan with garlic and oil. The debate is still open... but let's discover the history of friarielli. \n\nLike many other dishes in Campanian cuisine, friarielli have humble origins. Their roots can be traced back to the time of Alfonso the Great (15th century) when the capital of Europe was moved from Barcelona to Naples. In this context, the history of friarielli intertwines with that of \"zandraglie\", a Spanish term used at the time to refer to common women. \n\nThese women would visit the kitchens of the nobility, where the chefs would give away leftovers and scraps. And it was in this way that friarielli began to appear on the tables of the Neapolitan people, considered a leftover for the rich but a main dish for the poor. \n\nA humble dish, even considered waste by the wealthy, has, in the course of a few centuries, become one of the most sought-after side dishes in Neapolitan cuisine.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:10, name: "Margherita", type: "Pizza",
              image: "margherita", isFav: false,
              preferenceTypes: ["meal"],
              desc: "The Margherita pizza is the typical Neapolitan pizza, topped with tomato, mozzarella, fresh basil, salt, and olive oil; it is, along with the marinara pizza, the most popular Italian pizza.",
              placeName: "Da Michele",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Molti pensano che la prima pizza sia stata la Margherita: sbagliato! \n\nNon sappiamo quando sia nata esattamente ma Alexandre Dumas nel 1835 già nel parlava nel suo Corricolo. Una delle pizze più antiche è comunque la marinara, così chiamata perché era il cibo mangiato dai pescatori, al rientro dal porto. \n\nMa quindi quando è nata la pizza Margherita? Di questo esiste una data certa: 1889. In quell’anno la Regina Elisabetta andò in visita a Napoli e per l’occasione il pizzaiolo Raffaele Esposito con la moglie Maria Giovanna Brandi prepararono tre varianti di pizza. Una aveva i colori del tricolore ed era a base di pomodoro, mozzarella e basilico… la Margherita, appunto. \n\nL’Associazione Verace Pizza Napoletana ha stilato le regole che deve rispettare la vera pizza napoletana. \n\nNon deve mai essere stesa con il mattarello, al centro deve essere spessa massimo 3 mm, deve essere prodotta solo con ingredienti di provenienza italiana e deve essere cucinata nel forno a legna. \n\nLa pizza è stata protagonista di parecchi record. \n\nNel 2014 a Las Vegas si è tenuta una gara per decretare i pizzaioli più veloci. Ha vinto l’inglese Pali Grewal che ha impastato e infornato 3 pizze in 32 secondi e 28 centesimi. \n\nL’anno dopo, in Italia, in occasione di Expo, è stata invece realizzata la pizza più grande del mondo: 1595,45 metri di lunghezza per 5 tonnellate di peso. Per prepararla ci è voluta una vera squadra di persone, composta da 80 pizzaioli, 200 volontari e 40 addetti allo spostamento dei 5 forni necessari per cuocerla.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:11, name: "Limonata", type: "Drink",
              image: "limonata", isFav: false,
              preferenceTypes: ["drink"],
              desc: "While walking through the city of Naples, you might come across someone sipping on a lemonade with their legs apart, trying not to spill it completely on themselves. This is a custom that is part of the many Neapolitan traditions, and it's called \"limonata a cosce aperte\".",
              placeName: "Aurelio",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Beneficial for digestion, this beverage has the unique characteristic of literally exploding from the glass when baking soda comes into contact with lemon. For this reason, the person drinking it instantly widens their legs to prevent it from spilling completely onto their feet. \n\nIdeally, it should be consumed as quickly as possible to prevent it from ending up all over the floor. The concept behind the drink is not too different from that of \"sarchiapone\", a similar drink that only includes ice cubes, which help to dampen the explosiveness of the mixture.",
             isDrink: true, isBreakfast: false, isMeal: false, isSweet: false, isSalt: true, isWow: true),
        
    ]
    
    var suggestedFoods: [Food] = [
        Food( id:1, name: "Neapolitan Coffee", type: "Drink",
              image: "coffee", isFav: false,
              preferenceTypes: ["coffee","drink"],
              desc: "Coffee is a widely loved drink made from roasted coffee beans. It's known for its rich flavor and the energy boost it provides when you drink it.",
              placeName: "Gran Caffè Gambrinus",
              latitude: 40.83702903848648, longitude: 14.248496518144602,
              couriosity: "The tradition of \"caffè sospeso,\" or \"suspended coffee,\" originated in Naples. The presence of coffee in Neapolitan culture dates back to the early 19th century, thanks to the first itinerant coffee vendors who roamed the city, calling out to the crowd to sell coffee or milk. They played a significant role in popularizing this beverage in the city.The custom of paying for an extra coffee has much older origins. History tells us that it began to gain traction during a critical time in Italian society, during World War II. Anyone who could afford it would pay for their coffee and then add another one to be \"suspended,\" intended for those who couldn't afford it. According to Neapolitan lore, this act of solidarity originated from disputes among friends at the bar when it came time to settle the bill. In the uncertainty of who should actually pay for the espressos, they would end up paying for one that had not been consumed, leaving it as a gift for a stranger.",
             isDrink: true, isBreakfast: true, isMeal: false, isSweet: false, isSalt: false, isWow: true),
        
        Food( id:2, name: "Pasta Frittata", type: "Pasta",
              image: "frittata", isFav: false,
              preferenceTypes: ["fries","meal"],
              desc: "The little queen of Neapolitan street food is the \"frittatina 'e maccarun\" (pasta frittatina), proudly displayed in the shop window, seems to say, \"Can't you see how delicious I am? What are you waiting for?\"",
              placeName: "Rosticceria La Padella",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The history of this recipe dates back to a time when people couldn't afford lavish feasts and settled for simple meals. The \"frittata di maccheroni\" or spaghetti, from which the frittatina originates, was born in impoverished Naples, where recycling leftovers was a common practice to save money. Leftover pasta, prepared by families for lunch and remaining from the previous day, was mixed with eggs and cheese, then fried in a pan. The trick to achieving a perfect pasta frittata is to make it with the leftovers from the day before, after the main ingredient has rested overnight.\n\nOver the years, the recipe has often been adapted with the addition of tomato or other ingredients based on personal preference. The \"white\" version is undoubtedly the classic one, but today, \"red\" variants with tomato or filled with cold cuts and provolone cheese are also highly appreciated. The end result after cooking should be a compact frittata, perfect even for takeout. As for the thickness of the pasta frittata, there are various schools of thought: some believe it should be thick and soft, while others prefer it thinner and crispier.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:3, name: "Limoncello", type: "Drink",
              image: "limoncello", isFav: false,
              preferenceTypes: ["drink"],
              desc: "Limoncello, a zesty Italian liqueur, captures the essence of sun-kissed lemons from the Amalfi Coast.",
              placeName: "Limonè",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The origin of Limoncello is closely tied to the Campania region, particularly the Amalfi Coast and the island of Capri. This liqueur is made by infusing the peels of local lemons, preferably Sorrento or Amalfi lemons, in pure alcohol along with a sugar syrup. After a period of resting, the liqueur is filtered and bottled, creating the characteristic Limoncello with its fresh and fragrant taste.\n\nLimoncello is not only a popular liqueur but also an integral part of the region's tradition and hospitality. It's often offered to visitors as a sign of welcome and generosity. Additionally, it's a tradition to enjoy a small serving of Limoncello at the end of a meal as a digestive to aid digestion. The artisanal production of Limoncello is still widespread, with many families passing down recipes and production methods from generation to generation, keeping the tradition of this delightful beverage alive.",
            isDrink: true, isBreakfast: false, isMeal: false, isSweet: false, isSalt: false, isWow: true),
    
        Food( id:4, name: "Artisanal Ice Cream", type: "Dessert",
              image: "icecream", isFav: false,
              preferenceTypes: ["dessert","fries"],
              desc: "Artisanal ice cream is a handcrafted frozen dessert made in small batches using high-quality, often locally-sourced ingredients.",
              placeName: "Mennella Il Gelato",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The \"Neapolitan\" ice cream is an American product that bears the name of Naples but has very different origins from Neapolitan cuisine. This confectionery tradition unconsciously survives in this ice cream, which is beloved in America and associated with its land of origin. The name \"Neapolitan\" has become synonymous with high-quality ice cream in the United States and is often mentioned in movies, TV series, and novels set in America. \n\nThe origins of Napolitan Ice Cream date back to about 200 years ago during the first major southern migration to the Americas, prompted by the economic crisis that hit Naples after the unification of Italy. Napoletan migrants were seeking a better life and adapted as best they could in the new land. Many traditions were exported to America, including Spumone, a traditional Neapolitan dessert.\n\nThe original Spumone was a semi-frozen ice cream with three layers: hazelnut, stracciatella, and chocolate, with bits of chocolate and crushed almonds, cylindrical in shape. In America, this dessert transformed into an ice cream with three different flavors: vanilla, strawberry, and chocolate, the most popular flavors in the 19th century. It was called \"Neapolitan\" in reference to the nationality of the Italian gelato vendors who sold it for a few cents in the streets of New York. Neapolitan gelato vendors were also known as \"Hokey Pokey\" due to their exclamation \"Ecco un poco!\" when serving ice cream to customers.\n\nThis dessert achieved great success in America, becoming an integral part of popular culture. Even today, Neapolitan ice cream is loved by Americans and represents a small trace of Neapolitan culture in the heart of the United States, which in the 20th century became a focal point of Western culture.",
             isDrink: false, isBreakfast: false, isMeal: false, isSweet: true, isSalt: false, isWow: true),
    
        Food( id:5, name: "Pastiera Napoletana", type: "Dessert",
              image: "pastiera", isFav: false,
              preferenceTypes: ["coffee","dessert"],
              desc: "The Neapolitan babà, also known as babbà or rum baba, is a typical dessert from Naples. It is a leavened sweet with a mushroom or fluted ring shape, made with flour, brewer's yeast, eggs, sugar, and butter. After rising, it is first baked in the oven and then soaked in rum, as tradition dictates that the babà be enjoyed with rum.",
              placeName: "Scaturichio",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Several myths surround the origin of the Pastiera dessert. One legend attributes it to the mermaid Partenope, who was given seven symbolic gifts by the people of Naples, which are key ingredients of the dessert. \n\nAnother story tells of fishermen's wives leaving offerings on the beach for the sea to ensure their husbands' safe return, only to find cakes made from their offerings the next day. \n\nA less mythical tale involves Queen Maria Teresa of Austria, who, after tasting the dessert, smiled in public for the first time, surprising everyone.",
             isDrink: false, isBreakfast: true, isMeal: false, isSweet: true, isSalt: false, isWow: true),
        
        Food( id:6, name: "Babà", type: "Dessert",
              image: "baba", isFav: false,
              preferenceTypes: ["coffee","dessert"],
              desc: "Limoncello, a zesty Italian liqueur, captures the essence of sun-kissed lemons from the Amalfi Coast.",
              placeName: "Limonè",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "We say 'Si nu’ babà' to someone when we want to convey our deep feelings and renewed esteem and affection, especially to someone we know but perhaps haven't fully appreciated yet. The babà dessert is all about balance and simplicity. Its true secret lies in its consistency, and its brown surface is merely a protective layer for its delicate character. \n\nThe babà represents wisdom, freedom, and genuine self-worth. \n\nIts slight sweetness comes from the rum, symbolizing its continuous pursuit of knowledge. However, beware of inauthentic versions: those that are too dry, overly soaked in rum, or filled with cream and whipped cream. The true essence of babà is corrupted when topped with cream or cherries. \n\nWhile each variant may have a hint of the original babà, only the genuine one, untouched by excessive adornments, truly embodies the dessert's authentic spirit.",
             isDrink: false, isBreakfast: true, isMeal: false, isSweet: true, isSalt: true, isWow: true),
        
        Food( id:7, name: "Casatiello", type: "Bread",
              image: "casatiello", isFav: false,
              preferenceTypes: ["coffee","fries"],
              desc: "The Neapolitan Casatiello is a traditional Easter bread from Naples. It's a soft, doughnut-shaped bread made with ingredients like lard and pepper. It features a filling of cured meats and cheeses and is decorated with whole eggs on the surface, secured by a cross of dough.",
              placeName: "Pasticceria Ranaldi",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "The Casatiello is a dish symbolizing the crown of thorns of the Crucifix, traditionally made to celebrate Christ's resurrection. \n\nIt's a ring-shaped bread filled with cured meats, cheeses, and notably, 'nzogna, or pork fat, reminiscent of ancient rituals honoring the pig as a symbol of prosperity. \n\nThe bread features hard-boiled eggs placed in a cross shape, representing the primordial seed from which the world was born, tying into the symbolism of Easter eggs.",
             isDrink: false, isBreakfast: true, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:8, name: "Mozzarella di bufala", type: "Cheese",
              image: "mozarella", isFav: false,
              preferenceTypes: ["fries","meal"],
              desc: "Campania buffalo mozzarella DOP is a globally renowned fresh cheese made from whole buffalo milk. It's part of the stretched-curd cheese family and is notably soft in texture. Unlike some cheeses, it isn't aged.",
              placeName: "Muu Mozzarella",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Historical traces of Mozzarella date back to the Middle Ages when buffalo milk from the Neapolitan plains was transported to nearby towns and often soured due to slow transportation. This souring led to the discovery of a curd that could be spun perfectly. \n\nBy the 1500s, there were references to a product named \"mozza\", tied in reed balls. Pietro Andrea Mattioli in 1563 described it as made from buffalo milk. \n\nThe term \"mozzarella\" likely originated from \"mozza,\" referencing the act of cutting off to separate the curd.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:8, name: "Friarielli", type: "Plant",
              image: "friarielli", isFav: false,
              preferenceTypes: ["fries","meal"],
              desc: "As a side dish to tasty meat dishes or pan-fried with garlic and chili peppers, friarielli represent one of the fundamental dishes on every Neapolitan table. Used even beyond the borders of Campania, friarielli are one of the simplest and at the same time most sought-after ingredients in Neapolitan culinary tradition.",
              placeName: "Osteria Reale",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Their history dates back a long time, to the days of the Angevins, who introduced this dish for the first time, later passed down from generation to generation, deeply rooted in the customs and the most popular soul of the city. \n\nThe origin of their name is uncertain. The prevailing explanation suggests that their name derives from the Spanish \"frio grelos,\" which is commonly used to identify winter broccoli. While another line of thought suggests that the name comes from the practice of \"frying them\" in a pan with garlic and oil. The debate is still open... but let's discover the history of friarielli. \n\nLike many other dishes in Campanian cuisine, friarielli have humble origins. Their roots can be traced back to the time of Alfonso the Great (15th century) when the capital of Europe was moved from Barcelona to Naples. In this context, the history of friarielli intertwines with that of \"zandraglie\", a Spanish term used at the time to refer to common women. \n\nThese women would visit the kitchens of the nobility, where the chefs would give away leftovers and scraps. And it was in this way that friarielli began to appear on the tables of the Neapolitan people, considered a leftover for the rich but a main dish for the poor. \n\nA humble dish, even considered waste by the wealthy, has, in the course of a few centuries, become one of the most sought-after side dishes in Neapolitan cuisine.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:8, name: "Margherita", type: "Pizza",
              image: "margherita", isFav: false,
              preferenceTypes: ["meal"],
              desc: "The Margherita pizza is the typical Neapolitan pizza, topped with tomato, mozzarella, fresh basil, salt, and olive oil; it is, along with the marinara pizza, the most popular Italian pizza.",
              placeName: "Da Michele",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Molti pensano che la prima pizza sia stata la Margherita: sbagliato! \n\nNon sappiamo quando sia nata esattamente ma Alexandre Dumas nel 1835 già nel parlava nel suo Corricolo. Una delle pizze più antiche è comunque la marinara, così chiamata perché era il cibo mangiato dai pescatori, al rientro dal porto. \n\nMa quindi quando è nata la pizza Margherita? Di questo esiste una data certa: 1889. In quell’anno la Regina Elisabetta andò in visita a Napoli e per l’occasione il pizzaiolo Raffaele Esposito con la moglie Maria Giovanna Brandi prepararono tre varianti di pizza. Una aveva i colori del tricolore ed era a base di pomodoro, mozzarella e basilico… la Margherita, appunto. \n\nL’Associazione Verace Pizza Napoletana ha stilato le regole che deve rispettare la vera pizza napoletana. \n\nNon deve mai essere stesa con il mattarello, al centro deve essere spessa massimo 3 mm, deve essere prodotta solo con ingredienti di provenienza italiana e deve essere cucinata nel forno a legna. \n\nLa pizza è stata protagonista di parecchi record. \n\nNel 2014 a Las Vegas si è tenuta una gara per decretare i pizzaioli più veloci. Ha vinto l’inglese Pali Grewal che ha impastato e infornato 3 pizze in 32 secondi e 28 centesimi. \n\nL’anno dopo, in Italia, in occasione di Expo, è stata invece realizzata la pizza più grande del mondo: 1595,45 metri di lunghezza per 5 tonnellate di peso. Per prepararla ci è voluta una vera squadra di persone, composta da 80 pizzaioli, 200 volontari e 40 addetti allo spostamento dei 5 forni necessari per cuocerla.",
             isDrink: false, isBreakfast: false, isMeal: true, isSweet: false, isSalt: true, isWow: true),
        
        Food( id:8, name: "Limonata", type: "Drink",
              image: "limonata", isFav: false,
              preferenceTypes: ["drink"],
              desc: "While walking through the city of Naples, you might come across someone sipping on a lemonade with their legs apart, trying not to spill it completely on themselves. This is a custom that is part of the many Neapolitan traditions, and it's called \"limonata a cosce aperte\".",
              placeName: "Aurelio",
              latitude: 40.853665764236545, longitude: 14.230897438365833,
              couriosity: "Beneficial for digestion, this beverage has the unique characteristic of literally exploding from the glass when baking soda comes into contact with lemon. For this reason, the person drinking it instantly widens their legs to prevent it from spilling completely onto their feet. \n\nIdeally, it should be consumed as quickly as possible to prevent it from ending up all over the floor. The concept behind the drink is not too different from that of \"sarchiapone\", a similar drink that only includes ice cubes, which help to dampen the explosiveness of the mixture.",
             isDrink: true, isBreakfast: false, isMeal: false, isSweet: false, isSalt: true, isWow: true),
        
    ]
    
    var foodTypes: [String] = ["drink", "coffee", "meal", "dessert", "fries", "wow"]

}

