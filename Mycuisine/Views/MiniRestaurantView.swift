import SwiftUI

struct MiniRestaurantView: View {
    let restaurant: String
    @State var isFavorite: Bool = false
    
    init(name restaurant: String){
        self.restaurant = restaurant
    }
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("\(restaurant)")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                    Spacer()
                }
                Spacer()
                HStack {
                    Button {
                        isFavorite = !isFavorite
                    } label: {
                        if !isFavorite {
                            Label {
                                Text("AddFavorite")
                            } icon: {
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.red)
                            }.labelStyle(.iconOnly)
                            
                        } else {
                            Label {
                                Text("RemoveFavorite")
                            } icon: {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.red)
                            }.labelStyle(.iconOnly)
                        }
                    }
                    Spacer()
                    Button {
                        print("ahaha")
                    } label: {
                        Label {
                            Text("RestaurantInfo")
                        } icon: {
                            Image(systemName: "arrow.forward.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.red)
                        }.labelStyle(.iconOnly)
                    }
                }.padding(.horizontal, 5)
                Spacer()
                HStack {
                    Text("Marisqueira")
                        .font(.system(size: 12))
                    Spacer()
                    HStack {
                        Image(systemName: "car.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .padding(.trailing, -5)
                        Text("10 km")
                            .font(.system(size: 12))
                    }
                }
            }
            .padding(7)
        }
        .frame(width: 150, height: 150)
        .background(Color("MainOrange"))
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16)
            .stroke(lineWidth: 1)
            .foregroundColor(.white)
            .shadow(color: .black, radius:2))
        
    }
}
