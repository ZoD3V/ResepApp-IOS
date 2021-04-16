//
//  Backup.swift
//  ResepApp
//
//  Created by zero on 14/04/21.
//

import Foundation

//
//  DetailResep.swift
//  ResepApp
//
//  Created by zero on 14/04/21.
//

import SwiftUI

struct DetailResep: View {
    
    let isidetailresep:resep
    
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Image(isidetailresep.gambar)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                
                
                VStack(alignment:.leading){
                    Text(isidetailresep.judul)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    VStack{
                        Text(isidetailresep.detailresep)
                    }
                }.padding()
            }
        }
    }
}

struct DetailResep_Previews: PreviewProvider {
    static var previews: some View {
        DetailResep(isidetailresep: resep(id:0,gambar: "",judul: "",detailresep: ""))
    }
}


