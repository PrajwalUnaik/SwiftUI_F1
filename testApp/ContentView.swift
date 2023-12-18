//
//  ContentView.swift
//  testApp
//
//  Created by Prajwal U on 17/12/23.
//

import SwiftUI
extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}


struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(.black).ignoresSafeArea()
            
            VStack{
                Spacer().frame(height: 30)
                Image("f1symbol")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                
                Spacer().frame(height: 40)
                
                VStack{
                    
                    Image("formula1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                    
                    Spacer().frame(height: 20)
                    
                    HStack(alignment: .center){
                        
                        Text("FORMULA 1")
                            .font(.title2)
                            .bold()
                    }
                    
                    Spacer().frame(height: 20)
                    
                    Text("* 𝗧𝗵𝗲𝗿𝗲'𝘀 𝘀𝗼 𝗺𝘂𝗰𝗵 𝘁𝗼 𝗹𝗼𝘃𝗲 𝗮𝗯𝗼𝘂𝘁 𝗙𝗼𝗿𝗺𝘂𝗹𝗮 𝟭, 𝗯𝘂𝘁 𝗼𝗻𝗲 𝘁𝗵𝗶𝗻𝗴 𝘁𝗵𝗮𝘁 𝘀𝘁𝗮𝗻𝗱𝘀 𝗼𝘂𝘁 𝗶𝘀 𝘁𝗵𝗲 𝘀𝗵𝗲𝗲𝗿 𝗽𝗿𝗲𝗰𝗶𝘀𝗶𝗼𝗻 𝗮𝗻𝗱 𝘀𝗸𝗶𝗹𝗹 𝗿𝗲𝗾𝘂𝗶𝗿𝗲𝗱.")
                        .font(.caption)
                        .fontWeight(.light)
                    
                    Spacer().frame(height: 10)
                    
                    
                    Text ("*  𝗧𝗵𝗲 𝗱𝗿𝗶𝘃𝗲𝗿𝘀 𝗻𝗮𝘃𝗶𝗴𝗮𝘁𝗲 𝘁𝗶𝗴𝗵𝘁 𝗰𝗼𝗿𝗻𝗲𝗿𝘀 𝗮𝘁 𝗯𝗿𝗲𝗮𝗸𝗻𝗲𝗰𝗸 𝘀𝗽𝗲𝗲𝗱𝘀, 𝗮𝗻𝗱 𝗲𝘃𝗲𝗿𝘆 𝗺𝗼𝘃𝗲 𝗶𝘀 𝗮 𝗱𝗲𝗹𝗶𝗰𝗮𝘁𝗲 𝗱𝗮𝗻𝗰𝗲 𝗯𝗲𝘁𝘄𝗲𝗲𝗻 𝗽𝗼𝘄𝗲𝗿 𝗮𝗻𝗱 𝗰𝗼𝗻𝘁𝗿𝗼𝗹.")
                        .font(.caption)
                        .fontWeight(.light)
                    Spacer().frame(height: 10)
                    
                    
                    Text ("* 𝗜𝘁'𝘀 𝗹𝗶𝗸𝗲 𝘄𝗮𝘁𝗰𝗵𝗶𝗻𝗴 𝗮 𝗵𝗶𝗴𝗵-𝘀𝗽𝗲𝗲𝗱 𝘀𝘆𝗺𝗽𝗵𝗼𝗻𝘆 𝗼𝗿𝗰𝗵𝗲𝘀𝘁𝗿𝗮𝘁𝗲𝗱 𝗯𝘆 𝘁𝗵𝗲 𝗯𝗲𝘀𝘁 𝗱𝗿𝗶𝘃𝗲𝗿𝘀 𝗶𝗻 𝘁𝗵𝗲 𝘄𝗼𝗿𝗹𝗱.")
                        .font(.caption)
                        .fontWeight(.light)
                    Spacer().frame(height: 2)
                    
                }
                .padding().foregroundColor(.black)
                .background(Rectangle().foregroundColor(Color(.white)) .cornerRadius(10).shadow(radius: 15))
                .padding()
                
                Spacer()
            }
        }
        
        

        
    }
}

#Preview {
    ContentView()
}
