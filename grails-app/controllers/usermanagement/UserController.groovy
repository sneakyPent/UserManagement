package usermanagement

import grails.converters.JSON

class UserController {

//    static scaffold = User

    def userService


    def index() {
//        println "user index params $params"
//        def jqdtParams = [:]
//        params.each { key, value ->
//            def keyFields = key.replace(']', '').split(/\[/)
//            def table = jqdtParams
//            for (int f = 0; f < keyFields.size() - 1; f++) {
//                def keyField = keyFields[f]
//                if (!table.containsKey(keyField))
//                    table[keyField] = [:]
//                table = table[keyField]
//            }
//            table[keyFields[-1]] = value
//        }
//        println "employee dataTableParams $jqdtParams"
//        println()

//        def columnMap = jqdtParams.columns.collectEntries { k, v ->
//            def whereTerm = null
//            switch (v.data) {
//                case 'extension':
//                case 'hired':
//                case 'salary':
//                    if (v.search.value ==~ /\d+(,\d+)*/)
//                        whereTerm = v.search.value.split(',').collect { it as Integer }
//                    break
//                default:
//                    if (v.search.value ==~ /[A-Za-z0-9 ]+/)
//                        whereTerm = "%${v.search.value}%" as String
//                    break
//            }
//            [(v.data): [where: whereTerm]]
//        }
//        println "employee columnMap $columnMap"
//        println()
//        def allColumnList = columnMap.keySet() as List
//        println "employee allColumnList $allColumnList"
//        def orderList = jqdtParams.order.collect { k, v -> [allColumnList[v.column as Integer], v.dir] }
//        println "employee orderList $orderList"
        [userList: userService.list()]
//        def result = [draw: jqdtParams.draw, data: userService.list()]
//        render(result as JSON)
    }

    def show(Long id) {
        [user: userService.get(id)]
    }

    def create() {
//
    }

    def save(Long id) {
        def retUser = userService.save(id, params)
        render(view: "show", model: [user: retUser])
    }

    def edit(Long id) {
        def retUser = userService.update(id, params)
        render(view: "edit", model: [user: retUser])
    }

    def delete(Long id) {
        userService.delete(id)
        redirect action: "index", method: "GET"
//        def b = User.get(id)
//        if (!b) {
//            flash.message = "User not found for id ${params.id}"
//            redirect(action:list)
//        }
    }

}
