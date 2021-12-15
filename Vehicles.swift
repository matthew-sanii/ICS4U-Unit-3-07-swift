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

  func ringBell() -> String {
    return "Ding!"
  }

  func setCadence(_ newCadence: Int) {
    cadence = newCadence
  }

  func getCadence() -> Int {
    return cadence
  }
}

class Truck: Vehicle {

  private var colour: String = "blue"

  private var plate: String = "123qwe"

  func accelerates() -> Int {
    super.accelerate()
    return super.accelerate()
  }

  func provideAir() -> String {
    return "Honk Honk!"
  }

  func plateInfo(_ plateNum: String) {
    plate = plateNum
  }

  func getPlate() -> String {
    return plate
  }

  func setColor(_ newColor: String) {
    colour = newColor
  }

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
  print(bike.ringBell())
  print(truck.provideAir())
  print("Bike cadence is now", bike.getCadence())
  print("Truck plate info is", truck.getPlate())
  print("Truck color is", truck.getColor())
} else {
  print("You must input strings for truck color and plate number, and int for bike cadence.")
}
