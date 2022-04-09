let request = require('request')

// Call the Infura API and check that the address is valid.
let options = {
  url: 'https://filecoin.infura.io',
  method: 'post',
  headers: {
    'content-type': 'application/json'
  },
  auth: {
    user: '27Y5nbIFJUj1YkjbAr9hZixmgh0',
    pass: 'fe72886ea306d654591689476608fc3d'
  },
  body: `{
      "jsonrpc": "2.0",
      "id": 0,
      "method": "Filecoin.ChainHead"
 }`
}
request(options, (error, response, body) => {
  if (error) {
    console.error('Error: ', error)
  } else {
    console.log('Response: ', body)
  }
})
