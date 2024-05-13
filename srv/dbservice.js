const cds = require('@sap/cds')
module.exports = cds.service.impl(function () {
    this.on('reconci', async () => {
    try {
        let dbQuery = ' Call "reconci"( )'
        let result = await cds.run(dbQuery, { })
        cds.log().info(result)
        return true
    } catch (error) {
        cds.log().error(error)
        return false
    }
    });

})