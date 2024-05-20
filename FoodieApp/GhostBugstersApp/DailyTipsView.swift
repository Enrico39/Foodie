//
//  DailyTipsView.swift
//  GhostBugstersApp
//
//  Created by Linar Zinatullin on 20/10/23.
//


import SwiftUI
import SwiftData

struct ParentDailyTipsView: View {
    @Environment(\.modelContext) var modelContext

    
    @Query var viewModel: [Food]
    
    let timeUpdater = TimeUpdater()
    
    @State private var navigateToSuggestionView = false
    @State var selectedFoodTypes: Set<String> = []
    
    @State private var animOpacity: Double = 0.0
    @State private var playSteamAnimation = false
    
    @AppStorage("HasLaunched") private var hasLaunched: Bool = false
    
    
    var isReadyForTips: Bool{
       let isNewDay: Bool = Calendar.current.isDate(Date.now, equalTo: Date(timeIntervalSinceReferenceDate: timeUpdater.newTips), toGranularity: .day)
//        print(hasLaunched)
        
        if hasLaunched == true{
            
            if isNewDay && timeUpdater.isNowPast(hour: 6, minute: 59){
                hasLaunched = false
                timeUpdater.setupDateUpdate()
                return true
            }else {
                return false
            }
        }else {
            return true
        }
         
    
}
    
    
    var body: some View {
        ZStack {
            
            
            
            
            if !navigateToSuggestionView || isReadyForTips{
                
                DailyTipsView(selectedFoodTypes: $selectedFoodTypes, navigateToSuggestionView: $navigateToSuggestionView, playSteamAnimation: $playSteamAnimation).onAppear{
                    
                }
                
            }
            
            if navigateToSuggestionView || !isReadyForTips {
                          
                SuggestionView(selectedFoodTypes: $selectedFoodTypes).onAppear{
                    if hasLaunched == false && isReadyForTips{
                        hasLaunched = true
                    }
                }
                            
            }
            if playSteamAnimation  {
                GeometryReader{ geometry in
                    SteamSpriteView()
                        .opacity(animOpacity)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 0.2)){
                                animOpacity = 1.0
                                
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                // Stop Animation
                                playSteamAnimation = false
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                                // Fade Out
                                withAnimation(.easeInOut(duration: 0.5)){
                                    animOpacity = 0.0
                                }
                            }
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        
                    
                }
                
                
            }
            
            
            
        }
        
    }
    
}





struct DailyTipsView: View {
    
    @Binding var selectedFoodTypes: Set<String>
    @Binding var navigateToSuggestionView: Bool
    @Binding var playSteamAnimation: Bool
    
    @State private var showModel = false
    
    @State private var opacity: Double = 1.0
    @State private var offsetX = 0.0
    @State private var offsetY = 0.0
    @State private var rotationAngle: Angle = .degrees(0)
    
    let foodTypes = FoodViewModel().foodTypes
    
    @State private var IsSelectedTB: [Bool] = [false,false,false,false,false,true]
    
    var body: some View {
        
        
        NavigationStack{
            
            
            
            ZStack{
                
                
                Circle()
                    .stroke(Color(hex: 0x315771) , lineWidth: 3.0)
                    .background(Circle().fill(Color(hex: 0xFFF9F3)))
                    .frame(width: 300, height: 300)
                    .padding(.bottom, 100)
                    .opacity(self.opacity)
                
                VStack{
                    VStack{
                        Image("plateTop")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                            .opacity(self.opacity)
                            .offset(x: self.offsetX, y: self.offsetY)
                            .rotationEffect(rotationAngle,anchor: .center)
                            .padding(.bottom, -10)
                        Image("plateBottom")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                            .opacity(self.opacity)
                        
                    }.padding()
                    
                    ZStack{
                        Button(action:{
                            withAnimation(.easeInOut(duration: 1.0)){
                                // Open plate animation
                                self.offsetX = 30.0
                                self.offsetY = -35.0
                                self.rotationAngle = .degrees(20)
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                    withAnimation(.easeInOut(duration: 1.0)){
                                        // Fade out
                                        self.opacity = 0
                                    }
                                    
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                                    self.navigateToSuggestionView = true //  Toggle navigation state within withAnimation block
                                    
                                }
                                
                            }
                            
                            
                            playSteamAnimation = true
                        }){
                            Text("Get Tips")
                                .font(.title)
                                .foregroundColor(Color(hex: 0xFFFFFF))
                                .bold()
                                .frame(width: 300,height: 70)
                            
                        }.buttonStyle(ColorChangingButtonStyle(pressedColor: Color.brighten(hex: 0x315771), releaseColor: Color(hex: 0x315771)))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .opacity(self.opacity)
                        
                        
                        
                        
                    }
                    .background(Color(.white))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .padding()
                    
                    
//                    NavigationLink(destination: SuggestionView(selectedFoodTypes: $selectedFoodTypes), isActive: $navigateToSuggestionView){
//                        EmptyView()
//                    }.isDetailLink(false)
                    //                    .transition(.fade)
                    
                    
                    
                    HStack{
                        
                        ForEach(foodTypes, id: \.self) { type in
                            
                            if let index = foodTypes.firstIndex(of: type) {
                                FoodTypeToggleButton(
                                    type: type,
                                    index: index,
                                    isSelected: $IsSelectedTB,
                                    selectedFoodTypes: $selectedFoodTypes
                                )
                                .padding(5)
                            }
                        }
                        
                    }.opacity(self.opacity)
                    
                    
                }
                
                
                
                
            }
            
            .navigationTitle("Daily Tips")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button(action:{
                        showModel.toggle()
                    }, label: {
                        Image(systemName: "info.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                            .foregroundColor(Color(hex: 0x315771))
                            .bold()
                            .padding(.top,8)
                        
                        
                    }).sheet(isPresented: $showModel){
                        Info()
                    }
                    
                }
                
            }
            
        }
        
        
        
        
    }
}


struct SuggestionView: View{
    
    @Environment(\.modelContext) var modelContext
    
    @Query var foods: [Food]
    
    @State var showModel = false
    
    @State var currentPage: Int  = 0
    
    // varibales for drugging animation in suggested food Image
    @State private var offset: Double = 0.0
    @State private var opacity: Double = 1.0
    @State private var animOffset: Double = 0.0
    @State private var transitionOpacity: Double = 0.0
    
    
    
    @Binding var selectedFoodTypes: Set<String>
    
    var suggestedFoods:[Food]! {
        if selectedFoodTypes.isEmpty{
            
            return foods
            
        } else {
            
            return foods.filter { !Set($0.preferenceTypes).intersection(selectedFoodTypes).isEmpty }
        }
    }
    
    
    
    var body: some View {
        
        NavigationStack{
            
            
            ZStack{
                ZStack{
                    Image(suggestedFoods[currentPage].image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                        .opacity(opacity)
                        .offset(x: offset)
                        .gesture(
                            DragGesture()
                                .onChanged {value in
                                    
                                    let treshhold: Double = 70
                                    let opacityTreshholdBegin: Double = 40
                                    let opacityTresholdEnd: Double = 100
                                    
                                    // update offset while dragging
                                    if value.translation.width < 0 {
                                        self.offset = max(value.translation.width, -treshhold)
                                    } else if value.translation.width > 0 {
                                        self.offset = min(value.translation.width, treshhold)
                                    }
                                    
                                    self.animOffset = value.translation.width
                                    
                                    // Set opacity
                                    if (self.offset > opacityTreshholdBegin && self.offset <  opacityTresholdEnd ) || (self.offset < -opacityTreshholdBegin && self.offset > -opacityTresholdEnd) {
                                        self.opacity = treshhold/abs(value.translation.width)
                                    }
                                    
                                }
                            
                                .onEnded{ value in
                                    let treshhold: Double = 70.0
                                    if value.translation.width > treshhold, currentPage > 0 {
                                        // if dragged right and not on the first page
                                        
                                        offset = -170  // Set the starting offset to the left
                                        currentPage -= 1
                                        
                                    } else if value.translation.width < treshhold, currentPage < suggestedFoods.count - 1{
                                        // if dragged left and not on the last page
                                        
                                        offset = 170  // Set the starting offset to the right
                                        currentPage += 1
                                        
                                    }
                                    
                                    withAnimation(.interpolatingSpring(stiffness: 150, damping: 8)){
                                        self.offset = 0.0
                                        self.opacity = 1.0
                                        
                                    }
                                }
                            
                        )
                        .animation(.bouncy, value: self.animOffset)
                        .opacity(self.transitionOpacity)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 1.0)){
                                self.transitionOpacity = 1.0
                            }
                        }
                    
                    
                    Circle()
                        .stroke(Color(hex: 0x315771) , lineWidth: 3.0)
                        .frame(width: 300, height: 300)
                    
                        .opacity(self.transitionOpacity)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 1.0)){
                                self.transitionOpacity = 1.0
                            }
                        }
                }.padding(.bottom,225)
                
                
                VStack {
                    ZStack{
                        //Button(action:{}){
                        NavigationLink(destination: DetailsView(food: suggestedFoods[currentPage])) {
                            
                            Text(suggestedFoods[currentPage].name)
                                .font(.title)
                                .foregroundColor(Color.black)
                                .bold()
                                .frame(width: 300,height: 70)
                                .background(RoundedRectangle(cornerRadius: 25.0).stroke(Color(hex: 0x315771),lineWidth: 3.0))
                            
                        }.buttonStyle(ColorChangingButtonStyle(pressedColor: Color(hex: 0x315771), releaseColor: Color(hex: 0xFFF9F3)))
                            .opacity(self.transitionOpacity)
                            .onAppear{
                                withAnimation(.easeInOut(duration: 1.0)){
                                    self.transitionOpacity = 1.0
                                }
                            }
                        
                        
                    }.background(Color(.white))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .padding()
                    
                    
                    
                    
                    HStack{
                        ForEach((suggestedFoods[currentPage].preferenceTypes), id: \.self ) { type in
                            FoodTypeIcon(imageName: type).padding(5)
                                .opacity(self.opacity)
                            
                        }
                    }
                        .opacity(self.transitionOpacity)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 1.0)){
                                self.transitionOpacity = 1.0
                            }
                        }
                    
                    
                    
                    
                    
                    PageControl(numberOfPages: Int(min(3, suggestedFoods.count)), currentPage: $currentPage)
                        .padding(.top)
                        .opacity(self.transitionOpacity)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 1.0)){
                                self.transitionOpacity = 1.0
                            }
                        }
                    
                    Text("Come back \n tomorrow  for more!")
                        .bold()
                        .multilineTextAlignment(.center)
                        .scaleEffect(1.3)
                        .frame(width: 250,height: 50)
                        .foregroundColor(Color.darken(hex:0x315771, percentage: 0.5))
                        .padding(.top,30)
                        .opacity(self.transitionOpacity)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 1.0)){
                                self.transitionOpacity = 1.0
                            }
                        }
                    
                    
                }.padding(.top, 240)
                
                
                
            }
            
            
            
            .navigationTitle("Daily Tips")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button(action:{
                        showModel.toggle()
                    }, label: {
                        Image(systemName: "info.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                            .foregroundColor(Color(hex: 0x315771))
                            .bold()
                            .padding(.top,8)
                        
                        
                    }).sheet(isPresented: $showModel){
                        Info()
                    }
                    
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}


#Preview {
    ParentDailyTipsView()
    //        SuggestionView(selectedFoodTypes: .constant([]))
}

