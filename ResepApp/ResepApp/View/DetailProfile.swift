//
//  DetailProfile.swift
//  ResepApp
//
//  Created by zero on 14/04/21.
//

import SwiftUI

struct DetailProfile: View {

    var body: some View {
        NavigationView{
            VStack{
                Image("user")
                    .resizable()
                    .frame(width:150,height: 150)
                    .clipped()
                    .clipShape(Circle())
                Text("Joko")
                    .font(.title)
                    .fontWeight(.medium)
                Form{
                    Section{
                        HStack{
                            Text("Phone")
                            Spacer()
                            Text("+1(268)-8110134")
                                .foregroundColor(.gray)
                                .font(.callout)
                        }
                        HStack{
                            Text("Email")
                            Spacer()
                            Text("Joko@SMKIDN.com")
                                .foregroundColor(.gray)
                                .font(.callout)
                        }
                        HStack{
                            Text("Alamat")
                            Spacer()
                            Text("Jakarta Selatan")
                                .foregroundColor(.gray)
                                .font(.callout)
                            
                        }
                        HStack{
                        Text("Favorit Food")
                            Spacer()
                        Text("Nasi Goreng")
                            .foregroundColor(.gray)
                        }

                    }
                }
                

            }.navigationBarTitle("Profile")
        }
    }
}

struct DetailProfile_Previews: PreviewProvider {
    static var previews: some View {
        DetailProfile()

    }
}
