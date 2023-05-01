//
//  ContentView.swift
//  TaxCalc
//
//  Created by 김형관 on 2023/04/26.
//

import SwiftUI
 
struct ContentView: View {
    @EnvironmentObject var taxExam: Tax
    var body: some View {
        Form {
            Section {
                inputView(caption: "Revenue", value: $taxExam.revenue)
                inputView(caption: "Expense", value: $taxExam.expenses)
                inputView(caption: "Ded&Exe", value: $taxExam.deductionAndExemption)
            }
            Section {
                HStack {
                    Text("TaxRate")
                    TextField("Tax Rate", value: $taxExam.taxRate, format: .percent)
                        .multilineTextAlignment(.trailing)
                }
            }
            Section {
                HStack {
                    Text("Tax     ")
                    Text(taxExam.taxAmount, format: .currency(code: "USD"))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            
            Section {
                Button("Calcuate the tax amount") {
                    taxExam.taxCalulation()
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 10)
                 )
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
    
    func inputView(caption: String, value: Binding<Double>) -> some View {
        HStack {
            Text(caption)
            TextField(caption, value: value, format: .currency(code: "USD"))
                .multilineTextAlignment(.trailing)
        }
    }
    
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Tax())
    }
}
