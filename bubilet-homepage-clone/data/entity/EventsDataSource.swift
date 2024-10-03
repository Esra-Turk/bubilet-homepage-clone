//
//  EventsDataSource.swift
//  bubilet-homepage-clone
//
//  Created by Esra Türk on 2.10.2024.
//

import Foundation

class EventsDataSource {
    static let shared = EventsDataSource()
        
    var eventsList = [Events]()
        
    private init() {
        let e1 = Events(id: 2, photo: "evgeny-grinko-konseri", name: "Evgeny Grinko Konseri", place: "Kültürpark Açıkhava Tiyatorsu", date: "18 Ekim Cum - 21:00", price: 700.0,sittingArea: true)
        let e2 = Events(id: 3, photo: "hops-and-bites-oktoberfest", name: "Hops And Bites Oktoberfest 2024", place: "Alsancak Tarihi Havagazı Fabrikası", date: "04 Ekim, 06 Ekim ...", price: 650.0,sittingArea: false)
        let e3 = Events(id: 4, photo: "cem-adrian-20-yil-konserleri-epic-symphony", name: "Cem Adrian 20.yıl Konserleri", place: "Kültürpark", date: "02 Kasım Cmt - 21:00", price: 990.0, sittingArea: true)
        let e4 = Events(id: 5, photo: "oktoberfest-90s", name: "Oktoberfest 90's", place: "İzmir Arena", date: "20 Ekim Paz - 21:00", price: 299.0, sittingArea: false)
        let e5 = Events(id: 6, photo: "athena-konseri", name: "Athena Konseri", place: "Hangout PSM", date: "05 Ekim Cmt 22:00", price: 750.0, sittingArea: false)
        let e6 = Events(id: 7, photo: "duman", name: "Duman", place: "Alsancak Tarihi Havagazı Fabrikası", date: "06 Ekim Paz - 14:00", price: 750.0, sittingArea: true)
        let e7 = Events(id: 8, photo: "olum-bizi-ayirana-dek-oyunu", name: "Ölüm Bizi Ayırana Denk Oyunu", place: "Konak, Bostanlı", date: "19 Ekim, 07 Aralık", price: 600.0, sittingArea: true)
        let e8 = Events(id: 9, photo: "serdar-ortac-konseri", name: "Serdar Ortaç Konseri", place: "Kültürpark Açıkhava Tiyatrosu", date: "31 Ekim Per - 21:00", price: 650.0, sittingArea: true)
        let e9 = Events(id: 10, photo: "cok-guzel-hareketler-2", name: "Çok Güzel Hareketler 2", place: "Bostanlı Suat Taşer Tiyatrosu", date: "01 Aralık Paz - 15:30, 20:30", price: 750.0, sittingArea: true)
        let e10 = Events(id: 11, photo: "gokhan-turkmen-konseri", name: "Gökhan Türkmen Konseri", place: "Soldout, Hayal Kahvesi", date: "05 Ekim, 07 Aralık ...", price: 699.0, sittingArea: false)
        let e11 = Events(id: 12, photo: "bagjan-oktabr-ruh-terapisi", name: "Bagjan Oktabr - Ruh Terapisi", place: "Ahmet Adnan Saygun Sanat Merkezi", date: "06 Ekim Paz - 17.00,21.00", price: 847.0, sittingArea: true)
        let e12 = Events(id: 13, photo: "gokhan-cinar-katarsis-gel-yeniden-baslayalim", name: "Gökhan Çınar Katarsis", place: "Bornova Aşık Veysel Açıkhava Tiyatrosu", date: "19 Ekim Cmt - 20.30", price: 240.0, sittingArea: true)
        let e13 = Events(id: 14, photo: "mert-demir-konseri", name: "Mert Demir Konseri", place: "Ooze Venue", date: "16 Kasım Cmt - 23.00", price: 800.0, sittingArea: false)
        let e14 = Events(id: 1, photo: "yalin-izmir", name: "Yalın-Bir Büyülü Gece", place: "Efes Antik Tiyatro", date: "05 Ekim, 07 Ekim ...", price: 550.0,sittingArea: true)
        
        eventsList.append(contentsOf: [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14])
    }
}
