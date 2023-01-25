import Foundation
//Создать базовый класс – компьютер(родитель), придумать общие параметры. Производные(наследники) – ноутбук и смартфон, добавить по 1 параметру, отличающиеся. Создать класс РемонтСервис, который может содержать оба вида объектов в одной переменной(ноутбук и смартфон), предусмотреть функцию подсчета отдельно ремонтируемых ноутбуков и смартфонов (использовать оператор is). Функция должна распечатать информацию в следующем виде: "на сервисе 5 ноутбуков и 10 смартфонов". В main создать необходимые объекты и вызвать функцию.
//



class Computer{
    var name: String
    var programm: String
    var cost: Int
    init(name: String, programm: String, cost: Int) {
        self.name = name
        self.programm = programm
        self.cost = cost
    }
}


class Laptop: Computer{
    var size: Int
    init(name: String, programm: String, cost: Int, size:Int) {
        self.size = size
        super.init(name: name, programm: programm, cost: cost)
    }
}

class Phone: Computer{
    var camera: String
     init(name: String, programm: String, cost: Int, camera: String) {
         self.camera = camera
         super.init(name: name, programm: programm, cost: cost)
    }
    
}

class FixService{
    var objectsToService: [Computer]
    init(objectsToService: [Computer]) {
        self.objectsToService = objectsToService
    }
    
    func countObjects() {
        let laptops = countLaptops()
        let phones = countPhones()
        print("У нас \(phones) телефонов, \(laptops) ноутбуков")
    }
    
    private func countLaptops() -> Int{
        var laptops = 0
        
        for object in objectsToService{
            if object is Laptop{
                laptops += 1
            }
        }
        return laptops
        
    }
    
    private func countPhones() -> Int{
        var phones = 0
        
        for object in objectsToService {
            if object is Phone {
                phones += 1
            }
        }
        
        return phones
    }

}


let service = FixService(objectsToService: [
    Phone(name: "Iphone 13", programm: "", cost: 800, camera: "4080"),
    Laptop(name: "MacBook Air M2", programm: "Swift", cost: 1300, size: 180),
    Laptop(name: "Lenovo", programm: "Pycharm", cost: 1000, size: 200)
]
)

for object in service.objectsToService{
    if object is Phone{
        print("name: \(object.name), cost: \(object.cost)")
    }else if object is Laptop{
        print("name: \(object.name), cost: \(object.cost), programm: \(object.programm)")
    }
}




