//
//  ContentView.swift
//  Youtube
//
//  Created by Faruz Hillal Albany on 28/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View {
        NavigationView{
            
            Kontent()
                
                .navigationBarItems(
                    
                    leading:
                        HStack{
                            Button(action: {print("Hello Button")}){
                                Image("youtube-logo-9")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 20)
                            }
                        },
                    
                    trailing:
                        HStack (spacing:15){
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "tray")
                                    .foregroundColor(Color.secondary)
                                
                            }
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.secondary)
                                
                            }
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.secondary)
                                
                            }
                            
                            Button(action: {print("Hello Button")}){
                                NavigationLink(destination:SettingView()){
                                    Image("profile")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .clipShape(Circle())
                                    
                                }
                                
                            }
                        }
                    
                )
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Kontent : View {
    var body: some View {
        List{
           
            CellKontent(imageKontent: "kokbisa_bola", profileKontent: "kok_bisa", judul: "Kenapa Sepak Bola Olah Raga Yang Paling Populer?", deskripsi: "297 rb x ditonton . 1 jam yang lalu", durasi: "15:00")
            
            CellKontent(imageKontent: "kokbisa_kesehatan", profileKontent: "kok_bisa", judul: "Apa Itu Ilmu 'Kesehatan' / 'Kedokteran' Sebenarnya?", deskripsi: "19 rb x ditonton . 18 jam yang lalu", durasi: "03:00")
            
            CellKontent(imageKontent: "kokbisa_kimia", profileKontent: "kok_bisa", judul: "Apa Itu Ilmu 'Kimia' Sebenarnya? Apa Gunanya Di Hidup Kita?", deskripsi: "23 rb x ditonton . 5 hari yang lalu", durasi: "04:05")
            
        }
    }
}

//Komponen Untuk Cell
struct CellKontent : View {
    
    var imageKontent: String
    var profileKontent: String
    var judul: String
    var deskripsi: String
    var durasi: String
    
    var body: some View {
        //Konten 1
        VStack{
            ZStack (alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(durasi)
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing:20){
                Image(profileKontent)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text(judul)
                        .font(.headline)
                    HStack{
                        Text(deskripsi)
                            .font(.caption)
                        
                    }
                    
                }
            }
        }
    }
}
   
