import Foundation

// Date Format: DD MM YYYY
class Date {
  
  // MARK: Private member variables
  private var day:   Int
  private var month: Int
  private var year:  Int
  
  // Default init
  init(day: Int, month: Int, year: Int) {
    self.day   = day
    self.month = month
    self.year  = year
  }
  
  func differenceBetweenMonths(otherDate: Date) -> Int {
    return abs(month - otherDate.month)
  }
  
  /// differenceBetweenDates returns the number of dates between "this"
  /// and otherDate. E.g., if this is Jan 25, 2000  and otherDate is
  /// Jan 10, 2000 differenceBetweenDates would return 15
  func differenceBetweenDates(otherDate: Date) -> Int {
    
    let thisDays  = daysAfter1_1_1753()
    let otherDays = otherDate.daysAfter1_1_1753()
    
    return thisDays - otherDays
  }
  
  /// daysAfter1_1_1753 returns an int that represents the number of days
  /// past 1/1/1753 that "this" date is
  private func daysAfter1_1_1753() -> Int {
    var total = 0
    var i = 0
    
    // start out by adding in the days for the number of whole years before "this" year.
    for (i = 1753; i < year; ++i) {
      if isLeapYear(i) {
        total += 366
      } else {
        total += 365
      }
    }
    
    // now add in the number of days for the months before "this" month
    for (i = 1; i < month; ++i) {
      total += daysInMonth(month: i, year: year)
    }
    
    // finally add in the day
    total += day
    
    return total
  }
  
  /// withinSameMonth returns true if this date's month is the same as
  /// otherDate's month, but within the same year.
  func withinSameMonth(otherDate: Date) -> Bool {
    return month == otherDate.month && year == otherDate.year
  }
  
  /// withinSameYear returns true iff dates are within the same year
  func withinSameYear(otherDate: Date) -> Bool {
    return year == otherDate.year
  }
  
  /// happensOnOrBefore returns true if "this" date is earlier than
  /// or equal to otherDate
  func happensOnOrBefore(otherDate: Date) -> Bool {
    
    let thisDays = daysAfter1_1_1753()
    let otherDays = otherDate.daysAfter1_1_1753()
    
    return thisDays <= otherDays
  }
  
  /// isLeapYear will return true if year is a leap year
  private func isLeapYear(year: Int) -> Bool {
    if year % 400 == 0 {
      return true
    } else if year % 100 == 0 {
      return false
    } else if year % 4 == 0 {
      return true
    } else {
      return false
    }
  }
  
  /// daysInMonth returns the number of days in the given month/year (year needed for Feb)
  private func daysInMonth(month month: Int, year: Int) -> Int {
    switch month {
    case 2:
      if isLeapYear(year) {
        return 29
      } else {
        return 28
      }
      
      // April, June, September, November
    case 4, 6, 9, 11:
      return 30
      
    default:
      return 31
    }
  }
}


// MARK: Main
struct Constants {
  static let HR15Hackos  = 15
  static let HR500Hackos = 500
  static let HRMaxHackos = 10000
}

var fine = 0

let rLine = readLine()!.componentsSeparatedByString(" ").map {Int(String($0))!}
let eLine = readLine()!.componentsSeparatedByString(" ").map {Int(String($0))!}

let returned = Date(day: rLine[0], month: rLine[1], year: rLine[2])
let expected = Date(day: eLine[0], month: eLine[1], year: eLine[2])

if !returned.happensOnOrBefore(expected) {
  var days = returned.differenceBetweenDates(expected)
  
  if returned.withinSameMonth(expected) {
    days = returned.differenceBetweenDates(expected)
    fine = Constants.HR15Hackos * days
  } else if !returned.withinSameMonth(expected) && returned.withinSameYear(expected) {
    let months = returned.differenceBetweenMonths(expected)
    fine = Constants.HR500Hackos * months
  } else {
    fine = Constants.HRMaxHackos
  }
}

print(fine)
