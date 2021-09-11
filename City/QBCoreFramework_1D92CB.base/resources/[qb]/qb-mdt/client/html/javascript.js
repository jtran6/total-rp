const qb_mdt = new Vue({
    el: '#QB_MDT',
    vuetify: new Vuetify(),

    data: () => ({
        // CONFIGS
        Fines: [
            { id: 1, label: 'Shooting', amount: 500, desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius sunt eaque tempora dolorem cum molestias ea perferendis commodi laborum sint.' },
            { id: 2, label: 'Shooting cunts', amount: 501, desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, deleniti.' },
            { id: 3, label: 'Shooting cunts down', amount: 502, desc: 'Lorem ipsum dolor sit amet.' },
            { id: 4, label: 'Shooting fucks', amount: 503, desc: 'Lorem ipsum dolor sit amet.' },
            { id: 5, label: 'Shooting fucks down', amount: 504, desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, deleniti.' },
            { id: 6, label: 'Shooting hookers', amount: 505, desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, deleniti.' },
            { id: 7, label: 'Shooting hookers down', amount: 506, desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, deleniti.' },
            { id: 8, label: 'Shooting examples', amount: 507, desc: 'Lorem ipsum dolor sit amet.' },
            { id: 9, label: 'Shooting examples down', amount: 508, desc: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique natus eligendi consequatur animi! Minus assumenda nam deserunt? Praesentium commodi animi explicabo asperiores unde velit voluptatibus tempora quos delectus perspiciatis, accusamus dolores nisi, aliquam excepturi necessitatibus eligendi accusantium iure non provident?' },
            { id: 10, label: 'Shooting examples down', amount: 508, desc: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique natus eligendi consequatur animi! Minus assumenda nam deserunt? Praesentium commodi animi explicabo asperiores unde velit voluptatibus tempora quos delectus perspiciatis, accusamus dolores nisi, aliquam excepturi necessitatibus eligendi accusantium iure non provident?' },
            { id: 11, label: 'Shooting examples down', amount: 508, desc: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique natus eligendi consequatur animi! Minus assumenda nam deserunt? Praesentium commodi animi explicabo asperiores unde velit voluptatibus tempora quos delectus perspiciatis, accusamus dolores nisi, aliquam excepturi necessitatibus eligendi accusantium iure non provident?' },
        ],

        // Basic
        isOpen: false,
        imageChange: false,
        zimageChange: 0,
        managementChange: false,
        zmanagementChange: 0,

        // Pages
        currentPage: 'HOME',
        MainPages: ['HOME', 'CRIMINAL RECORD', 'SEARCH VEHICLES', 'DISPATCH', 'WARRANTS', 'PROFILE'],

        // qb_mdt_profiles
        drxProfiles: [],
        drxDispatches: [],
        drxWarrants: [],
        identifier: undefined,
        rank: '',
        charname: '',
        policegroup: '',
        badgenumber: '',
        duty: '',
        image: '',

        // users
        identifier: undefined,
        vrpcharname: '',
        phone_number: '',
        dateofbirth: '',

        // Management Overlay
        identifierData: undefined,
        rankData: '',
        charnameData: '',
        policegroupData: '',
        badgenumberData: '',
        dutyData: '',
        imageData: '',
        
                // Dispatch
        zdispatch: 0,
        dispatch: '',
        dispatchCall: '',

        // Warrants
        zvehicleWarrant: 0,
        vehicleWarrant: '',
        vehicleWarrantSelected: '',
        searchWarrants: '',
        zpersonWarrant: '',
        personWarrant: '',
        FilterVehWarrants: '',
        FilterWarrants: '',
        zshowWarrants: '',
        showWarrants: '',
        selectedWarrant: '',
        personWarrantSelected: '',

        // Criminal Records
        changeNote: false,
        zchangeNote: 0,
        showLicenses: false,
        zshowLicenses: 0,
        changeCharges: false,
        zchangeCharges: 0,
        newCharges: false,
        znewCharges: 0,
        showCharges: false,
        zshowCharges: 0,
        searchResults: {},
        searchInput: '',
        UserLicenses: {},
        selectedPerson: {
            identifier: undefined,
            charname: '',
            dateofbirth: '',
            sex: '',
            job: '',
            gang: '',
            phone_number: '',
            height: '',
            note: '',
            image: '',
            wanted: '',
        },
        searchCharges: '',
        newCharge: {
            identifier: undefined,
            title: '',
            incident: '',
            victim: '',
            author: '',
            charges: {},
            fine: 0,
            jailTime: 0,
            date: undefined,
            sentenced: '',
        },
        showCurrentCharge: {
            id: undefined,
            identifier: undefined,
            title: '',
            incident: '',
            victim: '',
            author: '',
            charges: {},
            fine: 0,
            jailTime: 0,
            date: undefined,
            sentenced: '',
        },
        selectedCharge: {},
        // Search Vehicles
        searchVehicle: '',
        VehicleResults: {},
        selectedVehicle: {
            owner: undefined,
            charname: '',
            model: '',
            type: '',
            plate: '',
            color: null,
            stolen: '',
            image: null,
        },
    }),

    methods: {
        // Basic
        openMenu(drxProfiles, identifier, vrpcharname, phone_number, dateofbirth, rank, charname, policegroup, badgenumber, duty, image) {
            this.isOpen = true;
            // this.currentPage = 'HOME';

            // qb_mdt_profiles
            this.drxProfiles = drxProfiles;
            this.rank = rank;
            this.charname = charname;
            this.policegroup = policegroup;
            this.badgenumber = badgenumber;
            this.duty = duty;
            this.image = image;
            // vrp_user_identities
            this.identifier = identifier;
            this.vrpcharname = vrpcharname;
            this.phone_number = phone_number;
            this.dateofbirth = dateofbirth;
        },
        closeMenu() {
            this.isOpen = false;
            $.post('https://qb-mdt/close');
        },
        changePage(MainPages) {
            this.currentPage = MainPages;
            this.managementChange = false;
            this.newCharges = false;
            this.changeCharges = false;
            this.showCharges = false;
            this.searchInput = '';
            this.searchCharges = '';
        },



        // Criminal Records
        searchPerson(searchInput) {
            $.post('https://qb-mdt/searchPerson', JSON.stringify({
                searchInput
            }))
        },
        searchPersonClear() {
            this.searchInput = '';
            this.searchResults = {};
            this.selectedPerson.identifier = undefined;
            this.selectedPerson.charname = '';
            this.selectedPerson.dateofbirth = '';
            this.selectedPerson.sex = '';
            this.selectedPerson.job = '';
            this.selectedPerson.gang = '';
            this.selectedPerson.phone_number = '';
            this.selectedPerson.height = '';
            this.selectedPerson.note = '';
            this.selectedPerson.image = '';
            this.selectedPerson.wanted = '';
        },
        selectPerson(identifier) {
            $.post('https://qb-mdt/fetchSelectPerson', JSON.stringify({
                identifier,
            }))
            this.selectedPerson.identifier = identifier;
        },
        changePersonImage() {
            $.post('https://qb-mdt/uploadPersonImage', JSON.stringify({
                identifier: this.selectedPerson.identifier,
                image: this.selectedPerson.image
            }))
        },
        saveNote(identifier, note) {
            identifier = this.selectedPerson.identifier;
            note = this.selectedPerson.note;
            if (this.selectedPerson.note.length == '') {
                $.post('https://qb-mdt/messageClient', JSON.stringify({
                    typeMessage: 'error',
                    message: 'Notes has been cleared',
                }))
                $.post('https://qb-mdt/saveNotes', JSON.stringify({
                    identifier,
                    note
                }))
            } else {
                $.post('https://qb-mdt/messageClient', JSON.stringify({
                    typeMessage: 'success',
                    message: 'Notes has been saved',
                }))
                $.post('https://qb-mdt/saveNotes', JSON.stringify({
                    identifier,
                    note
                }))
            }
        },
        markPersonWanted() {
            if (this.selectedPerson.identifier) {
                $.post('https://qb-mdt/markPersonWanted', JSON.stringify({
                    identifier: this.selectedPerson.identifier,
                    wanted: this.selectedPerson.wanted,
                }))
            }
        },
        newChargeOverlay() {
            this.newCharges = true;
            this.newCharge.identifier = this.selectedPerson.identifier;
            this.newCharge.victim = this.selectedPerson.charname;
            this.newCharge.author = this.charname;

            this.newCharge.title = '';
            this.newCharge.incident = '';
            this.newCharge.charges = {};
            this.newCharge.fine = 0;
            this.newCharge.jailTime = 0;
            this.newCharge.date = undefined;
        },
        createNewCharge() {
            if (this.newCharge.title || this.newCharge.incident) {
                this.newCharges = false;
                this.changeCharges = false;
                $.post('https://qb-mdt/newCharge', JSON.stringify({
                    identifier: this.newCharge.identifier,
                    title: this.newCharge.title,
                    incident: this.newCharge.incident,
                    victim: this.newCharge.victim,
                    author: this.newCharge.author,
                    charges: this.newCharge.charges,
                    fine: this.newCharge.fine,
                    jailTime: this.newCharge.jailTime,
                    date: this.newCharge.date,
                    sentenced: this.newCharge.sentenced
                }))
            }
            this.newCharge.identifier = undefined;
            this.newCharge.title = '';
            this.newCharge.incident = '';
            this.newCharge.victim = '';
            this.newCharge.author = '';
            this.newCharge.charges = {};
            this.newCharge.fine = undefined;
            this.newCharge.jailTime = undefined;
            this.newCharge.date = undefined;
            this.newCharge.sentenced = '';
        },
        fetchLicenses() {
            this.showLicenses = true;
            $.post('https://qb-mdt/fetchLicenses', JSON.stringify({
                identifier: this.selectedPerson.identifier
            }))
        },
        returnLicenses(UserLicenses) {
            this.UserLicenses = UserLicenses;
        },
        removeLicense(data) {
            $.post('https://qb-mdt/removeLicenses', JSON.stringify({
                identifier: this.selectedPerson.identifier,
                licenseType: data
            }))
            this.showLicenses = false;
        },
        fetchPersonCharges() {
            this.changeCharges = true;
            $.post('https://qb-mdt/fetchCharges', JSON.stringify({
                identifier: this.selectedPerson.identifier
            }))
        },
        fetchCharges(selectedCharge) {
            this.selectedCharge = selectedCharge;
        },
        addFine(id) {
            for (var key in this.Fines) {
                if (id == this.Fines[key].id) {
                    var charge_name = this.Fines[key].label
                    if (this.newCharge.charges[charge_name]) {
                        Vue.set(this.newCharge.charges, charge_name, this.newCharge.charges[charge_name] + 1);
                    } else {
                        Vue.set(this.newCharge.charges, charge_name, 1);
                    }
                    this.newCharge.fine = this.newCharge.fine + this.Fines[key].amount
                    return;
                }
            }
        },
        removeFine(label) {
            for (var key in this.newCharge.charges) {
                if (label == key) {
                    if ((this.newCharge.charges[label] - 1) > 0) {
                        Vue.set(this.newCharge.charges, label, this.newCharge.charges[label] - 1)
                    } else {
                        Vue.delete(this.newCharge.charges, label)
                    }
                    for (var key in this.Fines) {
                        if (label == this.Fines[key].label) {
                            this.newCharge.fine = this.newCharge.fine - this.Fines[key].amount
                        }
                    }
                    return;
                }
            }
        },
        showCharge(id, identifier, title, incident, victim, author, charges, fine, jailTime, date, sentenced) {
            this.showCharges = true;
            this.showCurrentCharge.id = id;
            this.showCurrentCharge.identifier = identifier;
            this.showCurrentCharge.title = title;
            this.showCurrentCharge.incident = incident;
            this.showCurrentCharge.victim = victim;
            this.showCurrentCharge.author = author;
            this.showCurrentCharge.charges = charges;
            this.showCurrentCharge.fine = fine;
            this.showCurrentCharge.jailTime = jailTime;
            this.showCurrentCharge.date = date;
            this.showCurrentCharge.sentenced = sentenced;
        },
        sentenceTarget() {
            if (this.showCurrentCharge.sentenced === "Yes" || this.showCurrentCharge.title || this.showCurrentCharge.incident || this.showCurrentCharge.fine || this.showCurrentCharge.jailTime) {
                this.showCharges = false;
                this.changeCharges = false;
                $.post('https://qb-mdt/sentenceTarget', JSON.stringify({
                    id: this.showCurrentCharge.id,
                    identifier: this.showCurrentCharge.identifier,
                    title: this.showCurrentCharge.title,
                    incident: this.showCurrentCharge.incident,
                    victim: this.showCurrentCharge.victim,
                    author: this.showCurrentCharge.author,
                    charges: this.showCurrentCharge.charges,
                    fine: this.showCurrentCharge.fine,
                    jailTime: this.showCurrentCharge.jailTime,
                    date: this.showCurrentCharge.date,
                    sentenced: this.showCurrentCharge.sentenced
                }))
            }
        },
        deleteCharge() {
            if (this.rank === "admin") {
                this.showCharges = false;
                this.changeCharges = false;
                $.post('https://qb-mdt/deleteCharge', JSON.stringify({
                    id: this.showCurrentCharge.id
                }))
            }
        },
        editCharge() {
            if (this.showCurrentCharge.title.length >= 1 && this.showCurrentCharge.incident.length >= 1) {
                $.post('https://qb-mdt/editCharge', JSON.stringify({
                    id: this.showCurrentCharge.id,
                    title: this.showCurrentCharge.title,
                    details: this.showCurrentCharge.incident,
                    fine: this.showCurrentCharge.fine,
                    jailTime: this.showCurrentCharge.jailTime
                }))
                $.post('https://qb-mdt/messageClient', JSON.stringify({
                    typeMessage: 'success',
                    message: 'Changes have been saved',
                }))
            } else {
                $.post('https://qb-mdt/messageClient', JSON.stringify({
                    typeMessage: 'error',
                    message: 'Title and details can not be empty'
                }))
            }
        },



        // Search Vehicle
        searchVehicleInput(searchVehicle) {
            $.post('https://qb-mdt/searchVehicle', JSON.stringify({
                searchVehicle
            }))
        },
        searchVehicleClear() {
            this.searchVehicle = '';
            this.VehicleResults = {};
            this.selectedVehicle.owner = undefined;
            this.selectedVehicle.charname = '';
            this.selectedVehicle.model = '';
            this.selectedVehicle.type = '';
            this.selectedVehicle.plate = '';
            this.selectedVehicle.color = null;
            this.selectedVehicle.stolen = '';
            this.selectedVehicle.image = null;
        },
        selectVehicle(owner, plate) {
            $.post('https://qb-mdt/fetchSelectVehicle', JSON.stringify({
                owner,
                plate
            }))
            this.selectedVehicle.owner = owner;
        },
        changeVehicleImage() {
            $.post('https://qb-mdt/changeVehicleImage', JSON.stringify({
                owner: this.selectedVehicle.owner,
                plate: this.selectedVehicle.plate,
                image: this.selectedVehicle.image
            }))
        },
        markVehicleStolen() {
            if (this.selectedVehicle.owner || this.selectedVehicle.model || this.selectedVehicle.plate) {
                $.post('https://qb-mdt/markVehicleStolen', JSON.stringify({
                    owner: this.selectedVehicle.owner,
                    plate: this.selectedVehicle.plate,
                    stolen: this.selectedVehicle.stolen,
                    type: 'veh'
                }))
            }
        },


        // Profile
        dutyStatus(duty) {
            $.post('https://qb-mdt/dutyStatus', JSON.stringify({
                duty,
            }))
        },
        changeImage(image) {
            this.imageChange = false;
            $.post('https://qb-mdt/changeImage', JSON.stringify({
                image
            }))
        },
        changeEmployeeData(identifier, rank, charname, policegroup, badgenumber, duty, image) {
            this.managementChange = true;
            this.identifierData = identifier;
            this.rankData = rank;
            this.charnameData = charname;
            this.policegroupData = policegroup;
            this.badgenumberData = badgenumber;
            this.dutyData = duty;
            this.imageData = image;
        },
        changeComitData(identifierData, rankData, policegroupData, badgenumberData, imageData) {
            if (this.identifier === this.identifierData) {
                this.policegroup = policegroupData;
                this.badgenumber = badgenumberData;
                this.image = imageData;
                $.post('https://qb-mdt/changeComitData', JSON.stringify({
                    identifierData,
                    rankData,
                    policegroupData,
                    badgenumberData,
                    imageData
                }))
            } else {
                $.post('https://qb-mdt/changeComitData', JSON.stringify({
                    identifierData,
                    rankData,
                    policegroupData,
                    badgenumberData,
                    imageData
                }))
            }
        },
        DeleteData(identifierData) {
            if (this.identifier === this.identifierData) {
                $.post('https://qb-mdt/messageClient', JSON.stringify({
                    typeMessage: 'error',
                    message: 'You are admin, you cannot delete yourself',
                }))
            } else {
                this.managementChange = false;
                $.post('https://qb-mdt/deleteData', JSON.stringify({
                    identifierData
                }))
            }
        },



        // Updates
        returnSelectPerson(charname, dateofbirth, phone_number, sex, job, gang, note, image, wanted) {
            this.selectedPerson.charname = charname;
            this.selectedPerson.dateofbirth = dateofbirth;
            this.selectedPerson.phone_number = phone_number;
            this.selectedPerson.sex = sex;
            this.selectedPerson.job = job;
            this.selectedPerson.gang = gang;
            this.selectedPerson.note = note;
            this.selectedPerson.image = image;
            this.selectedPerson.wanted = wanted;
        },
        returnWantedStatus(wanted) {
            this.selectedPerson.wanted = wanted;
        },
        updateDuty(duty) {
            this.duty = duty;
        },
        updateDutyAll(drxProfiles) {
            this.drxProfiles = drxProfiles;
        },
        searchPersonResults(searchResults) {
            this.searchResults = searchResults;
        },
        returnVehicleResults(VehicleResults) {
            this.VehicleResults = VehicleResults;
        },
        returnSelectVehicle(charname, model, plate, type, color, stolen, image) {
            this.selectedVehicle.charname = charname;
            this.selectedVehicle.model = model;
            this.selectedVehicle.plate = plate;
            this.selectedVehicle.type = type;
            this.selectedVehicle.color = color;
            this.selectedVehicle.stolen = stolen;
            this.selectedVehicle.image = image;
        },
        returnStatusStolen(stolen) {
            this.selectedVehicle.stolen = stolen;
        },
    },

    computed: {
        FilterCharges() {
            return this.Fines.filter((charges) => {
                return this.searchCharges.toLowerCase().split(' ').every(v => charges.label.toLowerCase().includes(v))
            })
        },
    },
})

document.onreadystatechange = () => {
    if (document.readyState == 'complete') {
        window.addEventListener('message', (event) => {
            var drx = event.data;

            if (drx.open) {
                qb_mdt.openMenu(drx.drxProfiles, drx.identifier, drx.vrpcharname, drx.phone_number, drx.dateofbirth, drx.rank, drx.charname, drx.policegroup, drx.badgenumber, drx.duty, drx.image)
            }

            if (drx.close) {
                qb_mdt.closeMenu()
            }

            if (drx.type == 'returnSearchPerson') {
                qb_mdt.searchPersonResults(drx.searchResults)
            }

            if (drx.type == 'returnSelectPerson') {
                qb_mdt.returnSelectPerson(drx.charname, drx.dateofbirth, drx.phone_number, drx.sex, drx.job, drx.gang, drx.note, drx.image, drx.wanted)
            }

            if (drx.type == 'returnWantedStatus') {
                qb_mdt.returnWantedStatus(drx.wanted)
            }

            if (drx.type == 'updateDuty') {
                qb_mdt.updateDuty(drx.duty)
            }

            if (drx.type == 'updateDutyAll') {
                qb_mdt.updateDutyAll(drx.drxProfiles)
            }

            if (drx.type == 'returnLicenses') {
                qb_mdt.returnLicenses(drx.UserLicenses)
            }

            if (drx.type == 'returnCharges') {
                qb_mdt.fetchCharges(drx.selectedCharge)
            }

            if (drx.type == 'returnSearchVehicle') {
                qb_mdt.returnVehicleResults(drx.VehicleResults)
            }

            if (drx.update == 'returnSelectVehicle') {
                qb_mdt.returnSelectVehicle(drx.charname, drx.model, drx.plate, drx.type, drx.color, drx.stolen, drx.image)
            }

            if (drx.type == 'returnStolenStatus') {
                qb_mdt.returnStatusStolen(drx.stolen)
            }

            document.onkeyup = function(data) {
                if (data.which == 27) {
                    qb_mdt.closeMenu();
                }
            };
        });
    };
};
