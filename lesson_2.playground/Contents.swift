// Задания с семинара
// Блок 1
/* Написать функцию, которая на вход принимает число типа Int, а возвращает, является ли число четным
Написать функцию, которая на вход принимает 3 числа: a, b, c и возвращает результат вычисления b^2 - 4 * a * c */
func isEvenNumber(number: Int) -> Bool {
    return number % 2 == 0
}
 
/* Написать функцию, которая рассчитает площадь прямоугольника. На вход два параметра: длина и ширина, на выход: площадь */
func areaRectangle(length: Double, width: Double) -> Double {
    var areaRectangle: Double = length * width
    return areaRectangle
}

/* Напишите функции, которая на вход принимает целое положительное число, а возвращает сумму всех чисел от 1 до переданного числа */
func sumNums(num: Int) -> Int {
    var sumNums: Int = (num * (num + 1)) / 2
    return sumNums
}
func sumNums1(num: Int) -> Int {
    var sumNums1: Int = 0
    for i in 1...num {
        sumNums1 += i
    }
    return sumNums1
}

/* Создать опционал с типом Int и создать еще одну переменную, которая содержит значение первой переменной, но не является опционалом.  Сделать это необходимо 2 способами: при помощи force unwrapping,  nil coalescing */
var optional1: Int? = 4
var variable1: Int = optional1!
var optional2: Int? = 5
let variable2 = optional2 ?? 0

// Проверка:
print(isEvenNumber(number: 4))
print(areaRectangle(length: 4, width: 6))
print(sumNums(num: 3))
print(sumNums1(num: 3))
print(variable1)
print(variable2)

// Блок 2
/* Создать перечисление, которое имеет в виде кейсов два вида чая: зеленый и черный
Задать для кейсов названия “Black tea” и “Green tea”
Написать внутри перечисления функцию, которая будет возвращать цвет чая в строковом формате, то есть, если это blackTea, то black, а если greenTea, то green
Создать переменную с типом созданного перечисления, а затем при помощи print вывести цвет чая
Написать функцию, которая на вход принимает параметр типа Tea, но который является опционалом. Функция должна печатать название чая, если значение есть и “Данный вид чая не найден”, если значение nil. Написать функцию нужно в 2 вариантах: используя guard let, используя if let */
enum TeaEnum: String {
    case blackTea = "Black tea"
    case greenTea = "Green tea"
    
    func getColor() -> String {
        switch self {
        case .blackTea: return "black"
        case .greenTea: return "green"
        }
    }
}

// Проверка:
print(TeaEnum.blackTea.getColor())
var teaColor: TeaEnum = .blackTea

// Проверка:
print(teaColor)
func getTeaName(tea: TeaEnum?) {
    guard let teaName = tea else {
        print("Данный вид чая не найден")
        return
    }
    print(teaName.rawValue)
}
// Проверка:
getTeaName(tea: TeaEnum.blackTea)

// Домашнее задание:
/* Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой  процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу */
func howMuchMoney(deposit: Double, percent: Double, period_years: Int) -> Double {
    var resultDeposit: Double = deposit
    for _ in 1...period_years {
        var yearDeposit: Double = deposit * percent/100
        resultDeposit += yearDeposit
    }
    return resultDeposit
}

// Проверка
print("Result deposit: \(howMuchMoney(deposit: 1000, percent: 10, period_years: 3))")

// Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.
enum PizzaEnum: String {
    case fourCheeses = "Пицца 4 сыра"
    case beef = "Пицца с говядиной"
    case margarita = "Пицца \"Маргарита\""
    
    func getPizzaName() -> String {
        switch self {
        case .fourCheeses: return "4 сыра"
        case .beef: return "с говядиной"
        case .margarita: return "Маргарита"
        }
    }
}

var pizza1 = PizzaEnum.fourCheeses.getPizzaName()
var pizza2 = PizzaEnum.beef.getPizzaName()
var pizza3 = PizzaEnum.margarita.getPizzaName()

//Проверка:
print(pizza1)
print(pizza2)
print(pizza3)

// Добавить возможность получения названия пиццы через  rawValue
var pizzaName1: String = PizzaEnum.fourCheeses.rawValue
var pizzaName2: String = PizzaEnum.beef.rawValue
var pizzaName3: String = PizzaEnum.margarita.rawValue

//Проверка:
print(pizzaName1)
print(pizzaName2)
print(pizzaName3)
