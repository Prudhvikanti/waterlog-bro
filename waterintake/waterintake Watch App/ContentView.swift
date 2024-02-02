//
//  ContentView.swift
//  waterintake Watch App
//
//  Created by prudhviyt on 02/02/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    @State private var waterIntake: Int = 0
    
    var body: some View {
        VStack {
            Text("Water Intake: \(waterIntake) ml")
                .padding()
            
            Button(action: {
                waterIntake += 250 // Increment by 250 ml
                saveWaterIntake()
            }) {
                Text("Add 250ml")
            }
        }
        .onAppear(perform: loadData)
    }
    
    func saveWaterIntake() {
        UserDefaults.standard.set(waterIntake, forKey: "waterIntake")
    }
    
    func loadData() {
        if let savedWaterIntake = UserDefaults.standard.value(forKey: "waterIntake") as? Int {
            waterIntake = savedWaterIntake
        }
    }
}


import SwiftUI
import UserNotifications

struct ontentView: View {
    @State private var waterIntake: Int = 0
    
    var body: some View {
        VStack {
            Text("Water Intake: \(waterIntake) ml")
                .padding()
            
            Button(action: {
                waterIntake += 250 // Increment by 250 ml
                saveWaterIntake()
            }) {
                Text("Add 250ml")
            }
        }
        .onAppear(perform: loadData)
    }
    
    func saveWaterIntake() {
        UserDefaults.standard.set(waterIntake, forKey: "waterIntake")
    }
    
    func loadData() {
        if let savedWaterIntake = UserDefaults.standard.value(forKey: "waterIntake") as? Int {
            waterIntake = savedWaterIntake
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


