//
//  TableViewController.swift
//  WeatherApp
//
//  Created by SK on 17.11.2021.
//

import UIKit
import Foundation
class TableViewController: UITableViewController {
  var getW: WeatherViewModel = WeatherViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // var get: WeatherViewModel = WeatherViewModel()
        getW.getWeather()
        print(getW.weath.lon)
        print(getW.weath.hourly.first?.temp as Any)
        print(getW.weath.lon)
//        let z: WeatherViewModel = WeatherViewModel()
//        print("1 \(String(describing: z.weath?.hourly.first?.temp))")
        
        //print(get)
//        guard let url = URL(string: urlWeather) else { return }
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                print(error)
//                return
//            }
//            guard let data = data else { return }
//
//            do {
//                let weatherJson = try JSONDecoder().decode(WeatherModel.self, from: data)
//                print(weatherJson.hourly.first?.temp)
//                print(weatherJson.hourly)
//            } catch {
//                print(error)
//            }
//            } .resume()
//
              }

    
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return 1
//    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//
//        cell.textLabel?.text = getW.weath.timezone
        //cell.textLabel?.text = get.weath?.hourly[indexPath.row].dt.dateToString(format: String)
//        let dateFormatter = DateFormatter()
//        let dateStr = dateFormatter.string(from: get.weath?.hourly.first?.dt ?? Date())
//        cell.detailTextLabel?.text = dateStr
 //       return cell
 //   }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
