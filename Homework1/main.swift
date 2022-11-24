import Foundation

func city ( country:String, age:Int){
    if age >= 0 && age <= 18 && country == "USA"{
        print("Американец юного возраста")
    }
    if age >= 19 && age <= 30 && country == "USA"{
        print("Американец среднего возраста")
    }
    if age >= 31 && age >= 70 && country == "USA"{
        print("Американец пожилого возраста")
    }
    if age >= 0 && age <= 18 && country == "Portugal"{
        print("Португалец юного возраста")
    }
    if age >= 19 && age <= 30 && country == "Portugal"{
        print("Португалец среднего возраста")
    }
    if age >= 31 && age >= 70 && country == "Portugal"{
        print("Португалец пожилого возраста")
    }
    if age >= 0 && age <= 18 && country == "Kyrgyzstan"{
        print("Кыргыз юного возраста")
    }
    if age >= 19 && age <= 30 && country == "Kyrgyzsta"{
        print("Кыргыз среднего возраста")
    }
    if age >= 31 && age >= 70 && country == "Kyrgyzstan"{
        print("Кыгыз пожилого возраста")
    }
    
    }
    
city(country:"Kyrgyzstan", age: 16)
var string = ""
func year(month:Int) {
    switch month{
    case 1:print("Месяц 1 - январь,Это зима. 1 января праздник.")
    case 2:print("Месяц 2 - февраль,Это зима. 23 февраля праздник.")
    case 3:print("Месяц 3 - Март.Это весна  8 марта праздник.")
    case 4:print("Месяц 4 - апрель,Весна. 1 апреля праздник.")
    case 5:print("Месяц 5 - май.Весна. 9 мая праздник.")
    case 6:print("Месяц 6 - июнь,Это лето. 25 июня день рождение.")
    case 7:print("Месяц 7 - июль,Это лето. праздников нет.")
    case 8:print("Месяц 8 - август,Это лето. 31 августа праздник.")
    case 9:print("Месяц 9 - сентябрь,Это осень.1 сентября ад.")
    case 10:print("Месяц 10 - октябрь,Это осень. 31 октября праздник.")
    case 11:print("Месяц 11- ноябрь,Это осень. нет праздников.")
    case 12:print("Месяц 12 - декабрь,Это зима. 31 декабря праздник..")
    default:
        break
      
    }

}
year(month: 9)

