//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by woogie on 2021/10/20.
//

import SwiftUI

struct HistoryView: View {
	let history: History
	var body: some View {
		ScrollView {
			VStack(alignment: .leading) {
				Divider()
					.padding(.bottom)
				Text("Attendees")
					.font(.headline)
				Text(history.attendees.joined(separator: ", "))
				if let transcript = history.transcript {
					Text("Transcript")
						.font(.headline)
						.padding(.top)
					Text(transcript)
				}
			}
		}
		.navigationTitle(Text(history.date, style: .date))
		.padding()
	}
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		HistoryView(history: History(attendees: ["Jon", "Darla", "Luis"], lengthInMinutes: 10, transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI..."))
    }
}
