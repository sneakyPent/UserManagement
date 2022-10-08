package usermanagement

class BootStrap {

    def init = { servletContext ->
        new User(firstName: "Giorgos",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "g.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Nikolas",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "n.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Vasilis",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "v.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Maria",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "m.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Antonis",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "a.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Christina",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "c.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
//        new User(firstName: "Giorgos",
//                lastName: "Zacharioudakis",
//                address: "Chersonisou 1",
//                email: "g.zaharioudakis@yahoo.com",
//                password: "123456789",
//                active: true).save()
        new User(firstName: "Manos",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "mns.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Panagiwtis",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "p.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Alexandros",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "al.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()
        new User(firstName: "Giannis",
                lastName: "Zacharioudakis",
                address: "Chersonisou 1",
                email: "gn.zaharioudakis@yahoo.com",
                password: "123456789",
                active: true).save()

    }
    def destroy = {
    }
}
