/*
* The vehicles program.
*
* @author Matthew Sanii
* @version 1.0
* @since 2021-12-15
*/

public class Vehicle {

  /**
  * Initializing speed variable.
  */
  private var speed: Int

  private var color: String

  private let maxSpeed: Int = 100

  private var speedChange: Int

  /**
  * Base initializer.
  */
  init() {
    color = "red"
    speed = 0
    speedChange = 10
  }

  /**
  * accelerate method.
  */
  func accelerate() -> Int {
    speed += speedChange
    if speed > maxSpeed {
      return -1
    } else {
      return speed
    }
  }

  /**
  * the brake method.
  *
  * @return speed
  */
  func brake() -> Int {
    speed = 0
    return speed
  }
}

class Bike: Vehicle {

  private var cadence: Int = 1

  /**
  * ringBell method, which returns a Ding! string.
  *
  * @return Ding!
  */
  func ringBell() -> String {
    return "Ding!"
  }

  /**
  * setCadence method, to set new cadence.
  *
  * @param newCadence the new cadence.
  */
  func setCadence(_ newCadence: Int) {
    cadence = newCadence
  }

  /**
  * The getCadence method.
  *
  * @return cadence.
  */
  func getCadence() -> Int {
    return cadence
  }
}

class Truck: Vehicle {

  private var colour: String = "blue"

  private var plate: String = "123qwe"

  private var truckSpeed: Int = 0

  /**
  * The accelerates method.
  *
  * @return truckSpeed.
  */
  func accelerates() -> Int {
    truckSpeed = super.accelerate()
    truckSpeed = super.accelerate()
    return truckSpeed
  }

  /**
  * The provideAir method.
  *
  * @return Honk Honk!
  */
  func provideAir() -> String {
    return "Honk Honk!"
  }

  /**
  * The plateInfo method.
  *
  * @param plateNum the new plate number.
  */
  func plateInfo(_ plateNum: String) {
    plate = plateNum
  }

  /**
  * The getPlate method.
  *
  * @return plate
  */
  func getPlate() -> String {
    return plate
  }

  /**
  * The setColor method.
  *
  * @param newColor the new color of the truck
  */
  func setColor(_ newColor: String) {
    colour = newColor
  }

  /**
  * The getColor method.
  *
  * @return colour.
  */
  func getColor() -> String {
    return colour
  }
}

print("Input color of truck: ")
let truckColor = readLine()!
print("Input plate number: ")
let platInfo = readLine()!
print("Set bike cadence: ")
let bikeCadence = readLine()!
let startCadence = Int(bikeCadence) ?? -1
let colorInput = Int(truckColor) ?? 0
let plateInput = platInfo.count
if colorInput == 0 && plateInput != 0 && startCadence != -1 {
  let truck = Truck()
  let bike = Bike()
  truck.setColor(truckColor)
  truck.plateInfo(platInfo)
  print("Bike speed after accelerating is", bike.accelerate())
  print("Truck speed after accelerating is", truck.accelerates())
  bike.setCadence(startCadence)
  print("The bike's bell goes", bike.ringBell())
  print("The truck's horn goes", truck.provideAir())
  print("The bike's cadence is now", bike.getCadence())
  print("The truck's plate number is", truck.getPlate())
  print("The truck's color is", truck.getColor())
} else {
  print("You must input strings for truck color and plate number, and int for bike cadence.")
}
