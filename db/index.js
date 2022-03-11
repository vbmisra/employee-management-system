const connection = require('./connection')

class DATABASE {
    constructor(connect) {
        this.connection = connect
    }

    getAllEmployees() {
        return this.connection.promise().query(
            "SELECT employee.id, employee.first_name, employee.last_name, role. "
        )
    }
}