export const removeDatasRepetidas = (datas) => {

    const dataUnicas = []
    datas.forEach((data => {
        if(dataUnicas.indexOf(data.dataFormatada) === -1){
            dataUnicas.push(data.dataFormatada)
        }
    }))

    return dataUnicas
}

export const ordenadaDatas = (data) => {

    data.sort((a, b) => {
        const primeiraData = moment(a, 'DD/MM/YYYY').format('YYYYMMDD')
        const segundaData = moment(b, 'DD/MM/YYYY').format('YYYYMMDD')

        return primeiraData - segundaData
    })
}