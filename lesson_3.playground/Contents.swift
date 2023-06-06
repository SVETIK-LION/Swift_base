// Домашнее задание к семинару 3

/* 1) Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать). Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал и стоимость). */

var teaPrices = ["черный": 100, "зеленый": 150, "улун": 180, "пуэр": 400]
var queue = ["черный", "улун", "зеленый", "зеленый", "пуэр", "черный"]

for (index, teaType) in queue.enumerated() {
    if let price = teaPrices[teaType] {
        print("Покупатель №\(index + 1) заказал чай \"\(teaType)\" за \(price) рублей")
    } else {
        print("Покупатель №\(index + 1) заказал неизвестный чай \"\(teaType)\"")
    }
}

/* 2) Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.*/

//var oldArray: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
//
//var newArray: [Int] = []
//
//for element in oldArray {
//    if element != nil || element != 0 || element != 4{
//        newArray.append(element!)
//    }
//}
//
//print(newArray.sorted())

let oldArray = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
let newArray = oldArray.compactMap { $0 }.filter { $0 != 0 && $0 != 4 }.sorted()

print(newArray)

/* Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.*/

func getArray(number: Int) -> [Int] {
    var resultArray = [Int]()
    var elem = 1
    for _ in 1...number {
        resultArray.append(elem)
        elem *= 2
    }
    return resultArray
}

print(getArray(number: 4))


// Домашнее задание 4

// 1) Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).

enum PizzaType: String {
    case fourCheeses = "Пицца 4 сыра"
    case beef = "Пицца с говядиной"
    case margarita = "Пицца \"Маргарита\""
    case chickenPineapple = "Пицца с курицей и ананасами"
    case vegetarian = "Пицца \"Вегетарианская\""
}

// 2) Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.

enum Supplements {
    case pepper
    case tomatoes
    case yellowCheese
    case mushrooms
    case pineapple
    case beef
    case chicken
    case parmesan
    case cheeseWithMold
    case potatoes
    case gaudaCheese
}

struct PizzaStruct {
    var price: Double
    var type: PizzaType
    var dough: String
    var supplements: [Supplements]
}

// 3) Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
// 4)Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.

//class Pizzeria {
//    private var menu: [PizzaStruct]
//
//    init(menu: [PizzaStruct]) {
//        self.menu = menu
//    }
//
//    func addPizza(pizza: PizzaStruct) {
//        menu.append(pizza)
//    }
//
//    func getMenu() -> [PizzaStruct] {
//        return menu
//    }
//}

// 5) Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.

//let margarita = PizzaStruct(price: 100, type: .margarita, dough: "thin", supplements: [Supplements.tomatoes, Supplements.yellowCheese])
//let fourCheeses = PizzaStruct(price: 250, type: .fourCheeses, dough: "thin", supplements: [Supplements.cheeseWithMold, Supplements.parmesan, Supplements.yellowCheese, Supplements.gaudaCheese])
//let beef = PizzaStruct(price: 300, type: .beef, dough: "thick", supplements: [Supplements.beef, Supplements.potatoes, Supplements.yellowCheese])
//let chickenPineapple = PizzaStruct(price: 150, type: .chickenPineapple, dough: "thick", supplements: [Supplements.chicken, Supplements.pineapple, Supplements.yellowCheese])
//let vegetarian = PizzaStruct(price: 100, type: .vegetarian, dough: "thick", supplements: [Supplements.pepper, Supplements.tomatoes, Supplements.mushrooms])
//
//var coolPizzeria = Pizzeria(menu: [beef, fourCheeses])
//coolPizzeria.addPizza(pizza: fourCheeses)
//coolPizzeria.addPizza(pizza: margarita)
//coolPizzeria.addPizza(pizza: chickenPineapple)
//coolPizzeria.addPizza(pizza: vegetarian)
//
//let menu = coolPizzeria.getMenu()
//print(menu)


// Домашняя работа 5

/* 1) В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
 
 2) Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.

3) Создайте протокол, в котором будут содержаться функции открытия и закрытия.

4) Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.

5) Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания. */

print("~~~~~~~~~~~~~~~~~~")
print("Домашняя работа 5")
print("------------------")

struct FriePotatoesStruct {
    var price: Double
    var size: String
}
 
class Pizzeria{
     private var menu: [Any]
     
     init(menu: [Any]) {
         self.menu = menu
     }
     
     func addDish(dish: Any) {
         menu.append(dish)
     }
     
     func getMenu() -> [Any] {
         return menu
     }
 }

protocol OpenClose {
    func open()
    func close()
}

extension Pizzeria: OpenClose {
    func open() {
        print("Мы уже работаем OPEN!")
    }

    func close() {
        print("Мы уже открыты CLOSE!")
    }
}

let margarita = PizzaStruct(price: 100, type: .margarita, dough: "thin", supplements: [Supplements.tomatoes, Supplements.yellowCheese])
let fourCheeses = PizzaStruct(price: 250, type: .fourCheeses, dough: "thin", supplements: [Supplements.cheeseWithMold, Supplements.parmesan, Supplements.yellowCheese, Supplements.gaudaCheese])
let beef = PizzaStruct(price: 300, type: .beef, dough: "thick", supplements: [Supplements.beef, Supplements.potatoes, Supplements.yellowCheese])
let chickenPineapple = PizzaStruct(price: 150, type: .chickenPineapple, dough: "thick", supplements: [Supplements.chicken, Supplements.pineapple, Supplements.yellowCheese])
let vegetarian = PizzaStruct(price: 100, type: .vegetarian, dough: "thick", supplements: [Supplements.pepper, Supplements.tomatoes, Supplements.mushrooms])
let friesPotatoes = FriePotatoesStruct(price: 40, size: "Small")

var coolPizzeria = Pizzeria(menu: [beef, fourCheeses])

coolPizzeria.addDish(dish: fourCheeses)
coolPizzeria.addDish(dish: margarita)
coolPizzeria.addDish(dish: chickenPineapple)
coolPizzeria.addDish(dish: vegetarian)
coolPizzeria.addDish(dish: friesPotatoes)
coolPizzeria.open()
coolPizzeria.close()

let menu = coolPizzeria.getMenu()
print(menu)
