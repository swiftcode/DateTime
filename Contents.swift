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

    var shortMonth: String {
        let calendar = Calendar.current
        let month = calendar.component(.month, from: self)

        switch month {
            case 1: return "Jan"
            case 2: return "Feb"
            case 3: return "Mar"
            case 4: return "Apr"
            case 5: return "May"
            case 6: return "Jun"
            case 7: return "Jul"
            case 8: return "Aug"
            case 9: return "Sep"
            case 10: return "Oct"
            case 11: return "Nov"
            case 12: return "Dec"
            default: return ""
        }
    }

    var longMonth: String {
        let calendar = Calendar.current
        let month = calendar.component(.month, from: self)

        switch month {
            case 1: return "January"
            case 2: return "February"
            case 3: return "March"
            case 4: return "April"
            case 5: return "May"
            case 6: return "June"
            case 7: return "July"
            case 8: return "August"
            case 9: return "September"
            case 10: return "October"
            case 11: return "November"
            case 12: return "December"
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
today.shortMonth
today.longMonth
