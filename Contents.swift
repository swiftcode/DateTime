import UIKit

extension Date {
    var microDate: String {
        let fmt  = DateFormatter()
        fmt.dateFormat = "MM-dd"
        let date: String = fmt.string(from: self)
        return date
    }

    var shortDate: String {
        let fmt  = DateFormatter()
        fmt.dateFormat = "MM-dd-yyyy"
        let date: String = fmt.string(from: self)
        return date
    }
    
    var shortTime: String {
        let calendar = Calendar.current
        var hour = (calendar as NSCalendar).component(NSCalendar.Unit.hour, from: self)
        let minute = (calendar as NSCalendar).component(NSCalendar.Unit.minute, from: self)
        var ampmFlag = "am"
        
        switch hour {
            case 12...23:
                hour = hour - 12
                ampmFlag = "pm"
            case 0:
                hour = 12
                ampmFlag = "am"
            default: break
        }
        
        let shortTime = "\(String(format: "%01d", hour)):\(String(format: "%02d", minute)) \(ampmFlag)"
        return shortTime
    }
    
    var shortDay: String {
        let calendar = Calendar.current
        let dayOfWeek = calendar.component(.weekday, from: self)
        
        switch dayOfWeek {
            case 0: return "Sun"
            case 1: return "Mon"
            case 2: return "Tue"
            case 3: return "Wed"
            case 4: return "Thu"
            case 5: return "Fri"
            case 6: return "Sat"
            default: return ""
        }
    }
    
    var longDay: String {
        let calendar = Calendar.current
        let dayOfWeek = calendar.component(.weekday, from: self)
        
        switch dayOfWeek {
            case 0: return "Sunday"
            case 1: return "Monday"
            case 2: return "Tuesday"
            case 3: return "Wednesday"
            case 4: return "Thursday"
            case 5: return "Friday"
            case 6: return "Saturday"
            default: return ""
        }
    }
}

let today = Date()

today.microDate
today.shortDate
today.shortTime
today.shortDay
today.longDay
