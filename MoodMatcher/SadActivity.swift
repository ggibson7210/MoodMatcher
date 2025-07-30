//
//  SadActivity.swift
//  MoodMatcher

import SwiftData
import SwiftUI

@Model
class SadActivity {
    var boredName: String
    var boredDescription: String
    
    init(boredName: String, boredDescription: String) {
        self.boredName = boredName
        self.boredDescription = boredDescription
    }
}

struct SadActivityListView: View {
    @Query private var boredActivities: [SadActivity]
    @Environment(\.modelContext) private var modelContext
    
    @State private var addBoredActivity = false
    @State private var editBoredActivity: SadActivity?
    
    let setBoredActivities = [
        SadActivity(boredName: "Meditation & Yoga", boredDescription: "Release all your energy 🤩"),
        SadActivity(boredName: "Get lost in a new book!", boredDescription: "Or, a new show, recipe, or something else 🧑‍🍳"),
        SadActivity(boredName: "Connect with your loved ones", boredDescription: "Start a conversation or plan a meet-up 💜")
    ]
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 0.9294117647058824, green: 0.7450980392156863, blue: 0.8941176470588236)
                    .ignoresSafeArea()
                List {
                    Section{
                        Text("Set Activities")
                            .font(.headline)
                    }
                    ForEach(setSadActivities) {activity in
                        HStack{
                            Text (activity.boredName)
                                .font(.headline)
                            Text (activity.boredDescription)
                        }}
                    
                    Section{
                        Text("Your Activities")
                            .font(.headline)
                    }
                    ForEach(boredActivities) {activity in
                        HStack {
                            Text (activity.boredName)
                                .font(.headline)
                            Text (activity.boredDescription)
                        }
                        .onTapGesture {
                            editSadActivity = activity
                        }
                    }
                    .onDelete(perform: deleteSadActivity)
                }
                .background(Color.clear)
                .scrollContentBackground(.hidden)
                
                .navigationTitle("Brain Fog: Activities")
                .navigationBarItems(trailing: Button(action: {
                    addSadActivity = true
                }) { Image(systemName: "plus")
                })
                .sheet(item: $editSadActivity) { activity in
                    EditSadActivityView(boredActivity: activity)
                }
                .sheet(isPresented: $addSadActivity) {
                    AddSadActivityView()
                }
            }
        }
    }
    
    func deleteSadActivity(at offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(boredActivities[index])
        }
    }
}


struct AddSadActivityView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    
    @State private var boredName = ""
    @State private var boredDescription = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Activity Name", text: $boredName)
                TextField("Description", text: $boredDescription)
            }
            .navigationTitle("Add Activity")
            .navigationBarItems(trailing: Button("Save") {
                let newActivity = SadActivity(boredName: boredName, boredDescription: boredDescription)
                modelContext.insert(newActivity)
                dismiss()
            }.disabled(boredName.isEmpty || boredDescription.isEmpty))
        }
    }
}

struct EditBoredActivityView: View {
    @Environment(\.dismiss) var dismiss

    @Bindable var boredActivity: SadActivity

    var body: some View {
        NavigationView {
            Form {
                TextField("Activity Name", text: $boredActivity.boredName)
                TextField("Description", text: $boredActivity.boredDescription)
            }
            .navigationTitle("Edit Activity")
            .navigationBarItems(trailing: Button("Save") {
                dismiss()
            }.disabled(boredActivity.boredName.isEmpty || boredActivity.boredDescription.isEmpty))
        }
    }
}

struct SadActivities: App {
    var body: some Scene {
        WindowGroup {
            SadActivityListView()
        }
        .modelContainer(for: SadActivity.self)
    }
}

#Preview {
    SadActivityListView()
        .modelContainer(for: SadActivity.self, inMemory: true)
}



