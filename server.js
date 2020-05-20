const express = require('express');
const app = express();
const PORT = process.env.PORT || 23559;

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.sendFile('./public/html/homepage.html', {root: __dirname});
});

app.listen(PORT, () => {
    console.log('listening on port: ' + PORT);
})