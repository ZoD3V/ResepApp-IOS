//
//  DetailView.swift
//  ResepApp
//
//  Created by zero on 14/04/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                Waktu()
                    .tabItem {
                        NavigationLink(destination:Waktu()){
                            Image(systemName: "timer")
                            Text("Timer")
                        }
                    }
                DetailProfile()
                    .tabItem {
                        NavigationLink(destination:DetailProfile()){
                        Image(systemName: "person.circle.fill")
                        Text("Profile")
                        }
                    }
            }
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}


struct Home:View {
    var body: some View {

            NavigationView{
                List(resepdata){ resep in
                    NavigationLink(destination:DetailResep(isidetailresep: resep)){
                                VStack{

                                    HStack(alignment: .top){
                                        
                                        Image(resep.gambar)
                                            .resizable()
                                            .frame(width: 150, height: 100)
                                            .cornerRadius(10)
                                        
                                        VStack(alignment:.leading){
                                            Text(resep.judul)
                                                .font(.title3)
                                                .bold()
                                            
                                            Text(resep.detailresep)
                                                .clipped()
                                                .font(.system(size: 12))
                                                .foregroundColor(.black)
                                            
                                        }.frame(width: 200, height: 100)
                                        
                                    }
                                }
                            
                        }
                    }
                    .navigationBarTitle("Menu")
                    .navigationBarTitleDisplayMode(.inline)

                

                
            }
        
    }
}
