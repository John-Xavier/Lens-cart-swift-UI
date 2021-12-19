//
//  CardView.swift
//  Specs
//
//  Created by John Srishti on 19/12/21.
//

import SwiftUI

struct CardView: View {
    var item:Item
    var animation:Namespace.ID
    var body: some View {
        VStack{
            HStack{
                Spacer(minLength: 0)
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical,8)
                    .padding(.horizontal,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
            }
            
            Image(item.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image\(item.id)", in: animation)
                .padding(.top,30)
                .padding(.bottom)
                .padding(.horizontal,10)
            Text(item.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .matchedGeometryEffect(id: "title\(item.id)", in: animation)
            
            Text(item.subTitle)
                .font(.caption)
                .foregroundColor(.gray)
                .matchedGeometryEffect(id: "subtitle\(item.id)", in: animation)
            
            
            //usinf matched geometry effect for herp animation
            HStack{
                Button(action: {}){
                    Image(systemName: "suit.heart")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                }
                .matchedGeometryEffect(id: "heart\(item.id)", in: animation)
                
                Spacer(minLength: 0)
                
                Text(item.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "rating\(item.id)", in: animation)
            }
            .padding()
        }
        //giving hero effect for color also
        .background(Color(item.Image)
                        .matchedGeometryEffect(id: "color\(item.id)", in: animation))
        .cornerRadius(15)
    }
}


